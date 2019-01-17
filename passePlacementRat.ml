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


(* analyser_placement_instruction : Ast.AstType.instruction -> int -> string -> Rat.Ast.AstType.instruction * int *)
(* Paramètre : i -> instruction à analyser *)
(* Paramètre : dep -> deplacement actuel par rapport à reg (le registre courant) *)
(* Paramètre : reg -> registre courant *)
(* Fonction permettant de placer les variables en mémoire pour une instruction *)
  let rec analyser_placement_instruction i dep reg =  
    match i with
      | AstType.Declaration(e,info) -> 
        (match info_ast_to_info info with
        (* On place la nouvelle variable en mémoire, on renvoi la taille prise pour pouvoir décaler le curseur (dep) 
        dans l'analyse globale *)
        | InfoVar(typ,_,_) -> modifier_adresse_info dep reg info; (Declaration(e,info),getTaille typ)
        | _ -> failwith "")
  
      | AstType.Affectation (a,e) -> Affectation(a,e),0
      | AstType.Conditionnelle(c,b1,b2) -> 
        (* Deplacement nul car les varibles locales sont supprimées *)
        let nb1 = analyser_placement_bloc b1 dep reg in
        let nb2 = analyser_placement_bloc b2 dep reg in (Conditionnelle(c,nb1,nb2),0)

      | AstType.TantQue(c,b) -> 
      (* Deplacement nul car les varibles locales sont supprimées *)
        let nb = analyser_placement_bloc b dep reg  in (TantQue(c,nb),0)

      | AstType.AffichageBool(e) -> (AffichageBool(e),0)

      | AstType.AffichageInt(e) -> (AffichageInt(e),0)
      | AstType.AffichageRat(e) -> (AffichageRat(e),0)
      | AstType.Pour(e1,e2,e3,li,info) -> 
      (* Deplacement nul car les varibles locales, dont la variable commnuement appelée 'i', sont supprimées *)
      (match info_ast_to_info info with
      | InfoVar(typ,_,_) -> 
      (* On positionne la variable communement appelée 'i' dans la mémoire *)
        modifier_adresse_info dep reg info;
        (* On analyse le bloc sans oublier d'incrementer le deplacement car
        variable communement appelée 'i' a été ajoutée *)
        let nli = analyser_placement_bloc li (dep+(getTaille typ)) reg in
        (Pour(e1,e2,e3,nli,info),0)
      | _ -> failwith "")
      | AstType.Empty -> (Empty,0)

(* analyser_placement_bloc : Rat.Ast.AstType.bloc -> int -> string -> Rat.Ast.AstType.bloc *)
(* Paramètre : li -> liste des instructions à analyser *)
(* Paramètre : dep -> deplacement actuel par rapport à reg (le registre courant) *)
(* Paramètre : reg -> registre courant *)
(* Fonction permettant de placer les variables en mémoire pour un bloc *)
  and analyser_placement_bloc li dep reg =
  (* On analyse chaque instruction du bloc, chaque instruction donne taille qu'elle a utilisée dans la mémoire
  pour qu'on puisse le prendre en compte (en n'écrivant pas par dessus) *)
    match li with
    | [] -> []
    | t::q -> let nt,taille = analyser_placement_instruction t dep reg in 
              let nq = analyser_placement_bloc q (dep+taille) reg in nt :: nq

(* analyser_parametres : Rat.Tds.info_ast list -> int *)
(* Paramètre : lp -> liste des paramètres à analyser *)
(* Fonction permettant de placer les paramètres d'une fonction en mémoire *)
  let rec analyser_parametres lp = 
    match lp with
    | [] -> 0
    | t::q -> 
      (match info_ast_to_info t with
      | InfoVar(typ,_,_) -> 
        let taille = getTaille typ
        in let taille_q = analyser_parametres q
        (* Le déplacement est négatif car les paramètres se placent en dessous par rapport à "LB" *)
        in modifier_adresse_info (-taille - taille_q) "LB" t;
        taille + taille_q
      | _ -> failwith "")
  
(* analyser_placement_fonction : Rat.Ast.AstType.fonction -> Rat.Ast.AstPlacement.fonction*)
(* Paramètre : lp -> liste des paramètres à analyser *)
(* Fonction permettant d'effectuer le placement en mémoire d'une fonction, 
c'est à dire de ses paramètres et des variables de son bloc *)
  let analyser_placement_fonction (Ast.AstType.Fonction(n,lp,li,e,info)) = 
    (* Placement des paramètres*)
    let _ = analyser_parametres lp in 
    (* Placement des variables du bloc de la fonction, au dessus de "LB", en laissant 3 blocs d'espace
    pour le traitement de la fonction  *)
    let ncode = analyser_placement_bloc li 3 "LB" in
    Fonction(n,ncode,e,info)

(* analyser : Rat.Ast.AstType.programme -> Rat.Ast.AstPlacement.programme *)
(* Paramètre : prog -> programme à analyser *)
(* Fonction permettant d'effectuer le placement en mémoire *)
  let analyser  (AstType.Programme (fonctions,prog))  =
    let fctanalysee = List.map analyser_placement_fonction fonctions in
    (* analyse du bloc principal, on commence tout en bas, c'est à dire, avec un deplacement de 0 par rapport à "SB" *)
    let blocanalyse = (analyser_placement_bloc prog  0 "SB") in 
    Programme( fctanalysee,blocanalyse)

  end
  