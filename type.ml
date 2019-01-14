type typ = Bool | Int | Rat | Undefined| Pt of typ | TypeNom of string

let rec string_of_type t = 
  match t with
  | Bool ->  "Bool"
  | Int  ->  "Int"
  | Rat  ->  "Rat"
  | Undefined -> "Undefined"
  | Pt t-> "Pointeur vers "^(string_of_type t)
  | TypeNom n -> "TypeNommé "^n



let rec est_compatible t1 t2 =
  match t1, t2 with
  | Bool, Bool -> true
  | Int, Int -> true
  | Rat, Rat -> true
  | Pt t3, Pt t4 -> est_compatible t3 t4
  | Pt t3, t4 -> est_compatible t3 t4
  | t3, Pt t4 -> est_compatible t3 t4
  | _ -> false 

let est_compatible_list lt1 lt2 =
  try
    List.for_all2 est_compatible lt1 lt2
  with Invalid_argument _ -> false

let getTaille t =
  match t with
  | Int -> 1
  | Bool -> 1
  | Rat -> 2
  | Undefined -> 0
  | Pt t -> 1
  | TypeNom n -> 0
 
  
