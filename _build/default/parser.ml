
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
    | POINTEUR
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
# 29 "parser.ml"
  )
    | FOR
    | FALSE
    | EQUAL
    | EOF
    | ENTIER of (
# 10 "parser.mly"
       (int)
<<<<<<< HEAD
# 37 "parser.ml"
=======
# 38 "parser.ml"
>>>>>>> boucle_for
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
<<<<<<< HEAD
  | MenhirState99
  | MenhirState92
  | MenhirState90
  | MenhirState86
  | MenhirState84
  | MenhirState78
  | MenhirState75
  | MenhirState70
=======
  | MenhirState113
  | MenhirState106
  | MenhirState104
  | MenhirState100
  | MenhirState98
  | MenhirState92
  | MenhirState89
  | MenhirState84
  | MenhirState75
  | MenhirState73
  | MenhirState69
  | MenhirState67
  | MenhirState64
>>>>>>> boucle_for
  | MenhirState61
  | MenhirState59
  | MenhirState58
  | MenhirState55
  | MenhirState53
  | MenhirState50
  | MenhirState47
  | MenhirState44
  | MenhirState41
  | MenhirState37
  | MenhirState36
  | MenhirState31
  | MenhirState26
  | MenhirState20
  | MenhirState17
  | MenhirState14
  | MenhirState13
  | MenhirState8
  | MenhirState7
  | MenhirState5
  | MenhirState4
  | MenhirState3
  | MenhirState0

# 3 "parser.mly"
  

open Type
open Ast.AstSyntax

<<<<<<< HEAD
# 103 "parser.ml"

let rec _menhir_goto_prog : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 45 "parser.mly"
      (programme)
# 108 "parser.ml"
=======
# 109 "parser.ml"

let rec _menhir_goto_prog : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 46 "parser.mly"
      (programme)
# 114 "parser.ml"
>>>>>>> boucle_for
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
        let (_menhir_stack : 'freshtv359 * _menhir_state * (
# 45 "parser.mly"
      (programme)
# 118 "parser.ml"
=======
        let (_menhir_stack : 'freshtv413 * _menhir_state * (
# 46 "parser.mly"
      (programme)
# 124 "parser.ml"
>>>>>>> boucle_for
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : 'freshtv355 * _menhir_state * (
# 45 "parser.mly"
      (programme)
# 128 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv353 * _menhir_state * (
# 45 "parser.mly"
      (programme)
# 134 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (lfi : (
# 45 "parser.mly"
      (programme)
# 139 "parser.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 57 "parser.mly"
       (Ast.AstSyntax.programme)
# 145 "parser.ml"
            ) = 
# 61 "parser.mly"
                          (let a = lfi in ((Ast.PrinterAstSyntax.print_programme a);a))
# 149 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv351) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 57 "parser.mly"
       (Ast.AstSyntax.programme)
# 157 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv349) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 57 "parser.mly"
       (Ast.AstSyntax.programme)
# 165 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv347) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 57 "parser.mly"
       (Ast.AstSyntax.programme)
# 173 "parser.ml"
            )) : (
# 57 "parser.mly"
       (Ast.AstSyntax.programme)
# 177 "parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv348)) : 'freshtv350)) : 'freshtv352)) : 'freshtv354)) : 'freshtv356)
=======
            let (_menhir_stack : 'freshtv409 * _menhir_state * (
# 46 "parser.mly"
      (programme)
# 134 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv407 * _menhir_state * (
# 46 "parser.mly"
      (programme)
# 140 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (lfi : (
# 46 "parser.mly"
      (programme)
# 145 "parser.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 58 "parser.mly"
       (Ast.AstSyntax.programme)
# 151 "parser.ml"
            ) = 
# 62 "parser.mly"
                          (let a = lfi in ((Ast.PrinterAstSyntax.print_programme a);a))
# 155 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv405) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 58 "parser.mly"
       (Ast.AstSyntax.programme)
# 163 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv403) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 58 "parser.mly"
       (Ast.AstSyntax.programme)
# 171 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv401) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 58 "parser.mly"
       (Ast.AstSyntax.programme)
# 179 "parser.ml"
            )) : (
# 58 "parser.mly"
       (Ast.AstSyntax.programme)
# 183 "parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv402)) : 'freshtv404)) : 'freshtv406)) : 'freshtv408)) : 'freshtv410)
>>>>>>> boucle_for
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : 'freshtv357 * _menhir_state * (
# 45 "parser.mly"
      (programme)
# 187 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv358)) : 'freshtv360)
    | MenhirState99 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv363 * _menhir_state * (
# 47 "parser.mly"
      (fonction)
# 196 "parser.ml"
        )) * _menhir_state * (
# 45 "parser.mly"
      (programme)
# 200 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv361 * _menhir_state * (
# 47 "parser.mly"
      (fonction)
# 206 "parser.ml"
        )) * _menhir_state * (
# 45 "parser.mly"
      (programme)
# 210 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (lf : (
# 47 "parser.mly"
      (fonction)
# 215 "parser.ml"
        ))), _, (lfi : (
# 45 "parser.mly"
      (programme)
# 219 "parser.ml"
        ))) = _menhir_stack in
        let _v : (
# 45 "parser.mly"
      (programme)
# 224 "parser.ml"
        ) = 
# 64 "parser.mly"
                          (let (Programme (lf1,li))=lfi in (Programme (lf::lf1,li)))
# 228 "parser.ml"
         in
        _menhir_goto_prog _menhir_env _menhir_stack _menhir_s _v) : 'freshtv362)) : 'freshtv364)
=======
            let (_menhir_stack : 'freshtv411 * _menhir_state * (
# 46 "parser.mly"
      (programme)
# 193 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv412)) : 'freshtv414)
    | MenhirState113 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv417 * _menhir_state * (
# 48 "parser.mly"
      (fonction)
# 202 "parser.ml"
        )) * _menhir_state * (
# 46 "parser.mly"
      (programme)
# 206 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv415 * _menhir_state * (
# 48 "parser.mly"
      (fonction)
# 212 "parser.ml"
        )) * _menhir_state * (
# 46 "parser.mly"
      (programme)
# 216 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (lf : (
# 48 "parser.mly"
      (fonction)
# 221 "parser.ml"
        ))), _, (lfi : (
# 46 "parser.mly"
      (programme)
# 225 "parser.ml"
        ))) = _menhir_stack in
        let _v : (
# 46 "parser.mly"
      (programme)
# 230 "parser.ml"
        ) = 
# 65 "parser.mly"
                          (let (Programme (lf1,li))=lfi in (Programme (lf::lf1,li)))
# 234 "parser.ml"
         in
        _menhir_goto_prog _menhir_env _menhir_stack _menhir_s _v) : 'freshtv416)) : 'freshtv418)
>>>>>>> boucle_for
    | _ ->
        _menhir_fail ()

and _menhir_goto_cp : _menhir_env -> 'ttv_tail -> _menhir_state -> (
<<<<<<< HEAD
# 53 "parser.mly"
      (expression list)
# 237 "parser.ml"
=======
# 54 "parser.mly"
      (expression list)
# 243 "parser.ml"
>>>>>>> boucle_for
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
        let (_menhir_stack : ('freshtv337 * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 247 "parser.ml"
        )) * _menhir_state * (
# 53 "parser.mly"
      (expression list)
# 251 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv335 * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 257 "parser.ml"
        )) * _menhir_state * (
# 53 "parser.mly"
      (expression list)
# 261 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (e1 : (
# 52 "parser.mly"
      (expression)
# 266 "parser.ml"
        ))), _, (le : (
# 53 "parser.mly"
      (expression list)
# 270 "parser.ml"
        ))) = _menhir_stack in
        let _v : (
# 53 "parser.mly"
      (expression list)
# 275 "parser.ml"
        ) = 
# 116 "parser.mly"
                (e1::le)
# 279 "parser.ml"
         in
        _menhir_goto_cp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv336)) : 'freshtv338)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv345 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 287 "parser.ml"
        ))) * _menhir_state * (
# 53 "parser.mly"
      (expression list)
# 291 "parser.ml"
=======
        let (_menhir_stack : ('freshtv391 * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 253 "parser.ml"
        )) * _menhir_state * (
# 54 "parser.mly"
      (expression list)
# 257 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv389 * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 263 "parser.ml"
        )) * _menhir_state * (
# 54 "parser.mly"
      (expression list)
# 267 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (e1 : (
# 53 "parser.mly"
      (expression)
# 272 "parser.ml"
        ))), _, (le : (
# 54 "parser.mly"
      (expression list)
# 276 "parser.ml"
        ))) = _menhir_stack in
        let _v : (
# 54 "parser.mly"
      (expression list)
# 281 "parser.ml"
        ) = 
# 118 "parser.mly"
                (e1::le)
# 285 "parser.ml"
         in
        _menhir_goto_cp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv390)) : 'freshtv392)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv399 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 293 "parser.ml"
        ))) * _menhir_state * (
# 54 "parser.mly"
      (expression list)
# 297 "parser.ml"
>>>>>>> boucle_for
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : ((('freshtv341 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 301 "parser.ml"
            ))) * _menhir_state * (
# 53 "parser.mly"
      (expression list)
# 305 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv339 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 312 "parser.ml"
            ))) * _menhir_state * (
# 53 "parser.mly"
      (expression list)
# 316 "parser.ml"
=======
            let (_menhir_stack : ((('freshtv395 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 307 "parser.ml"
            ))) * _menhir_state * (
# 54 "parser.mly"
      (expression list)
# 311 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv393 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 318 "parser.ml"
            ))) * _menhir_state * (
# 54 "parser.mly"
      (expression list)
# 322 "parser.ml"
>>>>>>> boucle_for
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), (n : (
# 11 "parser.mly"
       (string)
<<<<<<< HEAD
# 321 "parser.ml"
            ))), _, (lp : (
# 53 "parser.mly"
      (expression list)
# 325 "parser.ml"
=======
# 327 "parser.ml"
            ))), _, (lp : (
# 54 "parser.mly"
      (expression list)
# 331 "parser.ml"
>>>>>>> boucle_for
            ))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (
<<<<<<< HEAD
# 52 "parser.mly"
      (expression)
# 333 "parser.ml"
            ) = 
# 98 "parser.mly"
                          (AppelFonction (n,lp))
# 337 "parser.ml"
             in
            _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv340)) : 'freshtv342)
=======
# 53 "parser.mly"
      (expression)
# 339 "parser.ml"
            ) = 
# 100 "parser.mly"
                          (AppelFonction (n,lp))
# 343 "parser.ml"
             in
            _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv394)) : 'freshtv396)
>>>>>>> boucle_for
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : ((('freshtv343 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 347 "parser.ml"
            ))) * _menhir_state * (
# 53 "parser.mly"
      (expression list)
# 351 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv344)) : 'freshtv346)
=======
            let (_menhir_stack : ((('freshtv397 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 353 "parser.ml"
            ))) * _menhir_state * (
# 54 "parser.mly"
      (expression list)
# 357 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv398)) : 'freshtv400)
>>>>>>> boucle_for
    | _ ->
        _menhir_fail ()

and _menhir_goto_is : _menhir_env -> 'ttv_tail -> _menhir_state -> (
<<<<<<< HEAD
# 48 "parser.mly"
      (instruction list)
# 361 "parser.ml"
=======
# 49 "parser.mly"
      (instruction list)
# 367 "parser.ml"
>>>>>>> boucle_for
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
        let (_menhir_stack : ('freshtv323 * _menhir_state) * _menhir_state * (
# 48 "parser.mly"
      (instruction list)
# 371 "parser.ml"
=======
        let (_menhir_stack : ('freshtv377 * _menhir_state) * _menhir_state * (
# 49 "parser.mly"
      (instruction list)
# 377 "parser.ml"
>>>>>>> boucle_for
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : ('freshtv319 * _menhir_state) * _menhir_state * (
# 48 "parser.mly"
      (instruction list)
# 381 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv317 * _menhir_state) * _menhir_state * (
# 48 "parser.mly"
      (instruction list)
# 388 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (li : (
# 48 "parser.mly"
      (instruction list)
# 393 "parser.ml"
=======
            let (_menhir_stack : ('freshtv373 * _menhir_state) * _menhir_state * (
# 49 "parser.mly"
      (instruction list)
# 387 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv371 * _menhir_state) * _menhir_state * (
# 49 "parser.mly"
      (instruction list)
# 394 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (li : (
# 49 "parser.mly"
      (instruction list)
# 399 "parser.ml"
>>>>>>> boucle_for
            ))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
<<<<<<< HEAD
# 46 "parser.mly"
      (instruction list)
# 400 "parser.ml"
            ) = 
# 69 "parser.mly"
                          (li)
# 404 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv315) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 46 "parser.mly"
      (instruction list)
# 412 "parser.ml"
=======
# 47 "parser.mly"
      (instruction list)
# 406 "parser.ml"
            ) = 
# 70 "parser.mly"
                          (li)
# 410 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv369) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 47 "parser.mly"
      (instruction list)
# 418 "parser.ml"
>>>>>>> boucle_for
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            match _menhir_s with
            | MenhirState53 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
                let (_menhir_stack : (('freshtv299 * _menhir_state) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 421 "parser.ml"
                )) * _menhir_state * (
# 46 "parser.mly"
      (instruction list)
# 425 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv297 * _menhir_state) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 431 "parser.ml"
                )) * _menhir_state * (
# 46 "parser.mly"
      (instruction list)
# 435 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let (((_menhir_stack, _menhir_s), _, (exp : (
# 52 "parser.mly"
      (expression)
# 440 "parser.ml"
                ))), _, (li : (
# 46 "parser.mly"
      (instruction list)
# 444 "parser.ml"
                ))) = _menhir_stack in
                let _1 = () in
                let _v : (
# 49 "parser.mly"
      (instruction)
# 450 "parser.ml"
                ) = 
# 81 "parser.mly"
                                    (TantQue (exp,li))
# 454 "parser.ml"
                 in
                _menhir_goto_i _menhir_env _menhir_stack _menhir_s _v) : 'freshtv298)) : 'freshtv300)
            | MenhirState59 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv305 * _menhir_state) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 462 "parser.ml"
                )) * _menhir_state * (
# 46 "parser.mly"
      (instruction list)
# 466 "parser.ml"
=======
                let (_menhir_stack : (('freshtv349 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 427 "parser.ml"
                )) * _menhir_state * (
# 47 "parser.mly"
      (instruction list)
# 431 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv347 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 437 "parser.ml"
                )) * _menhir_state * (
# 47 "parser.mly"
      (instruction list)
# 441 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let (((_menhir_stack, _menhir_s), _, (exp : (
# 53 "parser.mly"
      (expression)
# 446 "parser.ml"
                ))), _, (li : (
# 47 "parser.mly"
      (instruction list)
# 450 "parser.ml"
                ))) = _menhir_stack in
                let _1 = () in
                let _v : (
# 50 "parser.mly"
      (instruction)
# 456 "parser.ml"
                ) = 
# 82 "parser.mly"
                                    (TantQue (exp,li))
# 460 "parser.ml"
                 in
                _menhir_goto_i _menhir_env _menhir_stack _menhir_s _v) : 'freshtv348)) : 'freshtv350)
            | MenhirState59 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv355 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 468 "parser.ml"
                )) * _menhir_state * (
# 47 "parser.mly"
      (instruction list)
# 472 "parser.ml"
>>>>>>> boucle_for
                )) = Obj.magic _menhir_stack in
                ((assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ELSE ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
                    let (_menhir_stack : (('freshtv301 * _menhir_state) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 476 "parser.ml"
                    )) * _menhir_state * (
# 46 "parser.mly"
      (instruction list)
# 480 "parser.ml"
=======
                    let (_menhir_stack : (('freshtv351 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 482 "parser.ml"
                    )) * _menhir_state * (
# 47 "parser.mly"
      (instruction list)
# 486 "parser.ml"
>>>>>>> boucle_for
                    )) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | AO ->
                        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState61
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
<<<<<<< HEAD
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState61) : 'freshtv302)
=======
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState61) : 'freshtv352)
>>>>>>> boucle_for
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
                    let (_menhir_stack : (('freshtv303 * _menhir_state) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 498 "parser.ml"
                    )) * _menhir_state * (
# 46 "parser.mly"
      (instruction list)
# 502 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv304)) : 'freshtv306)
            | MenhirState61 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv309 * _menhir_state) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 511 "parser.ml"
                )) * _menhir_state * (
# 46 "parser.mly"
      (instruction list)
# 515 "parser.ml"
                ))) * _menhir_state * (
# 46 "parser.mly"
      (instruction list)
# 519 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv307 * _menhir_state) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 525 "parser.ml"
                )) * _menhir_state * (
# 46 "parser.mly"
      (instruction list)
# 529 "parser.ml"
                ))) * _menhir_state * (
# 46 "parser.mly"
      (instruction list)
# 533 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((((_menhir_stack, _menhir_s), _, (exp : (
# 52 "parser.mly"
      (expression)
# 538 "parser.ml"
                ))), _, (li1 : (
# 46 "parser.mly"
      (instruction list)
# 542 "parser.ml"
                ))), _, (li2 : (
# 46 "parser.mly"
      (instruction list)
# 546 "parser.ml"
=======
                    let (_menhir_stack : (('freshtv353 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 504 "parser.ml"
                    )) * _menhir_state * (
# 47 "parser.mly"
      (instruction list)
# 508 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv354)) : 'freshtv356)
            | MenhirState61 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv359 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 517 "parser.ml"
                )) * _menhir_state * (
# 47 "parser.mly"
      (instruction list)
# 521 "parser.ml"
                ))) * _menhir_state * (
# 47 "parser.mly"
      (instruction list)
# 525 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv357 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 531 "parser.ml"
                )) * _menhir_state * (
# 47 "parser.mly"
      (instruction list)
# 535 "parser.ml"
                ))) * _menhir_state * (
# 47 "parser.mly"
      (instruction list)
# 539 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((((_menhir_stack, _menhir_s), _, (exp : (
# 53 "parser.mly"
      (expression)
# 544 "parser.ml"
                ))), _, (li1 : (
# 47 "parser.mly"
      (instruction list)
# 548 "parser.ml"
                ))), _, (li2 : (
# 47 "parser.mly"
      (instruction list)
# 552 "parser.ml"
>>>>>>> boucle_for
                ))) = _menhir_stack in
                let _4 = () in
                let _1 = () in
                let _v : (
<<<<<<< HEAD
# 49 "parser.mly"
      (instruction)
# 553 "parser.ml"
                ) = 
# 80 "parser.mly"
                                    (Conditionnelle (exp,li1,li2))
# 557 "parser.ml"
                 in
                _menhir_goto_i _menhir_env _menhir_stack _menhir_s _v) : 'freshtv308)) : 'freshtv310)
            | MenhirState3 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv313 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 565 "parser.ml"
                )) * _menhir_state * (
# 46 "parser.mly"
      (instruction list)
# 569 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv311 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 575 "parser.ml"
                )) * _menhir_state * (
# 46 "parser.mly"
      (instruction list)
# 579 "parser.ml"
=======
# 50 "parser.mly"
      (instruction)
# 559 "parser.ml"
                ) = 
# 81 "parser.mly"
                                    (Conditionnelle (exp,li1,li2))
# 563 "parser.ml"
                 in
                _menhir_goto_i _menhir_env _menhir_stack _menhir_s _v) : 'freshtv358)) : 'freshtv360)
            | MenhirState75 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((((((((((('freshtv363 * _menhir_state)) * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 571 "parser.ml"
                )) * (
# 11 "parser.mly"
       (string)
# 575 "parser.ml"
                ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 579 "parser.ml"
                ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 583 "parser.ml"
                ))) * (
# 11 "parser.mly"
       (string)
# 587 "parser.ml"
                ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 591 "parser.ml"
                ))) * _menhir_state * (
# 47 "parser.mly"
      (instruction list)
# 595 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((((((((((('freshtv361 * _menhir_state)) * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 601 "parser.ml"
                )) * (
# 11 "parser.mly"
       (string)
# 605 "parser.ml"
                ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 609 "parser.ml"
                ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 613 "parser.ml"
                ))) * (
# 11 "parser.mly"
       (string)
# 617 "parser.ml"
                ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 621 "parser.ml"
                ))) * _menhir_state * (
# 47 "parser.mly"
      (instruction list)
# 625 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((((((((_menhir_stack, _menhir_s), _, (t : (
# 51 "parser.mly"
      (typ)
# 630 "parser.ml"
                ))), (n1 : (
# 11 "parser.mly"
       (string)
# 634 "parser.ml"
                ))), _, (e1 : (
# 53 "parser.mly"
      (expression)
# 638 "parser.ml"
                ))), _, (e2 : (
# 53 "parser.mly"
      (expression)
# 642 "parser.ml"
                ))), (n2 : (
# 11 "parser.mly"
       (string)
# 646 "parser.ml"
                ))), _, (e3 : (
# 53 "parser.mly"
      (expression)
# 650 "parser.ml"
                ))), _, (li : (
# 47 "parser.mly"
      (instruction list)
# 654 "parser.ml"
                ))) = _menhir_stack in
                let _13 = () in
                let _11 = () in
                let _9 = () in
                let _7 = () in
                let _5 = () in
                let _2 = () in
                let _1 = () in
                let _v : (
# 50 "parser.mly"
      (instruction)
# 666 "parser.ml"
                ) = 
# 83 "parser.mly"
                                                                       (Pour (t,n1,e1,e2,n2,e3,li))
# 670 "parser.ml"
                 in
                _menhir_goto_i _menhir_env _menhir_stack _menhir_s _v) : 'freshtv362)) : 'freshtv364)
            | MenhirState3 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv367 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 678 "parser.ml"
                )) * _menhir_state * (
# 47 "parser.mly"
      (instruction list)
# 682 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv365 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 688 "parser.ml"
                )) * _menhir_state * (
# 47 "parser.mly"
      (instruction list)
# 692 "parser.ml"
>>>>>>> boucle_for
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, (_1 : (
# 11 "parser.mly"
       (string)
<<<<<<< HEAD
# 584 "parser.ml"
                ))), _, (li : (
# 46 "parser.mly"
      (instruction list)
# 588 "parser.ml"
                ))) = _menhir_stack in
                let _v : (
# 45 "parser.mly"
      (programme)
# 593 "parser.ml"
                ) = 
# 65 "parser.mly"
                          (Programme ([],li))
# 597 "parser.ml"
                 in
                _menhir_goto_prog _menhir_env _menhir_stack _menhir_s _v) : 'freshtv312)) : 'freshtv314)
            | _ ->
                _menhir_fail ()) : 'freshtv316)) : 'freshtv318)) : 'freshtv320)
=======
# 697 "parser.ml"
                ))), _, (li : (
# 47 "parser.mly"
      (instruction list)
# 701 "parser.ml"
                ))) = _menhir_stack in
                let _v : (
# 46 "parser.mly"
      (programme)
# 706 "parser.ml"
                ) = 
# 66 "parser.mly"
                          (Programme ([],li))
# 710 "parser.ml"
                 in
                _menhir_goto_prog _menhir_env _menhir_stack _menhir_s _v) : 'freshtv366)) : 'freshtv368)
            | _ ->
                _menhir_fail ()) : 'freshtv370)) : 'freshtv372)) : 'freshtv374)
>>>>>>> boucle_for
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : ('freshtv321 * _menhir_state) * _menhir_state * (
# 48 "parser.mly"
      (instruction list)
# 609 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv322)) : 'freshtv324)
    | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv327 * _menhir_state * (
# 49 "parser.mly"
      (instruction)
# 618 "parser.ml"
        )) * _menhir_state * (
# 48 "parser.mly"
      (instruction list)
# 622 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv325 * _menhir_state * (
# 49 "parser.mly"
      (instruction)
# 628 "parser.ml"
        )) * _menhir_state * (
# 48 "parser.mly"
      (instruction list)
# 632 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (i1 : (
# 49 "parser.mly"
      (instruction)
# 637 "parser.ml"
        ))), _, (li : (
# 48 "parser.mly"
      (instruction list)
# 641 "parser.ml"
        ))) = _menhir_stack in
        let _v : (
# 48 "parser.mly"
      (instruction list)
# 646 "parser.ml"
        ) = 
# 73 "parser.mly"
                          (i1::li)
# 650 "parser.ml"
         in
        _menhir_goto_is _menhir_env _menhir_stack _menhir_s _v) : 'freshtv326)) : 'freshtv328)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv333 * _menhir_state * (
# 50 "parser.mly"
      (typ)
# 658 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 662 "parser.ml"
        ))) * _menhir_state * (
# 51 "parser.mly"
      ((typ*string) list)
# 666 "parser.ml"
        )))) * _menhir_state * (
# 48 "parser.mly"
      (instruction list)
# 670 "parser.ml"
=======
            let (_menhir_stack : ('freshtv375 * _menhir_state) * _menhir_state * (
# 49 "parser.mly"
      (instruction list)
# 722 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv376)) : 'freshtv378)
    | MenhirState89 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv381 * _menhir_state * (
# 50 "parser.mly"
      (instruction)
# 731 "parser.ml"
        )) * _menhir_state * (
# 49 "parser.mly"
      (instruction list)
# 735 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv379 * _menhir_state * (
# 50 "parser.mly"
      (instruction)
# 741 "parser.ml"
        )) * _menhir_state * (
# 49 "parser.mly"
      (instruction list)
# 745 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (i1 : (
# 50 "parser.mly"
      (instruction)
# 750 "parser.ml"
        ))), _, (li : (
# 49 "parser.mly"
      (instruction list)
# 754 "parser.ml"
        ))) = _menhir_stack in
        let _v : (
# 49 "parser.mly"
      (instruction list)
# 759 "parser.ml"
        ) = 
# 74 "parser.mly"
                          (i1::li)
# 763 "parser.ml"
         in
        _menhir_goto_is _menhir_env _menhir_stack _menhir_s _v) : 'freshtv380)) : 'freshtv382)
    | MenhirState104 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv387 * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 771 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 775 "parser.ml"
        ))) * _menhir_state * (
# 52 "parser.mly"
      ((typ*string) list)
# 779 "parser.ml"
        )))) * _menhir_state * (
# 49 "parser.mly"
      (instruction list)
# 783 "parser.ml"
>>>>>>> boucle_for
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RETURN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : (((((('freshtv329 * _menhir_state * (
# 50 "parser.mly"
      (typ)
# 680 "parser.ml"
            )) * (
# 11 "parser.mly"
       (string)
# 684 "parser.ml"
            ))) * _menhir_state * (
# 51 "parser.mly"
      ((typ*string) list)
# 688 "parser.ml"
            )))) * _menhir_state * (
# 48 "parser.mly"
      (instruction list)
# 692 "parser.ml"
=======
            let (_menhir_stack : (((((('freshtv383 * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 793 "parser.ml"
            )) * (
# 11 "parser.mly"
       (string)
# 797 "parser.ml"
            ))) * _menhir_state * (
# 52 "parser.mly"
      ((typ*string) list)
# 801 "parser.ml"
            )))) * _menhir_state * (
# 49 "parser.mly"
      (instruction list)
# 805 "parser.ml"
>>>>>>> boucle_for
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ADR ->
<<<<<<< HEAD
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | CALL ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | CO ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | DENOM ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | ENTIER _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
            | FALSE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | ID _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
            | NULL ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | NUM ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | PO ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | TRUE ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState92) : 'freshtv330)
=======
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | CALL ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | CO ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | DENOM ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | ENTIER _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
            | FALSE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | ID _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
            | NULL ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | NUM ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | PO ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | TRUE ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState106) : 'freshtv384)
>>>>>>> boucle_for
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : (((((('freshtv331 * _menhir_state * (
# 50 "parser.mly"
      (typ)
# 730 "parser.ml"
            )) * (
# 11 "parser.mly"
       (string)
# 734 "parser.ml"
            ))) * _menhir_state * (
# 51 "parser.mly"
      ((typ*string) list)
# 738 "parser.ml"
            )))) * _menhir_state * (
# 48 "parser.mly"
      (instruction list)
# 742 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv332)) : 'freshtv334)
=======
            let (_menhir_stack : (((((('freshtv385 * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 843 "parser.ml"
            )) * (
# 11 "parser.mly"
       (string)
# 847 "parser.ml"
            ))) * _menhir_state * (
# 52 "parser.mly"
      ((typ*string) list)
# 851 "parser.ml"
            )))) * _menhir_state * (
# 49 "parser.mly"
      (instruction list)
# 855 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv386)) : 'freshtv388)
>>>>>>> boucle_for
    | _ ->
        _menhir_fail ()

and _menhir_goto_dp : _menhir_env -> 'ttv_tail -> _menhir_state -> (
<<<<<<< HEAD
# 51 "parser.mly"
      ((typ*string) list)
# 752 "parser.ml"
=======
# 52 "parser.mly"
      ((typ*string) list)
# 865 "parser.ml"
>>>>>>> boucle_for
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
<<<<<<< HEAD
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv285 * _menhir_state * (
# 50 "parser.mly"
      (typ)
# 762 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 766 "parser.ml"
        )) * _menhir_state * (
# 51 "parser.mly"
      ((typ*string) list)
# 770 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv283 * _menhir_state * (
# 50 "parser.mly"
      (typ)
# 776 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 780 "parser.ml"
        )) * _menhir_state * (
# 51 "parser.mly"
      ((typ*string) list)
# 784 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, (t : (
# 50 "parser.mly"
      (typ)
# 789 "parser.ml"
        ))), (n : (
# 11 "parser.mly"
       (string)
# 793 "parser.ml"
        ))), _, (lp : (
# 51 "parser.mly"
      ((typ*string) list)
# 797 "parser.ml"
        ))) = _menhir_stack in
        let _v : (
# 51 "parser.mly"
      ((typ*string) list)
# 802 "parser.ml"
        ) = 
# 89 "parser.mly"
                          ((t,n)::lp)
# 806 "parser.ml"
         in
        _menhir_goto_dp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv284)) : 'freshtv286)
    | MenhirState84 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv295 * _menhir_state * (
# 50 "parser.mly"
      (typ)
# 814 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 818 "parser.ml"
        ))) * _menhir_state * (
# 51 "parser.mly"
      ((typ*string) list)
# 822 "parser.ml"
=======
    | MenhirState100 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv335 * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 875 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 879 "parser.ml"
        )) * _menhir_state * (
# 52 "parser.mly"
      ((typ*string) list)
# 883 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv333 * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 889 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 893 "parser.ml"
        )) * _menhir_state * (
# 52 "parser.mly"
      ((typ*string) list)
# 897 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, (t : (
# 51 "parser.mly"
      (typ)
# 902 "parser.ml"
        ))), (n : (
# 11 "parser.mly"
       (string)
# 906 "parser.ml"
        ))), _, (lp : (
# 52 "parser.mly"
      ((typ*string) list)
# 910 "parser.ml"
        ))) = _menhir_stack in
        let _v : (
# 52 "parser.mly"
      ((typ*string) list)
# 915 "parser.ml"
        ) = 
# 91 "parser.mly"
                          ((t,n)::lp)
# 919 "parser.ml"
         in
        _menhir_goto_dp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv334)) : 'freshtv336)
    | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv345 * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 927 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 931 "parser.ml"
        ))) * _menhir_state * (
# 52 "parser.mly"
      ((typ*string) list)
# 935 "parser.ml"
>>>>>>> boucle_for
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : ((('freshtv291 * _menhir_state * (
# 50 "parser.mly"
      (typ)
# 832 "parser.ml"
            )) * (
# 11 "parser.mly"
       (string)
# 836 "parser.ml"
            ))) * _menhir_state * (
# 51 "parser.mly"
      ((typ*string) list)
# 840 "parser.ml"
=======
            let (_menhir_stack : ((('freshtv341 * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 945 "parser.ml"
            )) * (
# 11 "parser.mly"
       (string)
# 949 "parser.ml"
            ))) * _menhir_state * (
# 52 "parser.mly"
      ((typ*string) list)
# 953 "parser.ml"
>>>>>>> boucle_for
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AO ->
                let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
                let (_menhir_stack : (((('freshtv287 * _menhir_state * (
# 50 "parser.mly"
      (typ)
# 850 "parser.ml"
                )) * (
# 11 "parser.mly"
       (string)
# 854 "parser.ml"
                ))) * _menhir_state * (
# 51 "parser.mly"
      ((typ*string) list)
# 858 "parser.ml"
=======
                let (_menhir_stack : (((('freshtv337 * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 963 "parser.ml"
                )) * (
# 11 "parser.mly"
       (string)
# 967 "parser.ml"
                ))) * _menhir_state * (
# 52 "parser.mly"
      ((typ*string) list)
# 971 "parser.ml"
>>>>>>> boucle_for
                ))) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BOOL ->
<<<<<<< HEAD
                    _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                | CONST ->
                    _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                | ID _v ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
                | IF ->
                    _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                | INT ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                | PO ->
                    _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                | PRINT ->
                    _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                | RAT ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                | WHILE ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                | RETURN ->
                    _menhir_reduce30 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState90) : 'freshtv288)
=======
                    _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState104
                | CONST ->
                    _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState104
                | FOR ->
                    _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState104
                | ID _v ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
                | IF ->
                    _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState104
                | INT ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState104
                | PO ->
                    _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState104
                | PRINT ->
                    _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState104
                | RAT ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState104
                | WHILE ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState104
                | RETURN ->
                    _menhir_reduce31 _menhir_env (Obj.magic _menhir_stack) MenhirState104
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState104) : 'freshtv338)
>>>>>>> boucle_for
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
                let (_menhir_stack : (((('freshtv289 * _menhir_state * (
# 50 "parser.mly"
      (typ)
# 894 "parser.ml"
                )) * (
# 11 "parser.mly"
       (string)
# 898 "parser.ml"
                ))) * _menhir_state * (
# 51 "parser.mly"
      ((typ*string) list)
# 902 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv290)) : 'freshtv292)
=======
                let (_menhir_stack : (((('freshtv339 * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 1009 "parser.ml"
                )) * (
# 11 "parser.mly"
       (string)
# 1013 "parser.ml"
                ))) * _menhir_state * (
# 52 "parser.mly"
      ((typ*string) list)
# 1017 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv340)) : 'freshtv342)
>>>>>>> boucle_for
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : ((('freshtv293 * _menhir_state * (
# 50 "parser.mly"
      (typ)
# 913 "parser.ml"
            )) * (
# 11 "parser.mly"
       (string)
# 917 "parser.ml"
            ))) * _menhir_state * (
# 51 "parser.mly"
      ((typ*string) list)
# 921 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv294)) : 'freshtv296)
=======
            let (_menhir_stack : ((('freshtv343 * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 1028 "parser.ml"
            )) * (
# 11 "parser.mly"
       (string)
# 1032 "parser.ml"
            ))) * _menhir_state * (
# 52 "parser.mly"
      ((typ*string) list)
# 1036 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv344)) : 'freshtv346)
>>>>>>> boucle_for
    | _ ->
        _menhir_fail ()

and _menhir_run36 : _menhir_env -> 'ttv_tail * _menhir_state -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
    | PO ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState36

and _menhir_goto_aff : _menhir_env -> 'ttv_tail -> _menhir_state -> (
<<<<<<< HEAD
# 54 "parser.mly"
      (affectable)
# 946 "parser.ml"
=======
# 55 "parser.mly"
      (affectable)
# 1061 "parser.ml"
>>>>>>> boucle_for
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
<<<<<<< HEAD
    | MenhirState92 | MenhirState78 | MenhirState70 | MenhirState58 | MenhirState55 | MenhirState5 | MenhirState7 | MenhirState50 | MenhirState47 | MenhirState44 | MenhirState41 | MenhirState8 | MenhirState13 | MenhirState14 | MenhirState26 | MenhirState17 | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv267 * _menhir_state * (
# 54 "parser.mly"
      (affectable)
# 956 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv265 * _menhir_state * (
# 54 "parser.mly"
      (affectable)
# 962 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (a : (
# 54 "parser.mly"
      (affectable)
# 967 "parser.ml"
        ))) = _menhir_stack in
        let _v : (
# 52 "parser.mly"
      (expression)
# 972 "parser.ml"
        ) = 
# 106 "parser.mly"
                     (Valeur(a))
# 976 "parser.ml"
         in
        _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv266)) : 'freshtv268)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv275 * _menhir_state) * _menhir_state) * _menhir_state * (
# 54 "parser.mly"
      (affectable)
# 984 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv271 * _menhir_state) * _menhir_state) * _menhir_state * (
# 54 "parser.mly"
      (affectable)
# 994 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv269 * _menhir_state) * _menhir_state) * _menhir_state * (
# 54 "parser.mly"
      (affectable)
# 1001 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _), _, (a : (
# 54 "parser.mly"
      (affectable)
# 1006 "parser.ml"
            ))) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (
# 54 "parser.mly"
      (affectable)
# 1014 "parser.ml"
            ) = 
# 85 "parser.mly"
                                (Deref a)
# 1018 "parser.ml"
             in
            _menhir_goto_aff _menhir_env _menhir_stack _menhir_s _v) : 'freshtv270)) : 'freshtv272)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv273 * _menhir_state) * _menhir_state) * _menhir_state * (
# 54 "parser.mly"
      (affectable)
# 1028 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv274)) : 'freshtv276)
    | MenhirState90 | MenhirState4 | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv281 * _menhir_state * (
# 54 "parser.mly"
      (affectable)
# 1037 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQUAL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv277 * _menhir_state * (
# 54 "parser.mly"
      (affectable)
# 1047 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ADR ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | CALL ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | CO ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | DENOM ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | ENTIER _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
            | FALSE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | ID _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
            | NULL ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | NUM ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | PO ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | TRUE ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState78) : 'freshtv278)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv279 * _menhir_state * (
# 54 "parser.mly"
      (affectable)
# 1085 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv280)) : 'freshtv282)
    | _ ->
        _menhir_fail ()

and _menhir_goto_i : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 49 "parser.mly"
      (instruction)
# 1095 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv263 * _menhir_state * (
# 49 "parser.mly"
      (instruction)
# 1103 "parser.ml"
    )) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | CONST ->
        _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
    | IF ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | INT ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | PO ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | PRINT ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | RAT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | WHILE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | AF | RETURN ->
        _menhir_reduce30 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState75) : 'freshtv264)

and _menhir_reduce4 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (
# 53 "parser.mly"
      (expression list)
# 1138 "parser.ml"
    ) = 
# 115 "parser.mly"
                ([])
# 1142 "parser.ml"
     in
    _menhir_goto_cp _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce30 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (
# 48 "parser.mly"
      (instruction list)
# 1151 "parser.ml"
    ) = 
# 72 "parser.mly"
                          ([])
# 1155 "parser.ml"
     in
    _menhir_goto_is _menhir_env _menhir_stack _menhir_s _v

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADR ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | CALL ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | CO ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | DENOM ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | ENTIER _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | FALSE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | NULL ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | NUM ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | PO ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | TRUE ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState5

and _menhir_run55 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADR ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | CALL ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | CO ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | DENOM ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | ENTIER _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | FALSE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | NULL ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | NUM ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | PO ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | TRUE ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55

and _menhir_run37 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | MULT ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37

and _menhir_run58 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADR ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | CALL ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | CO ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | DENOM ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | ENTIER _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | FALSE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | NULL ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | NUM ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | PO ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | TRUE ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState58

and _menhir_run63 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv259 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 11 "parser.mly"
       (string)
# 1283 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQUAL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv255 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 1294 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ENTIER _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv251 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 1304 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                let (_v : (
# 10 "parser.mly"
       (int)
# 1309 "parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | PV ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv247 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 1320 "parser.ml"
                    ))) * (
# 10 "parser.mly"
       (int)
# 1324 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv245 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 1331 "parser.ml"
                    ))) * (
# 10 "parser.mly"
       (int)
# 1335 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let (((_menhir_stack, _menhir_s), (n : (
# 11 "parser.mly"
       (string)
# 1340 "parser.ml"
                    ))), (e : (
# 10 "parser.mly"
       (int)
# 1344 "parser.ml"
                    ))) = _menhir_stack in
                    let _5 = () in
                    let _3 = () in
                    let _1 = () in
                    let _v : (
# 49 "parser.mly"
      (instruction)
# 1352 "parser.ml"
                    ) = 
# 78 "parser.mly"
                                    (Constante (n,e))
# 1356 "parser.ml"
                     in
                    _menhir_goto_i _menhir_env _menhir_stack _menhir_s _v) : 'freshtv246)) : 'freshtv248)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv249 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 1366 "parser.ml"
                    ))) * (
# 10 "parser.mly"
       (int)
# 1370 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv250)) : 'freshtv252)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv253 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 1381 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv254)) : 'freshtv256)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv257 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 1392 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv258)) : 'freshtv260)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv261 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv262)

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_reduce6 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (
# 51 "parser.mly"
      ((typ*string) list)
# 1414 "parser.ml"
    ) = 
# 88 "parser.mly"
                          ([])
# 1418 "parser.ml"
     in
    _menhir_goto_dp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv243) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 52 "parser.mly"
      (expression)
# 1432 "parser.ml"
    ) = 
# 102 "parser.mly"
                          (True)
# 1436 "parser.ml"
     in
    _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv244)

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADR ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | CALL ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | CO ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | DENOM ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | ENTIER _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
    | FALSE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
    | MULT ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | NEW ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv241 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState7 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | INT ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | RAT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState31) : 'freshtv242)
    | NULL ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | NUM ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | PO ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | TRUE ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState7

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADR ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | CALL ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | CO ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | DENOM ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | ENTIER _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
    | FALSE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
    | NULL ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | NUM ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | PO ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | TRUE ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState8

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv239) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 52 "parser.mly"
      (expression)
# 1536 "parser.ml"
    ) = 
# 105 "parser.mly"
                          (Null)
# 1540 "parser.ml"
     in
    _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv240)

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 11 "parser.mly"
       (string)
# 1547 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv237) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((n : (
# 11 "parser.mly"
       (string)
# 1557 "parser.ml"
    )) : (
# 11 "parser.mly"
       (string)
# 1561 "parser.ml"
    )) = _v in
    ((let _v : (
# 54 "parser.mly"
      (affectable)
# 1566 "parser.ml"
    ) = 
# 84 "parser.mly"
                          (Variable n)
# 1570 "parser.ml"
     in
    _menhir_goto_aff _menhir_env _menhir_stack _menhir_s _v) : 'freshtv238)

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv235) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 52 "parser.mly"
      (expression)
# 1584 "parser.ml"
    ) = 
# 103 "parser.mly"
                          (False)
# 1588 "parser.ml"
     in
    _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv236)

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "parser.mly"
       (int)
# 1595 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv233) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((e : (
# 10 "parser.mly"
       (int)
# 1605 "parser.ml"
    )) : (
# 10 "parser.mly"
       (int)
# 1609 "parser.ml"
    )) = _v in
    ((let _v : (
# 52 "parser.mly"
      (expression)
# 1614 "parser.ml"
    ) = 
# 104 "parser.mly"
                          (Entier e)
# 1618 "parser.ml"
     in
    _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv234)

and _menhir_run13 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADR ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | CALL ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | CO ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | DENOM ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | ENTIER _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
    | FALSE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
    | NULL ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | NUM ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | PO ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | TRUE ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState13

and _menhir_run14 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADR ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | CALL ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | CO ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | DENOM ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | ENTIER _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
    | FALSE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
    | NULL ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | NUM ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | PO ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | TRUE ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState14
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
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv229 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 11 "parser.mly"
       (string)
# 1700 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv225 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 1711 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ADR ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | CALL ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | CO ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | DENOM ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | ENTIER _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
            | FALSE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | ID _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
            | NULL ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | NUM ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | PO ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | TRUE ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | PF ->
                _menhir_reduce4 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState17) : 'freshtv226)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv227 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 1751 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv228)) : 'freshtv230)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv231 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv232)

and _menhir_run18 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv221 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 11 "parser.mly"
       (string)
# 1775 "parser.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv219 * _menhir_state) = Obj.magic _menhir_stack in
        let ((n : (
# 11 "parser.mly"
       (string)
# 1783 "parser.ml"
        )) : (
# 11 "parser.mly"
       (string)
# 1787 "parser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : (
# 52 "parser.mly"
      (expression)
# 1794 "parser.ml"
        ) = 
# 108 "parser.mly"
                          (Adresse(n))
# 1798 "parser.ml"
         in
        _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv220)) : 'freshtv222)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv223 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv224)

and _menhir_goto_e : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 52 "parser.mly"
      (expression)
# 1812 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState20 | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv107 * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 1822 "parser.ml"
=======
    | MenhirState106 | MenhirState92 | MenhirState84 | MenhirState67 | MenhirState69 | MenhirState73 | MenhirState58 | MenhirState55 | MenhirState5 | MenhirState7 | MenhirState50 | MenhirState47 | MenhirState44 | MenhirState41 | MenhirState8 | MenhirState13 | MenhirState14 | MenhirState26 | MenhirState17 | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv317 * _menhir_state * (
# 55 "parser.mly"
      (affectable)
# 1071 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv315 * _menhir_state * (
# 55 "parser.mly"
      (affectable)
# 1077 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (a : (
# 55 "parser.mly"
      (affectable)
# 1082 "parser.ml"
        ))) = _menhir_stack in
        let _v : (
# 53 "parser.mly"
      (expression)
# 1087 "parser.ml"
        ) = 
# 108 "parser.mly"
                     (Valeur(a))
# 1091 "parser.ml"
         in
        _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv316)) : 'freshtv318)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv325 * _menhir_state) * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (affectable)
# 1099 "parser.ml"
>>>>>>> boucle_for
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
<<<<<<< HEAD
        | ADR ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | CALL ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | CO ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | DENOM ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | ENTIER _v ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
        | FALSE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | ID _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
        | NULL ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | NUM ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | PO ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | TRUE ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | PF ->
            _menhir_reduce4 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20) : 'freshtv108)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv113 * _menhir_state) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 1860 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SLASH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv109 * _menhir_state) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 1870 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ADR ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState26
            | CALL ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState26
            | CO ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState26
            | DENOM ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState26
            | ENTIER _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
            | FALSE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState26
            | ID _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
            | NULL ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState26
            | NUM ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState26
            | PO ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState26
            | TRUE ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState26
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState26) : 'freshtv110)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv111 * _menhir_state) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 1908 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)) : 'freshtv114)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv121 * _menhir_state) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 1917 "parser.ml"
        ))) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 1921 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv117 * _menhir_state) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 1931 "parser.ml"
            ))) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 1935 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv115 * _menhir_state) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 1942 "parser.ml"
            ))) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 1946 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (e1 : (
# 52 "parser.mly"
      (expression)
# 1951 "parser.ml"
            ))), _, (e2 : (
# 52 "parser.mly"
      (expression)
# 1955 "parser.ml"
=======
        | PF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv321 * _menhir_state) * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (affectable)
# 1109 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv319 * _menhir_state) * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (affectable)
# 1116 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _), _, (a : (
# 55 "parser.mly"
      (affectable)
# 1121 "parser.ml"
>>>>>>> boucle_for
            ))) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (
<<<<<<< HEAD
# 52 "parser.mly"
      (expression)
# 1963 "parser.ml"
            ) = 
# 99 "parser.mly"
                          (Rationnel(e1,e2))
# 1967 "parser.ml"
             in
            _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv116)) : 'freshtv118)
=======
# 55 "parser.mly"
      (affectable)
# 1129 "parser.ml"
            ) = 
# 87 "parser.mly"
                                (Deref a)
# 1133 "parser.ml"
             in
            _menhir_goto_aff _menhir_env _menhir_stack _menhir_s _v) : 'freshtv320)) : 'freshtv322)
>>>>>>> boucle_for
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : ((('freshtv119 * _menhir_state) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 1977 "parser.ml"
            ))) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 1981 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)) : 'freshtv122)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv125 * _menhir_state) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 1990 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv123 * _menhir_state) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 1996 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (e1 : (
# 52 "parser.mly"
      (expression)
# 2001 "parser.ml"
        ))) = _menhir_stack in
        let _1 = () in
        let _v : (
# 52 "parser.mly"
      (expression)
# 2007 "parser.ml"
        ) = 
# 101 "parser.mly"
                          (Denominateur e1)
# 2011 "parser.ml"
         in
        _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv124)) : 'freshtv126)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv129 * _menhir_state) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2019 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv127 * _menhir_state) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2025 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (e1 : (
# 52 "parser.mly"
      (expression)
# 2030 "parser.ml"
        ))) = _menhir_stack in
        let _1 = () in
        let _v : (
# 52 "parser.mly"
      (expression)
# 2036 "parser.ml"
        ) = 
# 100 "parser.mly"
                          (Numerateur e1)
# 2040 "parser.ml"
         in
        _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv128)) : 'freshtv130)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv141 * _menhir_state) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2048 "parser.ml"
=======
            let (_menhir_stack : (('freshtv323 * _menhir_state) * _menhir_state) * _menhir_state * (
# 55 "parser.mly"
      (affectable)
# 1143 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv324)) : 'freshtv326)
    | MenhirState104 | MenhirState4 | MenhirState89 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv331 * _menhir_state * (
# 55 "parser.mly"
      (affectable)
# 1152 "parser.ml"
>>>>>>> boucle_for
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQUAL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : ('freshtv131 * _menhir_state) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2058 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ADR ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | CALL ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | CO ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | DENOM ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | ENTIER _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
            | FALSE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | ID _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
            | NULL ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | NUM ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | PO ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | TRUE ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50) : 'freshtv132)
        | INF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv133 * _menhir_state) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2094 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ADR ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState47
            | CALL ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState47
            | CO ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState47
            | DENOM ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState47
            | ENTIER _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
            | FALSE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState47
            | ID _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
            | NULL ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState47
            | NUM ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState47
            | PO ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState47
            | TRUE ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState47
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47) : 'freshtv134)
        | MULT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv135 * _menhir_state) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2130 "parser.ml"
=======
            let (_menhir_stack : 'freshtv327 * _menhir_state * (
# 55 "parser.mly"
      (affectable)
# 1162 "parser.ml"
>>>>>>> boucle_for
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ADR ->
<<<<<<< HEAD
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | CALL ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | CO ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | DENOM ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | ENTIER _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
            | FALSE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | ID _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
            | NULL ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | NUM ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | PO ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | TRUE ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44) : 'freshtv136)
        | PLUS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv137 * _menhir_state) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2166 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ADR ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | CALL ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | CO ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | DENOM ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | ENTIER _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
            | FALSE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | ID _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
            | NULL ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | NUM ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | PO ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | TRUE ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41) : 'freshtv138)
=======
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | CALL ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | CO ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | DENOM ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | ENTIER _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
            | FALSE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | ID _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
            | NULL ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | NUM ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | PO ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | TRUE ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState92) : 'freshtv328)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv329 * _menhir_state * (
# 55 "parser.mly"
      (affectable)
# 1200 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv330)) : 'freshtv332)
    | _ ->
        _menhir_fail ()

and _menhir_goto_i : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 50 "parser.mly"
      (instruction)
# 1210 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv313 * _menhir_state * (
# 50 "parser.mly"
      (instruction)
# 1218 "parser.ml"
    )) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | CONST ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | FOR ->
        _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
    | IF ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | INT ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | PO ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | PRINT ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | RAT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | WHILE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | AF | RETURN ->
        _menhir_reduce31 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState89) : 'freshtv314)

and _menhir_reduce4 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (
# 54 "parser.mly"
      (expression list)
# 1255 "parser.ml"
    ) = 
# 117 "parser.mly"
                ([])
# 1259 "parser.ml"
     in
    _menhir_goto_cp _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce31 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (
# 49 "parser.mly"
      (instruction list)
# 1268 "parser.ml"
    ) = 
# 73 "parser.mly"
                          ([])
# 1272 "parser.ml"
     in
    _menhir_goto_is _menhir_env _menhir_stack _menhir_s _v

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADR ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | CALL ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | CO ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | DENOM ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | ENTIER _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | FALSE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | NULL ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | NUM ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | PO ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | TRUE ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState5

and _menhir_run55 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADR ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | CALL ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | CO ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | DENOM ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | ENTIER _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | FALSE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | NULL ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | NUM ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | PO ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | TRUE ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55

and _menhir_run37 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | MULT ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37

and _menhir_run58 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADR ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | CALL ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | CO ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | DENOM ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | ENTIER _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | FALSE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | NULL ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | NUM ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | PO ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | TRUE ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState58

and _menhir_run63 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | PO ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv309 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | INT ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | RAT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState64) : 'freshtv310)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv311 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv312)

and _menhir_run77 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
# 1430 "parser.ml"
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
# 1441 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ENTIER _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv297 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 1451 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                let (_v : (
# 10 "parser.mly"
       (int)
# 1456 "parser.ml"
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
# 1467 "parser.ml"
                    ))) * (
# 10 "parser.mly"
       (int)
# 1471 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv291 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 1478 "parser.ml"
                    ))) * (
# 10 "parser.mly"
       (int)
# 1482 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let (((_menhir_stack, _menhir_s), (n : (
# 11 "parser.mly"
       (string)
# 1487 "parser.ml"
                    ))), (e : (
# 10 "parser.mly"
       (int)
# 1491 "parser.ml"
                    ))) = _menhir_stack in
                    let _5 = () in
                    let _3 = () in
                    let _1 = () in
                    let _v : (
# 50 "parser.mly"
      (instruction)
# 1499 "parser.ml"
                    ) = 
# 79 "parser.mly"
                                    (Constante (n,e))
# 1503 "parser.ml"
                     in
                    _menhir_goto_i _menhir_env _menhir_stack _menhir_s _v) : 'freshtv292)) : 'freshtv294)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv295 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 1513 "parser.ml"
                    ))) * (
# 10 "parser.mly"
       (int)
# 1517 "parser.ml"
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
# 1528 "parser.ml"
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
# 1539 "parser.ml"
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

and _menhir_reduce6 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (
# 52 "parser.mly"
      ((typ*string) list)
# 1561 "parser.ml"
    ) = 
# 90 "parser.mly"
                          ([])
# 1565 "parser.ml"
     in
    _menhir_goto_dp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv289) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 53 "parser.mly"
      (expression)
# 1579 "parser.ml"
    ) = 
# 104 "parser.mly"
                          (True)
# 1583 "parser.ml"
     in
    _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv290)

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADR ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | CALL ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | CO ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | DENOM ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | ENTIER _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
    | FALSE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
    | MULT ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | NEW ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv287 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState7 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | INT ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | RAT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState31) : 'freshtv288)
    | NULL ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | NUM ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | PO ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | TRUE ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState7

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADR ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | CALL ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | CO ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | DENOM ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | ENTIER _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
    | FALSE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
    | NULL ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | NUM ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | PO ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | TRUE ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState8

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv285) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 53 "parser.mly"
      (expression)
# 1683 "parser.ml"
    ) = 
# 107 "parser.mly"
                          (Null)
# 1687 "parser.ml"
     in
    _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv286)

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 11 "parser.mly"
       (string)
# 1694 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv283) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((n : (
# 11 "parser.mly"
       (string)
# 1704 "parser.ml"
    )) : (
# 11 "parser.mly"
       (string)
# 1708 "parser.ml"
    )) = _v in
    ((let _v : (
# 55 "parser.mly"
      (affectable)
# 1713 "parser.ml"
    ) = 
# 86 "parser.mly"
                          (Variable n)
# 1717 "parser.ml"
     in
    _menhir_goto_aff _menhir_env _menhir_stack _menhir_s _v) : 'freshtv284)

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv281) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 53 "parser.mly"
      (expression)
# 1731 "parser.ml"
    ) = 
# 105 "parser.mly"
                          (False)
# 1735 "parser.ml"
     in
    _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv282)

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "parser.mly"
       (int)
# 1742 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv279) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((e : (
# 10 "parser.mly"
       (int)
# 1752 "parser.ml"
    )) : (
# 10 "parser.mly"
       (int)
# 1756 "parser.ml"
    )) = _v in
    ((let _v : (
# 53 "parser.mly"
      (expression)
# 1761 "parser.ml"
    ) = 
# 106 "parser.mly"
                          (Entier e)
# 1765 "parser.ml"
     in
    _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv280)

and _menhir_run13 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADR ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | CALL ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | CO ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | DENOM ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | ENTIER _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
    | FALSE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
    | NULL ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | NUM ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | PO ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | TRUE ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState13

and _menhir_run14 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADR ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | CALL ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | CO ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | DENOM ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | ENTIER _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
    | FALSE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
    | NULL ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | NUM ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | PO ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | TRUE ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState14
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
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv275 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 11 "parser.mly"
       (string)
# 1847 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv271 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 1858 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ADR ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | CALL ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | CO ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | DENOM ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | ENTIER _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
            | FALSE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | ID _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
            | NULL ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | NUM ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | PO ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | TRUE ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | PF ->
                _menhir_reduce4 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState17) : 'freshtv272)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv273 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 1898 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv274)) : 'freshtv276)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv277 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv278)

and _menhir_run18 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv267 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 11 "parser.mly"
       (string)
# 1922 "parser.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv265 * _menhir_state) = Obj.magic _menhir_stack in
        let ((n : (
# 11 "parser.mly"
       (string)
# 1930 "parser.ml"
        )) : (
# 11 "parser.mly"
       (string)
# 1934 "parser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : (
# 53 "parser.mly"
      (expression)
# 1941 "parser.ml"
        ) = 
# 110 "parser.mly"
                          (Adresse(n))
# 1945 "parser.ml"
         in
        _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv266)) : 'freshtv268)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv269 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv270)

and _menhir_goto_e : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 53 "parser.mly"
      (expression)
# 1959 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState20 | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv127 * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 1969 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ADR ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | CALL ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | CO ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | DENOM ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | ENTIER _v ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
        | FALSE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | ID _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
        | NULL ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | NUM ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | PO ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | TRUE ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | PF ->
            _menhir_reduce4 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20) : 'freshtv128)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv133 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2007 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SLASH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv129 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2017 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ADR ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState26
            | CALL ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState26
            | CO ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState26
            | DENOM ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState26
            | ENTIER _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
            | FALSE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState26
            | ID _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
            | NULL ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState26
            | NUM ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState26
            | PO ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState26
            | TRUE ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState26
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState26) : 'freshtv130)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv131 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2055 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)) : 'freshtv134)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv141 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2064 "parser.ml"
        ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2068 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv137 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2078 "parser.ml"
            ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2082 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv135 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2089 "parser.ml"
            ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2093 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (e1 : (
# 53 "parser.mly"
      (expression)
# 2098 "parser.ml"
            ))), _, (e2 : (
# 53 "parser.mly"
      (expression)
# 2102 "parser.ml"
            ))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (
# 53 "parser.mly"
      (expression)
# 2110 "parser.ml"
            ) = 
# 101 "parser.mly"
                          (Rationnel(e1,e2))
# 2114 "parser.ml"
             in
            _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv136)) : 'freshtv138)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv139 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2124 "parser.ml"
            ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2128 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)) : 'freshtv142)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv145 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2137 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv143 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2143 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (e1 : (
# 53 "parser.mly"
      (expression)
# 2148 "parser.ml"
        ))) = _menhir_stack in
        let _1 = () in
        let _v : (
# 53 "parser.mly"
      (expression)
# 2154 "parser.ml"
        ) = 
# 103 "parser.mly"
                          (Denominateur e1)
# 2158 "parser.ml"
         in
        _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv144)) : 'freshtv146)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv149 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2166 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv147 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2172 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (e1 : (
# 53 "parser.mly"
      (expression)
# 2177 "parser.ml"
        ))) = _menhir_stack in
        let _1 = () in
        let _v : (
# 53 "parser.mly"
      (expression)
# 2183 "parser.ml"
        ) = 
# 102 "parser.mly"
                          (Numerateur e1)
# 2187 "parser.ml"
         in
        _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv148)) : 'freshtv150)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv161 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2195 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQUAL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv151 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2205 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ADR ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | CALL ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | CO ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | DENOM ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | ENTIER _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
            | FALSE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | ID _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
            | NULL ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | NUM ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | PO ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | TRUE ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50) : 'freshtv152)
        | INF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv153 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2241 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ADR ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState47
            | CALL ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState47
            | CO ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState47
            | DENOM ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState47
            | ENTIER _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
            | FALSE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState47
            | ID _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
            | NULL ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState47
            | NUM ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState47
            | PO ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState47
            | TRUE ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState47
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47) : 'freshtv154)
        | MULT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv155 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2277 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ADR ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | CALL ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | CO ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | DENOM ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | ENTIER _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
            | FALSE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | ID _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
            | NULL ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | NUM ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | PO ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | TRUE ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44) : 'freshtv156)
        | PLUS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv157 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2313 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ADR ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | CALL ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | CO ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | DENOM ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | ENTIER _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
            | FALSE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | ID _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
            | NULL ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | NUM ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | PO ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | TRUE ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41) : 'freshtv158)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv159 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2351 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv160)) : 'freshtv162)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv169 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2360 "parser.ml"
        ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2364 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv165 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2374 "parser.ml"
            ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2378 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv163 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2385 "parser.ml"
            ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2389 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (e1 : (
# 53 "parser.mly"
      (expression)
# 2394 "parser.ml"
            ))), _, (e2 : (
# 53 "parser.mly"
      (expression)
# 2398 "parser.ml"
            ))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (
# 53 "parser.mly"
      (expression)
# 2406 "parser.ml"
            ) = 
# 111 "parser.mly"
                          (Binaire (Plus,e1,e2))
# 2410 "parser.ml"
             in
            _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv164)) : 'freshtv166)
>>>>>>> boucle_for
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : ('freshtv139 * _menhir_state) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2204 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)) : 'freshtv142)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv149 * _menhir_state) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2213 "parser.ml"
        ))) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2217 "parser.ml"
=======
            let (_menhir_stack : ((('freshtv167 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2420 "parser.ml"
            ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2424 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv168)) : 'freshtv170)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv177 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2433 "parser.ml"
        ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2437 "parser.ml"
>>>>>>> boucle_for
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : ((('freshtv145 * _menhir_state) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2227 "parser.ml"
            ))) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2231 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv143 * _menhir_state) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2238 "parser.ml"
            ))) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2242 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (e1 : (
# 52 "parser.mly"
      (expression)
# 2247 "parser.ml"
            ))), _, (e2 : (
# 52 "parser.mly"
      (expression)
# 2251 "parser.ml"
=======
            let (_menhir_stack : ((('freshtv173 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2447 "parser.ml"
            ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2451 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv171 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2458 "parser.ml"
            ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2462 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (e1 : (
# 53 "parser.mly"
      (expression)
# 2467 "parser.ml"
            ))), _, (e2 : (
# 53 "parser.mly"
      (expression)
# 2471 "parser.ml"
>>>>>>> boucle_for
            ))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (
<<<<<<< HEAD
# 52 "parser.mly"
      (expression)
# 2259 "parser.ml"
            ) = 
# 109 "parser.mly"
                          (Binaire (Plus,e1,e2))
# 2263 "parser.ml"
             in
            _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv144)) : 'freshtv146)
=======
# 53 "parser.mly"
      (expression)
# 2479 "parser.ml"
            ) = 
# 112 "parser.mly"
                          (Binaire (Mult,e1,e2))
# 2483 "parser.ml"
             in
            _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv172)) : 'freshtv174)
>>>>>>> boucle_for
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : ((('freshtv147 * _menhir_state) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2273 "parser.ml"
            ))) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2277 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv148)) : 'freshtv150)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv157 * _menhir_state) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2286 "parser.ml"
        ))) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2290 "parser.ml"
=======
            let (_menhir_stack : ((('freshtv175 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2493 "parser.ml"
            ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2497 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv176)) : 'freshtv178)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv185 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2506 "parser.ml"
        ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2510 "parser.ml"
>>>>>>> boucle_for
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : ((('freshtv153 * _menhir_state) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2300 "parser.ml"
            ))) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2304 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv151 * _menhir_state) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2311 "parser.ml"
            ))) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2315 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (e1 : (
# 52 "parser.mly"
      (expression)
# 2320 "parser.ml"
            ))), _, (e2 : (
# 52 "parser.mly"
      (expression)
# 2324 "parser.ml"
=======
            let (_menhir_stack : ((('freshtv181 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2520 "parser.ml"
            ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2524 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv179 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2531 "parser.ml"
            ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2535 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (e1 : (
# 53 "parser.mly"
      (expression)
# 2540 "parser.ml"
            ))), _, (e2 : (
# 53 "parser.mly"
      (expression)
# 2544 "parser.ml"
>>>>>>> boucle_for
            ))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (
<<<<<<< HEAD
# 52 "parser.mly"
      (expression)
# 2332 "parser.ml"
            ) = 
# 110 "parser.mly"
                          (Binaire (Mult,e1,e2))
# 2336 "parser.ml"
             in
            _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv152)) : 'freshtv154)
=======
# 53 "parser.mly"
      (expression)
# 2552 "parser.ml"
            ) = 
# 114 "parser.mly"
                          (Binaire (Inf,e1,e2))
# 2556 "parser.ml"
             in
            _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv180)) : 'freshtv182)
>>>>>>> boucle_for
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : ((('freshtv155 * _menhir_state) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2346 "parser.ml"
            ))) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2350 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv156)) : 'freshtv158)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv165 * _menhir_state) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2359 "parser.ml"
        ))) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2363 "parser.ml"
=======
            let (_menhir_stack : ((('freshtv183 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2566 "parser.ml"
            ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2570 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv184)) : 'freshtv186)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv193 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2579 "parser.ml"
        ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2583 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv189 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2593 "parser.ml"
            ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2597 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv187 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2604 "parser.ml"
            ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2608 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (e1 : (
# 53 "parser.mly"
      (expression)
# 2613 "parser.ml"
            ))), _, (e2 : (
# 53 "parser.mly"
      (expression)
# 2617 "parser.ml"
            ))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (
# 53 "parser.mly"
      (expression)
# 2625 "parser.ml"
            ) = 
# 113 "parser.mly"
                          (Binaire (Equ,e1,e2))
# 2629 "parser.ml"
             in
            _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv188)) : 'freshtv190)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv191 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2639 "parser.ml"
            ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2643 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv192)) : 'freshtv194)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv195 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2652 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AO ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53) : 'freshtv196)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv203 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2668 "parser.ml"
>>>>>>> boucle_for
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : ((('freshtv161 * _menhir_state) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2373 "parser.ml"
            ))) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2377 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv159 * _menhir_state) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2384 "parser.ml"
            ))) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2388 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (e1 : (
# 52 "parser.mly"
      (expression)
# 2393 "parser.ml"
            ))), _, (e2 : (
# 52 "parser.mly"
      (expression)
# 2397 "parser.ml"
            ))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (
# 52 "parser.mly"
      (expression)
# 2405 "parser.ml"
            ) = 
# 112 "parser.mly"
                          (Binaire (Inf,e1,e2))
# 2409 "parser.ml"
             in
            _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv160)) : 'freshtv162)
=======
            let (_menhir_stack : ('freshtv199 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2678 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv197 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2685 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e1 : (
# 53 "parser.mly"
      (expression)
# 2690 "parser.ml"
            ))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 50 "parser.mly"
      (instruction)
# 2697 "parser.ml"
            ) = 
# 80 "parser.mly"
                                    (Affichage (e1))
# 2701 "parser.ml"
             in
            _menhir_goto_i _menhir_env _menhir_stack _menhir_s _v) : 'freshtv198)) : 'freshtv200)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv201 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2711 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv202)) : 'freshtv204)
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv205 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2720 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AO ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState59) : 'freshtv206)
    | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv211 * _menhir_state)) * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 2736 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 2740 "parser.ml"
        ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2744 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PV ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv207 * _menhir_state)) * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 2754 "parser.ml"
            )) * (
# 11 "parser.mly"
       (string)
# 2758 "parser.ml"
            ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2762 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ADR ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | CALL ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | CO ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | DENOM ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | ENTIER _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
            | FALSE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | ID _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
            | NULL ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | NUM ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | PO ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | TRUE ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState69) : 'freshtv208)
>>>>>>> boucle_for
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : ((('freshtv163 * _menhir_state) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2419 "parser.ml"
            ))) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2423 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv164)) : 'freshtv166)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv173 * _menhir_state) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2432 "parser.ml"
        ))) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2436 "parser.ml"
=======
            let (_menhir_stack : ((((('freshtv209 * _menhir_state)) * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 2800 "parser.ml"
            )) * (
# 11 "parser.mly"
       (string)
# 2804 "parser.ml"
            ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2808 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv210)) : 'freshtv212)
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv225 * _menhir_state)) * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 2817 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 2821 "parser.ml"
        ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2825 "parser.ml"
        ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2829 "parser.ml"
>>>>>>> boucle_for
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : ((('freshtv169 * _menhir_state) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2446 "parser.ml"
            ))) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2450 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv167 * _menhir_state) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2457 "parser.ml"
            ))) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2461 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (e1 : (
# 52 "parser.mly"
      (expression)
# 2466 "parser.ml"
            ))), _, (e2 : (
# 52 "parser.mly"
      (expression)
# 2470 "parser.ml"
            ))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (
# 52 "parser.mly"
      (expression)
# 2478 "parser.ml"
            ) = 
# 111 "parser.mly"
                          (Binaire (Equ,e1,e2))
# 2482 "parser.ml"
             in
            _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv168)) : 'freshtv170)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv171 * _menhir_state) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2492 "parser.ml"
            ))) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2496 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv172)) : 'freshtv174)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv175 * _menhir_state) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2505 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AO ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53) : 'freshtv176)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv183 * _menhir_state) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2521 "parser.ml"
=======
            let (_menhir_stack : ((((((('freshtv221 * _menhir_state)) * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 2839 "parser.ml"
            )) * (
# 11 "parser.mly"
       (string)
# 2843 "parser.ml"
            ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2847 "parser.ml"
            ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2851 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((((('freshtv217 * _menhir_state)) * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 2861 "parser.ml"
                )) * (
# 11 "parser.mly"
       (string)
# 2865 "parser.ml"
                ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2869 "parser.ml"
                ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2873 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                let (_v : (
# 11 "parser.mly"
       (string)
# 2878 "parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | EQUAL ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((((((((('freshtv213 * _menhir_state)) * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 2889 "parser.ml"
                    )) * (
# 11 "parser.mly"
       (string)
# 2893 "parser.ml"
                    ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2897 "parser.ml"
                    ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2901 "parser.ml"
                    ))) * (
# 11 "parser.mly"
       (string)
# 2905 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | ADR ->
                        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState73
                    | CALL ->
                        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState73
                    | CO ->
                        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState73
                    | DENOM ->
                        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState73
                    | ENTIER _v ->
                        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
                    | FALSE ->
                        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState73
                    | ID _v ->
                        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
                    | NULL ->
                        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState73
                    | NUM ->
                        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState73
                    | PO ->
                        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState73
                    | TRUE ->
                        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState73
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState73) : 'freshtv214)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((((((((('freshtv215 * _menhir_state)) * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 2943 "parser.ml"
                    )) * (
# 11 "parser.mly"
       (string)
# 2947 "parser.ml"
                    ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2951 "parser.ml"
                    ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2955 "parser.ml"
                    ))) * (
# 11 "parser.mly"
       (string)
# 2959 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv216)) : 'freshtv218)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((((('freshtv219 * _menhir_state)) * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 2970 "parser.ml"
                )) * (
# 11 "parser.mly"
       (string)
# 2974 "parser.ml"
                ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2978 "parser.ml"
                ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 2982 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv220)) : 'freshtv222)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv223 * _menhir_state)) * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 2993 "parser.ml"
            )) * (
# 11 "parser.mly"
       (string)
# 2997 "parser.ml"
            ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 3001 "parser.ml"
            ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 3005 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv224)) : 'freshtv226)
    | MenhirState73 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((((('freshtv231 * _menhir_state)) * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 3014 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 3018 "parser.ml"
        ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 3022 "parser.ml"
        ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 3026 "parser.ml"
        ))) * (
# 11 "parser.mly"
       (string)
# 3030 "parser.ml"
        ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 3034 "parser.ml"
>>>>>>> boucle_for
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
<<<<<<< HEAD
        | PV ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv179 * _menhir_state) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2531 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv177 * _menhir_state) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2538 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e1 : (
# 52 "parser.mly"
      (expression)
# 2543 "parser.ml"
            ))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 49 "parser.mly"
      (instruction)
# 2550 "parser.ml"
            ) = 
# 79 "parser.mly"
                                    (Affichage (e1))
# 2554 "parser.ml"
             in
            _menhir_goto_i _menhir_env _menhir_stack _menhir_s _v) : 'freshtv178)) : 'freshtv180)
=======
        | PF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((((('freshtv227 * _menhir_state)) * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 3044 "parser.ml"
            )) * (
# 11 "parser.mly"
       (string)
# 3048 "parser.ml"
            ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 3052 "parser.ml"
            ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 3056 "parser.ml"
            ))) * (
# 11 "parser.mly"
       (string)
# 3060 "parser.ml"
            ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 3064 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AO ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState75) : 'freshtv228)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((((('freshtv229 * _menhir_state)) * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 3082 "parser.ml"
            )) * (
# 11 "parser.mly"
       (string)
# 3086 "parser.ml"
            ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 3090 "parser.ml"
            ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 3094 "parser.ml"
            ))) * (
# 11 "parser.mly"
       (string)
# 3098 "parser.ml"
            ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 3102 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv230)) : 'freshtv232)
    | MenhirState84 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv239 * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 3111 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 3115 "parser.ml"
        ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 3119 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PV ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv235 * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 3129 "parser.ml"
            )) * (
# 11 "parser.mly"
       (string)
# 3133 "parser.ml"
            ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 3137 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv233 * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 3144 "parser.ml"
            )) * (
# 11 "parser.mly"
       (string)
# 3148 "parser.ml"
            ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 3152 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (t : (
# 51 "parser.mly"
      (typ)
# 3157 "parser.ml"
            ))), (n : (
# 11 "parser.mly"
       (string)
# 3161 "parser.ml"
            ))), _, (e1 : (
# 53 "parser.mly"
      (expression)
# 3165 "parser.ml"
            ))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _v : (
# 50 "parser.mly"
      (instruction)
# 3172 "parser.ml"
            ) = 
# 77 "parser.mly"
                                    (Declaration (t,n,e1))
# 3176 "parser.ml"
             in
            _menhir_goto_i _menhir_env _menhir_stack _menhir_s _v) : 'freshtv234)) : 'freshtv236)
>>>>>>> boucle_for
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : ('freshtv181 * _menhir_state) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2564 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv182)) : 'freshtv184)
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv185 * _menhir_state) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2573 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AO ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState59) : 'freshtv186)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv193 * _menhir_state * (
# 50 "parser.mly"
      (typ)
# 2589 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 2593 "parser.ml"
        ))) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2597 "parser.ml"
=======
            let (_menhir_stack : ((('freshtv237 * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 3186 "parser.ml"
            )) * (
# 11 "parser.mly"
       (string)
# 3190 "parser.ml"
            ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 3194 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv238)) : 'freshtv240)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv247 * _menhir_state * (
# 55 "parser.mly"
      (affectable)
# 3203 "parser.ml"
        ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 3207 "parser.ml"
>>>>>>> boucle_for
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PV ->
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : ((('freshtv189 * _menhir_state * (
# 50 "parser.mly"
      (typ)
# 2607 "parser.ml"
            )) * (
# 11 "parser.mly"
       (string)
# 2611 "parser.ml"
            ))) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2615 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv187 * _menhir_state * (
# 50 "parser.mly"
      (typ)
# 2622 "parser.ml"
            )) * (
# 11 "parser.mly"
       (string)
# 2626 "parser.ml"
            ))) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2630 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (t : (
# 50 "parser.mly"
      (typ)
# 2635 "parser.ml"
            ))), (n : (
# 11 "parser.mly"
       (string)
# 2639 "parser.ml"
            ))), _, (e1 : (
# 52 "parser.mly"
      (expression)
# 2643 "parser.ml"
            ))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _v : (
# 49 "parser.mly"
      (instruction)
# 2650 "parser.ml"
            ) = 
# 76 "parser.mly"
                                    (Declaration (t,n,e1))
# 2654 "parser.ml"
             in
            _menhir_goto_i _menhir_env _menhir_stack _menhir_s _v) : 'freshtv188)) : 'freshtv190)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv191 * _menhir_state * (
# 50 "parser.mly"
      (typ)
# 2664 "parser.ml"
            )) * (
# 11 "parser.mly"
       (string)
# 2668 "parser.ml"
            ))) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2672 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv192)) : 'freshtv194)
    | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv201 * _menhir_state * (
# 54 "parser.mly"
      (affectable)
# 2681 "parser.ml"
        ))) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2685 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PV ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv197 * _menhir_state * (
# 54 "parser.mly"
      (affectable)
# 2695 "parser.ml"
            ))) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2699 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv195 * _menhir_state * (
# 54 "parser.mly"
      (affectable)
# 2706 "parser.ml"
            ))) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2710 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a : (
# 54 "parser.mly"
      (affectable)
# 2715 "parser.ml"
            ))), _, (e1 : (
# 52 "parser.mly"
      (expression)
# 2719 "parser.ml"
            ))) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : (
# 49 "parser.mly"
      (instruction)
# 2726 "parser.ml"
            ) = 
# 77 "parser.mly"
                                    (Affectation (a,e1))
# 2730 "parser.ml"
             in
            _menhir_goto_i _menhir_env _menhir_stack _menhir_s _v) : 'freshtv196)) : 'freshtv198)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv199 * _menhir_state * (
# 54 "parser.mly"
      (affectable)
# 2740 "parser.ml"
            ))) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2744 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv200)) : 'freshtv202)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv217 * _menhir_state * (
# 50 "parser.mly"
      (typ)
# 2753 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 2757 "parser.ml"
        ))) * _menhir_state * (
# 51 "parser.mly"
      ((typ*string) list)
# 2761 "parser.ml"
        )))) * _menhir_state * (
# 48 "parser.mly"
      (instruction list)
# 2765 "parser.ml"
        ))) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2769 "parser.ml"
=======
            let (_menhir_stack : (('freshtv243 * _menhir_state * (
# 55 "parser.mly"
      (affectable)
# 3217 "parser.ml"
            ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 3221 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv241 * _menhir_state * (
# 55 "parser.mly"
      (affectable)
# 3228 "parser.ml"
            ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 3232 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a : (
# 55 "parser.mly"
      (affectable)
# 3237 "parser.ml"
            ))), _, (e1 : (
# 53 "parser.mly"
      (expression)
# 3241 "parser.ml"
            ))) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : (
# 50 "parser.mly"
      (instruction)
# 3248 "parser.ml"
            ) = 
# 78 "parser.mly"
                                    (Affectation (a,e1))
# 3252 "parser.ml"
             in
            _menhir_goto_i _menhir_env _menhir_stack _menhir_s _v) : 'freshtv242)) : 'freshtv244)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv245 * _menhir_state * (
# 55 "parser.mly"
      (affectable)
# 3262 "parser.ml"
            ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 3266 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv246)) : 'freshtv248)
    | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv263 * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 3275 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 3279 "parser.ml"
        ))) * _menhir_state * (
# 52 "parser.mly"
      ((typ*string) list)
# 3283 "parser.ml"
        )))) * _menhir_state * (
# 49 "parser.mly"
      (instruction list)
# 3287 "parser.ml"
        ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 3291 "parser.ml"
>>>>>>> boucle_for
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PV ->
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : (((((((('freshtv213 * _menhir_state * (
# 50 "parser.mly"
      (typ)
# 2779 "parser.ml"
            )) * (
# 11 "parser.mly"
       (string)
# 2783 "parser.ml"
            ))) * _menhir_state * (
# 51 "parser.mly"
      ((typ*string) list)
# 2787 "parser.ml"
            )))) * _menhir_state * (
# 48 "parser.mly"
      (instruction list)
# 2791 "parser.ml"
            ))) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2795 "parser.ml"
=======
            let (_menhir_stack : (((((((('freshtv259 * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 3301 "parser.ml"
            )) * (
# 11 "parser.mly"
       (string)
# 3305 "parser.ml"
            ))) * _menhir_state * (
# 52 "parser.mly"
      ((typ*string) list)
# 3309 "parser.ml"
            )))) * _menhir_state * (
# 49 "parser.mly"
      (instruction list)
# 3313 "parser.ml"
            ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 3317 "parser.ml"
>>>>>>> boucle_for
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AF ->
                let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
                let (_menhir_stack : ((((((((('freshtv209 * _menhir_state * (
# 50 "parser.mly"
      (typ)
# 2805 "parser.ml"
                )) * (
# 11 "parser.mly"
       (string)
# 2809 "parser.ml"
                ))) * _menhir_state * (
# 51 "parser.mly"
      ((typ*string) list)
# 2813 "parser.ml"
                )))) * _menhir_state * (
# 48 "parser.mly"
      (instruction list)
# 2817 "parser.ml"
                ))) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2821 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((((((('freshtv207 * _menhir_state * (
# 50 "parser.mly"
      (typ)
# 2828 "parser.ml"
                )) * (
# 11 "parser.mly"
       (string)
# 2832 "parser.ml"
                ))) * _menhir_state * (
# 51 "parser.mly"
      ((typ*string) list)
# 2836 "parser.ml"
                )))) * _menhir_state * (
# 48 "parser.mly"
      (instruction list)
# 2840 "parser.ml"
                ))) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2844 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let (((((_menhir_stack, _menhir_s, (t : (
# 50 "parser.mly"
      (typ)
# 2849 "parser.ml"
                ))), (n : (
# 11 "parser.mly"
       (string)
# 2853 "parser.ml"
                ))), _, (p : (
# 51 "parser.mly"
      ((typ*string) list)
# 2857 "parser.ml"
                ))), _, (li : (
# 48 "parser.mly"
      (instruction list)
# 2861 "parser.ml"
                ))), _, (exp : (
# 52 "parser.mly"
      (expression)
# 2865 "parser.ml"
=======
                let (_menhir_stack : ((((((((('freshtv255 * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 3327 "parser.ml"
                )) * (
# 11 "parser.mly"
       (string)
# 3331 "parser.ml"
                ))) * _menhir_state * (
# 52 "parser.mly"
      ((typ*string) list)
# 3335 "parser.ml"
                )))) * _menhir_state * (
# 49 "parser.mly"
      (instruction list)
# 3339 "parser.ml"
                ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 3343 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((((((('freshtv253 * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 3350 "parser.ml"
                )) * (
# 11 "parser.mly"
       (string)
# 3354 "parser.ml"
                ))) * _menhir_state * (
# 52 "parser.mly"
      ((typ*string) list)
# 3358 "parser.ml"
                )))) * _menhir_state * (
# 49 "parser.mly"
      (instruction list)
# 3362 "parser.ml"
                ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 3366 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let (((((_menhir_stack, _menhir_s, (t : (
# 51 "parser.mly"
      (typ)
# 3371 "parser.ml"
                ))), (n : (
# 11 "parser.mly"
       (string)
# 3375 "parser.ml"
                ))), _, (p : (
# 52 "parser.mly"
      ((typ*string) list)
# 3379 "parser.ml"
                ))), _, (li : (
# 49 "parser.mly"
      (instruction list)
# 3383 "parser.ml"
                ))), _, (exp : (
# 53 "parser.mly"
      (expression)
# 3387 "parser.ml"
>>>>>>> boucle_for
                ))) = _menhir_stack in
                let _11 = () in
                let _10 = () in
                let _8 = () in
                let _6 = () in
                let _5 = () in
                let _3 = () in
                let _v : (
<<<<<<< HEAD
# 47 "parser.mly"
      (fonction)
# 2876 "parser.ml"
                ) = 
# 67 "parser.mly"
                                                         (Fonction(t,n,p,li,exp))
# 2880 "parser.ml"
                 in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv205) = _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : (
# 47 "parser.mly"
      (fonction)
# 2888 "parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv203 * _menhir_state * (
# 47 "parser.mly"
      (fonction)
# 2895 "parser.ml"
=======
# 48 "parser.mly"
      (fonction)
# 3398 "parser.ml"
                ) = 
# 68 "parser.mly"
                                                         (Fonction(t,n,p,li,exp))
# 3402 "parser.ml"
                 in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv251) = _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : (
# 48 "parser.mly"
      (fonction)
# 3410 "parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv249 * _menhir_state * (
# 48 "parser.mly"
      (fonction)
# 3417 "parser.ml"
>>>>>>> boucle_for
                )) = Obj.magic _menhir_stack in
                ((assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BOOL ->
<<<<<<< HEAD
                    _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState99
                | ID _v ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
                | INT ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState99
                | RAT ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState99
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState99) : 'freshtv204)) : 'freshtv206)) : 'freshtv208)) : 'freshtv210)
=======
                    _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState113
                | ID _v ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _v
                | INT ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState113
                | RAT ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState113
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState113) : 'freshtv250)) : 'freshtv252)) : 'freshtv254)) : 'freshtv256)
>>>>>>> boucle_for
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
                let (_menhir_stack : ((((((((('freshtv211 * _menhir_state * (
# 50 "parser.mly"
      (typ)
# 2919 "parser.ml"
                )) * (
# 11 "parser.mly"
       (string)
# 2923 "parser.ml"
                ))) * _menhir_state * (
# 51 "parser.mly"
      ((typ*string) list)
# 2927 "parser.ml"
                )))) * _menhir_state * (
# 48 "parser.mly"
      (instruction list)
# 2931 "parser.ml"
                ))) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2935 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv212)) : 'freshtv214)
=======
                let (_menhir_stack : ((((((((('freshtv257 * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 3441 "parser.ml"
                )) * (
# 11 "parser.mly"
       (string)
# 3445 "parser.ml"
                ))) * _menhir_state * (
# 52 "parser.mly"
      ((typ*string) list)
# 3449 "parser.ml"
                )))) * _menhir_state * (
# 49 "parser.mly"
      (instruction list)
# 3453 "parser.ml"
                ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 3457 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv258)) : 'freshtv260)
>>>>>>> boucle_for
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : (((((((('freshtv215 * _menhir_state * (
# 50 "parser.mly"
      (typ)
# 2946 "parser.ml"
            )) * (
# 11 "parser.mly"
       (string)
# 2950 "parser.ml"
            ))) * _menhir_state * (
# 51 "parser.mly"
      ((typ*string) list)
# 2954 "parser.ml"
            )))) * _menhir_state * (
# 48 "parser.mly"
      (instruction list)
# 2958 "parser.ml"
            ))) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 2962 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv216)) : 'freshtv218)
=======
            let (_menhir_stack : (((((((('freshtv261 * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 3468 "parser.ml"
            )) * (
# 11 "parser.mly"
       (string)
# 3472 "parser.ml"
            ))) * _menhir_state * (
# 52 "parser.mly"
      ((typ*string) list)
# 3476 "parser.ml"
            )))) * _menhir_state * (
# 49 "parser.mly"
      (instruction list)
# 3480 "parser.ml"
            ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 3484 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv262)) : 'freshtv264)
>>>>>>> boucle_for
    | _ ->
        _menhir_fail ()

and _menhir_run35 : _menhir_env -> 'ttv_tail * _menhir_state * (
<<<<<<< HEAD
# 50 "parser.mly"
      (typ)
# 2972 "parser.ml"
=======
# 51 "parser.mly"
      (typ)
# 3494 "parser.ml"
>>>>>>> boucle_for
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
    let (_menhir_stack : 'freshtv105 * _menhir_state * (
# 50 "parser.mly"
      (typ)
# 2980 "parser.ml"
    )) = Obj.magic _menhir_stack in
    ((let (_menhir_stack, _menhir_s, (t : (
# 50 "parser.mly"
      (typ)
# 2985 "parser.ml"
    ))) = _menhir_stack in
    let _2 = () in
    let _v : (
# 50 "parser.mly"
      (typ)
# 2991 "parser.ml"
    ) = 
# 95 "parser.mly"
              (Pt t)
# 2995 "parser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv106)
=======
    let (_menhir_stack : 'freshtv125 * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 3502 "parser.ml"
    )) = Obj.magic _menhir_stack in
    ((let (_menhir_stack, _menhir_s, (t : (
# 51 "parser.mly"
      (typ)
# 3507 "parser.ml"
    ))) = _menhir_stack in
    let _2 = () in
    let _v : (
# 51 "parser.mly"
      (typ)
# 3513 "parser.ml"
    ) = 
# 97 "parser.mly"
              (Pt t)
# 3517 "parser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv126)
>>>>>>> boucle_for

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | CONST ->
<<<<<<< HEAD
=======
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | FOR ->
>>>>>>> boucle_for
        _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | IF ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | INT ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | PO ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | PRINT ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | RAT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | WHILE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | AF ->
<<<<<<< HEAD
        _menhir_reduce30 _menhir_env (Obj.magic _menhir_stack) MenhirState4
=======
        _menhir_reduce31 _menhir_env (Obj.magic _menhir_stack) MenhirState4
>>>>>>> boucle_for
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState4

and _menhir_goto_typ : _menhir_env -> 'ttv_tail -> _menhir_state -> (
<<<<<<< HEAD
# 50 "parser.mly"
      (typ)
# 3033 "parser.ml"
=======
# 51 "parser.mly"
      (typ)
# 3557 "parser.ml"
>>>>>>> boucle_for
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
        let (_menhir_stack : (('freshtv77 * _menhir_state) * _menhir_state) * _menhir_state * (
# 50 "parser.mly"
      (typ)
# 3043 "parser.ml"
=======
        let (_menhir_stack : (('freshtv87 * _menhir_state) * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 3567 "parser.ml"
>>>>>>> boucle_for
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MULT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | PF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : (('freshtv73 * _menhir_state) * _menhir_state) * _menhir_state * (
# 50 "parser.mly"
      (typ)
# 3055 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv71 * _menhir_state) * _menhir_state) * _menhir_state * (
# 50 "parser.mly"
      (typ)
# 3062 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _), _, (t : (
# 50 "parser.mly"
      (typ)
# 3067 "parser.ml"
=======
            let (_menhir_stack : (('freshtv83 * _menhir_state) * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 3579 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv81 * _menhir_state) * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 3586 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _), _, (t : (
# 51 "parser.mly"
      (typ)
# 3591 "parser.ml"
>>>>>>> boucle_for
            ))) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (
<<<<<<< HEAD
# 52 "parser.mly"
      (expression)
# 3075 "parser.ml"
            ) = 
# 107 "parser.mly"
                               (Allocation(t))
# 3079 "parser.ml"
             in
            _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv72)) : 'freshtv74)
=======
# 53 "parser.mly"
      (expression)
# 3599 "parser.ml"
            ) = 
# 109 "parser.mly"
                               (Allocation(t))
# 3603 "parser.ml"
             in
            _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv82)) : 'freshtv84)
>>>>>>> boucle_for
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : (('freshtv75 * _menhir_state) * _menhir_state) * _menhir_state * (
# 50 "parser.mly"
      (typ)
# 3089 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)) : 'freshtv78)
    | MenhirState90 | MenhirState75 | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv87 * _menhir_state * (
# 50 "parser.mly"
      (typ)
# 3098 "parser.ml"
=======
            let (_menhir_stack : (('freshtv85 * _menhir_state) * _menhir_state) * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 3613 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)) : 'freshtv88)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv97 * _menhir_state)) * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 3622 "parser.ml"
>>>>>>> boucle_for
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : 'freshtv83 * _menhir_state * (
# 50 "parser.mly"
      (typ)
# 3108 "parser.ml"
=======
            let (_menhir_stack : (('freshtv93 * _menhir_state)) * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 3632 "parser.ml"
>>>>>>> boucle_for
            )) = Obj.magic _menhir_stack in
            let (_v : (
# 11 "parser.mly"
       (string)
<<<<<<< HEAD
# 3113 "parser.ml"
=======
# 3637 "parser.ml"
>>>>>>> boucle_for
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EQUAL ->
                let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
                let (_menhir_stack : ('freshtv79 * _menhir_state * (
# 50 "parser.mly"
      (typ)
# 3124 "parser.ml"
                )) * (
# 11 "parser.mly"
       (string)
# 3128 "parser.ml"
=======
                let (_menhir_stack : ((('freshtv89 * _menhir_state)) * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 3648 "parser.ml"
                )) * (
# 11 "parser.mly"
       (string)
# 3652 "parser.ml"
>>>>>>> boucle_for
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ADR ->
<<<<<<< HEAD
                    _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState70
                | CALL ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState70
                | CO ->
                    _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState70
                | DENOM ->
                    _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState70
                | ENTIER _v ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
                | FALSE ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState70
                | ID _v ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
                | NULL ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState70
                | NUM ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState70
                | PO ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState70
                | TRUE ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState70
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState70) : 'freshtv80)
=======
                    _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState67
                | CALL ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState67
                | CO ->
                    _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState67
                | DENOM ->
                    _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState67
                | ENTIER _v ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
                | FALSE ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState67
                | ID _v ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
                | NULL ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState67
                | NUM ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState67
                | PO ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState67
                | TRUE ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState67
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState67) : 'freshtv90)
>>>>>>> boucle_for
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
                let (_menhir_stack : ('freshtv81 * _menhir_state * (
# 50 "parser.mly"
      (typ)
# 3166 "parser.ml"
                )) * (
# 11 "parser.mly"
       (string)
# 3170 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)) : 'freshtv84)
=======
                let (_menhir_stack : ((('freshtv91 * _menhir_state)) * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 3690 "parser.ml"
                )) * (
# 11 "parser.mly"
       (string)
# 3694 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)) : 'freshtv94)
>>>>>>> boucle_for
        | MULT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : 'freshtv85 * _menhir_state * (
# 50 "parser.mly"
      (typ)
# 3183 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)) : 'freshtv88)
    | MenhirState99 | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv97 * _menhir_state * (
# 50 "parser.mly"
      (typ)
# 3192 "parser.ml"
=======
            let (_menhir_stack : (('freshtv95 * _menhir_state)) * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 3707 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)) : 'freshtv98)
    | MenhirState104 | MenhirState89 | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv107 * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 3716 "parser.ml"
>>>>>>> boucle_for
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : 'freshtv93 * _menhir_state * (
# 50 "parser.mly"
      (typ)
# 3202 "parser.ml"
=======
            let (_menhir_stack : 'freshtv103 * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 3726 "parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_v : (
# 11 "parser.mly"
       (string)
# 3731 "parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EQUAL ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv99 * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 3742 "parser.ml"
                )) * (
# 11 "parser.mly"
       (string)
# 3746 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ADR ->
                    _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState84
                | CALL ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState84
                | CO ->
                    _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState84
                | DENOM ->
                    _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState84
                | ENTIER _v ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
                | FALSE ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState84
                | ID _v ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
                | NULL ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState84
                | NUM ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState84
                | PO ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState84
                | TRUE ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState84
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState84) : 'freshtv100)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv101 * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 3784 "parser.ml"
                )) * (
# 11 "parser.mly"
       (string)
# 3788 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)) : 'freshtv104)
        | MULT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv105 * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 3801 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)) : 'freshtv108)
    | MenhirState113 | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv117 * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 3810 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv113 * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 3820 "parser.ml"
>>>>>>> boucle_for
            )) = Obj.magic _menhir_stack in
            let (_v : (
# 11 "parser.mly"
       (string)
<<<<<<< HEAD
# 3207 "parser.ml"
=======
# 3825 "parser.ml"
>>>>>>> boucle_for
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | PO ->
                let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
                let (_menhir_stack : ('freshtv89 * _menhir_state * (
# 50 "parser.mly"
      (typ)
# 3218 "parser.ml"
                )) * (
# 11 "parser.mly"
       (string)
# 3222 "parser.ml"
=======
                let (_menhir_stack : ('freshtv109 * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 3836 "parser.ml"
                )) * (
# 11 "parser.mly"
       (string)
# 3840 "parser.ml"
>>>>>>> boucle_for
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BOOL ->
<<<<<<< HEAD
                    _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState84
                | INT ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState84
                | RAT ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState84
                | PF ->
                    _menhir_reduce6 _menhir_env (Obj.magic _menhir_stack) MenhirState84
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState84) : 'freshtv90)
=======
                    _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState98
                | INT ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState98
                | RAT ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState98
                | PF ->
                    _menhir_reduce6 _menhir_env (Obj.magic _menhir_stack) MenhirState98
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState98) : 'freshtv110)
>>>>>>> boucle_for
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
                let (_menhir_stack : ('freshtv91 * _menhir_state * (
# 50 "parser.mly"
      (typ)
# 3246 "parser.ml"
                )) * (
# 11 "parser.mly"
       (string)
# 3250 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)) : 'freshtv94)
=======
                let (_menhir_stack : ('freshtv111 * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 3864 "parser.ml"
                )) * (
# 11 "parser.mly"
       (string)
# 3868 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)) : 'freshtv114)
>>>>>>> boucle_for
        | MULT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : 'freshtv95 * _menhir_state * (
# 50 "parser.mly"
      (typ)
# 3263 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)) : 'freshtv98)
    | MenhirState86 | MenhirState84 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv103 * _menhir_state * (
# 50 "parser.mly"
      (typ)
# 3272 "parser.ml"
=======
            let (_menhir_stack : 'freshtv115 * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 3881 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)) : 'freshtv118)
    | MenhirState100 | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv123 * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 3890 "parser.ml"
>>>>>>> boucle_for
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : 'freshtv99 * _menhir_state * (
# 50 "parser.mly"
      (typ)
# 3282 "parser.ml"
=======
            let (_menhir_stack : 'freshtv119 * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 3900 "parser.ml"
>>>>>>> boucle_for
            )) = Obj.magic _menhir_stack in
            let (_v : (
# 11 "parser.mly"
       (string)
<<<<<<< HEAD
# 3287 "parser.ml"
=======
# 3905 "parser.ml"
>>>>>>> boucle_for
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL ->
<<<<<<< HEAD
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | INT ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | RAT ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | PF ->
                _menhir_reduce6 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState86) : 'freshtv100)
=======
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | INT ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | RAT ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | PF ->
                _menhir_reduce6 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState100) : 'freshtv120)
>>>>>>> boucle_for
        | MULT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : 'freshtv101 * _menhir_state * (
# 50 "parser.mly"
      (typ)
# 3314 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)) : 'freshtv104)
=======
            let (_menhir_stack : 'freshtv121 * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 3932 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv122)) : 'freshtv124)
>>>>>>> boucle_for
    | _ ->
        _menhir_fail ()

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
<<<<<<< HEAD
    | MenhirState99 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv9 * _menhir_state * (
# 47 "parser.mly"
      (fonction)
# 3329 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv10)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv11 * _menhir_state * (
# 50 "parser.mly"
      (typ)
# 3338 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 3342 "parser.ml"
        ))) * _menhir_state * (
# 51 "parser.mly"
      ((typ*string) list)
# 3346 "parser.ml"
        )))) * _menhir_state * (
# 48 "parser.mly"
      (instruction list)
# 3350 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv12)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv13 * _menhir_state * (
# 50 "parser.mly"
      (typ)
# 3359 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 3363 "parser.ml"
        ))) * _menhir_state * (
# 51 "parser.mly"
      ((typ*string) list)
# 3367 "parser.ml"
        )))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv14)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv15 * _menhir_state * (
# 50 "parser.mly"
      (typ)
# 3376 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 3380 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv16)
    | MenhirState84 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv17 * _menhir_state * (
# 50 "parser.mly"
      (typ)
# 3389 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 3393 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv18)
    | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv19 * _menhir_state * (
# 54 "parser.mly"
      (affectable)
# 3402 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv20)
    | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv21 * _menhir_state * (
# 49 "parser.mly"
      (instruction)
# 3411 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv23 * _menhir_state * (
# 50 "parser.mly"
      (typ)
# 3420 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 3424 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)
    | MenhirState61 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv25 * _menhir_state) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 3433 "parser.ml"
        )) * _menhir_state * (
# 46 "parser.mly"
      (instruction list)
# 3437 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)
    | MenhirState59 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv27 * _menhir_state) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 3446 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)
=======
    | MenhirState113 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv9 * _menhir_state * (
# 48 "parser.mly"
      (fonction)
# 3947 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv10)
    | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv11 * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 3956 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 3960 "parser.ml"
        ))) * _menhir_state * (
# 52 "parser.mly"
      ((typ*string) list)
# 3964 "parser.ml"
        )))) * _menhir_state * (
# 49 "parser.mly"
      (instruction list)
# 3968 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv12)
    | MenhirState104 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv13 * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 3977 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 3981 "parser.ml"
        ))) * _menhir_state * (
# 52 "parser.mly"
      ((typ*string) list)
# 3985 "parser.ml"
        )))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv14)
    | MenhirState100 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv15 * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 3994 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 3998 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv16)
    | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv17 * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 4007 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 4011 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv18)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv19 * _menhir_state * (
# 55 "parser.mly"
      (affectable)
# 4020 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv20)
    | MenhirState89 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv21 * _menhir_state * (
# 50 "parser.mly"
      (instruction)
# 4029 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)
    | MenhirState84 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv23 * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 4038 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 4042 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)
    | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((((((('freshtv25 * _menhir_state)) * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 4051 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 4055 "parser.ml"
        ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 4059 "parser.ml"
        ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 4063 "parser.ml"
        ))) * (
# 11 "parser.mly"
       (string)
# 4067 "parser.ml"
        ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 4071 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)
    | MenhirState73 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((((('freshtv27 * _menhir_state)) * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 4080 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 4084 "parser.ml"
        ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 4088 "parser.ml"
        ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 4092 "parser.ml"
        ))) * (
# 11 "parser.mly"
       (string)
# 4096 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv29 * _menhir_state)) * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 4105 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 4109 "parser.ml"
        ))) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 4113 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)
    | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv31 * _menhir_state)) * _menhir_state * (
# 51 "parser.mly"
      (typ)
# 4122 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 4126 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv33 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)
    | MenhirState61 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv35 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 4140 "parser.ml"
        )) * _menhir_state * (
# 47 "parser.mly"
      (instruction list)
# 4144 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState59 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv37 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 4153 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
>>>>>>> boucle_for
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv39 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
<<<<<<< HEAD
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)
=======
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)
>>>>>>> boucle_for
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv41 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
<<<<<<< HEAD
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv33 * _menhir_state) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 3465 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv35 * _menhir_state) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 3474 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv37 * _menhir_state) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 3483 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv39 * _menhir_state) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 3492 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv41 * _menhir_state) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 3501 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv43 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv45 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv47 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv49 * _menhir_state) * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 3525 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv51 * _menhir_state * (
# 52 "parser.mly"
      (expression)
# 3534 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv53 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 3543 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv55 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv57 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv59 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv61 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv63 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv65 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv67 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 3582 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv69) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv70)
=======
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv43 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 4172 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv45 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 4181 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv47 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 4190 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv49 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 4199 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv51 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 4208 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv53 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv55 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv57 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv59 * _menhir_state) * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 4232 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv61 * _menhir_state * (
# 53 "parser.mly"
      (expression)
# 4241 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv63 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 4250 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv65 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv67 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv69 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv71 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv73 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv75 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv77 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 4289 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv79) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv80)
>>>>>>> boucle_for

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv7) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
<<<<<<< HEAD
# 50 "parser.mly"
      (typ)
# 3601 "parser.ml"
    ) = 
# 94 "parser.mly"
          (Rat)
# 3605 "parser.ml"
=======
# 51 "parser.mly"
      (typ)
# 4308 "parser.ml"
    ) = 
# 96 "parser.mly"
          (Rat)
# 4312 "parser.ml"
>>>>>>> boucle_for
     in
    _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv8)

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv5) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
<<<<<<< HEAD
# 50 "parser.mly"
      (typ)
# 3619 "parser.ml"
    ) = 
# 93 "parser.mly"
          (Int)
# 3623 "parser.ml"
=======
# 51 "parser.mly"
      (typ)
# 4326 "parser.ml"
    ) = 
# 95 "parser.mly"
          (Int)
# 4330 "parser.ml"
>>>>>>> boucle_for
     in
    _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv6)

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 11 "parser.mly"
       (string)
<<<<<<< HEAD
# 3630 "parser.ml"
=======
# 4337 "parser.ml"
>>>>>>> boucle_for
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AO ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState3

and _menhir_run32 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
<<<<<<< HEAD
# 50 "parser.mly"
      (typ)
# 3654 "parser.ml"
    ) = 
# 92 "parser.mly"
          (Bool)
# 3658 "parser.ml"
=======
# 51 "parser.mly"
      (typ)
# 4361 "parser.ml"
    ) = 
# 94 "parser.mly"
          (Bool)
# 4365 "parser.ml"
>>>>>>> boucle_for
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
<<<<<<< HEAD
# 57 "parser.mly"
       (Ast.AstSyntax.programme)
# 3677 "parser.ml"
=======
# 58 "parser.mly"
       (Ast.AstSyntax.programme)
# 4384 "parser.ml"
>>>>>>> boucle_for
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
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | ID _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | INT ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | RAT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv2))

# 233 "/opt/opam/4.06.0/lib/menhir/standard.mly"
  

<<<<<<< HEAD
# 3712 "parser.ml"
=======
# 4419 "parser.ml"
>>>>>>> boucle_for
