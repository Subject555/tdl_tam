open Ast
open Compilateur
open Exceptions

exception ErreurNonDetectee;;

let%test_unit "testPointeurSimple"= 
  let _ = compiler "../../fichiersRat/test1.rat" in ()

  let%test_unit "testTableauSimple"= 
  let _ = compiler "../../fichiersRat/test2.rat" in ()
  let%test_unit "testPrototypeSimple"= 
  let _ = compiler "../../fichiersRat/test3.rat" in ()
