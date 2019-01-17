
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | WHILE
    | TRUE
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
# 28 "parser.ml"
  )
    | FALSE
    | EQUAL
    | EOF
    | ENTIER of (
# 10 "parser.mly"
       (int)
# 36 "parser.ml"
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
  | MenhirState115
  | MenhirState108
  | MenhirState106
  | MenhirState102
  | MenhirState100
  | MenhirState94
  | MenhirState91
  | MenhirState86
  | MenhirState77
  | MenhirState75
  | MenhirState74
  | MenhirState73
  | MenhirState70
  | MenhirState68
  | MenhirState64
  | MenhirState61
  | MenhirState58
  | MenhirState55
  | MenhirState48
  | MenhirState46
  | MenhirState45
  | MenhirState41
  | MenhirState38
  | MenhirState33
  | MenhirState27
  | MenhirState24
  | MenhirState21
  | MenhirState20
  | MenhirState15
  | MenhirState14
  | MenhirState12
  | MenhirState11
  | MenhirState10
  | MenhirState8
  | MenhirState2
  | MenhirState0

# 3 "parser.mly"
  

open Type
open Ast.AstSyntax

# 107 "parser.ml"

let rec _menhir_goto_prog : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 44 "parser.mly"
      (programme)
# 112 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv411 * _menhir_state * (
# 44 "parser.mly"
      (programme)
# 122 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv407 * _menhir_state * (
# 44 "parser.mly"
      (programme)
# 132 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv405 * _menhir_state * (
# 44 "parser.mly"
      (programme)
# 138 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (lfi : (
# 44 "parser.mly"
      (programme)
# 143 "parser.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 56 "parser.mly"
       (Ast.AstSyntax.programme)
# 149 "parser.ml"
            ) = 
# 60 "parser.mly"
                          (let a = lfi in ((Ast.PrinterAstSyntax.print_programme a);a))
# 153 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv403) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 56 "parser.mly"
       (Ast.AstSyntax.programme)
# 161 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv401) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 56 "parser.mly"
       (Ast.AstSyntax.programme)
# 169 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv399) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 56 "parser.mly"
       (Ast.AstSyntax.programme)
# 177 "parser.ml"
            )) : (
# 56 "parser.mly"
       (Ast.AstSyntax.programme)
# 181 "parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv400)) : 'freshtv402)) : 'freshtv404)) : 'freshtv406)) : 'freshtv408)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv409 * _menhir_state * (
# 44 "parser.mly"
      (programme)
# 191 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv410)) : 'freshtv412)
    | MenhirState115 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv415 * _menhir_state * (
# 46 "parser.mly"
      (fonction)
# 200 "parser.ml"
        )) * _menhir_state * (
# 44 "parser.mly"
      (programme)
# 204 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv413 * _menhir_state * (
# 46 "parser.mly"
      (fonction)
# 210 "parser.ml"
        )) * _menhir_state * (
# 44 "parser.mly"
      (programme)
# 214 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (lf : (
# 46 "parser.mly"
      (fonction)
# 219 "parser.ml"
        ))), _, (lfi : (
# 44 "parser.mly"
      (programme)
# 223 "parser.ml"
        ))) = _menhir_stack in
        let _v : (
# 44 "parser.mly"
      (programme)
# 228 "parser.ml"
        ) = 
# 63 "parser.mly"
                          (let (Programme (lf1,li))=lfi in (Programme (lf::lf1,li)))
# 232 "parser.ml"
         in
        _menhir_goto_prog _menhir_env _menhir_stack _menhir_s _v) : 'freshtv414)) : 'freshtv416)
    | _ ->
        _menhir_fail ()

and _menhir_run46 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
    | MULT ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | PO ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState46

and _menhir_run48 : _menhir_env -> ('ttv_tail * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (affectable)
# 258 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADR ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | CALL ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | CO ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | DENOM ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | ENTIER _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | FALSE ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | ID _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | NULL ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | NUM ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | PO ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | TRUE ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState48

and _menhir_reduce17 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 53 "parser.mly"
      (affectable)
# 294 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (a : (
# 53 "parser.mly"
      (affectable)
# 300 "parser.ml"
    ))) = _menhir_stack in
    let _v : (
# 51 "parser.mly"
      (expression)
# 305 "parser.ml"
    ) = 
# 108 "parser.mly"
                     (Valeur(a))
# 309 "parser.ml"
     in
    _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_cp : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 52 "parser.mly"
      (expression list)
# 316 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv389 * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 326 "parser.ml"
        )) * _menhir_state * (
# 52 "parser.mly"
      (expression list)
# 330 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv387 * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 336 "parser.ml"
        )) * _menhir_state * (
# 52 "parser.mly"
      (expression list)
# 340 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (e1 : (
# 51 "parser.mly"
      (expression)
# 345 "parser.ml"
        ))), _, (le : (
# 52 "parser.mly"
      (expression list)
# 349 "parser.ml"
        ))) = _menhir_stack in
        let _v : (
# 52 "parser.mly"
      (expression list)
# 354 "parser.ml"
        ) = 
# 119 "parser.mly"
                (e1::le)
# 358 "parser.ml"
         in
        _menhir_goto_cp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv388)) : 'freshtv390)
    | MenhirState24 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv397 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 366 "parser.ml"
        ))) * _menhir_state * (
# 52 "parser.mly"
      (expression list)
# 370 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv393 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 380 "parser.ml"
            ))) * _menhir_state * (
# 52 "parser.mly"
      (expression list)
# 384 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv391 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 391 "parser.ml"
            ))) * _menhir_state * (
# 52 "parser.mly"
      (expression list)
# 395 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), (n : (
# 11 "parser.mly"
       (string)
# 400 "parser.ml"
            ))), _, (lp : (
# 52 "parser.mly"
      (expression list)
# 404 "parser.ml"
            ))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (
# 51 "parser.mly"
      (expression)
# 412 "parser.ml"
            ) = 
# 100 "parser.mly"
                          (AppelFonction (n,lp))
# 416 "parser.ml"
             in
            _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv392)) : 'freshtv394)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv395 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 426 "parser.ml"
            ))) * _menhir_state * (
# 52 "parser.mly"
      (expression list)
# 430 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv396)) : 'freshtv398)
    | _ ->
        _menhir_fail ()

and _menhir_goto_is : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 47 "parser.mly"
      (instruction list)
# 440 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv375 * _menhir_state) * _menhir_state * (
# 47 "parser.mly"
      (instruction list)
# 450 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv371 * _menhir_state) * _menhir_state * (
# 47 "parser.mly"
      (instruction list)
# 460 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv369 * _menhir_state) * _menhir_state * (
# 47 "parser.mly"
      (instruction list)
# 467 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (li : (
# 47 "parser.mly"
      (instruction list)
# 472 "parser.ml"
            ))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 45 "parser.mly"
      (instruction list)
# 479 "parser.ml"
            ) = 
# 68 "parser.mly"
                          (li)
# 483 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv367) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 45 "parser.mly"
      (instruction list)
# 491 "parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            match _menhir_s with
            | MenhirState68 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv351 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 500 "parser.ml"
                )) * _menhir_state * (
# 45 "parser.mly"
      (instruction list)
# 504 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv349 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 510 "parser.ml"
                )) * _menhir_state * (
# 45 "parser.mly"
      (instruction list)
# 514 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let (((_menhir_stack, _menhir_s), _, (exp : (
# 51 "parser.mly"
      (expression)
# 519 "parser.ml"
                ))), _, (li : (
# 45 "parser.mly"
      (instruction list)
# 523 "parser.ml"
                ))) = _menhir_stack in
                let _1 = () in
                let _v : (
# 48 "parser.mly"
      (instruction)
# 529 "parser.ml"
                ) = 
# 80 "parser.mly"
                                    (TantQue (exp,li))
# 533 "parser.ml"
                 in
                _menhir_goto_i _menhir_env _menhir_stack _menhir_s _v) : 'freshtv350)) : 'freshtv352)
            | MenhirState75 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv357 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 541 "parser.ml"
                )) * _menhir_state * (
# 45 "parser.mly"
      (instruction list)
# 545 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ELSE ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv353 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 555 "parser.ml"
                    )) * _menhir_state * (
# 45 "parser.mly"
      (instruction list)
# 559 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | AO ->
                        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState77) : 'freshtv354)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv355 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 577 "parser.ml"
                    )) * _menhir_state * (
# 45 "parser.mly"
      (instruction list)
# 581 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv356)) : 'freshtv358)
            | MenhirState77 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv361 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 590 "parser.ml"
                )) * _menhir_state * (
# 45 "parser.mly"
      (instruction list)
# 594 "parser.ml"
                ))) * _menhir_state * (
# 45 "parser.mly"
      (instruction list)
# 598 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv359 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 604 "parser.ml"
                )) * _menhir_state * (
# 45 "parser.mly"
      (instruction list)
# 608 "parser.ml"
                ))) * _menhir_state * (
# 45 "parser.mly"
      (instruction list)
# 612 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((((_menhir_stack, _menhir_s), _, (exp : (
# 51 "parser.mly"
      (expression)
# 617 "parser.ml"
                ))), _, (li1 : (
# 45 "parser.mly"
      (instruction list)
# 621 "parser.ml"
                ))), _, (li2 : (
# 45 "parser.mly"
      (instruction list)
# 625 "parser.ml"
                ))) = _menhir_stack in
                let _4 = () in
                let _1 = () in
                let _v : (
# 48 "parser.mly"
      (instruction)
# 632 "parser.ml"
                ) = 
# 79 "parser.mly"
                                    (Conditionnelle (exp,li1,li2))
# 636 "parser.ml"
                 in
                _menhir_goto_i _menhir_env _menhir_stack _menhir_s _v) : 'freshtv360)) : 'freshtv362)
            | MenhirState10 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv365 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 644 "parser.ml"
                )) * _menhir_state * (
# 45 "parser.mly"
      (instruction list)
# 648 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv363 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 654 "parser.ml"
                )) * _menhir_state * (
# 45 "parser.mly"
      (instruction list)
# 658 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, (_1 : (
# 11 "parser.mly"
       (string)
# 663 "parser.ml"
                ))), _, (li : (
# 45 "parser.mly"
      (instruction list)
# 667 "parser.ml"
                ))) = _menhir_stack in
                let _v : (
# 44 "parser.mly"
      (programme)
# 672 "parser.ml"
                ) = 
# 64 "parser.mly"
                          (Programme ([],li))
# 676 "parser.ml"
                 in
                _menhir_goto_prog _menhir_env _menhir_stack _menhir_s _v) : 'freshtv364)) : 'freshtv366)
            | _ ->
                _menhir_fail ()) : 'freshtv368)) : 'freshtv370)) : 'freshtv372)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv373 * _menhir_state) * _menhir_state * (
# 47 "parser.mly"
      (instruction list)
# 688 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv374)) : 'freshtv376)
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv379 * _menhir_state * (
# 48 "parser.mly"
      (instruction)
# 697 "parser.ml"
        )) * _menhir_state * (
# 47 "parser.mly"
      (instruction list)
# 701 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv377 * _menhir_state * (
# 48 "parser.mly"
      (instruction)
# 707 "parser.ml"
        )) * _menhir_state * (
# 47 "parser.mly"
      (instruction list)
# 711 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (i1 : (
# 48 "parser.mly"
      (instruction)
# 716 "parser.ml"
        ))), _, (li : (
# 47 "parser.mly"
      (instruction list)
# 720 "parser.ml"
        ))) = _menhir_stack in
        let _v : (
# 47 "parser.mly"
      (instruction list)
# 725 "parser.ml"
        ) = 
# 72 "parser.mly"
                          (i1::li)
# 729 "parser.ml"
         in
        _menhir_goto_is _menhir_env _menhir_stack _menhir_s _v) : 'freshtv378)) : 'freshtv380)
    | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv385 * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 737 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 741 "parser.ml"
        ))) * _menhir_state * (
# 50 "parser.mly"
      ((typ*string) list)
# 745 "parser.ml"
        )))) * _menhir_state * (
# 47 "parser.mly"
      (instruction list)
# 749 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RETURN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv381 * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 759 "parser.ml"
            )) * (
# 11 "parser.mly"
       (string)
# 763 "parser.ml"
            ))) * _menhir_state * (
# 50 "parser.mly"
      ((typ*string) list)
# 767 "parser.ml"
            )))) * _menhir_state * (
# 47 "parser.mly"
      (instruction list)
# 771 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ADR ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | CALL ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | CO ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | DENOM ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | ENTIER _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
            | FALSE ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | ID _v ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
            | NULL ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | NUM ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | PO ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | TRUE ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState108) : 'freshtv382)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv383 * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 809 "parser.ml"
            )) * (
# 11 "parser.mly"
       (string)
# 813 "parser.ml"
            ))) * _menhir_state * (
# 50 "parser.mly"
      ((typ*string) list)
# 817 "parser.ml"
            )))) * _menhir_state * (
# 47 "parser.mly"
      (instruction list)
# 821 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv384)) : 'freshtv386)
    | _ ->
        _menhir_fail ()

and _menhir_goto_dp : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 50 "parser.mly"
      ((typ*string) list)
# 831 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState102 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv337 * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 841 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 845 "parser.ml"
        )) * _menhir_state * (
# 50 "parser.mly"
      ((typ*string) list)
# 849 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv335 * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 855 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 859 "parser.ml"
        )) * _menhir_state * (
# 50 "parser.mly"
      ((typ*string) list)
# 863 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, (t : (
# 49 "parser.mly"
      (typ)
# 868 "parser.ml"
        ))), (n : (
# 11 "parser.mly"
       (string)
# 872 "parser.ml"
        ))), _, (lp : (
# 50 "parser.mly"
      ((typ*string) list)
# 876 "parser.ml"
        ))) = _menhir_stack in
        let _v : (
# 50 "parser.mly"
      ((typ*string) list)
# 881 "parser.ml"
        ) = 
# 89 "parser.mly"
                          ((t,n)::lp)
# 885 "parser.ml"
         in
        _menhir_goto_dp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv336)) : 'freshtv338)
    | MenhirState100 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv347 * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 893 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 897 "parser.ml"
        ))) * _menhir_state * (
# 50 "parser.mly"
      ((typ*string) list)
# 901 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv343 * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 911 "parser.ml"
            )) * (
# 11 "parser.mly"
       (string)
# 915 "parser.ml"
            ))) * _menhir_state * (
# 50 "parser.mly"
      ((typ*string) list)
# 919 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AO ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv339 * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 929 "parser.ml"
                )) * (
# 11 "parser.mly"
       (string)
# 933 "parser.ml"
                ))) * _menhir_state * (
# 50 "parser.mly"
      ((typ*string) list)
# 937 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BOOL ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState106
                | CONST ->
                    _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState106
                | ID _v ->
                    _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
                | IF ->
                    _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState106
                | INT ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState106
                | PO ->
                    _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState106
                | PRINT ->
                    _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState106
                | RAT ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState106
                | WHILE ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState106
                | RETURN ->
                    _menhir_reduce32 _menhir_env (Obj.magic _menhir_stack) MenhirState106
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState106) : 'freshtv340)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv341 * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 973 "parser.ml"
                )) * (
# 11 "parser.mly"
       (string)
# 977 "parser.ml"
                ))) * _menhir_state * (
# 50 "parser.mly"
      ((typ*string) list)
# 981 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv342)) : 'freshtv344)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv345 * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 992 "parser.ml"
            )) * (
# 11 "parser.mly"
       (string)
# 996 "parser.ml"
            ))) * _menhir_state * (
# 50 "parser.mly"
      ((typ*string) list)
# 1000 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv346)) : 'freshtv348)
    | _ ->
        _menhir_fail ()

and _menhir_goto_i : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 48 "parser.mly"
      (instruction)
# 1010 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv333 * _menhir_state * (
# 48 "parser.mly"
      (instruction)
# 1018 "parser.ml"
    )) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | CONST ->
        _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | ID _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
    | IF ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | INT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | PO ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | PRINT ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | RAT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | WHILE ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | AF | RETURN ->
        _menhir_reduce32 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState91) : 'freshtv334)

and _menhir_run45 : _menhir_env -> 'ttv_tail * _menhir_state -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | PO ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45

and _menhir_goto_aff : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 53 "parser.mly"
      (affectable)
# 1066 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState108 | MenhirState94 | MenhirState86 | MenhirState74 | MenhirState70 | MenhirState12 | MenhirState64 | MenhirState61 | MenhirState58 | MenhirState55 | MenhirState48 | MenhirState41 | MenhirState15 | MenhirState20 | MenhirState21 | MenhirState33 | MenhirState24 | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv309 * _menhir_state * (
# 53 "parser.mly"
      (affectable)
# 1076 "parser.ml"
        )) = Obj.magic _menhir_stack in
        (_menhir_reduce17 _menhir_env (Obj.magic _menhir_stack) : 'freshtv310)
    | MenhirState73 | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv313 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (affectable)
# 1084 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CO ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv311 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (affectable)
# 1098 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv312)) : 'freshtv314)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv321 * _menhir_state) * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (affectable)
# 1107 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv317 * _menhir_state) * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (affectable)
# 1117 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv315 * _menhir_state) * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (affectable)
# 1124 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _), _, (a : (
# 53 "parser.mly"
      (affectable)
# 1129 "parser.ml"
            ))) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (
# 53 "parser.mly"
      (affectable)
# 1137 "parser.ml"
            ) = 
# 84 "parser.mly"
                          (Deref a)
# 1141 "parser.ml"
             in
            _menhir_goto_aff _menhir_env _menhir_stack _menhir_s _v) : 'freshtv316)) : 'freshtv318)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv319 * _menhir_state) * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (affectable)
# 1151 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv320)) : 'freshtv322)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv325 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (affectable)
# 1160 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CO ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL | INF | MULT | PLUS ->
            _menhir_reduce17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv323 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (affectable)
# 1176 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv324)) : 'freshtv326)
    | MenhirState106 | MenhirState11 | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv331 * _menhir_state * (
# 53 "parser.mly"
      (affectable)
# 1185 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQUAL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv327 * _menhir_state * (
# 53 "parser.mly"
      (affectable)
# 1195 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ADR ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | CALL ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | CO ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | DENOM ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | ENTIER _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
            | FALSE ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | ID _v ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
            | NULL ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | NUM ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | PO ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | TRUE ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState94) : 'freshtv328)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv329 * _menhir_state * (
# 53 "parser.mly"
      (affectable)
# 1233 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv330)) : 'freshtv332)
    | _ ->
        _menhir_fail ()

and _menhir_reduce5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (
# 52 "parser.mly"
      (expression list)
# 1245 "parser.ml"
    ) = 
# 118 "parser.mly"
                ([])
# 1249 "parser.ml"
     in
    _menhir_goto_cp _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce32 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (
# 47 "parser.mly"
      (instruction list)
# 1258 "parser.ml"
    ) = 
# 71 "parser.mly"
                          ([])
# 1262 "parser.ml"
     in
    _menhir_goto_is _menhir_env _menhir_stack _menhir_s _v

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADR ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | CALL ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | CO ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | DENOM ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | ENTIER _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
    | FALSE ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | ID _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
    | NULL ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | NUM ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | PO ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | TRUE ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState12

and _menhir_run70 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADR ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | CALL ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | CO ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | DENOM ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | ENTIER _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | FALSE ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | ID _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | NULL ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | NUM ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | PO ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | TRUE ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState70

and _menhir_run73 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | ID _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | INT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | MULT ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | PO ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | RAT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState73

and _menhir_run74 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADR ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | CALL ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | CO ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | DENOM ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | ENTIER _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | FALSE ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | ID _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | NULL ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | NUM ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | PO ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | TRUE ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState74

and _menhir_run79 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv305 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 11 "parser.mly"
       (string)
# 1400 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQUAL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv301 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 1411 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ENTIER _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv297 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 1421 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                let (_v : (
# 10 "parser.mly"
       (int)
# 1426 "parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | PV ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv293 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 1437 "parser.ml"
                    ))) * (
# 10 "parser.mly"
       (int)
# 1441 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv291 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 1448 "parser.ml"
                    ))) * (
# 10 "parser.mly"
       (int)
# 1452 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let (((_menhir_stack, _menhir_s), (n : (
# 11 "parser.mly"
       (string)
# 1457 "parser.ml"
                    ))), (e : (
# 10 "parser.mly"
       (int)
# 1461 "parser.ml"
                    ))) = _menhir_stack in
                    let _5 = () in
                    let _3 = () in
                    let _1 = () in
                    let _v : (
# 48 "parser.mly"
      (instruction)
# 1469 "parser.ml"
                    ) = 
# 77 "parser.mly"
                                    (Constante (n,e))
# 1473 "parser.ml"
                     in
                    _menhir_goto_i _menhir_env _menhir_stack _menhir_s _v) : 'freshtv292)) : 'freshtv294)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv295 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 1483 "parser.ml"
                    ))) * (
# 10 "parser.mly"
       (int)
# 1487 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv296)) : 'freshtv298)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv299 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 1498 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv300)) : 'freshtv302)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv303 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 1509 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv304)) : 'freshtv306)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv307 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv308)

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_reduce7 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (
# 50 "parser.mly"
      ((typ*string) list)
# 1531 "parser.ml"
    ) = 
# 88 "parser.mly"
                          ([])
# 1535 "parser.ml"
     in
    _menhir_goto_dp _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_e : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 51 "parser.mly"
      (expression)
# 1542 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState27 | MenhirState24 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv155 * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 1552 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ADR ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | CALL ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | CO ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | DENOM ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | ENTIER _v ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
        | FALSE ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | ID _v ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
        | NULL ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | NUM ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | PO ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | TRUE ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | PF ->
            _menhir_reduce5 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState27) : 'freshtv156)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv161 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 1590 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SLASH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv157 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 1600 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ADR ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState33
            | CALL ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState33
            | CO ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState33
            | DENOM ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState33
            | ENTIER _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
            | FALSE ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState33
            | ID _v ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
            | NULL ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState33
            | NUM ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState33
            | PO ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState33
            | TRUE ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState33
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33) : 'freshtv158)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv159 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 1638 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv160)) : 'freshtv162)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv169 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 1647 "parser.ml"
        ))) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 1651 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv165 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 1661 "parser.ml"
            ))) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 1665 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv163 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 1672 "parser.ml"
            ))) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 1676 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (e1 : (
# 51 "parser.mly"
      (expression)
# 1681 "parser.ml"
            ))), _, (e2 : (
# 51 "parser.mly"
      (expression)
# 1685 "parser.ml"
            ))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (
# 51 "parser.mly"
      (expression)
# 1693 "parser.ml"
            ) = 
# 101 "parser.mly"
                          (Rationnel(e1,e2))
# 1697 "parser.ml"
             in
            _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv164)) : 'freshtv166)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv167 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 1707 "parser.ml"
            ))) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 1711 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv168)) : 'freshtv170)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv173 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 1720 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv171 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 1726 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (e1 : (
# 51 "parser.mly"
      (expression)
# 1731 "parser.ml"
        ))) = _menhir_stack in
        let _1 = () in
        let _v : (
# 51 "parser.mly"
      (expression)
# 1737 "parser.ml"
        ) = 
# 103 "parser.mly"
                          (Denominateur e1)
# 1741 "parser.ml"
         in
        _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv172)) : 'freshtv174)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv177 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 1749 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv175 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 1755 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (e1 : (
# 51 "parser.mly"
      (expression)
# 1760 "parser.ml"
        ))) = _menhir_stack in
        let _1 = () in
        let _v : (
# 51 "parser.mly"
      (expression)
# 1766 "parser.ml"
        ) = 
# 102 "parser.mly"
                          (Numerateur e1)
# 1770 "parser.ml"
         in
        _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv176)) : 'freshtv178)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv189 * _menhir_state) * _menhir_state) * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 1778 "parser.ml"
        ))) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 1782 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv185 * _menhir_state) * _menhir_state) * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 1792 "parser.ml"
            ))) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 1796 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | PF ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv181 * _menhir_state) * _menhir_state) * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 1806 "parser.ml"
                ))) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 1810 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv179 * _menhir_state) * _menhir_state) * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 1817 "parser.ml"
                ))) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 1821 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let ((((_menhir_stack, _menhir_s), _), _, (t : (
# 49 "parser.mly"
      (typ)
# 1826 "parser.ml"
                ))), _, (e1 : (
# 51 "parser.mly"
      (expression)
# 1830 "parser.ml"
                ))) = _menhir_stack in
                let _7 = () in
                let _6 = () in
                let _4 = () in
                let _2 = () in
                let _1 = () in
                let _v : (
# 51 "parser.mly"
      (expression)
# 1840 "parser.ml"
                ) = 
# 111 "parser.mly"
                             (TabAllocation(t, e1))
# 1844 "parser.ml"
                 in
                _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv180)) : 'freshtv182)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv183 * _menhir_state) * _menhir_state) * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 1854 "parser.ml"
                ))) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 1858 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv184)) : 'freshtv186)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv187 * _menhir_state) * _menhir_state) * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 1869 "parser.ml"
            ))) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 1873 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv188)) : 'freshtv190)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv201 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (affectable)
# 1882 "parser.ml"
        ))) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 1886 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv197 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (affectable)
# 1896 "parser.ml"
            ))) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 1900 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | PF ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv193 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (affectable)
# 1910 "parser.ml"
                ))) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 1914 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv191 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (affectable)
# 1921 "parser.ml"
                ))) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 1925 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let (((_menhir_stack, _menhir_s), _, (a : (
# 53 "parser.mly"
      (affectable)
# 1930 "parser.ml"
                ))), _, (e1 : (
# 51 "parser.mly"
      (expression)
# 1934 "parser.ml"
                ))) = _menhir_stack in
                let _6 = () in
                let _5 = () in
                let _3 = () in
                let _1 = () in
                let _v : (
# 53 "parser.mly"
      (affectable)
# 1943 "parser.ml"
                ) = 
# 85 "parser.mly"
                          (Indice(a,e1))
# 1947 "parser.ml"
                 in
                _menhir_goto_aff _menhir_env _menhir_stack _menhir_s _v) : 'freshtv192)) : 'freshtv194)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv195 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (affectable)
# 1957 "parser.ml"
                ))) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 1961 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv196)) : 'freshtv198)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv199 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (affectable)
# 1972 "parser.ml"
            ))) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 1976 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv200)) : 'freshtv202)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv213 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 1985 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQUAL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv203 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 1995 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ADR ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | CALL ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | CO ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | DENOM ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | ENTIER _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | FALSE ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | ID _v ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | NULL ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | NUM ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | PO ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | TRUE ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState64) : 'freshtv204)
        | INF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv205 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 2031 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ADR ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | CALL ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | CO ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | DENOM ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | ENTIER _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
            | FALSE ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | ID _v ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
            | NULL ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | NUM ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | PO ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | TRUE ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState61) : 'freshtv206)
        | MULT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv207 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 2067 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ADR ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | CALL ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | CO ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | DENOM ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | ENTIER _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
            | FALSE ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | ID _v ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
            | NULL ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | NUM ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | PO ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | TRUE ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState58) : 'freshtv208)
        | PLUS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv209 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 2103 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ADR ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | CALL ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | CO ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | DENOM ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | ENTIER _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
            | FALSE ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | ID _v ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
            | NULL ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | NUM ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | PO ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | TRUE ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55) : 'freshtv210)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv211 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 2141 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv212)) : 'freshtv214)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv221 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 2150 "parser.ml"
        ))) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 2154 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv217 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 2164 "parser.ml"
            ))) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 2168 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv215 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 2175 "parser.ml"
            ))) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 2179 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (e1 : (
# 51 "parser.mly"
      (expression)
# 2184 "parser.ml"
            ))), _, (e2 : (
# 51 "parser.mly"
      (expression)
# 2188 "parser.ml"
            ))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (
# 51 "parser.mly"
      (expression)
# 2196 "parser.ml"
            ) = 
# 112 "parser.mly"
                          (Binaire (Plus,e1,e2))
# 2200 "parser.ml"
             in
            _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv216)) : 'freshtv218)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv219 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 2210 "parser.ml"
            ))) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 2214 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv220)) : 'freshtv222)
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv229 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 2223 "parser.ml"
        ))) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 2227 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv225 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 2237 "parser.ml"
            ))) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 2241 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv223 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 2248 "parser.ml"
            ))) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 2252 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (e1 : (
# 51 "parser.mly"
      (expression)
# 2257 "parser.ml"
            ))), _, (e2 : (
# 51 "parser.mly"
      (expression)
# 2261 "parser.ml"
            ))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (
# 51 "parser.mly"
      (expression)
# 2269 "parser.ml"
            ) = 
# 113 "parser.mly"
                          (Binaire (Mult,e1,e2))
# 2273 "parser.ml"
             in
            _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv224)) : 'freshtv226)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv227 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 2283 "parser.ml"
            ))) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 2287 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv228)) : 'freshtv230)
    | MenhirState61 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv237 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 2296 "parser.ml"
        ))) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 2300 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv233 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 2310 "parser.ml"
            ))) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 2314 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv231 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 2321 "parser.ml"
            ))) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 2325 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (e1 : (
# 51 "parser.mly"
      (expression)
# 2330 "parser.ml"
            ))), _, (e2 : (
# 51 "parser.mly"
      (expression)
# 2334 "parser.ml"
            ))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (
# 51 "parser.mly"
      (expression)
# 2342 "parser.ml"
            ) = 
# 115 "parser.mly"
                          (Binaire (Inf,e1,e2))
# 2346 "parser.ml"
             in
            _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv232)) : 'freshtv234)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv235 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 2356 "parser.ml"
            ))) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 2360 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv236)) : 'freshtv238)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv245 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 2369 "parser.ml"
        ))) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 2373 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv241 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 2383 "parser.ml"
            ))) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 2387 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv239 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 2394 "parser.ml"
            ))) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 2398 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (e1 : (
# 51 "parser.mly"
      (expression)
# 2403 "parser.ml"
            ))), _, (e2 : (
# 51 "parser.mly"
      (expression)
# 2407 "parser.ml"
            ))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (
# 51 "parser.mly"
      (expression)
# 2415 "parser.ml"
            ) = 
# 114 "parser.mly"
                          (Binaire (Equ,e1,e2))
# 2419 "parser.ml"
             in
            _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv240)) : 'freshtv242)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv243 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 2429 "parser.ml"
            ))) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 2433 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv244)) : 'freshtv246)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv247 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 2442 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AO ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState68) : 'freshtv248)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv255 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 2458 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PV ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv251 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 2468 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv249 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 2475 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e1 : (
# 51 "parser.mly"
      (expression)
# 2480 "parser.ml"
            ))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 48 "parser.mly"
      (instruction)
# 2487 "parser.ml"
            ) = 
# 78 "parser.mly"
                                    (Affichage (e1))
# 2491 "parser.ml"
             in
            _menhir_goto_i _menhir_env _menhir_stack _menhir_s _v) : 'freshtv250)) : 'freshtv252)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv253 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 2501 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv254)) : 'freshtv256)
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv257 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 2510 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AO ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState75) : 'freshtv258)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv265 * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 2526 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 2530 "parser.ml"
        ))) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 2534 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PV ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv261 * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 2544 "parser.ml"
            )) * (
# 11 "parser.mly"
       (string)
# 2548 "parser.ml"
            ))) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 2552 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv259 * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 2559 "parser.ml"
            )) * (
# 11 "parser.mly"
       (string)
# 2563 "parser.ml"
            ))) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 2567 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (t : (
# 49 "parser.mly"
      (typ)
# 2572 "parser.ml"
            ))), (n : (
# 11 "parser.mly"
       (string)
# 2576 "parser.ml"
            ))), _, (e1 : (
# 51 "parser.mly"
      (expression)
# 2580 "parser.ml"
            ))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _v : (
# 48 "parser.mly"
      (instruction)
# 2587 "parser.ml"
            ) = 
# 75 "parser.mly"
                                    (Declaration (t,n,e1))
# 2591 "parser.ml"
             in
            _menhir_goto_i _menhir_env _menhir_stack _menhir_s _v) : 'freshtv260)) : 'freshtv262)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv263 * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 2601 "parser.ml"
            )) * (
# 11 "parser.mly"
       (string)
# 2605 "parser.ml"
            ))) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 2609 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv264)) : 'freshtv266)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv273 * _menhir_state * (
# 53 "parser.mly"
      (affectable)
# 2618 "parser.ml"
        ))) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 2622 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PV ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv269 * _menhir_state * (
# 53 "parser.mly"
      (affectable)
# 2632 "parser.ml"
            ))) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 2636 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv267 * _menhir_state * (
# 53 "parser.mly"
      (affectable)
# 2643 "parser.ml"
            ))) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 2647 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a : (
# 53 "parser.mly"
      (affectable)
# 2652 "parser.ml"
            ))), _, (e1 : (
# 51 "parser.mly"
      (expression)
# 2656 "parser.ml"
            ))) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : (
# 48 "parser.mly"
      (instruction)
# 2663 "parser.ml"
            ) = 
# 76 "parser.mly"
                                    (Affectation (a,e1))
# 2667 "parser.ml"
             in
            _menhir_goto_i _menhir_env _menhir_stack _menhir_s _v) : 'freshtv268)) : 'freshtv270)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv271 * _menhir_state * (
# 53 "parser.mly"
      (affectable)
# 2677 "parser.ml"
            ))) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 2681 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv272)) : 'freshtv274)
    | MenhirState108 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv289 * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 2690 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 2694 "parser.ml"
        ))) * _menhir_state * (
# 50 "parser.mly"
      ((typ*string) list)
# 2698 "parser.ml"
        )))) * _menhir_state * (
# 47 "parser.mly"
      (instruction list)
# 2702 "parser.ml"
        ))) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 2706 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PV ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((((('freshtv285 * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 2716 "parser.ml"
            )) * (
# 11 "parser.mly"
       (string)
# 2720 "parser.ml"
            ))) * _menhir_state * (
# 50 "parser.mly"
      ((typ*string) list)
# 2724 "parser.ml"
            )))) * _menhir_state * (
# 47 "parser.mly"
      (instruction list)
# 2728 "parser.ml"
            ))) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 2732 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AF ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((((((('freshtv281 * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 2742 "parser.ml"
                )) * (
# 11 "parser.mly"
       (string)
# 2746 "parser.ml"
                ))) * _menhir_state * (
# 50 "parser.mly"
      ((typ*string) list)
# 2750 "parser.ml"
                )))) * _menhir_state * (
# 47 "parser.mly"
      (instruction list)
# 2754 "parser.ml"
                ))) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 2758 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((((((('freshtv279 * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 2765 "parser.ml"
                )) * (
# 11 "parser.mly"
       (string)
# 2769 "parser.ml"
                ))) * _menhir_state * (
# 50 "parser.mly"
      ((typ*string) list)
# 2773 "parser.ml"
                )))) * _menhir_state * (
# 47 "parser.mly"
      (instruction list)
# 2777 "parser.ml"
                ))) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 2781 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let (((((_menhir_stack, _menhir_s, (t : (
# 49 "parser.mly"
      (typ)
# 2786 "parser.ml"
                ))), (n : (
# 11 "parser.mly"
       (string)
# 2790 "parser.ml"
                ))), _, (p : (
# 50 "parser.mly"
      ((typ*string) list)
# 2794 "parser.ml"
                ))), _, (li : (
# 47 "parser.mly"
      (instruction list)
# 2798 "parser.ml"
                ))), _, (exp : (
# 51 "parser.mly"
      (expression)
# 2802 "parser.ml"
                ))) = _menhir_stack in
                let _11 = () in
                let _10 = () in
                let _8 = () in
                let _6 = () in
                let _5 = () in
                let _3 = () in
                let _v : (
# 46 "parser.mly"
      (fonction)
# 2813 "parser.ml"
                ) = 
# 66 "parser.mly"
                                                         (Fonction(t,n,p,li,exp))
# 2817 "parser.ml"
                 in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv277) = _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : (
# 46 "parser.mly"
      (fonction)
# 2825 "parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv275 * _menhir_state * (
# 46 "parser.mly"
      (fonction)
# 2832 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BOOL ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState115
                | ID _v ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _v
                | INT ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState115
                | PO ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState115
                | RAT ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState115
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState115) : 'freshtv276)) : 'freshtv278)) : 'freshtv280)) : 'freshtv282)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((((((('freshtv283 * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 2858 "parser.ml"
                )) * (
# 11 "parser.mly"
       (string)
# 2862 "parser.ml"
                ))) * _menhir_state * (
# 50 "parser.mly"
      ((typ*string) list)
# 2866 "parser.ml"
                )))) * _menhir_state * (
# 47 "parser.mly"
      (instruction list)
# 2870 "parser.ml"
                ))) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 2874 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv284)) : 'freshtv286)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((((('freshtv287 * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 2885 "parser.ml"
            )) * (
# 11 "parser.mly"
       (string)
# 2889 "parser.ml"
            ))) * _menhir_state * (
# 50 "parser.mly"
      ((typ*string) list)
# 2893 "parser.ml"
            )))) * _menhir_state * (
# 47 "parser.mly"
      (instruction list)
# 2897 "parser.ml"
            ))) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 2901 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv288)) : 'freshtv290)
    | _ ->
        _menhir_fail ()

and _menhir_run13 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv153) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 51 "parser.mly"
      (expression)
# 2918 "parser.ml"
    ) = 
# 104 "parser.mly"
                          (True)
# 2922 "parser.ml"
     in
    _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv154)

and _menhir_run14 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADR ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | CALL ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | CO ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | DENOM ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | ENTIER _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
    | FALSE ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | ID _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
    | MULT ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | NEW ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv151 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState14 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | INT ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | PO ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | RAT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38) : 'freshtv152)
    | NULL ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | NUM ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | PO ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | TRUE ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADR ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | CALL ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | CO ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | DENOM ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | ENTIER _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
    | FALSE ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | ID _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
    | NULL ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | NUM ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | PO ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | TRUE ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15

and _menhir_run16 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv149) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 51 "parser.mly"
      (expression)
# 3024 "parser.ml"
    ) = 
# 107 "parser.mly"
                          (Null)
# 3028 "parser.ml"
     in
    _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv150)

and _menhir_run17 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 11 "parser.mly"
       (string)
# 3035 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv147) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((n : (
# 11 "parser.mly"
       (string)
# 3045 "parser.ml"
    )) : (
# 11 "parser.mly"
       (string)
# 3049 "parser.ml"
    )) = _v in
    ((let _v : (
# 53 "parser.mly"
      (affectable)
# 3054 "parser.ml"
    ) = 
# 83 "parser.mly"
                          (Variable n)
# 3058 "parser.ml"
     in
    _menhir_goto_aff _menhir_env _menhir_stack _menhir_s _v) : 'freshtv148)

and _menhir_run18 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv145) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 51 "parser.mly"
      (expression)
# 3072 "parser.ml"
    ) = 
# 105 "parser.mly"
                          (False)
# 3076 "parser.ml"
     in
    _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv146)

and _menhir_run19 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "parser.mly"
       (int)
# 3083 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv143) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((e : (
# 10 "parser.mly"
       (int)
# 3093 "parser.ml"
    )) : (
# 10 "parser.mly"
       (int)
# 3097 "parser.ml"
    )) = _v in
    ((let _v : (
# 51 "parser.mly"
      (expression)
# 3102 "parser.ml"
    ) = 
# 106 "parser.mly"
                          (Entier e)
# 3106 "parser.ml"
     in
    _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv144)

and _menhir_run20 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADR ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | CALL ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | CO ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | DENOM ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | ENTIER _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
    | FALSE ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | ID _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
    | NULL ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | NUM ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | PO ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | TRUE ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20

and _menhir_run21 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADR ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | CALL ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | CO ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | DENOM ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | ENTIER _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
    | FALSE ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | ID _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
    | NULL ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | NUM ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | PO ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | TRUE ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21

and _menhir_run9 : _menhir_env -> ('ttv_tail * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 3179 "parser.ml"
)) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv141 * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 3187 "parser.ml"
    ))) = Obj.magic _menhir_stack in
    let (_ : _menhir_state) = _menhir_s in
    ((let (_menhir_stack, _menhir_s, (t : (
# 49 "parser.mly"
      (typ)
# 3193 "parser.ml"
    ))) = _menhir_stack in
    let _3 = () in
    let _2 = () in
    let _v : (
# 49 "parser.mly"
      (typ)
# 3200 "parser.ml"
    ) = 
# 96 "parser.mly"
              (Tab t)
# 3204 "parser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv142)

and _menhir_run22 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv137 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 11 "parser.mly"
       (string)
# 3220 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv133 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 3231 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ADR ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState24
            | CALL ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState24
            | CO ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState24
            | DENOM ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState24
            | ENTIER _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
            | FALSE ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState24
            | ID _v ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
            | NULL ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState24
            | NUM ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState24
            | PO ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState24
            | TRUE ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState24
            | PF ->
                _menhir_reduce5 _menhir_env (Obj.magic _menhir_stack) MenhirState24
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState24) : 'freshtv134)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv135 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 3271 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv136)) : 'freshtv138)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv139 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)

and _menhir_run25 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv129 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 11 "parser.mly"
       (string)
# 3295 "parser.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv127 * _menhir_state) = Obj.magic _menhir_stack in
        let ((n : (
# 11 "parser.mly"
       (string)
# 3303 "parser.ml"
        )) : (
# 11 "parser.mly"
       (string)
# 3307 "parser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : (
# 51 "parser.mly"
      (expression)
# 3314 "parser.ml"
        ) = 
# 110 "parser.mly"
                          (Adresse(n))
# 3318 "parser.ml"
         in
        _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv128)) : 'freshtv130)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv131 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)

and _menhir_run7 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 3332 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv125 * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 3340 "parser.ml"
    )) = Obj.magic _menhir_stack in
    ((let (_menhir_stack, _menhir_s, (t : (
# 49 "parser.mly"
      (typ)
# 3345 "parser.ml"
    ))) = _menhir_stack in
    let _2 = () in
    let _v : (
# 49 "parser.mly"
      (typ)
# 3351 "parser.ml"
    ) = 
# 95 "parser.mly"
              (Pt t)
# 3355 "parser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv126)

and _menhir_run8 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 3362 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CF ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState8

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | CONST ->
        _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | ID _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | IF ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | INT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | PO ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | PRINT ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | RAT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | WHILE ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | AF ->
        _menhir_reduce32 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState11

and _menhir_goto_typ : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 49 "parser.mly"
      (typ)
# 3409 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState73 | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv87 * _menhir_state) * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 3419 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CO ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack)
        | PF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv83 * _menhir_state) * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 3433 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv81 * _menhir_state) * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 3440 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (t : (
# 49 "parser.mly"
      (typ)
# 3445 "parser.ml"
            ))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 49 "parser.mly"
      (typ)
# 3452 "parser.ml"
            ) = 
# 97 "parser.mly"
              (t)
# 3456 "parser.ml"
             in
            _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv82)) : 'freshtv84)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv85 * _menhir_state) * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 3466 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)) : 'freshtv88)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv97 * _menhir_state) * _menhir_state) * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 3475 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv89 * _menhir_state) * _menhir_state) * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 3485 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ADR ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | CALL ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | CF ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | CO ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | DENOM ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | ENTIER _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
            | FALSE ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | ID _v ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
            | NULL ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | NUM ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | PO ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | TRUE ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41) : 'freshtv90)
        | MULT ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack)
        | PF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv93 * _menhir_state) * _menhir_state) * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 3525 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv91 * _menhir_state) * _menhir_state) * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 3532 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _), _, (t : (
# 49 "parser.mly"
      (typ)
# 3537 "parser.ml"
            ))) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (
# 51 "parser.mly"
      (expression)
# 3545 "parser.ml"
            ) = 
# 109 "parser.mly"
                               (Allocation(t))
# 3549 "parser.ml"
             in
            _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv92)) : 'freshtv94)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv95 * _menhir_state) * _menhir_state) * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 3559 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)) : 'freshtv98)
    | MenhirState106 | MenhirState91 | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv107 * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 3568 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CO ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack)
        | ID _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv103 * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 3580 "parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_v : (
# 11 "parser.mly"
       (string)
# 3585 "parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EQUAL ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv99 * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 3596 "parser.ml"
                )) * (
# 11 "parser.mly"
       (string)
# 3600 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ADR ->
                    _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                | CALL ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                | CO ->
                    _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                | DENOM ->
                    _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                | ENTIER _v ->
                    _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
                | FALSE ->
                    _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                | ID _v ->
                    _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
                | NULL ->
                    _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                | NUM ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                | PO ->
                    _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                | TRUE ->
                    _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState86) : 'freshtv100)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv101 * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 3638 "parser.ml"
                )) * (
# 11 "parser.mly"
       (string)
# 3642 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)) : 'freshtv104)
        | MULT ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv105 * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 3655 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)) : 'freshtv108)
    | MenhirState115 | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv117 * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 3664 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CO ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack)
        | ID _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv113 * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 3676 "parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_v : (
# 11 "parser.mly"
       (string)
# 3681 "parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | PO ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv109 * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 3692 "parser.ml"
                )) * (
# 11 "parser.mly"
       (string)
# 3696 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BOOL ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState100
                | INT ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState100
                | PO ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState100
                | RAT ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState100
                | PF ->
                    _menhir_reduce7 _menhir_env (Obj.magic _menhir_stack) MenhirState100
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState100) : 'freshtv110)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv111 * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 3722 "parser.ml"
                )) * (
# 11 "parser.mly"
       (string)
# 3726 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)) : 'freshtv114)
        | MULT ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv115 * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 3739 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)) : 'freshtv118)
    | MenhirState102 | MenhirState100 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv123 * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 3748 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CO ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack)
        | ID _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv119 * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 3760 "parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_v : (
# 11 "parser.mly"
       (string)
# 3765 "parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | INT ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | PO ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | RAT ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | PF ->
                _menhir_reduce7 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState102) : 'freshtv120)
        | MULT ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv121 * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 3794 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv122)) : 'freshtv124)
    | _ ->
        _menhir_fail ()

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState115 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv9 * _menhir_state * (
# 46 "parser.mly"
      (fonction)
# 3809 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv10)
    | MenhirState108 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv11 * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 3818 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 3822 "parser.ml"
        ))) * _menhir_state * (
# 50 "parser.mly"
      ((typ*string) list)
# 3826 "parser.ml"
        )))) * _menhir_state * (
# 47 "parser.mly"
      (instruction list)
# 3830 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv12)
    | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv13 * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 3839 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 3843 "parser.ml"
        ))) * _menhir_state * (
# 50 "parser.mly"
      ((typ*string) list)
# 3847 "parser.ml"
        )))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv14)
    | MenhirState102 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv15 * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 3856 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 3860 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv16)
    | MenhirState100 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv17 * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 3869 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 3873 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv18)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv19 * _menhir_state * (
# 53 "parser.mly"
      (affectable)
# 3882 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv20)
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv21 * _menhir_state * (
# 48 "parser.mly"
      (instruction)
# 3891 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv23 * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 3900 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 3904 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)
    | MenhirState77 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv25 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 3913 "parser.ml"
        )) * _menhir_state * (
# 45 "parser.mly"
      (instruction list)
# 3917 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)
    | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv27 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 3926 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv29 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)
    | MenhirState73 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv31 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv33 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)
    | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv35 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 3950 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv37 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 3959 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState61 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv39 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 3968 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv41 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 3977 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv43 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 3986 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv45 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (affectable)
# 3995 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv47 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv49 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv51 * _menhir_state) * _menhir_state) * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 4014 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv53 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv55 * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 4028 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv57 * _menhir_state * (
# 51 "parser.mly"
      (expression)
# 4037 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState24 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv59 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 4046 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv61 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv63 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv65 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv67 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv69 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv71 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv73 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 4085 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv75 * _menhir_state * (
# 49 "parser.mly"
      (typ)
# 4094 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv77 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv79) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv80)

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv7) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 49 "parser.mly"
      (typ)
# 4118 "parser.ml"
    ) = 
# 94 "parser.mly"
          (Rat)
# 4122 "parser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv8)

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | INT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | PO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | RAT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState2

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv5) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 49 "parser.mly"
      (typ)
# 4155 "parser.ml"
    ) = 
# 93 "parser.mly"
          (Int)
# 4159 "parser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv6)

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 11 "parser.mly"
       (string)
# 4166 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AO ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 49 "parser.mly"
      (typ)
# 4190 "parser.ml"
    ) = 
# 92 "parser.mly"
          (Bool)
# 4194 "parser.ml"
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
# 56 "parser.mly"
       (Ast.AstSyntax.programme)
# 4213 "parser.ml"
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
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | INT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | PO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | RAT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv2))

# 233 "/opt/opam/4.06.0/lib/menhir/standard.mly"
  

# 4250 "parser.ml"
