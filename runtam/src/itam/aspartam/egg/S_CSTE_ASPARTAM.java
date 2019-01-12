package itam.aspartam.egg;
import itam.aspartam.att_java.*;
import java.io.ByteArrayOutputStream;
import mg.egg.eggc.compiler.libjava.lex.*;
import mg.egg.eggc.compiler.libjava.*;
import mg.egg.eggc.compiler.libjava.problem.IProblem;
import java.util.Vector;
public class S_CSTE_ASPARTAM {
LEX_ASPARTAM scanner;
  S_CSTE_ASPARTAM() {
    }
  S_CSTE_ASPARTAM(LEX_ASPARTAM scanner) {
    this.scanner = scanner;
    this.att_scanner = scanner;
    }
int [] sync= new int[0];
  int att_val;
  TDS att_table;
  int att_sorte;
  LEX_ASPARTAM att_scanner;
  private void regle9() throws Exception {

    //declaration
    T_ASPARTAM x_2 = new T_ASPARTAM(scanner ) ;
    //appel
    x_2.analyser(LEX_ASPARTAM.token_car);
      action_cste_9(x_2);
  }
  private void regle7() throws Exception {

    //declaration
    T_ASPARTAM x_2 = new T_ASPARTAM(scanner ) ;
    //appel
    x_2.analyser(LEX_ASPARTAM.token_nb);
      action_cste_7(x_2);
  }
  private void regle8() throws Exception {

    //declaration
    T_ASPARTAM x_2 = new T_ASPARTAM(scanner ) ;
    //appel
    x_2.analyser(LEX_ASPARTAM.token_chaine);
      action_cste_8(x_2);
  }
private void action_cste_7(T_ASPARTAM x_2) throws Exception {
try {
// locales
// instructions
this.att_val=this.att_table.to_integer(x_2.att_txt);
this.att_sorte=0;
}catch(RuntimeException e) {		//e.printStackTrace();
	}
  }
private void action_cste_8(T_ASPARTAM x_2) throws Exception {
try {
// locales
// instructions
this.att_val=this.att_table.declarer_chaine(x_2.att_txt);
this.att_sorte=1;
}catch(RuntimeException e) {		//e.printStackTrace();
	}
  }
private void action_cste_9(T_ASPARTAM x_2) throws Exception {
try {
// locales
// instructions
this.att_val=this.att_table.to_char(x_2.att_txt);
this.att_sorte=2;
}catch(RuntimeException e) {		//e.printStackTrace();
	}
  }
  public void analyser () throws Exception {
    scanner.lit ( 1 ) ;
    switch ( scanner.fenetre[0].code ) {
      case LEX_ASPARTAM.token_nb : // 61
        regle7 () ;
      break ;
      case LEX_ASPARTAM.token_chaine : // 59
        regle8 () ;
      break ;
      case LEX_ASPARTAM.token_car : // 60
        regle9 () ;
      break ;
      default :
               scanner._interrompre(IProblem.Syntax, scanner.getBeginLine(), IASPARTAMMessages.id_ASPARTAM_unexpected_token,ASPARTAMMessages.ASPARTAM_unexpected_token,new String[]{scanner.fenetre[0].getNom()});
    }
  }
  }
