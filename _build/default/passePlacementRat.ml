(* Module de la passe de gestion des types *)
module PassePlacementRat : Passe.Passe with type t1 = Ast.AstType.programme and type t2 = Ast.AstPlacement.programme =
struct

  open Tds
  open Exceptions
  open Ast
  open AstType
  open AstPlacement
  open Type

  type t1 = Ast.AstType.programme
  type t2 = Ast.AstPlacement.programme

  (* NE sert à rien *)
  let rec analyser_placement_expression e =
    match e with
      | AstType.Rationnel(e1,e2) -> (Rationnel(e1,e2),0)
      | AstType.Numerateur(e1) -> (Numerateur(e1),0)
      | AstType.Denominateur(e1) -> (Denominateur(e1),0)
      | AstType.Ident(info) -> (Ident(info),0)
      | AstType.True -> (True,0)
      | AstType.False -> (False,0)
      | AstType.Entier(i) -> (Entier(i),0)
      | AstType.Binaire(b,e1,e2) -> 
        let ne1,t1 = analyser_placement_expression e1
        in let ne2,t2 = analyser_placement_expression e2
        in (Binaire(b,ne1,ne2),0)
      | AstType.AppelFonction(s,le,info) -> 
        let nle_t = List.map (analyser_placement_expression) le
        in let nle = List.map (function x,y -> x) nle_t
        in (AppelFonction(s,nle,info),0)


  let rec analyser_placement_instruction i dep reg =  
    match i with
      | AstType.Declaration(e,info) -> 
        (match info_ast_to_info info with
        | InfoVar(typ,_,_) -> modifier_adresse_info dep reg info; (Declaration(e,info),getTaille typ)
        | _ -> failwith "")
  
      | AstType.Affectation (e,info) -> Affectation(e,info),0
      | AstType.Conditionnelle(c,b1,b2) -> 
        let nb1 = analyser_placement_bloc b1 dep reg in
        let nb2 = analyser_placement_bloc b2 dep reg in (Conditionnelle(c,nb1,nb2),0)

      | AstType.TantQue(c,b) -> 
        let nb = analyser_placement_bloc b dep reg  in (TantQue(c,nb),0)

      | AstType.AffichageBool(e) -> (AffichageBool(e),0)

      | AstType.AffichageInt(e) -> (AffichageInt(e),0)
      | AstType.AffichageRat(e) -> (AffichageRat(e),0)

      | AstType.Empty -> (Empty,0)

  and analyser_placement_bloc li dep reg =
    match li with
    | [] -> []
    | t::q -> let nt,taille = analyser_placement_instruction t dep reg in 
              let nq = analyser_placement_bloc q (dep+taille) reg in nt :: nq

  let rec analyser_parametres lp = 
    match lp with
    | [] -> 0
    | t::q -> 
      (match info_ast_to_info t with
      | InfoVar(typ,_,_) -> 
        let taille = getTaille typ
        in let taille_q = analyser_parametres q
        in modifier_adresse_info (-taille - taille_q) "LB" t;
        taille + taille_q
      | _ -> failwith "")
  
  let analyser_placement_fonction (Ast.AstType.Fonction(n,lp,li,e,info)) = 
    let _ = analyser_parametres lp in 
    let ncode = analyser_placement_bloc li 3 "LB" in
    Fonction(n,ncode,e,info)

  let analyser  (AstType.Programme (fonctions,prog))  =
    let fctanalysee = List.map analyser_placement_fonction fonctions in
    let blocanalyse = (analyser_placement_bloc prog  0 "SB") in 
    Programme( fctanalysee,blocanalyse)

  end
  