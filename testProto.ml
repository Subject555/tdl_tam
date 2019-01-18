open Ast
open Compilateur
open Exceptions

exception ErreurNonDetectee;;

let%test_unit "test"= 
  let _ = compiler "../../fichiersRat/src-rat-prototypes-test/testPrototype.rat" in ()

let%test_unit "test2" = 
  try 
    let _ = compiler "../../fichiersRat/src-rat-prototypes-test/testDoubleDeclarationFonction.rat"
    in raise ErreurNonDetectee
  with
  | FonctionDeclareeNonImplantee("f1") -> ()
let%test_unit "test3" = 
  try 
    let _ = compiler "../../fichiersRat/src-rat-prototypes-test/testDoubleDeclarationFonction.rat"
    in raise ErreurNonDetectee
  with
  | ImplantationNonCompatibleDeclaration("f1") -> ()



