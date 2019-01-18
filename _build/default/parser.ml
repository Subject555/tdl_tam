
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | WHILE
    | TYPEN
    | TRUE
    | TID of (
# 12 "parser.mly"
       (string)
# 14 "parser.ml"
  )
    | SLASH
    | RETURN
    | RAT
    | PV
    | PRINT
    | PO
    | PLUS
    | PF
    | NUM
    | NULL
    | NEW
    | MULT
    | INT
    | INF
    | IF
    | ID of (
# 11 "parser.mly"
       (string)
# 34 "parser.ml"
  )
    | FOR
    | FALSE
    | EQUAL
    | EOF
    | ENTIER of (
# 10 "parser.mly"
       (int)
# 43 "parser.ml"
  )
    | ELSE
    | DENOM
    | CONST
    | CO
    | CF
    | CALL
    | BOOL
    | AO
    | AF
    | ADR
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState138
  | MenhirState136
  | MenhirState135
  | MenhirState127
  | MenhirState122
  | MenhirState119
  | MenhirState114
  | MenhirState105
  | MenhirState103
  | MenhirState99
  | MenhirState97
  | MenhirState94
  | MenhirState91
  | MenhirState89
  | MenhirState88
  | MenhirState87
  | MenhirState84
  | MenhirState81
  | MenhirState78
  | MenhirState77
  | MenhirState73
  | MenhirState70
  | MenhirState67
  | MenhirState64
  | MenhirState57
  | MenhirState55
  | MenhirState54
  | MenhirState50
  | MenhirState47
  | MenhirState42
  | MenhirState36
  | MenhirState33
  | MenhirState30
  | MenhirState29
  | MenhirState24
  | MenhirState23
  | MenhirState21
  | MenhirState20
  | MenhirState15
  | MenhirState13
  | MenhirState9
  | MenhirState3
  | MenhirState0

# 3 "parser.mly"
  

open Type
open Ast.AstSyntax

# 121 "parser.ml"

let rec _menhir_goto_is : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 51 "parser.mly"
      (instruction list)
# 126 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv493 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (instruction list)
# 136 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv489 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (instruction list)
# 146 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv487 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (instruction list)
# 153 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (li : (
# 51 "parser.mly"
      (instruction list)
# 158 "parser.ml"
            ))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 48 "parser.mly"
      (instruction list)
# 165 "parser.ml"
            ) = 
# 77 "parser.mly"
                          (li)
# 169 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv485) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 48 "parser.mly"
      (instruction list)
# 177 "parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            match _menhir_s with
            | MenhirState89 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv469 * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 186 "parser.ml"
                )) * _menhir_state * (
# 48 "parser.mly"
      (instruction list)
# 190 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ELSE ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv465 * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 200 "parser.ml"
                    )) * _menhir_state * (
# 48 "parser.mly"
      (instruction list)
# 204 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | AO ->
                        _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState91
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState91) : 'freshtv466)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv467 * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 222 "parser.ml"
                    )) * _menhir_state * (
# 48 "parser.mly"
      (instruction list)
# 226 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv468)) : 'freshtv470)
            | MenhirState91 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv473 * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 235 "parser.ml"
                )) * _menhir_state * (
# 48 "parser.mly"
      (instruction list)
# 239 "parser.ml"
                ))) * _menhir_state * (
# 48 "parser.mly"
      (instruction list)
# 243 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv471 * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 249 "parser.ml"
                )) * _menhir_state * (
# 48 "parser.mly"
      (instruction list)
# 253 "parser.ml"
                ))) * _menhir_state * (
# 48 "parser.mly"
      (instruction list)
# 257 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((((_menhir_stack, _menhir_s), _, (exp : (
# 55 "parser.mly"
      (expression)
# 262 "parser.ml"
                ))), _, (li1 : (
# 48 "parser.mly"
      (instruction list)
# 266 "parser.ml"
                ))), _, (li2 : (
# 48 "parser.mly"
      (instruction list)
# 270 "parser.ml"
                ))) = _menhir_stack in
                let _4 = () in
                let _1 = () in
                let _v : (
# 52 "parser.mly"
      (instruction)
# 277 "parser.ml"
                ) = 
# 88 "parser.mly"
                                    (Conditionnelle (exp,li1,li2))
# 281 "parser.ml"
                 in
                _menhir_goto_i _menhir_env _menhir_stack _menhir_s _v) : 'freshtv472)) : 'freshtv474)
            | MenhirState105 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((((((((((('freshtv477 * _menhir_state)) * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 289 "parser.ml"
                )) * (
# 11 "parser.mly"
       (string)
# 293 "parser.ml"
                ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 297 "parser.ml"
                ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 301 "parser.ml"
                ))) * (
# 11 "parser.mly"
       (string)
# 305 "parser.ml"
                ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 309 "parser.ml"
                ))) * _menhir_state * (
# 48 "parser.mly"
      (instruction list)
# 313 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((((((((((('freshtv475 * _menhir_state)) * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 319 "parser.ml"
                )) * (
# 11 "parser.mly"
       (string)
# 323 "parser.ml"
                ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 327 "parser.ml"
                ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 331 "parser.ml"
                ))) * (
# 11 "parser.mly"
       (string)
# 335 "parser.ml"
                ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 339 "parser.ml"
                ))) * _menhir_state * (
# 48 "parser.mly"
      (instruction list)
# 343 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((((((((_menhir_stack, _menhir_s), _, (t : (
# 53 "parser.mly"
      (typ)
# 348 "parser.ml"
                ))), (n1 : (
# 11 "parser.mly"
       (string)
# 352 "parser.ml"
                ))), _, (e1 : (
# 55 "parser.mly"
      (expression)
# 356 "parser.ml"
                ))), _, (e2 : (
# 55 "parser.mly"
      (expression)
# 360 "parser.ml"
                ))), (n2 : (
# 11 "parser.mly"
       (string)
# 364 "parser.ml"
                ))), _, (e3 : (
# 55 "parser.mly"
      (expression)
# 368 "parser.ml"
                ))), _, (li : (
# 48 "parser.mly"
      (instruction list)
# 372 "parser.ml"
                ))) = _menhir_stack in
                let _13 = () in
                let _11 = () in
                let _9 = () in
                let _7 = () in
                let _5 = () in
                let _2 = () in
                let _1 = () in
                let _v : (
# 52 "parser.mly"
      (instruction)
# 384 "parser.ml"
                ) = 
# 90 "parser.mly"
                                                                       (Pour (t,n1,e1,e2,n2,e3,li))
# 388 "parser.ml"
                 in
                _menhir_goto_i _menhir_env _menhir_stack _menhir_s _v) : 'freshtv476)) : 'freshtv478)
            | MenhirState77 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv481 * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 396 "parser.ml"
                )) * _menhir_state * (
# 48 "parser.mly"
      (instruction list)
# 400 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv479 * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 406 "parser.ml"
                )) * _menhir_state * (
# 48 "parser.mly"
      (instruction list)
# 410 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let (((_menhir_stack, _menhir_s), _, (exp : (
# 55 "parser.mly"
      (expression)
# 415 "parser.ml"
                ))), _, (li : (
# 48 "parser.mly"
      (instruction list)
# 419 "parser.ml"
                ))) = _menhir_stack in
                let _1 = () in
                let _v : (
# 52 "parser.mly"
      (instruction)
# 425 "parser.ml"
                ) = 
# 89 "parser.mly"
                                    (TantQue (exp,li))
# 429 "parser.ml"
                 in
                _menhir_goto_i _menhir_env _menhir_stack _menhir_s _v) : 'freshtv480)) : 'freshtv482)
            | MenhirState135 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv483 * _menhir_state * (
# 49 "parser.mly"
      (dfs list)
# 437 "parser.ml"
                )) * (
# 11 "parser.mly"
       (string)
# 441 "parser.ml"
                )) * _menhir_state * (
# 48 "parser.mly"
      (instruction list)
# 445 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BOOL ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState136
                | INT ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState136
                | PO ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState136
                | RAT ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState136
                | TID _v ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState136 _v
                | EOF ->
                    _menhir_reduce37 _menhir_env (Obj.magic _menhir_stack) MenhirState136
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState136) : 'freshtv484)
            | _ ->
                _menhir_fail ()) : 'freshtv486)) : 'freshtv488)) : 'freshtv490)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv491 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (instruction list)
# 475 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv492)) : 'freshtv494)
    | MenhirState119 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv497 * _menhir_state * (
# 52 "parser.mly"
      (instruction)
# 484 "parser.ml"
        )) * _menhir_state * (
# 51 "parser.mly"
      (instruction list)
# 488 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv495 * _menhir_state * (
# 52 "parser.mly"
      (instruction)
# 494 "parser.ml"
        )) * _menhir_state * (
# 51 "parser.mly"
      (instruction list)
# 498 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (i1 : (
# 52 "parser.mly"
      (instruction)
# 503 "parser.ml"
        ))), _, (li : (
# 51 "parser.mly"
      (instruction list)
# 507 "parser.ml"
        ))) = _menhir_stack in
        let _v : (
# 51 "parser.mly"
      (instruction list)
# 512 "parser.ml"
        ) = 
# 81 "parser.mly"
                          (i1::li)
# 516 "parser.ml"
         in
        _menhir_goto_is _menhir_env _menhir_stack _menhir_s _v) : 'freshtv496)) : 'freshtv498)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv503 * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 524 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 528 "parser.ml"
        ))) * _menhir_state * (
# 54 "parser.mly"
      ((typ*string) list)
# 532 "parser.ml"
        )))) * _menhir_state * (
# 51 "parser.mly"
      (instruction list)
# 536 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RETURN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv499 * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 546 "parser.ml"
            )) * (
# 11 "parser.mly"
       (string)
# 550 "parser.ml"
            ))) * _menhir_state * (
# 54 "parser.mly"
      ((typ*string) list)
# 554 "parser.ml"
            )))) * _menhir_state * (
# 51 "parser.mly"
      (instruction list)
# 558 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ADR ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | CALL ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | CO ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | DENOM ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | ENTIER _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
            | FALSE ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | ID _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
            | NULL ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | NUM ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | PO ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | TRUE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState127) : 'freshtv500)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv501 * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 596 "parser.ml"
            )) * (
# 11 "parser.mly"
       (string)
# 600 "parser.ml"
            ))) * _menhir_state * (
# 54 "parser.mly"
      ((typ*string) list)
# 604 "parser.ml"
            )))) * _menhir_state * (
# 51 "parser.mly"
      (instruction list)
# 608 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv502)) : 'freshtv504)
    | _ ->
        _menhir_fail ()

and _menhir_run55 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | MULT ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | PO ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55

and _menhir_run57 : _menhir_env -> ('ttv_tail * _menhir_state) * _menhir_state * (
# 57 "parser.mly"
      (affectable)
# 635 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADR ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | CALL ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | CO ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | DENOM ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | ENTIER _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | FALSE ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | ID _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | NULL ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | NUM ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | PO ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | TRUE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState57

and _menhir_reduce19 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 57 "parser.mly"
      (affectable)
# 671 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (a : (
# 57 "parser.mly"
      (affectable)
# 677 "parser.ml"
    ))) = _menhir_stack in
    let _v : (
# 55 "parser.mly"
      (expression)
# 682 "parser.ml"
    ) = 
# 120 "parser.mly"
                     (Valeur(a))
# 686 "parser.ml"
     in
    _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_cp : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 56 "parser.mly"
      (expression list)
# 693 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv455 * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 703 "parser.ml"
        )) * _menhir_state * (
# 56 "parser.mly"
      (expression list)
# 707 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv453 * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 713 "parser.ml"
        )) * _menhir_state * (
# 56 "parser.mly"
      (expression list)
# 717 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (e1 : (
# 55 "parser.mly"
      (expression)
# 722 "parser.ml"
        ))), _, (le : (
# 56 "parser.mly"
      (expression list)
# 726 "parser.ml"
        ))) = _menhir_stack in
        let _v : (
# 56 "parser.mly"
      (expression list)
# 731 "parser.ml"
        ) = 
# 131 "parser.mly"
                (e1::le)
# 735 "parser.ml"
         in
        _menhir_goto_cp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv454)) : 'freshtv456)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv463 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 743 "parser.ml"
        ))) * _menhir_state * (
# 56 "parser.mly"
      (expression list)
# 747 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv459 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 757 "parser.ml"
            ))) * _menhir_state * (
# 56 "parser.mly"
      (expression list)
# 761 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv457 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 768 "parser.ml"
            ))) * _menhir_state * (
# 56 "parser.mly"
      (expression list)
# 772 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), (n : (
# 11 "parser.mly"
       (string)
# 777 "parser.ml"
            ))), _, (lp : (
# 56 "parser.mly"
      (expression list)
# 781 "parser.ml"
            ))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (
# 55 "parser.mly"
      (expression)
# 789 "parser.ml"
            ) = 
# 112 "parser.mly"
                          (AppelFonction (n,lp))
# 793 "parser.ml"
             in
            _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv458)) : 'freshtv460)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv461 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 803 "parser.ml"
            ))) * _menhir_state * (
# 56 "parser.mly"
      (expression list)
# 807 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv462)) : 'freshtv464)
    | _ ->
        _menhir_fail ()

and _menhir_reduce35 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (
# 51 "parser.mly"
      (instruction list)
# 819 "parser.ml"
    ) = 
# 80 "parser.mly"
                          ([])
# 823 "parser.ml"
     in
    _menhir_goto_is _menhir_env _menhir_stack _menhir_s _v

and _menhir_run21 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADR ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | CALL ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | CO ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | DENOM ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | ENTIER _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
    | FALSE ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | ID _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
    | NULL ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | NUM ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | PO ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | TRUE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21

and _menhir_run79 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv449 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 12 "parser.mly"
       (string)
# 872 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQUAL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv445 * _menhir_state) * (
# 12 "parser.mly"
       (string)
# 883 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState81
            | INT ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState81
            | PO ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState81
            | RAT ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState81
            | TID _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState81) : 'freshtv446)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv447 * _menhir_state) * (
# 12 "parser.mly"
       (string)
# 909 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv448)) : 'freshtv450)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv451 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv452)

and _menhir_run84 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADR ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | CALL ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | CO ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | DENOM ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | ENTIER _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | FALSE ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | ID _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | NULL ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | NUM ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | PO ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | TRUE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState84

and _menhir_run87 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | ID _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
    | INT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | MULT ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | PO ->
        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | RAT ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | TID _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState87

and _menhir_run88 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADR ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | CALL ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | CO ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | DENOM ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | ENTIER _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | FALSE ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | ID _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | NULL ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | NUM ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | PO ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | TRUE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState88

and _menhir_run93 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | PO ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv441 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | INT ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | PO ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | RAT ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | TID _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState94) : 'freshtv442)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv443 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv444)

and _menhir_run107 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv437 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 11 "parser.mly"
       (string)
# 1058 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQUAL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv433 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 1069 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ENTIER _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv429 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 1079 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                let (_v : (
# 10 "parser.mly"
       (int)
# 1084 "parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | PV ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv425 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 1095 "parser.ml"
                    ))) * (
# 10 "parser.mly"
       (int)
# 1099 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv423 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 1106 "parser.ml"
                    ))) * (
# 10 "parser.mly"
       (int)
# 1110 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let (((_menhir_stack, _menhir_s), (n : (
# 11 "parser.mly"
       (string)
# 1115 "parser.ml"
                    ))), (e : (
# 10 "parser.mly"
       (int)
# 1119 "parser.ml"
                    ))) = _menhir_stack in
                    let _5 = () in
                    let _3 = () in
                    let _1 = () in
                    let _v : (
# 52 "parser.mly"
      (instruction)
# 1127 "parser.ml"
                    ) = 
# 86 "parser.mly"
                                    (Constante (n,e))
# 1131 "parser.ml"
                     in
                    _menhir_goto_i _menhir_env _menhir_stack _menhir_s _v) : 'freshtv424)) : 'freshtv426)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv427 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 1141 "parser.ml"
                    ))) * (
# 10 "parser.mly"
       (int)
# 1145 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv428)) : 'freshtv430)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv431 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 1156 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv432)) : 'freshtv434)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv435 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 1167 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv436)) : 'freshtv438)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv439 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv440)

and _menhir_goto_dfs : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 50 "parser.mly"
      (dfs )
# 1182 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv421 * _menhir_state * (
# 50 "parser.mly"
      (dfs )
# 1190 "parser.ml"
    )) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState138
    | INT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState138
    | PO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState138
    | RAT ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState138
    | TID _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
    | EOF | ID _ ->
        _menhir_reduce37 _menhir_env (Obj.magic _menhir_stack) MenhirState138
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState138) : 'freshtv422)

and _menhir_run54 : _menhir_env -> 'ttv_tail * _menhir_state -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
    | PO ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState54

and _menhir_goto_aff : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 57 "parser.mly"
      (affectable)
# 1230 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState127 | MenhirState21 | MenhirState122 | MenhirState114 | MenhirState97 | MenhirState99 | MenhirState103 | MenhirState88 | MenhirState84 | MenhirState73 | MenhirState70 | MenhirState67 | MenhirState64 | MenhirState57 | MenhirState50 | MenhirState24 | MenhirState29 | MenhirState30 | MenhirState42 | MenhirState33 | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv397 * _menhir_state * (
# 57 "parser.mly"
      (affectable)
# 1240 "parser.ml"
        )) = Obj.magic _menhir_stack in
        (_menhir_reduce19 _menhir_env (Obj.magic _menhir_stack) : 'freshtv398)
    | MenhirState87 | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv401 * _menhir_state) * _menhir_state * (
# 57 "parser.mly"
      (affectable)
# 1248 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CO ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv399 * _menhir_state) * _menhir_state * (
# 57 "parser.mly"
      (affectable)
# 1262 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv400)) : 'freshtv402)
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv409 * _menhir_state) * _menhir_state) * _menhir_state * (
# 57 "parser.mly"
      (affectable)
# 1271 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv405 * _menhir_state) * _menhir_state) * _menhir_state * (
# 57 "parser.mly"
      (affectable)
# 1281 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv403 * _menhir_state) * _menhir_state) * _menhir_state * (
# 57 "parser.mly"
      (affectable)
# 1288 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _), _, (a : (
# 57 "parser.mly"
      (affectable)
# 1293 "parser.ml"
            ))) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (
# 57 "parser.mly"
      (affectable)
# 1301 "parser.ml"
            ) = 
# 95 "parser.mly"
                          (Deref a)
# 1305 "parser.ml"
             in
            _menhir_goto_aff _menhir_env _menhir_stack _menhir_s _v) : 'freshtv404)) : 'freshtv406)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv407 * _menhir_state) * _menhir_state) * _menhir_state * (
# 57 "parser.mly"
      (affectable)
# 1315 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv408)) : 'freshtv410)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv413 * _menhir_state) * _menhir_state * (
# 57 "parser.mly"
      (affectable)
# 1324 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CO ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL | INF | MULT | PLUS ->
            _menhir_reduce19 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv411 * _menhir_state) * _menhir_state * (
# 57 "parser.mly"
      (affectable)
# 1340 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv412)) : 'freshtv414)
    | MenhirState20 | MenhirState78 | MenhirState119 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv419 * _menhir_state * (
# 57 "parser.mly"
      (affectable)
# 1349 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQUAL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv415 * _menhir_state * (
# 57 "parser.mly"
      (affectable)
# 1359 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ADR ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | CALL ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | CO ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | DENOM ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | ENTIER _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
            | FALSE ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | ID _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
            | NULL ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | NUM ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | PO ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | TRUE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState122) : 'freshtv416)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv417 * _menhir_state * (
# 57 "parser.mly"
      (affectable)
# 1397 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv418)) : 'freshtv420)
    | _ ->
        _menhir_fail ()

and _menhir_reduce5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (
# 56 "parser.mly"
      (expression list)
# 1409 "parser.ml"
    ) = 
# 130 "parser.mly"
                ([])
# 1413 "parser.ml"
     in
    _menhir_goto_cp _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_dp : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 54 "parser.mly"
      ((typ*string) list)
# 1420 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv381 * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 1430 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 1434 "parser.ml"
        )) * _menhir_state * (
# 54 "parser.mly"
      ((typ*string) list)
# 1438 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv379 * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 1444 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 1448 "parser.ml"
        )) * _menhir_state * (
# 54 "parser.mly"
      ((typ*string) list)
# 1452 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, (t : (
# 53 "parser.mly"
      (typ)
# 1457 "parser.ml"
        ))), (n : (
# 11 "parser.mly"
       (string)
# 1461 "parser.ml"
        ))), _, (lp : (
# 54 "parser.mly"
      ((typ*string) list)
# 1465 "parser.ml"
        ))) = _menhir_stack in
        let _v : (
# 54 "parser.mly"
      ((typ*string) list)
# 1470 "parser.ml"
        ) = 
# 100 "parser.mly"
                          ((t,n)::lp)
# 1474 "parser.ml"
         in
        _menhir_goto_dp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv380)) : 'freshtv382)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv395 * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 1482 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 1486 "parser.ml"
        ))) * _menhir_state * (
# 54 "parser.mly"
      ((typ*string) list)
# 1490 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv391 * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 1500 "parser.ml"
            )) * (
# 11 "parser.mly"
       (string)
# 1504 "parser.ml"
            ))) * _menhir_state * (
# 54 "parser.mly"
      ((typ*string) list)
# 1508 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AO ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv383 * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 1518 "parser.ml"
                )) * (
# 11 "parser.mly"
       (string)
# 1522 "parser.ml"
                ))) * _menhir_state * (
# 54 "parser.mly"
      ((typ*string) list)
# 1526 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BOOL ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState20
                | CONST ->
                    _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState20
                | FOR ->
                    _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState20
                | ID _v ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
                | IF ->
                    _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState20
                | INT ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState20
                | PO ->
                    _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState20
                | PRINT ->
                    _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState20
                | RAT ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState20
                | TID _v ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
                | TYPEN ->
                    _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState20
                | WHILE ->
                    _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState20
                | RETURN ->
                    _menhir_reduce35 _menhir_env (Obj.magic _menhir_stack) MenhirState20
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20) : 'freshtv384)
            | PV ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv387 * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 1566 "parser.ml"
                )) * (
# 11 "parser.mly"
       (string)
# 1570 "parser.ml"
                ))) * _menhir_state * (
# 54 "parser.mly"
      ((typ*string) list)
# 1574 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv385 * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 1581 "parser.ml"
                )) * (
# 11 "parser.mly"
       (string)
# 1585 "parser.ml"
                ))) * _menhir_state * (
# 54 "parser.mly"
      ((typ*string) list)
# 1589 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let (((_menhir_stack, _menhir_s, (t : (
# 53 "parser.mly"
      (typ)
# 1594 "parser.ml"
                ))), (n : (
# 11 "parser.mly"
       (string)
# 1598 "parser.ml"
                ))), _, (p : (
# 54 "parser.mly"
      ((typ*string) list)
# 1602 "parser.ml"
                ))) = _menhir_stack in
                let _6 = () in
                let _5 = () in
                let _3 = () in
                let _v : (
# 50 "parser.mly"
      (dfs )
# 1610 "parser.ml"
                ) = 
# 75 "parser.mly"
                           (Prototype(t,n,p))
# 1614 "parser.ml"
                 in
                _menhir_goto_dfs _menhir_env _menhir_stack _menhir_s _v) : 'freshtv386)) : 'freshtv388)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv389 * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 1624 "parser.ml"
                )) * (
# 11 "parser.mly"
       (string)
# 1628 "parser.ml"
                ))) * _menhir_state * (
# 54 "parser.mly"
      ((typ*string) list)
# 1632 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv390)) : 'freshtv392)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv393 * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 1643 "parser.ml"
            )) * (
# 11 "parser.mly"
       (string)
# 1647 "parser.ml"
            ))) * _menhir_state * (
# 54 "parser.mly"
      ((typ*string) list)
# 1651 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv394)) : 'freshtv396)
    | _ ->
        _menhir_fail ()

and _menhir_run78 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | CONST ->
        _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | FOR ->
        _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | ID _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | IF ->
        _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | INT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | PO ->
        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | PRINT ->
        _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | RAT ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | TID _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | TYPEN ->
        _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | WHILE ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | AF ->
        _menhir_reduce35 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState78

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_i : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 52 "parser.mly"
      (instruction)
# 1703 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv377 * _menhir_state * (
# 52 "parser.mly"
      (instruction)
# 1711 "parser.ml"
    )) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState119
    | CONST ->
        _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState119
    | FOR ->
        _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState119
    | ID _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState119 _v
    | IF ->
        _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState119
    | INT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState119
    | PO ->
        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState119
    | PRINT ->
        _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState119
    | RAT ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState119
    | TID _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState119 _v
    | TYPEN ->
        _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState119
    | WHILE ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState119
    | AF | RETURN ->
        _menhir_reduce35 _menhir_env (Obj.magic _menhir_stack) MenhirState119
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState119) : 'freshtv378)

and _menhir_goto_e : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 55 "parser.mly"
      (expression)
# 1750 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState36 | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv219 * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 1760 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ADR ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | CALL ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | CO ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | DENOM ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | ENTIER _v ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
        | FALSE ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | ID _v ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
        | NULL ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | NUM ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | PO ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | TRUE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | PF ->
            _menhir_reduce5 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState36) : 'freshtv220)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv225 * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 1798 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SLASH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv221 * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 1808 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ADR ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState42
            | CALL ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState42
            | CO ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState42
            | DENOM ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState42
            | ENTIER _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
            | FALSE ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState42
            | ID _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
            | NULL ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState42
            | NUM ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState42
            | PO ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState42
            | TRUE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState42
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState42) : 'freshtv222)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv223 * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 1846 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv224)) : 'freshtv226)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv233 * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 1855 "parser.ml"
        ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 1859 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv229 * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 1869 "parser.ml"
            ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 1873 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv227 * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 1880 "parser.ml"
            ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 1884 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (e1 : (
# 55 "parser.mly"
      (expression)
# 1889 "parser.ml"
            ))), _, (e2 : (
# 55 "parser.mly"
      (expression)
# 1893 "parser.ml"
            ))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (
# 55 "parser.mly"
      (expression)
# 1901 "parser.ml"
            ) = 
# 113 "parser.mly"
                          (Rationnel(e1,e2))
# 1905 "parser.ml"
             in
            _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv228)) : 'freshtv230)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv231 * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 1915 "parser.ml"
            ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 1919 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv232)) : 'freshtv234)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv237 * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 1928 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv235 * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 1934 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (e1 : (
# 55 "parser.mly"
      (expression)
# 1939 "parser.ml"
        ))) = _menhir_stack in
        let _1 = () in
        let _v : (
# 55 "parser.mly"
      (expression)
# 1945 "parser.ml"
        ) = 
# 115 "parser.mly"
                          (Denominateur e1)
# 1949 "parser.ml"
         in
        _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv236)) : 'freshtv238)
    | MenhirState24 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv241 * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 1957 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv239 * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 1963 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (e1 : (
# 55 "parser.mly"
      (expression)
# 1968 "parser.ml"
        ))) = _menhir_stack in
        let _1 = () in
        let _v : (
# 55 "parser.mly"
      (expression)
# 1974 "parser.ml"
        ) = 
# 114 "parser.mly"
                          (Numerateur e1)
# 1978 "parser.ml"
         in
        _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv240)) : 'freshtv242)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv253 * _menhir_state) * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 1986 "parser.ml"
        ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 1990 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv249 * _menhir_state) * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 2000 "parser.ml"
            ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2004 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | PF ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv245 * _menhir_state) * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 2014 "parser.ml"
                ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2018 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv243 * _menhir_state) * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 2025 "parser.ml"
                ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2029 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let ((((_menhir_stack, _menhir_s), _), _, (t : (
# 53 "parser.mly"
      (typ)
# 2034 "parser.ml"
                ))), _, (e1 : (
# 55 "parser.mly"
      (expression)
# 2038 "parser.ml"
                ))) = _menhir_stack in
                let _7 = () in
                let _6 = () in
                let _4 = () in
                let _2 = () in
                let _1 = () in
                let _v : (
# 55 "parser.mly"
      (expression)
# 2048 "parser.ml"
                ) = 
# 123 "parser.mly"
                             (TabAllocation(t, e1))
# 2052 "parser.ml"
                 in
                _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv244)) : 'freshtv246)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv247 * _menhir_state) * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 2062 "parser.ml"
                ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2066 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv248)) : 'freshtv250)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv251 * _menhir_state) * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 2077 "parser.ml"
            ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2081 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv252)) : 'freshtv254)
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv265 * _menhir_state) * _menhir_state * (
# 57 "parser.mly"
      (affectable)
# 2090 "parser.ml"
        ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2094 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv261 * _menhir_state) * _menhir_state * (
# 57 "parser.mly"
      (affectable)
# 2104 "parser.ml"
            ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2108 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | PF ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv257 * _menhir_state) * _menhir_state * (
# 57 "parser.mly"
      (affectable)
# 2118 "parser.ml"
                ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2122 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv255 * _menhir_state) * _menhir_state * (
# 57 "parser.mly"
      (affectable)
# 2129 "parser.ml"
                ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2133 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let (((_menhir_stack, _menhir_s), _, (a : (
# 57 "parser.mly"
      (affectable)
# 2138 "parser.ml"
                ))), _, (e1 : (
# 55 "parser.mly"
      (expression)
# 2142 "parser.ml"
                ))) = _menhir_stack in
                let _6 = () in
                let _5 = () in
                let _3 = () in
                let _1 = () in
                let _v : (
# 57 "parser.mly"
      (affectable)
# 2151 "parser.ml"
                ) = 
# 96 "parser.mly"
                          (Indice(a,e1))
# 2155 "parser.ml"
                 in
                _menhir_goto_aff _menhir_env _menhir_stack _menhir_s _v) : 'freshtv256)) : 'freshtv258)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv259 * _menhir_state) * _menhir_state * (
# 57 "parser.mly"
      (affectable)
# 2165 "parser.ml"
                ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2169 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv260)) : 'freshtv262)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv263 * _menhir_state) * _menhir_state * (
# 57 "parser.mly"
      (affectable)
# 2180 "parser.ml"
            ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2184 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv264)) : 'freshtv266)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv277 * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2193 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQUAL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv267 * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2203 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ADR ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState73
            | CALL ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState73
            | CO ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState73
            | DENOM ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState73
            | ENTIER _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
            | FALSE ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState73
            | ID _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
            | NULL ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState73
            | NUM ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState73
            | PO ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState73
            | TRUE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState73
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState73) : 'freshtv268)
        | INF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv269 * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2239 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ADR ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | CALL ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | CO ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | DENOM ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | ENTIER _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
            | FALSE ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | ID _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
            | NULL ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | NUM ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | PO ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | TRUE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState70) : 'freshtv270)
        | MULT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv271 * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2275 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ADR ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | CALL ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | CO ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | DENOM ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | ENTIER _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
            | FALSE ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | ID _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
            | NULL ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | NUM ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | PO ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | TRUE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState67) : 'freshtv272)
        | PLUS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv273 * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2311 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ADR ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | CALL ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | CO ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | DENOM ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | ENTIER _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | FALSE ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | ID _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | NULL ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | NUM ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | PO ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | TRUE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState64) : 'freshtv274)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv275 * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2349 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv276)) : 'freshtv278)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv285 * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2358 "parser.ml"
        ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2362 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv281 * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2372 "parser.ml"
            ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2376 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv279 * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2383 "parser.ml"
            ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2387 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (e1 : (
# 55 "parser.mly"
      (expression)
# 2392 "parser.ml"
            ))), _, (e2 : (
# 55 "parser.mly"
      (expression)
# 2396 "parser.ml"
            ))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (
# 55 "parser.mly"
      (expression)
# 2404 "parser.ml"
            ) = 
# 124 "parser.mly"
                          (Binaire (Plus,e1,e2))
# 2408 "parser.ml"
             in
            _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv280)) : 'freshtv282)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv283 * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2418 "parser.ml"
            ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2422 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv284)) : 'freshtv286)
    | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv293 * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2431 "parser.ml"
        ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2435 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv289 * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2445 "parser.ml"
            ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2449 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv287 * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2456 "parser.ml"
            ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2460 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (e1 : (
# 55 "parser.mly"
      (expression)
# 2465 "parser.ml"
            ))), _, (e2 : (
# 55 "parser.mly"
      (expression)
# 2469 "parser.ml"
            ))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (
# 55 "parser.mly"
      (expression)
# 2477 "parser.ml"
            ) = 
# 125 "parser.mly"
                          (Binaire (Mult,e1,e2))
# 2481 "parser.ml"
             in
            _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv288)) : 'freshtv290)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv291 * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2491 "parser.ml"
            ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2495 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv292)) : 'freshtv294)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv301 * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2504 "parser.ml"
        ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2508 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv297 * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2518 "parser.ml"
            ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2522 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv295 * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2529 "parser.ml"
            ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2533 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (e1 : (
# 55 "parser.mly"
      (expression)
# 2538 "parser.ml"
            ))), _, (e2 : (
# 55 "parser.mly"
      (expression)
# 2542 "parser.ml"
            ))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (
# 55 "parser.mly"
      (expression)
# 2550 "parser.ml"
            ) = 
# 127 "parser.mly"
                          (Binaire (Inf,e1,e2))
# 2554 "parser.ml"
             in
            _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv296)) : 'freshtv298)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv299 * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2564 "parser.ml"
            ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2568 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv300)) : 'freshtv302)
    | MenhirState73 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv309 * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2577 "parser.ml"
        ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2581 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv305 * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2591 "parser.ml"
            ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2595 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv303 * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2602 "parser.ml"
            ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2606 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (e1 : (
# 55 "parser.mly"
      (expression)
# 2611 "parser.ml"
            ))), _, (e2 : (
# 55 "parser.mly"
      (expression)
# 2615 "parser.ml"
            ))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (
# 55 "parser.mly"
      (expression)
# 2623 "parser.ml"
            ) = 
# 126 "parser.mly"
                          (Binaire (Equ,e1,e2))
# 2627 "parser.ml"
             in
            _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv304)) : 'freshtv306)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv307 * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2637 "parser.ml"
            ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2641 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv308)) : 'freshtv310)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv311 * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2650 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AO ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState77) : 'freshtv312)
    | MenhirState84 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv319 * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2666 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PV ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv315 * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2676 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv313 * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2683 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e1 : (
# 55 "parser.mly"
      (expression)
# 2688 "parser.ml"
            ))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 52 "parser.mly"
      (instruction)
# 2695 "parser.ml"
            ) = 
# 87 "parser.mly"
                                    (Affichage (e1))
# 2699 "parser.ml"
             in
            _menhir_goto_i _menhir_env _menhir_stack _menhir_s _v) : 'freshtv314)) : 'freshtv316)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv317 * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2709 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv318)) : 'freshtv320)
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv321 * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2718 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AO ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState89) : 'freshtv322)
    | MenhirState97 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv327 * _menhir_state)) * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 2734 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 2738 "parser.ml"
        ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2742 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PV ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv323 * _menhir_state)) * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 2752 "parser.ml"
            )) * (
# 11 "parser.mly"
       (string)
# 2756 "parser.ml"
            ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2760 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ADR ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState99
            | CALL ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState99
            | CO ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState99
            | DENOM ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState99
            | ENTIER _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
            | FALSE ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState99
            | ID _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
            | NULL ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState99
            | NUM ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState99
            | PO ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState99
            | TRUE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState99
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState99) : 'freshtv324)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv325 * _menhir_state)) * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 2798 "parser.ml"
            )) * (
# 11 "parser.mly"
       (string)
# 2802 "parser.ml"
            ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2806 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv326)) : 'freshtv328)
    | MenhirState99 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv341 * _menhir_state)) * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 2815 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 2819 "parser.ml"
        ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2823 "parser.ml"
        ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2827 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PV ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv337 * _menhir_state)) * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 2837 "parser.ml"
            )) * (
# 11 "parser.mly"
       (string)
# 2841 "parser.ml"
            ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2845 "parser.ml"
            ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2849 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((((('freshtv333 * _menhir_state)) * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 2859 "parser.ml"
                )) * (
# 11 "parser.mly"
       (string)
# 2863 "parser.ml"
                ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2867 "parser.ml"
                ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2871 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                let (_v : (
# 11 "parser.mly"
       (string)
# 2876 "parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | EQUAL ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((((((((('freshtv329 * _menhir_state)) * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 2887 "parser.ml"
                    )) * (
# 11 "parser.mly"
       (string)
# 2891 "parser.ml"
                    ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2895 "parser.ml"
                    ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2899 "parser.ml"
                    ))) * (
# 11 "parser.mly"
       (string)
# 2903 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | ADR ->
                        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState103
                    | CALL ->
                        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState103
                    | CO ->
                        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState103
                    | DENOM ->
                        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState103
                    | ENTIER _v ->
                        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
                    | FALSE ->
                        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState103
                    | ID _v ->
                        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
                    | NULL ->
                        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState103
                    | NUM ->
                        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState103
                    | PO ->
                        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState103
                    | TRUE ->
                        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState103
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState103) : 'freshtv330)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((((((((('freshtv331 * _menhir_state)) * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 2941 "parser.ml"
                    )) * (
# 11 "parser.mly"
       (string)
# 2945 "parser.ml"
                    ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2949 "parser.ml"
                    ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2953 "parser.ml"
                    ))) * (
# 11 "parser.mly"
       (string)
# 2957 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv332)) : 'freshtv334)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((((('freshtv335 * _menhir_state)) * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 2968 "parser.ml"
                )) * (
# 11 "parser.mly"
       (string)
# 2972 "parser.ml"
                ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2976 "parser.ml"
                ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2980 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv336)) : 'freshtv338)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv339 * _menhir_state)) * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 2991 "parser.ml"
            )) * (
# 11 "parser.mly"
       (string)
# 2995 "parser.ml"
            ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 2999 "parser.ml"
            ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 3003 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv340)) : 'freshtv342)
    | MenhirState103 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((((('freshtv347 * _menhir_state)) * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 3012 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 3016 "parser.ml"
        ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 3020 "parser.ml"
        ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 3024 "parser.ml"
        ))) * (
# 11 "parser.mly"
       (string)
# 3028 "parser.ml"
        ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 3032 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((((('freshtv343 * _menhir_state)) * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 3042 "parser.ml"
            )) * (
# 11 "parser.mly"
       (string)
# 3046 "parser.ml"
            ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 3050 "parser.ml"
            ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 3054 "parser.ml"
            ))) * (
# 11 "parser.mly"
       (string)
# 3058 "parser.ml"
            ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 3062 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AO ->
                _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState105) : 'freshtv344)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((((('freshtv345 * _menhir_state)) * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 3080 "parser.ml"
            )) * (
# 11 "parser.mly"
       (string)
# 3084 "parser.ml"
            ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 3088 "parser.ml"
            ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 3092 "parser.ml"
            ))) * (
# 11 "parser.mly"
       (string)
# 3096 "parser.ml"
            ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 3100 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv346)) : 'freshtv348)
    | MenhirState114 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv355 * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 3109 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 3113 "parser.ml"
        ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 3117 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PV ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv351 * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 3127 "parser.ml"
            )) * (
# 11 "parser.mly"
       (string)
# 3131 "parser.ml"
            ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 3135 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv349 * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 3142 "parser.ml"
            )) * (
# 11 "parser.mly"
       (string)
# 3146 "parser.ml"
            ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 3150 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (t : (
# 53 "parser.mly"
      (typ)
# 3155 "parser.ml"
            ))), (n : (
# 11 "parser.mly"
       (string)
# 3159 "parser.ml"
            ))), _, (e1 : (
# 55 "parser.mly"
      (expression)
# 3163 "parser.ml"
            ))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _v : (
# 52 "parser.mly"
      (instruction)
# 3170 "parser.ml"
            ) = 
# 84 "parser.mly"
                                    (Declaration (t,n,e1))
# 3174 "parser.ml"
             in
            _menhir_goto_i _menhir_env _menhir_stack _menhir_s _v) : 'freshtv350)) : 'freshtv352)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv353 * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 3184 "parser.ml"
            )) * (
# 11 "parser.mly"
       (string)
# 3188 "parser.ml"
            ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 3192 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv354)) : 'freshtv356)
    | MenhirState122 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv363 * _menhir_state * (
# 57 "parser.mly"
      (affectable)
# 3201 "parser.ml"
        ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 3205 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PV ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv359 * _menhir_state * (
# 57 "parser.mly"
      (affectable)
# 3215 "parser.ml"
            ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 3219 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv357 * _menhir_state * (
# 57 "parser.mly"
      (affectable)
# 3226 "parser.ml"
            ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 3230 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a : (
# 57 "parser.mly"
      (affectable)
# 3235 "parser.ml"
            ))), _, (e1 : (
# 55 "parser.mly"
      (expression)
# 3239 "parser.ml"
            ))) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : (
# 52 "parser.mly"
      (instruction)
# 3246 "parser.ml"
            ) = 
# 85 "parser.mly"
                                    (Affectation (a,e1))
# 3250 "parser.ml"
             in
            _menhir_goto_i _menhir_env _menhir_stack _menhir_s _v) : 'freshtv358)) : 'freshtv360)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv361 * _menhir_state * (
# 57 "parser.mly"
      (affectable)
# 3260 "parser.ml"
            ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 3264 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv362)) : 'freshtv364)
    | MenhirState127 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv375 * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 3273 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 3277 "parser.ml"
        ))) * _menhir_state * (
# 54 "parser.mly"
      ((typ*string) list)
# 3281 "parser.ml"
        )))) * _menhir_state * (
# 51 "parser.mly"
      (instruction list)
# 3285 "parser.ml"
        ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 3289 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PV ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((((('freshtv371 * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 3299 "parser.ml"
            )) * (
# 11 "parser.mly"
       (string)
# 3303 "parser.ml"
            ))) * _menhir_state * (
# 54 "parser.mly"
      ((typ*string) list)
# 3307 "parser.ml"
            )))) * _menhir_state * (
# 51 "parser.mly"
      (instruction list)
# 3311 "parser.ml"
            ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 3315 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AF ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((((((('freshtv367 * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 3325 "parser.ml"
                )) * (
# 11 "parser.mly"
       (string)
# 3329 "parser.ml"
                ))) * _menhir_state * (
# 54 "parser.mly"
      ((typ*string) list)
# 3333 "parser.ml"
                )))) * _menhir_state * (
# 51 "parser.mly"
      (instruction list)
# 3337 "parser.ml"
                ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 3341 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((((((('freshtv365 * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 3348 "parser.ml"
                )) * (
# 11 "parser.mly"
       (string)
# 3352 "parser.ml"
                ))) * _menhir_state * (
# 54 "parser.mly"
      ((typ*string) list)
# 3356 "parser.ml"
                )))) * _menhir_state * (
# 51 "parser.mly"
      (instruction list)
# 3360 "parser.ml"
                ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 3364 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let (((((_menhir_stack, _menhir_s, (t : (
# 53 "parser.mly"
      (typ)
# 3369 "parser.ml"
                ))), (n : (
# 11 "parser.mly"
       (string)
# 3373 "parser.ml"
                ))), _, (p : (
# 54 "parser.mly"
      ((typ*string) list)
# 3377 "parser.ml"
                ))), _, (li : (
# 51 "parser.mly"
      (instruction list)
# 3381 "parser.ml"
                ))), _, (exp : (
# 55 "parser.mly"
      (expression)
# 3385 "parser.ml"
                ))) = _menhir_stack in
                let _11 = () in
                let _10 = () in
                let _8 = () in
                let _6 = () in
                let _5 = () in
                let _3 = () in
                let _v : (
# 50 "parser.mly"
      (dfs )
# 3396 "parser.ml"
                ) = 
# 74 "parser.mly"
                                                    (Fonction(t,n,p,li,exp))
# 3400 "parser.ml"
                 in
                _menhir_goto_dfs _menhir_env _menhir_stack _menhir_s _v) : 'freshtv366)) : 'freshtv368)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((((((('freshtv369 * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 3410 "parser.ml"
                )) * (
# 11 "parser.mly"
       (string)
# 3414 "parser.ml"
                ))) * _menhir_state * (
# 54 "parser.mly"
      ((typ*string) list)
# 3418 "parser.ml"
                )))) * _menhir_state * (
# 51 "parser.mly"
      (instruction list)
# 3422 "parser.ml"
                ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 3426 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv370)) : 'freshtv372)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((((('freshtv373 * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 3437 "parser.ml"
            )) * (
# 11 "parser.mly"
       (string)
# 3441 "parser.ml"
            ))) * _menhir_state * (
# 54 "parser.mly"
      ((typ*string) list)
# 3445 "parser.ml"
            )))) * _menhir_state * (
# 51 "parser.mly"
      (instruction list)
# 3449 "parser.ml"
            ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 3453 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv374)) : 'freshtv376)
    | _ ->
        _menhir_fail ()

and _menhir_run22 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv217) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 55 "parser.mly"
      (expression)
# 3470 "parser.ml"
    ) = 
# 116 "parser.mly"
                          (True)
# 3474 "parser.ml"
     in
    _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv218)

and _menhir_run23 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADR ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | CALL ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | CO ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | DENOM ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | ENTIER _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
    | FALSE ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | ID _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
    | MULT ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | NEW ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv215 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState23 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | INT ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | PO ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | RAT ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | TID _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47) : 'freshtv216)
    | NULL ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | NUM ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | PO ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | TRUE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState23

and _menhir_run24 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADR ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | CALL ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | CO ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | DENOM ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | ENTIER _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
    | FALSE ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | ID _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
    | NULL ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | NUM ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | PO ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | TRUE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState24

and _menhir_run25 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv213) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 55 "parser.mly"
      (expression)
# 3578 "parser.ml"
    ) = 
# 119 "parser.mly"
                          (Null)
# 3582 "parser.ml"
     in
    _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv214)

and _menhir_run26 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 11 "parser.mly"
       (string)
# 3589 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv211) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((n : (
# 11 "parser.mly"
       (string)
# 3599 "parser.ml"
    )) : (
# 11 "parser.mly"
       (string)
# 3603 "parser.ml"
    )) = _v in
    ((let _v : (
# 57 "parser.mly"
      (affectable)
# 3608 "parser.ml"
    ) = 
# 94 "parser.mly"
                          (Variable n)
# 3612 "parser.ml"
     in
    _menhir_goto_aff _menhir_env _menhir_stack _menhir_s _v) : 'freshtv212)

and _menhir_run27 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv209) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 55 "parser.mly"
      (expression)
# 3626 "parser.ml"
    ) = 
# 117 "parser.mly"
                          (False)
# 3630 "parser.ml"
     in
    _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv210)

and _menhir_run28 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "parser.mly"
       (int)
# 3637 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv207) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((e : (
# 10 "parser.mly"
       (int)
# 3647 "parser.ml"
    )) : (
# 10 "parser.mly"
       (int)
# 3651 "parser.ml"
    )) = _v in
    ((let _v : (
# 55 "parser.mly"
      (expression)
# 3656 "parser.ml"
    ) = 
# 118 "parser.mly"
                          (Entier e)
# 3660 "parser.ml"
     in
    _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv208)

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADR ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | CALL ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | CO ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | DENOM ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | ENTIER _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | FALSE ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | ID _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | NULL ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | NUM ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | PO ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | TRUE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState29

and _menhir_run30 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADR ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | CALL ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | CO ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | DENOM ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | ENTIER _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
    | FALSE ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | ID _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
    | NULL ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | NUM ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | PO ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | TRUE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState30

and _menhir_run10 : _menhir_env -> ('ttv_tail * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 3733 "parser.ml"
)) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv205 * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 3741 "parser.ml"
    ))) = Obj.magic _menhir_stack in
    let (_ : _menhir_state) = _menhir_s in
    ((let (_menhir_stack, _menhir_s, (t : (
# 53 "parser.mly"
      (typ)
# 3747 "parser.ml"
    ))) = _menhir_stack in
    let _3 = () in
    let _2 = () in
    let _v : (
# 53 "parser.mly"
      (typ)
# 3754 "parser.ml"
    ) = 
# 107 "parser.mly"
              (Tab t)
# 3758 "parser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv206)

and _menhir_run31 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv201 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 11 "parser.mly"
       (string)
# 3774 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv197 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 3785 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ADR ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState33
            | CALL ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState33
            | CO ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState33
            | DENOM ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState33
            | ENTIER _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
            | FALSE ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState33
            | ID _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
            | NULL ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState33
            | NUM ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState33
            | PO ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState33
            | TRUE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState33
            | PF ->
                _menhir_reduce5 _menhir_env (Obj.magic _menhir_stack) MenhirState33
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33) : 'freshtv198)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv199 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 3825 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv200)) : 'freshtv202)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv203 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv204)

and _menhir_run34 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv193 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 11 "parser.mly"
       (string)
# 3849 "parser.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv191 * _menhir_state) = Obj.magic _menhir_stack in
        let ((n : (
# 11 "parser.mly"
       (string)
# 3857 "parser.ml"
        )) : (
# 11 "parser.mly"
       (string)
# 3861 "parser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : (
# 55 "parser.mly"
      (expression)
# 3868 "parser.ml"
        ) = 
# 122 "parser.mly"
                          (Adresse(n))
# 3872 "parser.ml"
         in
        _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv192)) : 'freshtv194)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv195 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv196)

and _menhir_reduce9 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (
# 54 "parser.mly"
      ((typ*string) list)
# 3888 "parser.ml"
    ) = 
# 99 "parser.mly"
                          ([])
# 3892 "parser.ml"
     in
    _menhir_goto_dp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run8 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 3899 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv189 * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 3907 "parser.ml"
    )) = Obj.magic _menhir_stack in
    ((let (_menhir_stack, _menhir_s, (t : (
# 53 "parser.mly"
      (typ)
# 3912 "parser.ml"
    ))) = _menhir_stack in
    let _2 = () in
    let _v : (
# 53 "parser.mly"
      (typ)
# 3918 "parser.ml"
    ) = 
# 106 "parser.mly"
              (Pt t)
# 3922 "parser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv190)

and _menhir_run9 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 3929 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CF ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9

and _menhir_goto_ldfs : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 49 "parser.mly"
      (dfs list)
# 3945 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv163 * _menhir_state * (
# 49 "parser.mly"
      (dfs list)
# 3955 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv159 * _menhir_state * (
# 49 "parser.mly"
      (dfs list)
# 3965 "parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_v : (
# 11 "parser.mly"
       (string)
# 3970 "parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AO ->
                _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState135
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState135) : 'freshtv160)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv161 * _menhir_state * (
# 49 "parser.mly"
      (dfs list)
# 3989 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv162)) : 'freshtv164)
    | MenhirState136 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv183 * _menhir_state * (
# 49 "parser.mly"
      (dfs list)
# 3998 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 4002 "parser.ml"
        )) * _menhir_state * (
# 48 "parser.mly"
      (instruction list)
# 4006 "parser.ml"
        )) * _menhir_state * (
# 49 "parser.mly"
      (dfs list)
# 4010 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv181 * _menhir_state * (
# 49 "parser.mly"
      (dfs list)
# 4016 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 4020 "parser.ml"
        )) * _menhir_state * (
# 48 "parser.mly"
      (instruction list)
# 4024 "parser.ml"
        )) * _menhir_state * (
# 49 "parser.mly"
      (dfs list)
# 4028 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s, (ldfs_1 : (
# 49 "parser.mly"
      (dfs list)
# 4033 "parser.ml"
        ))), (_2 : (
# 11 "parser.mly"
       (string)
# 4037 "parser.ml"
        ))), _, (li : (
# 48 "parser.mly"
      (instruction list)
# 4041 "parser.ml"
        ))), _, (ldfs_2 : (
# 49 "parser.mly"
      (dfs list)
# 4045 "parser.ml"
        ))) = _menhir_stack in
        let _v : (
# 47 "parser.mly"
      (programme)
# 4050 "parser.ml"
        ) = 
# 67 "parser.mly"
                                       (Programme(ldfs_1,li,ldfs_2))
# 4054 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv179) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 47 "parser.mly"
      (programme)
# 4062 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv177 * _menhir_state * (
# 47 "parser.mly"
      (programme)
# 4069 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv173 * _menhir_state * (
# 47 "parser.mly"
      (programme)
# 4079 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv171 * _menhir_state * (
# 47 "parser.mly"
      (programme)
# 4085 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (lfi : (
# 47 "parser.mly"
      (programme)
# 4090 "parser.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 60 "parser.mly"
       (Ast.AstSyntax.programme)
# 4096 "parser.ml"
            ) = 
# 64 "parser.mly"
                          (let a = lfi in a)
# 4100 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv169) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 60 "parser.mly"
       (Ast.AstSyntax.programme)
# 4108 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv167) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 60 "parser.mly"
       (Ast.AstSyntax.programme)
# 4116 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv165) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 60 "parser.mly"
       (Ast.AstSyntax.programme)
# 4124 "parser.ml"
            )) : (
# 60 "parser.mly"
       (Ast.AstSyntax.programme)
# 4128 "parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv166)) : 'freshtv168)) : 'freshtv170)) : 'freshtv172)) : 'freshtv174)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv175 * _menhir_state * (
# 47 "parser.mly"
      (programme)
# 4138 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv176)) : 'freshtv178)) : 'freshtv180)) : 'freshtv182)) : 'freshtv184)
    | MenhirState138 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv187 * _menhir_state * (
# 50 "parser.mly"
      (dfs )
# 4147 "parser.ml"
        )) * _menhir_state * (
# 49 "parser.mly"
      (dfs list)
# 4151 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv185 * _menhir_state * (
# 50 "parser.mly"
      (dfs )
# 4157 "parser.ml"
        )) * _menhir_state * (
# 49 "parser.mly"
      (dfs list)
# 4161 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (dfs1 : (
# 50 "parser.mly"
      (dfs )
# 4166 "parser.ml"
        ))), _, (ldfs1 : (
# 49 "parser.mly"
      (dfs list)
# 4170 "parser.ml"
        ))) = _menhir_stack in
        let _v : (
# 49 "parser.mly"
      (dfs list)
# 4175 "parser.ml"
        ) = 
# 71 "parser.mly"
                                   (dfs1::ldfs1)
# 4179 "parser.ml"
         in
        _menhir_goto_ldfs _menhir_env _menhir_stack _menhir_s _v) : 'freshtv186)) : 'freshtv188)
    | _ ->
        _menhir_fail ()

and _menhir_goto_typ : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 53 "parser.mly"
      (typ)
# 4188 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState87 | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv103 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 4198 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CO ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack)
        | PF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv99 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 4212 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv97 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 4219 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (t : (
# 53 "parser.mly"
      (typ)
# 4224 "parser.ml"
            ))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 53 "parser.mly"
      (typ)
# 4231 "parser.ml"
            ) = 
# 108 "parser.mly"
              (t)
# 4235 "parser.ml"
             in
            _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv98)) : 'freshtv100)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv101 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 4245 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)) : 'freshtv104)
    | MenhirState138 | MenhirState136 | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv113 * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 4254 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CO ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack)
        | ID _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv109 * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 4266 "parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_v : (
# 11 "parser.mly"
       (string)
# 4271 "parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | PO ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv105 * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 4282 "parser.ml"
                )) * (
# 11 "parser.mly"
       (string)
# 4286 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BOOL ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState13
                | INT ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState13
                | PO ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState13
                | RAT ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState13
                | TID _v ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
                | PF ->
                    _menhir_reduce9 _menhir_env (Obj.magic _menhir_stack) MenhirState13
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState13) : 'freshtv106)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv107 * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 4314 "parser.ml"
                )) * (
# 11 "parser.mly"
       (string)
# 4318 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)) : 'freshtv110)
        | MULT ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv111 * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 4331 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)) : 'freshtv114)
    | MenhirState15 | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv119 * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 4340 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CO ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack)
        | ID _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv115 * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 4352 "parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_v : (
# 11 "parser.mly"
       (string)
# 4357 "parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState15
            | INT ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState15
            | PO ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState15
            | RAT ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState15
            | TID _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
            | PF ->
                _menhir_reduce9 _menhir_env (Obj.magic _menhir_stack) MenhirState15
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15) : 'freshtv116)
        | MULT ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv117 * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 4388 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)) : 'freshtv120)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv129 * _menhir_state) * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 4397 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv121 * _menhir_state) * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 4407 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ADR ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | CALL ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | CF ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | CO ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | DENOM ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | ENTIER _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
            | FALSE ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | ID _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
            | NULL ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | NUM ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | PO ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | TRUE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50) : 'freshtv122)
        | MULT ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack)
        | PF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv125 * _menhir_state) * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 4447 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv123 * _menhir_state) * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 4454 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _), _, (t : (
# 53 "parser.mly"
      (typ)
# 4459 "parser.ml"
            ))) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (
# 55 "parser.mly"
      (expression)
# 4467 "parser.ml"
            ) = 
# 121 "parser.mly"
                               (Allocation(t))
# 4471 "parser.ml"
             in
            _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv124)) : 'freshtv126)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv127 * _menhir_state) * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 4481 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv128)) : 'freshtv130)
    | MenhirState81 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv137 * _menhir_state) * (
# 12 "parser.mly"
       (string)
# 4490 "parser.ml"
        ))) * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 4494 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CO ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack)
        | PV ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv133 * _menhir_state) * (
# 12 "parser.mly"
       (string)
# 4508 "parser.ml"
            ))) * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 4512 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv131 * _menhir_state) * (
# 12 "parser.mly"
       (string)
# 4519 "parser.ml"
            ))) * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 4523 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), (n : (
# 12 "parser.mly"
       (string)
# 4528 "parser.ml"
            ))), _, (t : (
# 53 "parser.mly"
      (typ)
# 4532 "parser.ml"
            ))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (
# 52 "parser.mly"
      (instruction)
# 4540 "parser.ml"
            ) = 
# 91 "parser.mly"
                             (DeclTypeNom(t,n))
# 4544 "parser.ml"
             in
            _menhir_goto_i _menhir_env _menhir_stack _menhir_s _v) : 'freshtv132)) : 'freshtv134)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv135 * _menhir_state) * (
# 12 "parser.mly"
       (string)
# 4554 "parser.ml"
            ))) * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 4558 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv136)) : 'freshtv138)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv147 * _menhir_state)) * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 4567 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CO ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack)
        | ID _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv143 * _menhir_state)) * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 4579 "parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_v : (
# 11 "parser.mly"
       (string)
# 4584 "parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EQUAL ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv139 * _menhir_state)) * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 4595 "parser.ml"
                )) * (
# 11 "parser.mly"
       (string)
# 4599 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ADR ->
                    _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState97
                | CALL ->
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState97
                | CO ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState97
                | DENOM ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState97
                | ENTIER _v ->
                    _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | FALSE ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState97
                | ID _v ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | NULL ->
                    _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState97
                | NUM ->
                    _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState97
                | PO ->
                    _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState97
                | TRUE ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState97
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState97) : 'freshtv140)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv141 * _menhir_state)) * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 4637 "parser.ml"
                )) * (
# 11 "parser.mly"
       (string)
# 4641 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv142)) : 'freshtv144)
        | MULT ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv145 * _menhir_state)) * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 4654 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv146)) : 'freshtv148)
    | MenhirState20 | MenhirState119 | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv157 * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 4663 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CO ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack)
        | ID _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv153 * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 4675 "parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_v : (
# 11 "parser.mly"
       (string)
# 4680 "parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EQUAL ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv149 * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 4691 "parser.ml"
                )) * (
# 11 "parser.mly"
       (string)
# 4695 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ADR ->
                    _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState114
                | CALL ->
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState114
                | CO ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState114
                | DENOM ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState114
                | ENTIER _v ->
                    _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _v
                | FALSE ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState114
                | ID _v ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _v
                | NULL ->
                    _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState114
                | NUM ->
                    _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState114
                | PO ->
                    _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState114
                | TRUE ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState114
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState114) : 'freshtv150)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv151 * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 4733 "parser.ml"
                )) * (
# 11 "parser.mly"
       (string)
# 4737 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)) : 'freshtv154)
        | MULT ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv155 * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 4750 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv156)) : 'freshtv158)
    | _ ->
        _menhir_fail ()

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState138 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv11 * _menhir_state * (
# 50 "parser.mly"
      (dfs )
# 4765 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv12)
    | MenhirState136 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv13 * _menhir_state * (
# 49 "parser.mly"
      (dfs list)
# 4774 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 4778 "parser.ml"
        )) * _menhir_state * (
# 48 "parser.mly"
      (instruction list)
# 4782 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv14)
    | MenhirState135 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv15 * _menhir_state * (
# 49 "parser.mly"
      (dfs list)
# 4791 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 4795 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv16)
    | MenhirState127 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv17 * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 4804 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 4808 "parser.ml"
        ))) * _menhir_state * (
# 54 "parser.mly"
      ((typ*string) list)
# 4812 "parser.ml"
        )))) * _menhir_state * (
# 51 "parser.mly"
      (instruction list)
# 4816 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv18)
    | MenhirState122 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv19 * _menhir_state * (
# 57 "parser.mly"
      (affectable)
# 4825 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv20)
    | MenhirState119 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv21 * _menhir_state * (
# 52 "parser.mly"
      (instruction)
# 4834 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)
    | MenhirState114 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv23 * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 4843 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 4847 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)
    | MenhirState105 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((((((('freshtv25 * _menhir_state)) * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 4856 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 4860 "parser.ml"
        ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 4864 "parser.ml"
        ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 4868 "parser.ml"
        ))) * (
# 11 "parser.mly"
       (string)
# 4872 "parser.ml"
        ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 4876 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)
    | MenhirState103 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((((('freshtv27 * _menhir_state)) * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 4885 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 4889 "parser.ml"
        ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 4893 "parser.ml"
        ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 4897 "parser.ml"
        ))) * (
# 11 "parser.mly"
       (string)
# 4901 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)
    | MenhirState99 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv29 * _menhir_state)) * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 4910 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 4914 "parser.ml"
        ))) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 4918 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)
    | MenhirState97 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv31 * _menhir_state)) * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 4927 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 4931 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv33 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv35 * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 4945 "parser.ml"
        )) * _menhir_state * (
# 48 "parser.mly"
      (instruction list)
# 4949 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState89 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv37 * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 4958 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv39 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)
    | MenhirState87 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv41 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
    | MenhirState84 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv43 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState81 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv45 * _menhir_state) * (
# 12 "parser.mly"
       (string)
# 4982 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv47 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState77 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv49 * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 4996 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState73 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv51 * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 5005 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv53 * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 5014 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv55 * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 5023 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv57 * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 5032 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv59 * _menhir_state) * _menhir_state * (
# 57 "parser.mly"
      (affectable)
# 5041 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv61 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv63 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv65 * _menhir_state) * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 5060 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv67 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv69 * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 5074 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv71 * _menhir_state * (
# 55 "parser.mly"
      (expression)
# 5083 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv73 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 5092 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv75 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv77 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
    | MenhirState24 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv79 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv81 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv83 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv85 * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 5126 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 5130 "parser.ml"
        ))) * _menhir_state * (
# 54 "parser.mly"
      ((typ*string) list)
# 5134 "parser.ml"
        )))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv87 * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 5143 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 5147 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv89 * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 5156 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 5160 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv91 * _menhir_state * (
# 53 "parser.mly"
      (typ)
# 5169 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv93 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv95) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv96)

and _menhir_reduce37 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (
# 49 "parser.mly"
      (dfs list)
# 5188 "parser.ml"
    ) = 
# 70 "parser.mly"
  ([])
# 5192 "parser.ml"
     in
    _menhir_goto_ldfs _menhir_env _menhir_stack _menhir_s _v

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 12 "parser.mly"
       (string)
# 5199 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv9) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((n : (
# 12 "parser.mly"
       (string)
# 5209 "parser.ml"
    )) : (
# 12 "parser.mly"
       (string)
# 5213 "parser.ml"
    )) = _v in
    ((let _v : (
# 53 "parser.mly"
      (typ)
# 5218 "parser.ml"
    ) = 
# 109 "parser.mly"
        (TypeNom n)
# 5222 "parser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv10)

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv7) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 53 "parser.mly"
      (typ)
# 5236 "parser.ml"
    ) = 
# 105 "parser.mly"
          (Rat)
# 5240 "parser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv8)

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | INT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | PO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | RAT ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | TID _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState3

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv5) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 53 "parser.mly"
      (typ)
# 5275 "parser.ml"
    ) = 
# 104 "parser.mly"
          (Int)
# 5279 "parser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv6)

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 53 "parser.mly"
      (typ)
# 5293 "parser.ml"
    ) = 
# 103 "parser.mly"
          (Bool)
# 5297 "parser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv4)

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and main : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 60 "parser.mly"
       (Ast.AstSyntax.programme)
# 5316 "parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env =
      let (lexer : Lexing.lexbuf -> token) = lexer in
      let (lexbuf : Lexing.lexbuf) = lexbuf in
      ((let _tok = Obj.magic () in
      {
        _menhir_lexer = lexer;
        _menhir_lexbuf = lexbuf;
        _menhir_token = _tok;
        _menhir_error = false;
      }) : _menhir_env)
    in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | INT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | PO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | RAT ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | TID _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | ID _ ->
        _menhir_reduce37 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv2))

# 233 "/opt/opam/4.06.0/lib/menhir/standard.mly"
  

# 5355 "parser.ml"
