package itam.aspartam.egg;
import itam.aspartam.att_java.*;
import java.io.ByteArrayOutputStream;
import mg.egg.eggc.compiler.libjava.*;
import mg.egg.eggc.compiler.libjava.lex.*;
public class T_ASPARTAM {
  LEX_ASPARTAM att_scanner;
  String att_txt;
  LEX_ASPARTAM scanner;
  private String txt;
  public String getTxt(){return txt;}
  public T_ASPARTAM(LEX_ASPARTAM scanner ) {
    this.scanner = scanner ;
    this.att_scanner = scanner ;
    }
  public void analyser(int t) throws EGGException {
    scanner.lit ( 1 ) ;
    txt = scanner.fenetre[0].getNom() ;
    att_txt = txt ;
    scanner.accepter_sucre ( t ) ;
    }
    }
