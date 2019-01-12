package itam.aspartam.egg;
import itam.aspartam.att_java.*;
import java.io.ByteArrayOutputStream;
import mg.egg.eggc.compiler.libjava.lex.*;
import mg.egg.eggc.compiler.libjava.*;
import mg.egg.eggc.compiler.libjava.problem.IProblem;
import java.util.Vector;
public class S_PROG_ASPARTAM {
LEX_ASPARTAM scanner;
  S_PROG_ASPARTAM() {
    }
  S_PROG_ASPARTAM(LEX_ASPARTAM scanner) {
    this.scanner = scanner;
    this.att_scanner = scanner;
    }
int [] sync= new int[0];
  ByteArrayOutputStream att_output;
  LEX_ASPARTAM att_scanner;
  BINAIRE glob_0_c;
  TDS glob_0_t;
  private void regle0() throws Exception {

    //declaration
    S_INSTS_ASPARTAM x_3 = new S_INSTS_ASPARTAM(scanner) ;
    //appel
      action_init_0(x_3);
    x_3.analyser() ;
      action_gen_0(x_3);
  }
private void action_gen_0(S_INSTS_ASPARTAM x_3) throws Exception {
try {
// locales
// instructions
this.att_output=glob_0_c.sauver(glob_0_t);
}catch(RuntimeException e) {		//e.printStackTrace();
	}
  }
private void action_init_0(S_INSTS_ASPARTAM x_3) throws Exception {
try {
// locales
// instructions
glob_0_t= new TDS();
x_3.att_table=glob_0_t;
glob_0_c= new BINAIRE(5000);
x_3.att_code=glob_0_c;
}catch(RuntimeException e) {		//e.printStackTrace();
	}
  }
  public void analyser () throws Exception {
    scanner.lit ( 1 ) ;
    switch ( scanner.fenetre[0].code ) {
      case LEX_ASPARTAM.token_load : // 43
        regle0 () ;
      break ;
      case LEX_ASPARTAM.token_loada : // 44
        regle0 () ;
      break ;
      case LEX_ASPARTAM.token_loadi : // 45
        regle0 () ;
      break ;
      case LEX_ASPARTAM.token_loadl : // 46
        regle0 () ;
      break ;
      case LEX_ASPARTAM.token_store : // 47
        regle0 () ;
      break ;
      case LEX_ASPARTAM.token_storei : // 48
        regle0 () ;
      break ;
      case LEX_ASPARTAM.token_call : // 49
        regle0 () ;
      break ;
      case LEX_ASPARTAM.token_calli : // 50
        regle0 () ;
      break ;
      case LEX_ASPARTAM.token_return : // 51
        regle0 () ;
      break ;
      case LEX_ASPARTAM.token_subr : // 52
        regle0 () ;
      break ;
      case LEX_ASPARTAM.token_ident : // 62
        regle0 () ;
      break ;
      case LEX_ASPARTAM.token_push : // 53
        regle0 () ;
      break ;
      case LEX_ASPARTAM.token_pop : // 54
        regle0 () ;
      break ;
      case LEX_ASPARTAM.token_jump : // 55
        regle0 () ;
      break ;
      case LEX_ASPARTAM.token_jumpi : // 56
        regle0 () ;
      break ;
      case LEX_ASPARTAM.token_jumpif : // 57
        regle0 () ;
      break ;
      case LEX_ASPARTAM.token_halt : // 58
        regle0 () ;
      break ;
      case LEX_ASPARTAM.EOF :
        regle0 () ;
      break ;
      default :
               scanner._interrompre(IProblem.Syntax, scanner.getBeginLine(), IASPARTAMMessages.id_ASPARTAM_unexpected_token,ASPARTAMMessages.ASPARTAM_unexpected_token,new String[]{scanner.fenetre[0].getNom()});
    }
  }
  }
