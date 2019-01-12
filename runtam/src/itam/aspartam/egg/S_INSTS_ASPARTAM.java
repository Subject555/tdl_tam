package itam.aspartam.egg;
import itam.aspartam.att_java.*;
import java.io.ByteArrayOutputStream;
import mg.egg.eggc.compiler.libjava.lex.*;
import mg.egg.eggc.compiler.libjava.*;
import mg.egg.eggc.compiler.libjava.problem.IProblem;
import java.util.Vector;
public class S_INSTS_ASPARTAM {
LEX_ASPARTAM scanner;
  S_INSTS_ASPARTAM() {
    }
  S_INSTS_ASPARTAM(LEX_ASPARTAM scanner) {
    this.scanner = scanner;
    this.att_scanner = scanner;
    }
int [] sync= new int[0];
  BINAIRE att_code;
  TDS att_table;
  LEX_ASPARTAM att_scanner;
  private void regle1() throws Exception {

    //declaration
    S_INST_ASPARTAM x_2 = new S_INST_ASPARTAM(scanner) ;
    S_INSTS_ASPARTAM x_3 = new S_INSTS_ASPARTAM(scanner) ;
    //appel
      action_auto_inh_1(x_2, x_3);
    x_2.analyser() ;
    x_3.analyser() ;
  }
  private void regle2() throws Exception {

    //declaration
    //appel
  }
private void action_auto_inh_1(S_INST_ASPARTAM x_2, S_INSTS_ASPARTAM x_3) throws Exception {
try {
// instructions
x_2.att_table=this.att_table;
x_3.att_table=this.att_table;
x_2.att_code=this.att_code;
x_3.att_code=this.att_code;
}catch(RuntimeException e) {		//e.printStackTrace();
	}
  }
  public void analyser () throws Exception {
    scanner.lit ( 1 ) ;
    switch ( scanner.fenetre[0].code ) {
      case LEX_ASPARTAM.token_load : // 43
        regle1 () ;
      break ;
      case LEX_ASPARTAM.token_loada : // 44
        regle1 () ;
      break ;
      case LEX_ASPARTAM.token_loadi : // 45
        regle1 () ;
      break ;
      case LEX_ASPARTAM.token_loadl : // 46
        regle1 () ;
      break ;
      case LEX_ASPARTAM.token_store : // 47
        regle1 () ;
      break ;
      case LEX_ASPARTAM.token_storei : // 48
        regle1 () ;
      break ;
      case LEX_ASPARTAM.token_call : // 49
        regle1 () ;
      break ;
      case LEX_ASPARTAM.token_calli : // 50
        regle1 () ;
      break ;
      case LEX_ASPARTAM.token_return : // 51
        regle1 () ;
      break ;
      case LEX_ASPARTAM.token_subr : // 52
        regle1 () ;
      break ;
      case LEX_ASPARTAM.token_ident : // 62
        regle1 () ;
      break ;
      case LEX_ASPARTAM.token_push : // 53
        regle1 () ;
      break ;
      case LEX_ASPARTAM.token_pop : // 54
        regle1 () ;
      break ;
      case LEX_ASPARTAM.token_jump : // 55
        regle1 () ;
      break ;
      case LEX_ASPARTAM.token_jumpi : // 56
        regle1 () ;
      break ;
      case LEX_ASPARTAM.token_jumpif : // 57
        regle1 () ;
      break ;
      case LEX_ASPARTAM.token_halt : // 58
        regle1 () ;
      break ;
      case LEX_ASPARTAM.EOF :
        regle2 () ;
      break ;
      default :
               scanner._interrompre(IProblem.Syntax, scanner.getBeginLine(), IASPARTAMMessages.id_ASPARTAM_unexpected_token,ASPARTAMMessages.ASPARTAM_unexpected_token,new String[]{scanner.fenetre[0].getNom()});
    }
  }
  }
