open Type

(* Interface des arbres abstraits *)
module type Ast =
sig
   type expression
   type instruction
   type programme
   type affectable
   type dfs
   
  
end

(* Interface d'affichage des arbres abstraits *)
module type PrinterAst =
sig
  module A:Ast

(* string_of_expression :  expression -> string *)
(* transforme une expression en chaîne de caractère *)
val string_of_expression : A.expression -> string

(* string_of_instruction :  instruction -> string *)
(* transforme une instruction en chaîne de caractère *)
val string_of_instruction : A.instruction -> string

(* string_of_affectable :  affectable -> string *)
(* transforme un affectable en chaîne de caractère *)
val string_of_affectable : A.affectable -> string

(* string_of_prototype:  prototype -> string *)
(* transforme un prototype en chaîne de caractère *)
val string_of_dfs : A.dfs -> string


(* string_of_ast :  ast -> string *)
(* transforme un ast en chaîne de caractère *)
val string_of_programme : A.programme -> string

(* print_ast :  ast -> unit *)
(* affiche un ast *)
val print_programme : A.programme -> unit

end


(*******************************************)
(* AST après la phase d'analyse syntaxique *)
(*******************************************)
module AstSyntax =
struct

(* Opérateurs binaires de Rat *)
type binaire = Plus | Mult | Equ | Inf

(* Pointeurs de Rat *)
type  affectable = 
  (* Accès à un identifiant représenté par son nom *)
  | Variable of string
  (* Dereferencement: accès à la valeur pointée par A*)
  | Deref of affectable
  (* Acces à la case d'indice e du tableau a*)
  | Indice of affectable * expression

(* Expressions de Rat *)
and expression =
  (* Appel de fonction représenté par le nom de la fonction et la liste des paramètres réels *)
  | AppelFonction of string * expression list 
  (* Rationnel représenté par le numérateur et le dénominateur *)
  | Rationnel of expression * expression 
  (* Accès au numérateur d'un rationnel *)
  | Numerateur of expression
  (* Accès au dénominateur d'un rationnel *)
  | Denominateur of expression
  (* Booléen vrai *)
  | True
  (* Booléen faux *)
  | False
  (* Entier *)
  | Entier of int
  (* Affectable *)
  | Valeur of affectable
  (* Affectable nul *)
  | Null
  (* Initialisation d'un nouveau pointeur du type précisé *)
  | Allocation of typ
  (* Initialisation d'un nouveau tableau*)
  | TabAllocation of typ * expression
  (* Accès à l'adresse d'une variable*)
  | Adresse of string 
  (* Opération binaire représentée par l'opérateur, l'opérande gauche et l'opérande droite *)
  | Binaire of binaire * expression * expression


(* Instructions de Rat *)
type bloc = instruction list
and instruction =
  (* Déclaration de variable représentée par son type, son nom et l'expression d'initialisation *)
  | Declaration of typ * string * expression
  (* Affectation d'une variable représentée par son nom et la nouvelle valeur affectée *)
  | Affectation of affectable * expression
  (* Déclaration d'une constante représentée par son nom et sa valeur (entier) *)
  | Constante of string * int
  (* Affichage d'une expression *)
  | Affichage of expression
  (* Conditionnelle représentée par la condition, le bloc then et le bloc else *)
  | Conditionnelle of expression * bloc * bloc
  (*Boucle TantQue représentée par la conditin d'arrêt de la boucle et le bloc d'instructions *)
  | TantQue of expression * bloc
  (*Boucle Pour*)
  | Pour of typ * string * expression * expression * string  * expression * bloc
  | DeclTypeNom of typ * string


(* Structure des prototypes de Rat *)
(* type de retour - nom - liste des paramètres (association type et nom) *)
type dfs = 
  | Fonction of typ * string * (typ * string) list * bloc * expression
  | Prototype of typ * string * (typ * string) list 
  
(* Structure d'un programme Rat *)
(* liste de fonction - programme principal *)
type programme = Programme of dfs list * bloc * dfs list


end


(*Module d'affiche des AST issus de la phase d'analyse syntaxique *)
module PrinterAstSyntax : PrinterAst with module A = AstSyntax =
struct

  module A = AstSyntax
  open A

  (* Conversion des opérateurs binaires *)
  let string_of_binaire b =
    match b with
    | Plus -> "+ "
    | Mult -> "* "
    | Equ -> "= "
    | Inf -> "< "

    (* Conversion des affectables *)
  let rec string_of_affectable a = 
    match a with
  | Variable n -> n^" "
  | Deref (aff) -> "*"^(string_of_affectable(aff))^" "
  | Indice (aff, e) -> "("^(string_of_affectable(aff))^"["^(string_of_expression e)^"])"

  (* Conversion des expressions *)
  and string_of_expression e =
    match e with
    | AppelFonction (n,le) -> "call "^n^"("^((List.fold_right (fun i tq -> (string_of_expression i)^tq) le ""))^") "
    | Rationnel (e1,e2) -> "["^(string_of_expression e1)^"/"^(string_of_expression e2)^"] "
    | Numerateur e1 -> "num "^(string_of_expression e1)^" "
    | Denominateur e1 ->  "denom "^(string_of_expression e1)^" "
    | True -> "true "
    | False -> "false "
    | Entier i -> (string_of_int i)
    | Valeur(aff) -> string_of_affectable(aff)^" "
    | Null -> "null"
    | Adresse(n) -> "&"^n^" "
    | Allocation(t) ->"(new "^string_of_type(t)^")"
    | TabAllocation (t,e) -> "(new "^(string_of_type t)^" ["^(string_of_expression e)^"])"
    | Binaire (b,e1,e2) -> (string_of_expression e1)^(string_of_binaire b)^(string_of_expression e2)^" "

  (* Conversion des instructions *)
  let rec string_of_instruction i =
    match i with
    | Declaration (t, n, e) -> "Declaration  : "^(string_of_type t)^" "^n^" = "^(string_of_expression e)^"\n"
    | Affectation (a,e) ->  "Affectation  : "^string_of_affectable(a)^" = "^(string_of_expression e)^"\n"
    | Constante (n,i) ->  "Constante  : "^n^" = "^(string_of_int i)^"\n"
    | Affichage e ->  "Affichage  : "^(string_of_expression e)^"\n"
    | Conditionnelle (c,t,e) ->  "Conditionnelle  : IF "^(string_of_expression c)^"\n"^
                                  "THEN \n"^((List.fold_right (fun i tq -> (string_of_instruction i)^tq) t ""))^
                                  "ELSE \n"^((List.fold_right (fun i tq -> (string_of_instruction i)^tq) e ""))^"\n"
    | TantQue (c,b) -> "TantQue  : TQ "^(string_of_expression c)^"\n"^
                                  "FAIRE \n"^((List.fold_right (fun i tq -> (string_of_instruction i)^tq) b ""))^"\n"
    | Pour (t,n1,e1,e2,n2,e3,li) -> "Pour : FOR ("^(string_of_type t)^" "^n1^"="^(string_of_expression e1)^" ; "^(string_of_expression e2)^" ; "^n2^"="^(string_of_expression e3)^")\n"^
                                  ((List.fold_right (fun i tq -> (string_of_instruction i)^tq) li ""))^"\n"
    | DeclTypeNom (t,n) -> "DeclTypeNom : type "^n^"="^(string_of_type t)^";\n"
 (* Conversion des fonctions *)
 let string_of_dfs d = match d with
 |Fonction(t,n,lp,li,e) ->(string_of_type t)^" "^n^" ("^((List.fold_right (fun (t,n) tq -> (string_of_type t)^" "^n^" "^tq) lp ""))^") = \n"^
         ((List.fold_right (fun i tq -> (string_of_instruction i)^tq) li ""))^"Return "^(string_of_expression e)^"\n"
 |Prototype(t,n,lp)-> (string_of_type t)^" "^n^" ("^((List.fold_right (fun (t,n) tq -> (string_of_type t)^" "^n^" "^tq) lp ""))^")\n"

  (* Conversion d'un programme Rat *)
  let string_of_programme (Programme (ld1,li,ld2)) =
    (List.fold_right (fun d1 tq -> (string_of_dfs d1)^tq) ld1 "")^
    (List.fold_right (fun i tq -> (string_of_instruction i)^tq) li "")^
    (List.fold_right (fun d2 tq -> (string_of_dfs d2)^tq) ld2 "")

  (* Affichage d'un programme Rat *)
  let print_programme programme =
    print_string "AST : \n";
    print_string (string_of_programme programme);
    flush_all ()

end

(*************************************************)
(* AST après la phase d'analyse des identifiants *)
(*************************************************)
 module AstTds =
struct
  (**)
  (**)
  type affectable = 
    | Variable of Tds.info_ast (* le nom de l'identifiant est remplacé par ses informations *)
    | Deref of affectable
    | Indice of affectable * expression 
  (* Expressions existantes dans notre langage *)
  (* ~ expression de l'AST syntaxique où les noms des identifiants ont été 
  remplacés par les informations associées aux identificateurs *)
    and  expression =
    | AppelFonction of string * expression list * Tds.info_ast (* le nom de la fonction est gardé car il sera nécessaire au moment de la génération de code*)
    | Rationnel of expression * expression
    | Numerateur of expression
    | Denominateur of expression
    | True
    | False
    | Entier of int
    | Valeur of affectable
    | Null 
    | Allocation of typ
    | TabAllocation of typ * expression
    | Adresse of Tds.info_ast
    | Binaire of AstSyntax.binaire * expression * expression

  (* instructions existantes dans notre langage *)
  (* ~ instruction de l'AST syntaxique où les noms des identifiants ont été 
  remplacés par les informations associées aux identificateurs 
  + suppression de nœuds (const) *)
  type bloc = instruction list
  and instruction =
    | Declaration of typ  *expression * Tds.info_ast
    | Affectation of  affectable * expression  
    | Affichage of expression
    | Conditionnelle of expression * bloc * bloc
    | TantQue of expression * bloc 
    | Pour of typ * expression * expression * expression * bloc * Tds.info_ast
    | Empty (* les nœuds ayant disparus: Const *)


  
  type dfs = 
    | Fonction of typ * string * (typ * Tds.info_ast ) list * bloc * expression * Tds.info_ast

  (* Structure d'un programme dans notre langage *)
  type programme = Programme of dfs list * bloc

end
    

(***********************************)
(* AST après la phase de typage *)
(***********************************)
module AstType =
struct

(* Opérateurs binaires existants dans Rat - résolution de la surcharge *)
type binaire = PlusInt | PlusRat | MultInt | MultRat | EquInt | EquBool | Inf

type affectable = 
  | Variable of Tds.info_ast (* le nom de l'identifiant est remplacé par ses informations *)
  | Deref of affectable
  | Indice of affectable * expression 

(* Expressions existantes dans Rat *)
(* = expression de AstTds *)
and expression =
  | AppelFonction of string * expression list * Tds.info_ast
  | Rationnel of expression * expression
  | Numerateur of expression
  | Denominateur of expression
  | True
  | False
  | Entier of int
  | Valeur of affectable
  | Null 
  | Allocation of typ
  | TabAllocation of typ * expression
  | Adresse of Tds.info_ast
  | Binaire of binaire * expression * expression

(* instructions existantes Rat *)
(* = instruction de AstTds + informations associées aux identificateurs, mises à jour *)
(* + résolution de la surcharge de l'affichage *)
type bloc = instruction list
 and instruction =
  | Declaration of expression * Tds.info_ast
  | Affectation of  affectable * expression 
  | AffichageInt of expression
  | AffichageRat of expression
  | AffichageBool of expression
  | Conditionnelle of expression * bloc * bloc
  | TantQue of expression * bloc
  | Pour of expression * expression * expression * bloc * Tds.info_ast
  | Empty (* les nœuds ayant disparus: Const *)

(* nom, liste des paramètres, corps, expression de retour, informations associées à l'identificateur *)
type dfs =
  |Fonction of string * Tds.info_ast list * bloc * expression * Tds.info_ast 


(* Structure d'un programme dans notre langage *)
type programme = Programme of dfs list * bloc

end

(***********************************)
(* AST après la phase de placement *)
(***********************************)
module AstPlacement =
struct


(* Affectables existants dans notre langage *)
(* = affectable de AstType  *)
type affectable = AstType.affectable 


(* Expressions existantes dans notre langage *)
(* = expression de AstType  *)
type expression = AstType.expression

(* instructions existantes dans notre langage *)
(* = instructions de AstType  *)
type bloc = instruction list
 and instruction = AstType.instruction

(* nom, corps, expression de retour, informations associées à l'identificateur *)
(* Plus besoin de la liste des paramètres *)
type dfs =
  Fonction of string * bloc * expression * Tds.info_ast
  | Prototype of string  * Tds.info_ast

(* Structure d'un programme dans notre langage *)
type programme = Programme of dfs list * bloc

end
