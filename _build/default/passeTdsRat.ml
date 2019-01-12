(* Module de la passe de gestion des identifiants *)
module PasseTdsRat : Passe.Passe with type t1 = Ast.AstSyntax.programme and type t2 = Ast.AstTds.programme =
struct

  open Tds
  open Exceptions
  open Ast
  open AstTds

  type t1 = Ast.AstSyntax.programme
  type t2 = Ast.AstTds.programme


(* analyse_tds_expression : AstSyntax.ast -> Asttds.expression *)
(* Paramètre tds : la table des symboles courante *)
(* Paramètre e : l'expression à analyser *)
(* Vérifie la bonne utilisation des identifiants et tranforme l'expression
en une expression de type Asttds.expression *)
(* Erreur si mauvaise utilisation des identifiants *)
let rec analyse_tds_expression tds e = 
  match e with
  | AstSyntax.AppelFonction (nom,params) ->
    begin
      match chercherGlobalement tds nom with
      | None ->
        (* L'identifiant n'est pas trouvé dans la tds globale, 
            il n'a donc pas été déclaré *)
        raise (IdentifiantNonDeclare nom)
      | Some info -> 
        (* L'identifiant est trouvé dans la tds globale, 
            il a donc déjà été déclaré *) 
        begin
          let info_nast = info_ast_to_info info in
          match info_nast with
          | Tds.InfoFun(_,_) -> 
            let nparams = List.map (analyse_tds_expression tds) params in AppelFonction(nom,nparams,info)
          | _ -> 
            raise(MauvaiseUtilisationIdentifiant nom)
        end
          

    end
  | AstSyntax.Rationnel (e1,e2) ->
      let ne1 = analyse_tds_expression tds e1 in
      let ne2 = analyse_tds_expression tds e2 in
      Rationnel(ne1,ne2)
  | AstSyntax.Numerateur (e1) -> 
    let ne1 = analyse_tds_expression tds e1 in
    Numerateur(ne1)
  | AstSyntax.Denominateur (e1) -> 
    let ne1 = analyse_tds_expression tds e1 in
    Denominateur(ne1)
  | AstSyntax.Ident (nom) ->
    begin
      match chercherGlobalement tds nom with
      | None ->
        (* L'identifiant n'est pas trouvé dans la tds globale, 
            il n'a donc pas été déclaré*)
        raise (IdentifiantNonDeclare nom)
      | Some info -> 
        (* L'identifiant est trouvé dans la tds globale, 
            il a donc déjà été déclaré*) 
          begin
            let info_nast = info_ast_to_info info in
            match info_nast with
            | Tds.InfoVar(_,_,_) -> 
              Ident(info)
            | Tds.InfoConst(_) ->
              Ident(info)
            | _ -> 
              raise(MauvaiseUtilisationIdentifiant nom)
          end
          
    end
  | AstSyntax.True -> True
  | AstSyntax.False -> False
  | AstSyntax.Entier (i) -> Entier(i)
  | AstSyntax.Binaire (b,e1,e2) ->  
    let ne1 = analyse_tds_expression tds e1 in
    let ne2 = analyse_tds_expression tds e2 in
    Binaire(b,ne1,ne2)

      


(* analyse_tds_instruction : AstSyntax.instruction -> tds -> Asttds.instruction *)
(* Paramètre tds : la table des symboles courante *)
(* Paramètre i : l'instruction à analyser *)
(* Vérifie la bonne utilisation des identifiants et tranforme l'instruction
en une instruction de type Asttds.instruction *)
(* Erreur si mauvaise utilisation des identifiants *)
let rec analyse_tds_instruction tds i =
  match i with
  | AstSyntax.Declaration (t, n, e) ->
      begin
        match chercherLocalement tds n with
        | None ->
            (* L'identifiant n'est pas trouvé dans la tds locale, 
            il n'a donc pas été déclaré dans le bloc courant *)
            (* Vérification de la bonne utilisation des identifiants dans l'expression *)
            (* et obtention de l'expression transformée *) 
            let ne = analyse_tds_expression tds e in
            (* Création de l'information associée à l'identfiant *)
            let info = InfoVar (Undefined, 0, "") in
            (* Création du pointeur sur l'information *)
            let ia = info_to_info_ast info in
            (* Ajout de l'information (pointeur) dans la tds *)
            ajouter tds n ia;
            (* Renvoie de la nouvelle déclaration où le nom a été remplacé par l'information 
            et l'expression remplacée par l'expression issue de l'analyse *)
            Declaration (t, ne, ia) 
        | Some _ ->
            (* L'identifiant est trouvé dans la tds locale, 
            il a donc déjà été déclaré dans le bloc courant *) 
            raise (DoubleDeclaration n)
      end
  | AstSyntax.Affectation (n,e) ->
      begin
        match chercherGlobalement tds n with
        | None -> 
          (* L'identifiant n'est pas trouvé dans la tds globale. *) 
          raise (IdentifiantNonDeclare n)
        | Some info -> 
          (* L'identifiant est trouvé dans la tds globale, 
          il a donc déjà été déclaré. L'information associée est récupérée. *) 
          begin
            match info_ast_to_info info with
            | InfoVar _ -> 
              (* Vérification de la bonne utilisation des identifiants dans l'expression *)
              (* et obtention de l'expression transformée *) 
              let ne = analyse_tds_expression tds e in
              (* Renvoie de la nouvelle affectation où le nom a été remplacé par l'information 
              et l'expression remplacée par l'expression issue de l'analyse *)
               Affectation (ne, info)
            |  _ ->
              (* Modification d'une constante ou d'une fonction *)  
              raise (MauvaiseUtilisationIdentifiant n) 
          end
      end
  | AstSyntax.Constante (n,v) -> 
      begin
        match chercherLocalement tds n with
        | None -> 
        (* L'identifiant n'est pas trouvé dans la tds locale, 
        il n'a donc pas été déclaré dans le bloc courant *)
        (* Ajout dans la tds de la constante *)
        ajouter tds n (info_to_info_ast (InfoConst v)); 
        (* Suppression du noeud de déclaration des constantes devenu inutile *)
        Empty
        | Some _ ->
          (* L'identifiant est trouvé dans la tds locale, 
          il a donc déjà été déclaré dans le bloc courant *) 
          raise (DoubleDeclaration n)
      end
  | AstSyntax.Affichage e -> 
      (* Vérification de la bonne utilisation des identifiants dans l'expression *)
      (* et obtention de l'expression transformée *)
      let ne = analyse_tds_expression tds e in
      (* Renvoie du nouvel affichage où l'expression remplacée par l'expression issue de l'analyse *)
      Affichage (ne)
  | AstSyntax.Conditionnelle (c,t,e) -> 
      (* Analyse de la condition *)
      let nc = analyse_tds_expression tds c in
      (* Analyse du bloc then *)
      let tast = analyse_tds_bloc tds t in
      (* Analyse du bloc else *)
      let east = analyse_tds_bloc tds e in
      (* Renvoie la nouvelle structure de la conditionnelle *)
      Conditionnelle (nc, tast, east)
  | AstSyntax.TantQue (c,b) -> 
      (* Analyse de la condition *)
      let nc = analyse_tds_expression tds c in
      (* Analyse du bloc *)
      let bast = analyse_tds_bloc tds b in
      (* Renvoie la nouvelle structure de la boucle *)
      TantQue (nc, bast)

      
(* analyse_tds_bloc : AstSyntax.bloc -> Asttds.bloc *)
(* Paramètre tds : la table des symboles courante *)
(* Paramètre li : liste d'instructions à analyser *)
(* Vérifie la bonne utilisation des identifiants et tranforme le bloc
en un bloc de type Asttds.bloc *)
(* Erreur si mauvaise utilisation des identifiants *)
and analyse_tds_bloc tds li =
  (* Entrée dans un nouveau bloc, donc création d'une nouvelle tds locale 
  pointant sur la table du bloc parent *)
  let tdsbloc = creerTDSFille tds in
  (* Analyse des instructions du bloc avec la tds du nouveau bloc 
  Cette tds est modifiée par effet de bord *)
  List.map (analyse_tds_instruction tdsbloc) li


(* analyse_tds_fonction : AstSyntax.fonction -> Asttds.fonction *)
(* Paramètre tds : la table des symboles courante *)
(* Paramètre : la fonction à analyser *)
(* Vérifie la bonne utilisation des identifiants et tranforme la fonction
en une fonction de type Asttds.fonction *)
(* Erreur si mauvaise utilisation des identifiants *)
let analyse_tds_fonction maintds (AstSyntax.Fonction(t,n,lp,li,e))  =
  match chercherLocalement maintds n with
  | None -> 
    let info_f1 = InfoFun(Undefined, []) in
    let info_f = info_to_info_ast info_f1 in
    ajouter maintds n info_f;
    let tds = creerTDSFille(maintds) in
    let nlp = (List.map (
      fun (t,nom) -> 
      begin
        match chercherLocalement tds nom with
        | None ->
          let inf = InfoVar (Undefined, 0, "") in
          let iv = info_to_info_ast inf in
          ajouter tds nom iv;
          (t,iv)
        | Some _ -> raise(DoubleDeclaration nom)
      end
    ) lp) in
    let nli = List.map (analyse_tds_instruction tds) li in
    let ne = analyse_tds_expression tds e in
    Fonction(t,n,nlp,nli,ne,info_f)

  | Some _ ->  
    raise (DoubleDeclaration n)



(* analyser : AstSyntax.ast -> Asttds.ast *)
(* Paramètre : le programme à analyser *)
(* Vérifie la bonne utilisation des identifiants et tranforme le programme
en un programme de type Asttds.ast *)
(* Erreur si mauvaise utilisation des identifiants *)
let analyser (AstSyntax.Programme (fonctions,prog)) =
  let maintds = creerTDSMere() in
  let nf = List.map ( analyse_tds_fonction maintds ) fonctions in
    Programme(nf, analyse_tds_bloc maintds prog)
  
end