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

  let rec analyse_type_affectable a=
    match a with
     | AstTds.Variable(info_ast) ->
      let info = info_ast_to_info info_ast in
      
      (match info with
      InfoConst(_) -> modifier_type_info Int info_ast; (Int,Variable(info_ast))
      | InfoVar(t1,_,_) -> modifier_type_info t1 info_ast; (t1,Variable(info_ast))
      | InfoFun(t1,_) -> modifier_type_info t1 info_ast; (t1,Variable(info_ast))
      )
      | AstTds.Deref(aff) -> let t1,v1 = analyse_type_affectable aff in 
                            (match t1 with
                              |Pt t2-> (t2,Deref(v1))
                              |_-> raise(PasUnPointeur))

  let rec analyse_type_expression e = 
    match e with
    | AstTds.Rationnel (e1,e2) ->
      let t1,v1 = analyse_type_expression e1 in
      let t2,v2 = analyse_type_expression e2 in
      if t1=Int then
        if t2=Int then
          (Rat,Rationnel(v1,v2))
        else
          raise(TypeInattendu(t2,Int))
      else
        raise(TypeInattendu(t1,Int))
    | AstTds.Numerateur (e1) -> 
      let t1,v1 = analyse_type_expression e1 in
      if t1 = Rat then
        (Int,Numerateur(v1))
      else 
        raise(TypeInattendu(t1,Rat))
    | AstTds.Denominateur(e1) ->
      let t1,v1 = analyse_type_expression e1 in
      if t1 = Rat then
        (Int,Denominateur(v1))
      else 
        raise(TypeInattendu(t1,Rat))
    | AstTds.True -> (Bool,True)
    | AstTds.False -> (Bool,False)
    | AstTds.Entier(i) -> (Int,Entier(i))
     | AstTds.Null -> (Undefined,Null)
    | AstTds.Allocation(t) ->   
    (match t with
      |Int -> (Pt Int,Allocation Int)
      |Rat -> (Pt Rat,Allocation Rat)
      |Bool ->(Pt Rat,Allocation Bool)
      |Pt (tp) -> (Pt (Pt tp),Allocation (Pt tp))
      |Undefined -> failwith "Allocation type Undefined"    
   )
    
    | AstTds.Adresse(info_ast) -> let info = info_ast_to_info info_ast in
      
      (match info with
        InfoConst(_) -> modifier_type_info Int info_ast; (Int,Adresse(info_ast))
        | InfoVar(t1,_,_) -> modifier_type_info t1 info_ast; (t1,Adresse(info_ast))
        | InfoFun(t1,_) -> modifier_type_info t1 info_ast; (t1,Adresse(info_ast))
    )
    | AstTds.Valeur(aff) -> let t1,v1= analyse_type_affectable(aff) in 
(t1,Valeur(v1)) 
    | AstTds.Binaire(b,e1,e2) -> 
      let (t1,v1) = analyse_type_expression e1 in
      let (t2,v2) = analyse_type_expression e2 in
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
      InfoFun(type_f,ldef_t) -> 
        let rec aux_appel liste ldef=
          begin
          match liste,ldef with
          [],[] -> []
          | [],_ -> raise(TypesParametresInattendus(List.map (function x,y -> x) l,ldef_t))
          | _,[] -> raise(TypesParametresInattendus(List.map (function x,y -> x) l,ldef_t))
          | ((type_l,valeur_l)::q_l),(type_def::q_i) -> 
            if (est_compatible type_l type_def) then
              valeur_l::(aux_appel q_l q_i)
            else
              raise(TypesParametresInattendus(List.map (function x,y -> x) l,ldef_t))
          end
        in let lv = aux_appel l ldef_t in
        let () = modifier_type_info type_f info_ast in
        (type_f,AppelFonction(nom,lv,info_ast))           
      | _ -> failwith ""
      end
            


let rec analyse_type_instruction i =
  match i with
  | AstTds.Declaration(t,e1,info_ast) -> 
    let t1,v1 = analyse_type_expression e1 in
    if (est_compatible t1 t) then
      let () = modifier_type_info t info_ast in
      Declaration(v1,info_ast)
    else
      raise(TypeInattendu(t1,t))
  | AstTds.Affectation(a, e1) ->
    let t1,v1 = analyse_type_affectable a in 
    let t2,v2 = analyse_type_expression e1 in 
      if (est_compatible t1 t2) then
        Affectation(v1,v2)
      else
        raise(TypeInattendu(t2,t1))
    
  | AstTds.Affichage(e1) ->
    let t1,v1 = analyse_type_expression e1 in 
    begin
    match t1 with
    Int -> AffichageInt(v1)
    | Rat -> AffichageRat(v1)
    | Bool -> AffichageBool(v1)
    | _ -> raise(TypeInattendu(t1,Int))
end
  | AstTds.Conditionnelle(e1,b1,b2) ->
    let t1,v1 = analyse_type_expression e1 in 
    if (t1=Bool) then
      let v2 = analyse_type_bloc b1 in
      let v3 = analyse_type_bloc b2 in
      Conditionnelle(v1,v2,v3)
    else
    raise(TypeInattendu(t1,Bool))
  | AstTds.TantQue(e1,b1) ->
    let t1,v1 = analyse_type_expression e1 in 
    if (t1=Bool) then
      let v2 = analyse_type_bloc b1 in
      TantQue(v1,v2)
    else
      raise(TypeInattendu(t1,Bool))
  | AstTds.Pour(t,e1,e2,e3,li,info_a) ->
    let t1,v1 = analyse_type_expression e1 in
    if (t1=t) then
      let () = modifier_type_info t info_a in
      let t2,v2 = analyse_type_expression e2 in
      if (t2=Bool) then
        let t3,v3 = analyse_type_expression e3 in
        if (t1=t3) then
          let bloc = analyse_type_bloc li in 
          Pour(v1,v2,v3,bloc,info_a)
        else
          raise(TypeInattendu(t2,t1))
      else
        raise(TypeInattendu(t2,Bool))
    else
      raise(TypeInattendu(t1,t))
  | AstTds.Empty -> Empty
  | _ -> failwith ""


and analyse_type_bloc li =
  List.map analyse_type_instruction li
   


let analyse_type_fonction (AstTds.Fonction(t,n,lp,li,e,info))  =
  let rec params_type liste = 
    match liste with
      | [] -> ();
      | (t,i)::q -> modifier_type_info t i; params_type q
  in params_type lp;
  let tpl = List.map (function x,y -> x) lp
  in let () = modifier_type_fonction_info t tpl info
  in let v2 = analyse_type_bloc li in
  let t1,v1 = analyse_type_expression e in
  if (t=t1) then
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
