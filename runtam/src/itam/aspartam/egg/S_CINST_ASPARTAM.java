package itam.aspartam.egg;
import itam.aspartam.att_java.*;
import java.io.ByteArrayOutputStream;
import mg.egg.eggc.compiler.libjava.lex.*;
import mg.egg.eggc.compiler.libjava.*;
import mg.egg.eggc.compiler.libjava.problem.IProblem;
import java.util.Vector;
public class S_CINST_ASPARTAM {
LEX_ASPARTAM scanner;
  S_CINST_ASPARTAM() {
    }
  S_CINST_ASPARTAM(LEX_ASPARTAM scanner) {
    this.scanner = scanner;
    this.att_scanner = scanner;
    }
int [] sync= new int[0];
  int att_rval;
  BINAIRE att_code;
  TDS att_table;
  int att_dval;
  LEX_ASPARTAM att_scanner;
  private void regle24() throws Exception {

    //declaration
    T_ASPARTAM x_2 = new T_ASPARTAM(scanner ) ;
    //appel
    x_2.analyser(LEX_ASPARTAM.token_ident);
      action_ident_op_24(x_2);
  }
  private void regle23() throws Exception {

    //declaration
    T_ASPARTAM x_2 = new T_ASPARTAM(scanner ) ;
    T_ASPARTAM x_3 = new T_ASPARTAM(scanner ) ;
    T_ASPARTAM x_4 = new T_ASPARTAM(scanner ) ;
    T_ASPARTAM x_5 = new T_ASPARTAM(scanner ) ;
    //appel
    x_2.analyser(LEX_ASPARTAM.token_nb);
    x_3.analyser(LEX_ASPARTAM.token_cro);
    x_4.analyser(LEX_ASPARTAM.token_ident);
    x_5.analyser(LEX_ASPARTAM.token_crf);
      action_dr_op_23(x_2, x_4);
  }
private void action_dr_op_23(T_ASPARTAM x_2, T_ASPARTAM x_4) throws Exception {
try {
// locales
int loc_r;
// instructions
this.att_dval=this.att_table.to_integer(x_2.att_txt);
this.att_rval=this.att_table.ref_reg(x_4.att_txt);
}catch(RuntimeException e) {		//e.printStackTrace();
	}
  }
private void action_ident_op_24(T_ASPARTAM x_2) throws Exception {
try {
// locales
INFO loc_i;
ETIQUETTE loc_e;
int loc_adr;
// instructions
loc_e=null;
loc_i=this.att_table.chercherLocalement(x_2.att_txt.toLowerCase());
if (loc_i==null){
loc_e=this.att_table.declarerEtiquette(x_2.att_txt);
}
else if (loc_i.estEtiquette()==false){
att_scanner._interrompre(IProblem.Semantic, att_scanner.getBeginLine(), IASPARTAMMessages.id_L_ERR, ASPARTAMMessages.L_ERR,new Object[]{""+x_2.att_txt});

}
else {
loc_e=loc_i.getLabel();
}
loc_adr=this.att_code.get_adresse();
    loc_e.ajouter_ref(loc_adr);
this.att_rval=loc_e.get_reg();
this.att_dval=loc_e.get_dep();
}catch(RuntimeException e) {		//e.printStackTrace();
	}
  }
  public void analyser () throws Exception {
    scanner.lit ( 1 ) ;
    switch ( scanner.fenetre[0].code ) {
      case LEX_ASPARTAM.token_nb : // 61
        regle23 () ;
      break ;
      case LEX_ASPARTAM.token_ident : // 62
        regle24 () ;
      break ;
      default :
               scanner._interrompre(IProblem.Syntax, scanner.getBeginLine(), IASPARTAMMessages.id_ASPARTAM_unexpected_token,ASPARTAMMessages.ASPARTAM_unexpected_token,new String[]{scanner.fenetre[0].getNom()});
    }
  }
  }
