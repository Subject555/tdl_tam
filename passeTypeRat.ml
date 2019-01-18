
(* Module de la passe de gestion des types *)

module PasseTypeRat : Passe.Passe with type t1 = Ast.AstTds.programme and type t2 = Ast.AstType.programme =
struct

  open Tds
  open Exceptions
  open Type
  open Ast
  open AstType

  type t1 = Ast.AstTds.programme
  type t2 = Ast.AstType.programme


  
(* analyse_type_affectable : Rat.Ast.AstTds.affectable -> Rat.Type.typ * Rat.Ast.AstType.affectable *)
(* Paramètre : a -> affectable à analyser *)
(* Fonction permettant de vérifier la cohérence des types dans les affectables, renvoi le type 
de l'affectable analysé et son noeud AstType associé *)
(* Erreur si mauvaise utilisation des types *)
  let rec analyse_type_affectable a=
    match a with
     | AstTds.Variable(info_ast) ->
      let info = info_ast_to_info info_ast in
      
      (match info with
      (* On affecte à la variable son type *)
      InfoConst(_) -> modifier_type_info Int info_ast; (Int,Variable(info_ast))
      | InfoVar(t1,_,_) -> modifier_type_info t1 info_ast; (t1,Variable(info_ast))
      | InfoFun(t1,_,_) -> modifier_type_info t1 info_ast; (t1,Variable(info_ast))
      | _ -> failwith ""
      )
      | AstTds.Deref(aff) -> let t1,v1 = analyse_type_affectable aff in 
                            (match t1 with
                             |Pt t2-> (t2,Deref(v1))
                             |_-> raise(PasUnPointeur))
      | AstTds.Indice(aff,e) -> 
                            let t_exp,v_exp = analyse_type_expression e in
                            (* On vérifie que l'indice est bien un entier *)
                              if t_exp = Int then
                                let t_tab,v_tab = analyse_type_affectable aff in
                                  (match t_tab with
                                    |Tab t-> (t,Indice(v_tab,v_exp))
                                    |_-> raise(PasUnTableau)
                                  )
                              else
                                raise(TypeInattendu(t_exp,Int))
       
                                
(* analyse_type_expression : Rat.Ast.AstTds.expression -> Rat.Type.typ * Rat.Ast.AstType.expression *)
(* Paramètre : e -> expression à analyser *)
(* Fonction permettant de vérifier la cohérence des types dans les expressions, renvoi le type 
de l'expression analysée et son noeud AstType associé *)
(* Erreur si mauvaise utilisation des types *)
  and analyse_type_expression e = 
    match e with
    | AstTds.Rationnel (e1,e2) ->
      let t1,v1 = analyse_type_expression e1 in
      let t2,v2 = analyse_type_expression e2 in
      (* On vérifie que les deux expressions fournies sont bien des entiers 
      car un rationnel est composé de deux entiers *)
      if t1=Int then
        if t2=Int then
          (Rat,Rationnel(v1,v2))
        else
          raise(TypeInattendu(t2,Int))
      else
        raise(TypeInattendu(t1,Int))
    | AstTds.Numerateur (e1) -> 
      let t1,v1 = analyse_type_expression e1 in
      (* On vérifie que l'expression est bien un rationnel car on 
      ne peut pas demander le numerateur d'autre chose qu'un rationnel *)
      if t1 = Rat then
        (Int,Numerateur(v1))
      else 
        raise(TypeInattendu(t1,Rat))
    | AstTds.Denominateur(e1) ->
      let t1,v1 = analyse_type_expression e1 in
      (* On vérifie que l'expression est bien un rationnel car on 
      ne peut pas demander le denominateur d'autre chose qu'un rationnel *)
      if t1 = Rat then
        (Int,Denominateur(v1))
      else 
        raise(TypeInattendu(t1,Rat))
    | AstTds.True -> (Bool,True)
    | AstTds.False -> (Bool,False)
    | AstTds.Entier(i) -> (Int,Entier(i))
    | AstTds.Null -> (Undefined,Null)
    | AstTds.Allocation(t) -> Pt(t),Allocation (t)
    | AstTds.TabAllocation(t,exp) -> let t_exp,v_exp = analyse_type_expression exp in
    (* On vérifie que la taille donnée (l'expression) est bien de type entier *)
      if t_exp = Int then 
        (Tab(t), TabAllocation(t,v_exp))
      else
      raise(TypeInattendu(t_exp,Int))

    | AstTds.Adresse(info_ast) -> let info = info_ast_to_info info_ast in
    (* On alloue son type à l'adresse, le type de retour est un POINTEUR
    car l'opération effectuée est x = &y avec x pointeur *)
      (match info with
        InfoConst(_) -> modifier_type_info Int info_ast; (Pt Int,Adresse(info_ast))
        | InfoVar(t1,_,_) -> modifier_type_info t1 info_ast; (Pt t1,Adresse(info_ast))
        | InfoFun(t1,_,_) -> modifier_type_info t1 info_ast; (Pt t1,Adresse(info_ast))
        | _ -> failwith ""
    )
    | AstTds.Valeur(aff) -> let t1,v1= analyse_type_affectable(aff) in 
                              (t1,Valeur(v1)) 
    | AstTds.Binaire(b,e1,e2) -> 
      let (t1,v1) = analyse_type_expression e1 in
      let (t2,v2) = analyse_type_expression e2 in
      (* On sépare les binaires et leurs opérations et on vérifie que les opérations sont possibles entre les deux expressions fournies,
      c'est à dire que les deux types sont compatibles et qu'il existe une opération qui existe pour ces types*)
      if (est_compatible t1 t2) then
      begin
        match b with
        Plus -> 
          if (t1=Int) then
            (Int,Binaire(PlusInt,v1,v2))
          else if (t1=Rat) then
            (Rat,Binaire(PlusRat,v1,v2))
          else
          raise(TypeBinaireInattendu(b,t1,t2))
        | Mult ->
          if (t1=Int) then
                (Int,Binaire(MultInt,v1,v2))
              else if (t1=Rat) then
                (Rat,Binaire(MultRat,v1,v2))
              else
              raise(TypeBinaireInattendu(b,t1,t2))
        | Equ ->
          if (t1=Int) then
            (Bool,Binaire(EquInt,v1,v2))
          else if (t1=Bool) then
            (Bool,Binaire(EquBool,v1,v2))
          else
            raise(TypeBinaireInattendu(b,t1,t2))
        | Inf ->
          if (t1=Int) then
            (Bool,Binaire(Inf,v1,v2))
          else
            raise(TypeBinaireInattendu(b ,t1 ,t2))
      end
      else
        raise(TypeInattendu(t2,t1))
    | AstTds.AppelFonction(nom,args,info_ast) ->
        let l = List.map (analyse_type_expression) args in
        let info = info_ast_to_info info_ast in
        begin
        match info with
        InfoFun(type_f,ldef_t,_) -> 
          let rec aux_appel liste ldef=
            begin
            (* On vérifie que les types utilisés par le call de la fonction sont bien conformes aux types déclarés *)
            match liste,ldef with
            [],[] -> []
            | [],_ -> raise(TypesParametresInattendus(List.map (fst) l,ldef_t))
            | _,[] -> raise(TypesParametresInattendus(List.map (fst) l,ldef_t))
            | ((type_l,valeur_l)::q_l),(type_def::q_i) -> 
              if (est_compatible type_l type_def) then
                valeur_l::(aux_appel q_l q_i)
              else
                raise(TypesParametresInattendus(List.map (fst) l,ldef_t))
            end
          in let lv = aux_appel l ldef_t in
          let () = modifier_type_info type_f info_ast in
          (type_f,AppelFonction(nom,lv,info_ast))           
        | _ -> failwith ""
  end
            

(* analyse_type_instruction : Rat.Ast.AstTds.instruction -> Rat.Ast.AstType.instruction *)
(* Paramètre : i -> instruction à analyser *)
(* Fonction permettant de vérifier la cohérence des types dans les instructions, renvoi son noeud AstType associé *)
(* Erreur si mauvaise utilisation des types *)
let rec analyse_type_instruction i =
  match i with
  | AstTds.Declaration(t,e1,info_ast) -> 
    let t1,v1 = analyse_type_expression e1 in
    (* On vérifie que le type de l'expression et bien le même que
      celui déclaré *)
    if (est_compatible t1 t) then
    (* On affecte son type à la nouvelle variable déclarée *)
      let () = modifier_type_info t info_ast in
      Declaration(v1,info_ast)
    else
      raise(TypeInattendu(t1,t))
  | AstTds.Affectation(a, e1) ->
    let t1,v1 = analyse_type_affectable a in 
    let t2,v2 = analyse_type_expression e1 in 
      (* On vérifie que le type de l'affectable et bien le même que
      celui de la valeur qu'on essaye de lui donner *)
      if (est_compatible t1 t2) then
        Affectation(v1,v2)
      else
        raise(TypeInattendu(t2,t1))
    
  | AstTds.Affichage(e1) ->
    let t1,v1 = analyse_type_expression e1 in 
    begin
    match t1 with
     (* On vérifie qu'on essaye d'afficher un type qu'il est possible d'afficher
     et on separe les affichages en différents noeuds *)
    Int -> AffichageInt(v1)
    | Rat -> AffichageRat(v1)
    | Bool -> AffichageBool(v1)
    | _ -> raise(TypeInattendu(t1,Int))
    end

  | AstTds.Conditionnelle(e1,b1,b2) ->
    let t1,v1 = analyse_type_expression e1 in 
     (* On vérifie que la condition est bien de type booléen *)
    if (t1=Bool) then
    (* On analyse les deux blocs (then et else) *)
      let v2 = analyse_type_bloc b1 in
      let v3 = analyse_type_bloc b2 in
      Conditionnelle(v1,v2,v3)
    else
    raise(TypeInattendu(t1,Bool))
  | AstTds.TantQue(e1,b1) ->
    let t1,v1 = analyse_type_expression e1 in 
     (* On vérifie que la condition d'arret est bien de type booléen *)
    if (t1=Bool) then
      let v2 = analyse_type_bloc b1 in
      TantQue(v1,v2)
    else
    raise(TypeInattendu(t1,Bool))
  | AstTds.Pour(t,e1,e2,e3,li,info_a) ->
    let t1,v1 = analyse_type_expression e1 in
    (* On vérifie que le type de l'expression de la variable communement appelée 'i' est bien celui déclaré *)
    if (t1=t) then
      (* On affecte son type à la variable communement appelée 'i' *)
      let () = modifier_type_info t info_a in
      let t2,v2 = analyse_type_expression e2 in
      (* On vérifie que la condition d'arret est bien de type booléen *)
      if (t2=Bool) then
        let t3,v3 = analyse_type_expression e3 in
        (* On vérifie que l'incrémentation de la variable communement appelée 'i' ne change pas son type *)
        if (t1=t3) then
          (* On analyse le bloc *)
          let bloc = analyse_type_bloc li in 
          Pour(v1,v2,v3,bloc,info_a)
        else
          raise(TypeInattendu(t2,t1))
      else
        raise(TypeInattendu(t2,Bool))
    else
      raise(TypeInattendu(t1,t))
  | AstTds.Empty -> Empty


(* analyse_type_bloc : Rat.Ast.AstTds.bloc -> Rat.Ast.AstType.bloc *)
(* Paramètre : li -> liste des instructions à analyser *)
(* Fonction permettant de vérifier la cohérence des types dans toutes les instructions d'un bloc, renvoi les noeud AstType associés
aux instructions *)
(* Erreur si mauvaise utilisation des types *)
and analyse_type_bloc li =
  List.map analyse_type_instruction li
   

(* analyse_type_fonction : Rat.Ast.AstTds.fonction -> Rat.Ast.AstType.fonction *)
(* Paramètre : f -> fonction à analyser *)
(* Fonction permettant de vérifier la cohérence des types dans les fonctions, notamment le type des paramètres, 
le type de retour ainsi que la cohérence des types dans le bloc de la fonction, renvoi son noeud AstType associé *)
(* Erreur si mauvaise utilisation des types *)
let analyse_type_fonction (AstTds.Fonction(t,n,lp,li,e,info))  =
  (* On affecte aux paramètres leur type *)
  let rec params_type liste = 
    match liste with
      | [] -> ();
      | (t,i)::q -> modifier_type_info t i; params_type q
  in params_type lp;
  let tpl = List.map (function x,y -> x) lp
  (* On affecte à la fonction son type de retour *)
  in let () = modifier_type_fonction_info t tpl info
  (* Analyse du bloc *)
  in let v2 = analyse_type_bloc li in
  (* Analyse de l'expression de retour *)
  let t1,v1 = analyse_type_expression e in

  if (est_compatible t t1) then
    let nlp = List.map (function x,y -> y) lp
    in Fonction(n,nlp,v2,v1,info)
  else
    raise(TypeInattendu(t1,t))



  (* analyser : Asttds.ast -> Asttype.ast *)
  (* Paramètre : le programme à analyser *)
  (* Vérifie la bonne utilisation des types et tranforme le programme
  en un programme de type Asttype.ast *)
  (* Erreur si mauvaise utilisation des types *)
  let analyser (AstTds.Programme (fonctions,prog)) =
    let l_f = List.map analyse_type_fonction fonctions in
    let bloc = analyse_type_bloc prog in
    Programme(l_f,bloc)

end