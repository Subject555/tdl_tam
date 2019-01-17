/* Imports. */

%{

open Type
open Ast.AstSyntax
%}


%token <int> ENTIER
%token <string> ID
%token RETURN
%token PV
%token AO
%token AF
%token PF
%token PO
%token EQUAL
%token CONST
%token PRINT
%token IF
%token ELSE
%token WHILE
%token BOOL
%token INT
%token RAT
%token CALL 
%token CO
%token CF
%token SLASH
%token NUM
%token DENOM
%token TRUE
%token FALSE
%token PLUS
%token MULT
%token INF
%token ADR
%token NULL
%token NEW
%token EOF

(* Type de l'attribut synthétisé des non-terminaux *)
%type <programme> prog
%type <instruction list> bloc
%type <dfs list> ldfs
%type <dfs > dfs
%type <instruction list> is
%type <instruction> i
%type <typ> typ
%type <(typ*string) list> dp
%type <expression> e 
%type <expression list> cp
%type <affectable> aff

(* Type et définition de l'axiome *)
%start <Ast.AstSyntax.programme> main

%%

main : lfi = prog EOF     {let a = lfi in ((Ast.PrinterAstSyntax.print_programme a);a)}

prog :
| ldfs_1=ldfs ID li = bloc ldfs_2=ldfs {Programme(ldfs_1,li,ldfs_2)}

ldfs :
| {[]}
| dfs1=dfs ldfs1=ldfs              {dfs1::ldfs1}

dfs :
| t=typ n=ID PO p=dp PF AO li=is RETURN exp=e PV AF {Fonction(t,n,p,li,exp)}
| t=typ n=ID PO p=dp PF PV {Prototype(t,n,p)}


bloc : AO li = is AF      {li}

is :
|                         {[]}
| i1=i li=is              {i1::li}

i :
| t=typ n=ID EQUAL e1=e PV          {Declaration (t,n,e1)}
| a=aff EQUAL e1=e PV               {Affectation (a,e1)}
| CONST n=ID EQUAL e=ENTIER PV      {Constante (n,e)}
| PRINT e1=e PV                     {Affichage (e1)}
| IF exp=e li1=bloc ELSE li2=bloc   {Conditionnelle (exp,li1,li2)}
| WHILE exp=e li=bloc               {TantQue (exp,li)}

aff :
| n=ID                    {Variable n}
| PO MULT a=aff PF        {Deref a}
| PO a=aff CO e1=e CF PF  {Indice(a,e1)}               

dp :
|                         {[]}
| t=typ n=ID lp=dp        {(t,n)::lp}

typ :
| BOOL    {Bool}
| INT     {Int}
| RAT     {Rat}
| t=typ MULT  {Pt t}
| t=typ CO CF {Tab t}
| PO t=typ PF {t}(*mettre un nom*)

e : 
| CALL n=ID PO lp=cp PF   {AppelFonction (n,lp)}
| CO e1=e SLASH e2=e CF   {Rationnel(e1,e2)}
| NUM e1=e                {Numerateur e1}
| DENOM e1=e              {Denominateur e1}
| TRUE                    {True}
| FALSE                   {False}
| e=ENTIER                {Entier e}
| NULL                    {Null}
| a=aff              {Valeur(a)}
| PO NEW t=typ PF              {Allocation(t)}
| ADR n=ID                {Adresse(n)}
| PO NEW t=typ CO e1=e CF PF {TabAllocation(t, e1)}
| PO e1=e PLUS e2=e PF    {Binaire (Plus,e1,e2)}
| PO e1=e MULT e2=e PF    {Binaire (Mult,e1,e2)}
| PO e1=e EQUAL e2=e PF   {Binaire (Equ,e1,e2)}
| PO e1=e INF e2=e PF     {Binaire (Inf,e1,e2)}

cp :
|               {[]}
| e1=e le=cp    {e1::le}

