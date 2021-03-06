
module PasseCodeRatToTam : Passe.Passe  with type t1 =  Ast.AstPlacement.programme and type t2 = string=
struct

  open Tds
  open Exceptions
  open Ast
  open Type
  open Code

  type t1 = Ast.AstPlacement.programme
  type t2 = string

(* analyser_affectable : Rat.Ast.AstType.affectable -> Rat.Type.typ * string *)
(* Paramètre : a -> affectable à analyser *)
(* Fonction permettant d'obtenir le code tam d'un affectable *)
  let rec analyser_affectable a= 
    match a with
      AstType.Variable(info_a) -> 
      let info = info_ast_to_info info_a in
      (match info with
        InfoVar(t,dep,reg) -> (t,"LOAD ("^(string_of_int(getTaille t))^") "^(string_of_int dep)^"["^reg^"]\n")
        | InfoConst(entier) -> (Int,"LOADL "^(string_of_int entier)^"\n")
        | _ -> failwith("Fail Ident")
      )
     |AstType.Deref(aff) -> let t1,v1 = analyser_affectable aff in
                            (match t1 with
                              Pt tp -> (tp, v1^"LOADI ("^string_of_int(getTaille tp)^")\n")
                            |_-> raise(PasUnPointeur) 
                            )
    |AstType.Indice(aff,e) -> let t_aff,v_aff = analyser_affectable aff in
    (match t_aff with
      | Tab t ->
        (t, 
        v_aff^
        (analyser_expression e)^
        "LOADL "^ string_of_int(getTaille t)^
        "\n SUBR IMul
        \n SUBR IAdd
        \nLOADI (" ^string_of_int(getTaille t)^")\n")
      | _ -> raise(PasUnTableau)
      )

(* analyser_expression : Rat.Ast.AstType.expression -> string *)
(* Paramètre : e -> expression à analyser *)
(* Fonction permettant d'obtenir le code tam d'une expression *)
  and analyser_expression e = 
    match e with
      AstType.Rationnel(e1,e2) -> 
        let val1 = analyser_expression e1 
        in let val2 = analyser_expression e2 
        in val1^val2^"CALL (ST) norm\n"
      | AstType.Numerateur(e1) -> 
        analyser_expression e1^"POP (0) 1\n"
      | AstType.Denominateur(e1) -> 
        analyser_expression e1^"POP (1) 1\n"
      | AstType.True -> "LOADL 1\n"
      | AstType.False -> "LOADL 0\n"
      | AstType.Entier(i) -> "LOADL "^(string_of_int i)^"\n"
      | AstType.Null -> "LOADL 0\n"
      | AstType.Adresse(info_a)-> let info = info_ast_to_info info_a in
      (match info with
        InfoVar(_,dep,reg) -> "LOADA "^(string_of_int dep)^"["^reg^"]\n"
        | _ -> failwith("Fail Adresse")
      )
      | AstType.Valeur(aff) -> let _,s = analyser_affectable(aff) in s
      | AstType.Allocation(t) ->  "LOADL "^(string_of_int(getTaille t))^"\n"^"SUBR MAlloc\n"
      | AstType.TabAllocation(t,e) ->  (analyser_expression e)^"LOADL "^string_of_int(getTaille t)^"\nSUBR IMul\nSUBR MAlloc\n"
      | AstType.Binaire(b,e1,e2) ->
        let val1 = analyser_expression e1 
        in let val2 = analyser_expression e2 in
        (match b with
            PlusInt -> val1^val2^"SUBR IAdd\n"
          | PlusRat -> val1^val2^"CALL (ST) RAdd\n"
          | MultInt -> val1^val2^"SUBR Imul\n"
          | MultRat -> val1^val2^"CALL (ST) RMul\n"
          | EquInt -> val1^val2^"SUBR IEq\n"
          | EquBool -> val1^val2^"SUBR IEq\n"
          | Inf -> val1^val2^"SUBR ILss\n"
        )
        
      | AstType.AppelFonction(n,le,info) -> 
          let fle = List.fold_left (fun t e -> t^(analyser_expression e)) "" le in
          fle^"CALL (SB) "^n^"\n"
  
(* getTailleRef : typ -> typ *)
(* Paramètre : t -> type dont au souhaite obtenir le type référencé *)
(* Permet d'obtenir le type référencé par un Pointeur ou un Tableau *)
  let rec getTailleRef t =
    match t with 
      | Tab t -> getTailleRef t
      | Pt t -> getTailleRef t
      | _ -> getTaille t
    
      
(* analyser_affectable_g : Rat.Ast.AstType.affectable -> string *)
(* Paramètre : a -> affectable à analyser *)
(* Fonction permettant d'obtenir le code tam d'un affectable quand ce dernier est à gauche du egal dans une instruction*)
  let rec analyser_affectable_g a= 
    match a with
     AstType.Variable(info_a) -> 
     ( match info_ast_to_info info_a with
      InfoVar(t,d,r)-> "STORE ("^(string_of_int(getTaille t))^") "^(string_of_int d)^"["^r^"]\n"
     |_-> failwith "" 
     )
    | AstType.Deref(aff) -> let (t1,v1) = analyser_affectable aff in
                            v1^"STOREI ("^(string_of_int(getTaille t1))^")\n "
    | AstType.Indice(aff,e) -> let t_aff,v_aff = analyser_affectable aff in 
     v_aff^(analyser_expression e)^"LOADL "^string_of_int(getTailleRef t_aff)^"\nSUBR IMul\nSUBR IAdd\nSTOREI ("^string_of_int(getTailleRef t_aff)^")\n"

(* analyse_instruction : Rat.Ast.AstType.instruction -> int -> string * int *)
(* Paramètre : i -> instruction à analyser *)
(* Paramètre : pop -> taille du "pop" qu'il vas falloir faire à la fin du bloc *)
(* Fonction permettant d'obtenir le code tam d'une instruction et la taille du "pop" qu'il vas falloir faire à la fin du bloc*)
  let rec analyse_instruction i pop = 
    match i with
    | Ast.AstType.Declaration(e,info) -> 
    
      let info_t = info_ast_to_info info in
      let anal_e = analyser_expression e in
      (match info_t with
        InfoVar(t,dep,reg) -> 
          "PUSH "^(string_of_int (getTaille t))^
          "\n"^anal_e^
          "STORE ("^(string_of_int (getTaille t))^") "^(string_of_int dep)^"["^reg^"]\n",(pop + (getTaille t))
        | _ -> failwith "Fail declaration"
      )
    | AstType.Affectation(a,e) -> (analyser_expression e)^(analyser_affectable_g a), pop   
  
    | AstType.AffichageInt(e) -> 
      let anal = analyser_expression e in
        anal^
        "SUBR IOut\n",pop
    | AstType.AffichageRat(e) -> 
      let anal = analyser_expression e in
      anal^
      "CALL (ST) ROut\n",pop
    | AstType.AffichageBool(e) -> 
      let anal = analyser_expression e in
        anal^
        "SUBR BOut\n",pop
    | AstType.Conditionnelle(e,b1,b2) -> 
      let anal_e = analyser_expression e in
      let anal_b1,pop_taille_if = analyse_bloc b1 in
      let anal_b2,pop_taille_else = analyse_bloc b2 in
      let etiq_else = getEtiquette () in
      let etiq_fin_if = getEtiquette () in
        anal_e^
        "JUMPIF (0) "^etiq_else^
        "\n"^anal_b1^
        "POP (0)"^(string_of_int pop_taille_if)^"\n"^
        "JUMP "^etiq_fin_if^
        "\nLABEL "^etiq_else^
        "\n"^anal_b2^
        "POP (0)"^(string_of_int pop_taille_else)^"\n"^
        "LABEL "^etiq_fin_if^"\n",pop
    | AstType.TantQue(e,b) -> 
      let anal_e = analyser_expression e in
      let anal_b,pop_taille_tq = analyse_bloc b in
      let etiq = getEtiquette () in
      let etiq2 = getEtiquette () in
        "LABEL "^etiq^
        "\n"^anal_e^
        "JUMPIF (0) "^etiq2^
        "\n"^anal_b^
        "POP (0)"^(string_of_int pop_taille_tq)^"\n"^
        "JUMP "^etiq^
        "\nLABEL "^etiq2^"\n",pop
    | AstType.Pour(e1,e2,e3,li,info) ->
    let ne1 = analyser_expression e1 in
    let ne2 = analyser_expression e2 in
    let ne3 = analyser_expression e3 in
    let anal_b,pop_taille_pour = analyse_bloc li in
    let etiq = getEtiquette() in
    let etiq2 = getEtiquette() in
    (match info_ast_to_info info with
      InfoVar(t,dep,reg) ->
        "PUSH "^(string_of_int (getTaille t))^"\n"^
        ne1^
        "STORE ("^(string_of_int (getTaille t))^") "^(string_of_int dep)^"["^reg^"]\n"^
        "LABEL "^etiq^"\n"^
        ne2^
        "JUMPIF (0) "^etiq2^"\n"^
        anal_b^   
        "POP (0)"^(string_of_int pop_taille_pour)^"\n"^
        ne3^
        "STORE ("^(string_of_int (getTaille t))^") "^(string_of_int dep)^"["^reg^"]\n"^
        "JUMP "^etiq^"\n"^
        "LABEL "^etiq2^"\n"^
        "POP (0)"^(string_of_int (getTaille t))^"\n"
        ,pop
      | _ -> failwith "Fail declaration"
    )
    | AstType.Empty -> "",pop

(* analyse_bloc : Rat.Ast.AstType.bloc -> string * int *)
(* Paramètre : li -> liste d'instructions à analyser *)
(* Fonction permettant d'obtenir le code tam d'une suite d'instructions et la taille du "pop" qu'il vas falloir réaliser à la fin du bloc 
(ce pop est fait dans l'analyse programme et instruction de if/else/for/while) *)
  and analyse_bloc li = 
    let code, taille = List.fold_left (fun (code,pop_s) t -> let anal,i_s = analyse_instruction t pop_s in (code^anal,i_s)) ("",0) li
    in code,taille

(* analyse_fonction : Rat.Ast.AstPlacement.fonction -> string  *)
(* Paramètre : f -> fonction à analyser *)
(* Fonction permettant d'obtenir le code tam de la déclaration d'une fonction *)
  let analyse_fonction (Ast.AstPlacement.Fonction(n,li,e,info_a)) = 
    let info = info_ast_to_info info_a in
    match info with
    InfoFun(t, t_args,_) ->
       let anal_b,pop_bloc = analyse_bloc li in
       let anal_e = analyser_expression e in 
       "LABEL "^n^
       "\n"^anal_b^
       anal_e^
       "POP ("^(string_of_int (getTaille t))^")"^(string_of_int pop_bloc)^
       "\nRETURN ("^(string_of_int (getTaille t))^")"^(string_of_int(List.fold_left (fun nb t -> (getTaille t) + nb) 0 t_args))^"\n"
    | _ -> failwith ""


(* analyser : Rat.Ast.AstPlacement.Programme -> string  *)
(* Paramètre : p -> programme à analyser *)
(* Fonction permettant d'obtenir le code tam d'un programme *)
  let analyser (Ast.AstPlacement.Programme (fonctions, prog)) = 
    let prog_i = getEntete ()
    in let ltf = List.map (analyse_fonction) fonctions
    in let rec aux liste = 
      match liste with
          [] -> ""
        | t::q -> t^"\n"^(aux q)
    in let prog_f = aux ltf
    in let prog_b,blc_p = analyse_bloc prog in
      prog_i^
      prog_f^
      "LABEL main\n"
      ^prog_b^
      "POP (0)"^(string_of_int blc_p)^
      "\n\nHALT"

    

end
