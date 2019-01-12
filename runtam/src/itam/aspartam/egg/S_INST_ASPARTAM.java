package itam.aspartam.egg;
import itam.aspartam.att_java.*;
import java.io.ByteArrayOutputStream;
import mg.egg.eggc.compiler.libjava.lex.*;
import mg.egg.eggc.compiler.libjava.*;
import mg.egg.eggc.compiler.libjava.problem.IProblem;
import java.util.Vector;
public class S_INST_ASPARTAM {
LEX_ASPARTAM scanner;
  S_INST_ASPARTAM() {
    }
  S_INST_ASPARTAM(LEX_ASPARTAM scanner) {
    this.scanner = scanner;
    this.att_scanner = scanner;
    }
int [] sync= new int[0];
  BINAIRE att_code;
  TDS att_table;
  LEX_ASPARTAM att_scanner;
  private void regle12() throws Exception {

    //declaration
    T_ASPARTAM x_2 = new T_ASPARTAM(scanner ) ;
    T_ASPARTAM x_3 = new T_ASPARTAM(scanner ) ;
    T_ASPARTAM x_4 = new T_ASPARTAM(scanner ) ;
    T_ASPARTAM x_5 = new T_ASPARTAM(scanner ) ;
    S_CINST_ASPARTAM x_6 = new S_CINST_ASPARTAM(scanner) ;
    //appel
      action_auto_inh_12(x_4, x_6);
    x_2.analyser(LEX_ASPARTAM.token_call);
    x_3.analyser(LEX_ASPARTAM.token_paro);
    x_4.analyser(LEX_ASPARTAM.token_ident);
    x_5.analyser(LEX_ASPARTAM.token_parf);
    x_6.analyser() ;
      action_call_op_12(x_4, x_6);
  }
  private void regle11() throws Exception {

    //declaration
    T_ASPARTAM x_2 = new T_ASPARTAM(scanner ) ;
    T_ASPARTAM x_3 = new T_ASPARTAM(scanner ) ;
    T_ASPARTAM x_4 = new T_ASPARTAM(scanner ) ;
    T_ASPARTAM x_5 = new T_ASPARTAM(scanner ) ;
    //appel
    x_2.analyser(LEX_ASPARTAM.token_storei);
    x_3.analyser(LEX_ASPARTAM.token_paro);
    x_4.analyser(LEX_ASPARTAM.token_nb);
    x_5.analyser(LEX_ASPARTAM.token_parf);
      action_storei_op_11(x_4);
  }
  private void regle10() throws Exception {

    //declaration
    T_ASPARTAM x_2 = new T_ASPARTAM(scanner ) ;
    T_ASPARTAM x_3 = new T_ASPARTAM(scanner ) ;
    T_ASPARTAM x_4 = new T_ASPARTAM(scanner ) ;
    T_ASPARTAM x_5 = new T_ASPARTAM(scanner ) ;
    T_ASPARTAM x_6 = new T_ASPARTAM(scanner ) ;
    T_ASPARTAM x_7 = new T_ASPARTAM(scanner ) ;
    T_ASPARTAM x_8 = new T_ASPARTAM(scanner ) ;
    T_ASPARTAM x_9 = new T_ASPARTAM(scanner ) ;
    //appel
    x_2.analyser(LEX_ASPARTAM.token_store);
    x_3.analyser(LEX_ASPARTAM.token_paro);
    x_4.analyser(LEX_ASPARTAM.token_nb);
    x_5.analyser(LEX_ASPARTAM.token_parf);
    x_6.analyser(LEX_ASPARTAM.token_nb);
    x_7.analyser(LEX_ASPARTAM.token_cro);
    x_8.analyser(LEX_ASPARTAM.token_ident);
    x_9.analyser(LEX_ASPARTAM.token_crf);
      action_store_op_10(x_4, x_6, x_8);
  }
  private void regle19() throws Exception {

    //declaration
    T_ASPARTAM x_2 = new T_ASPARTAM(scanner ) ;
    S_CINST_ASPARTAM x_3 = new S_CINST_ASPARTAM(scanner) ;
    //appel
      action_auto_inh_19(x_3);
    x_2.analyser(LEX_ASPARTAM.token_jump);
    x_3.analyser() ;
      action_jump_op_19(x_3);
  }
  private void regle18() throws Exception {

    //declaration
    T_ASPARTAM x_2 = new T_ASPARTAM(scanner ) ;
    T_ASPARTAM x_3 = new T_ASPARTAM(scanner ) ;
    T_ASPARTAM x_4 = new T_ASPARTAM(scanner ) ;
    T_ASPARTAM x_5 = new T_ASPARTAM(scanner ) ;
    T_ASPARTAM x_6 = new T_ASPARTAM(scanner ) ;
    //appel
    x_2.analyser(LEX_ASPARTAM.token_pop);
    x_3.analyser(LEX_ASPARTAM.token_paro);
    x_4.analyser(LEX_ASPARTAM.token_nb);
    x_5.analyser(LEX_ASPARTAM.token_parf);
    x_6.analyser(LEX_ASPARTAM.token_nb);
      action_pop_op_18(x_4, x_6);
  }
  private void regle17() throws Exception {

    //declaration
    T_ASPARTAM x_2 = new T_ASPARTAM(scanner ) ;
    T_ASPARTAM x_3 = new T_ASPARTAM(scanner ) ;
    //appel
    x_2.analyser(LEX_ASPARTAM.token_push);
    x_3.analyser(LEX_ASPARTAM.token_nb);
      action_push_op_17(x_3);
  }
  private void regle5() throws Exception {

    //declaration
    T_ASPARTAM x_2 = new T_ASPARTAM(scanner ) ;
    T_ASPARTAM x_3 = new T_ASPARTAM(scanner ) ;
    T_ASPARTAM x_4 = new T_ASPARTAM(scanner ) ;
    T_ASPARTAM x_5 = new T_ASPARTAM(scanner ) ;
    //appel
    x_2.analyser(LEX_ASPARTAM.token_loadi);
    x_3.analyser(LEX_ASPARTAM.token_paro);
    x_4.analyser(LEX_ASPARTAM.token_nb);
    x_5.analyser(LEX_ASPARTAM.token_parf);
      action_loadi_op_5(x_4);
  }
  private void regle16() throws Exception {

    //declaration
    T_ASPARTAM x_2 = new T_ASPARTAM(scanner ) ;
    //appel
    x_2.analyser(LEX_ASPARTAM.token_ident);
      action_label_op_16(x_2);
  }
  private void regle4() throws Exception {

    //declaration
    T_ASPARTAM x_2 = new T_ASPARTAM(scanner ) ;
    S_CINST_ASPARTAM x_3 = new S_CINST_ASPARTAM(scanner) ;
    //appel
      action_auto_inh_4(x_3);
    x_2.analyser(LEX_ASPARTAM.token_loada);
    x_3.analyser() ;
      action_loada_op_4(x_3);
  }
  private void regle15() throws Exception {

    //declaration
    T_ASPARTAM x_2 = new T_ASPARTAM(scanner ) ;
    T_ASPARTAM x_3 = new T_ASPARTAM(scanner ) ;
    //appel
    x_2.analyser(LEX_ASPARTAM.token_subr);
    x_3.analyser(LEX_ASPARTAM.token_ident);
      action_subr_op_15(x_3);
  }
  private void regle3() throws Exception {

    //declaration
    T_ASPARTAM x_2 = new T_ASPARTAM(scanner ) ;
    T_ASPARTAM x_3 = new T_ASPARTAM(scanner ) ;
    T_ASPARTAM x_4 = new T_ASPARTAM(scanner ) ;
    T_ASPARTAM x_5 = new T_ASPARTAM(scanner ) ;
    T_ASPARTAM x_6 = new T_ASPARTAM(scanner ) ;
    T_ASPARTAM x_7 = new T_ASPARTAM(scanner ) ;
    T_ASPARTAM x_8 = new T_ASPARTAM(scanner ) ;
    T_ASPARTAM x_9 = new T_ASPARTAM(scanner ) ;
    //appel
    x_2.analyser(LEX_ASPARTAM.token_load);
    x_3.analyser(LEX_ASPARTAM.token_paro);
    x_4.analyser(LEX_ASPARTAM.token_nb);
    x_5.analyser(LEX_ASPARTAM.token_parf);
    x_6.analyser(LEX_ASPARTAM.token_nb);
    x_7.analyser(LEX_ASPARTAM.token_cro);
    x_8.analyser(LEX_ASPARTAM.token_ident);
    x_9.analyser(LEX_ASPARTAM.token_crf);
      action_load_op_3(x_4, x_6, x_8);
  }
  private void regle14() throws Exception {

    //declaration
    T_ASPARTAM x_2 = new T_ASPARTAM(scanner ) ;
    T_ASPARTAM x_3 = new T_ASPARTAM(scanner ) ;
    T_ASPARTAM x_4 = new T_ASPARTAM(scanner ) ;
    T_ASPARTAM x_5 = new T_ASPARTAM(scanner ) ;
    T_ASPARTAM x_6 = new T_ASPARTAM(scanner ) ;
    //appel
    x_2.analyser(LEX_ASPARTAM.token_return);
    x_3.analyser(LEX_ASPARTAM.token_paro);
    x_4.analyser(LEX_ASPARTAM.token_nb);
    x_5.analyser(LEX_ASPARTAM.token_parf);
    x_6.analyser(LEX_ASPARTAM.token_nb);
      action_return_op_14(x_4, x_6);
  }
  private void regle13() throws Exception {

    //declaration
    T_ASPARTAM x_2 = new T_ASPARTAM(scanner ) ;
    //appel
    x_2.analyser(LEX_ASPARTAM.token_calli);
      action_calli_op_13();
  }
  private void regle6() throws Exception {

    //declaration
    T_ASPARTAM x_2 = new T_ASPARTAM(scanner ) ;
    S_CSTE_ASPARTAM x_3 = new S_CSTE_ASPARTAM(scanner) ;
    //appel
      action_auto_inh_6(x_3);
    x_2.analyser(LEX_ASPARTAM.token_loadl);
    x_3.analyser() ;
      action_loadl_op_6(x_3);
  }
  private void regle22() throws Exception {

    //declaration
    T_ASPARTAM x_2 = new T_ASPARTAM(scanner ) ;
    //appel
    x_2.analyser(LEX_ASPARTAM.token_halt);
      action_halt_op_22();
  }
  private void regle20() throws Exception {

    //declaration
    T_ASPARTAM x_2 = new T_ASPARTAM(scanner ) ;
    //appel
    x_2.analyser(LEX_ASPARTAM.token_jumpi);
      action_jumpi_op_20();
  }
  private void regle21() throws Exception {

    //declaration
    T_ASPARTAM x_2 = new T_ASPARTAM(scanner ) ;
    T_ASPARTAM x_3 = new T_ASPARTAM(scanner ) ;
    T_ASPARTAM x_4 = new T_ASPARTAM(scanner ) ;
    T_ASPARTAM x_5 = new T_ASPARTAM(scanner ) ;
    S_CINST_ASPARTAM x_6 = new S_CINST_ASPARTAM(scanner) ;
    //appel
      action_auto_inh_21(x_4, x_6);
    x_2.analyser(LEX_ASPARTAM.token_jumpif);
    x_3.analyser(LEX_ASPARTAM.token_paro);
    x_4.analyser(LEX_ASPARTAM.token_nb);
    x_5.analyser(LEX_ASPARTAM.token_parf);
    x_6.analyser() ;
      action_jumpif_op_21(x_4, x_6);
  }
private void action_auto_inh_6(S_CSTE_ASPARTAM x_3) throws Exception {
try {
// instructions
x_3.att_table=this.att_table;
}catch(RuntimeException e) {		//e.printStackTrace();
	}
  }
private void action_push_op_17(T_ASPARTAM x_3) throws Exception {
try {
// locales
// instructions
    this.att_code.ajouter(10, 0, 0, this.att_table.to_integer(x_3.att_txt));
}catch(RuntimeException e) {		//e.printStackTrace();
	}
  }
private void action_load_op_3(T_ASPARTAM x_4, T_ASPARTAM x_6, T_ASPARTAM x_8) throws Exception {
try {
// locales
int loc_reg;
// instructions
loc_reg=this.att_table.ref_reg(x_8.att_txt);
if (loc_reg==-1){
att_scanner._interrompre(IProblem.Semantic, att_scanner.getBeginLine(), IASPARTAMMessages.id_R_INC, ASPARTAMMessages.R_INC,new Object[]{""+x_8.att_txt});

}
else {
    this.att_code.ajouter(0, loc_reg, this.att_table.to_integer(x_4.att_txt), this.att_table.to_integer(x_6.att_txt));
}
}catch(RuntimeException e) {		//e.printStackTrace();
	}
  }
private void action_auto_inh_4(S_CINST_ASPARTAM x_3) throws Exception {
try {
// instructions
x_3.att_table=this.att_table;
x_3.att_code=this.att_code;
}catch(RuntimeException e) {		//e.printStackTrace();
	}
  }
private void action_call_op_12(T_ASPARTAM x_4, S_CINST_ASPARTAM x_6) throws Exception {
try {
// locales
int loc_reg;
// instructions
loc_reg=this.att_table.ref_reg(x_4.att_txt);
if (loc_reg==-1){
att_scanner._interrompre(IProblem.Semantic, att_scanner.getBeginLine(), IASPARTAMMessages.id_R_INC, ASPARTAMMessages.R_INC,new Object[]{""+x_4.att_txt});

}
else {
    this.att_code.ajouter(6, x_6.att_rval, loc_reg, x_6.att_dval);
}
}catch(RuntimeException e) {		//e.printStackTrace();
	}
  }
private void action_storei_op_11(T_ASPARTAM x_4) throws Exception {
try {
// locales
// instructions
    this.att_code.ajouter(5, 0, this.att_table.to_integer(x_4.att_txt), 0);
}catch(RuntimeException e) {		//e.printStackTrace();
	}
  }
private void action_auto_inh_19(S_CINST_ASPARTAM x_3) throws Exception {
try {
// instructions
x_3.att_table=this.att_table;
x_3.att_code=this.att_code;
}catch(RuntimeException e) {		//e.printStackTrace();
	}
  }
private void action_subr_op_15(T_ASPARTAM x_3) throws Exception {
try {
// locales
int loc_s;
// instructions
loc_s=this.att_table.ref_subr(x_3.att_txt);
if (loc_s==-1){
att_scanner._interrompre(IProblem.Semantic, att_scanner.getBeginLine(), IASPARTAMMessages.id_S_INC, ASPARTAMMessages.S_INC,new Object[]{""+x_3.att_txt});

}
else {
    this.att_code.ajouter(9, 0, 0, loc_s);
}
}catch(RuntimeException e) {		//e.printStackTrace();
	}
  }
private void action_jumpif_op_21(T_ASPARTAM x_4, S_CINST_ASPARTAM x_6) throws Exception {
try {
// locales
// instructions
    this.att_code.ajouter(14, x_6.att_rval, this.att_table.to_integer(x_4.att_txt), x_6.att_dval);
}catch(RuntimeException e) {		//e.printStackTrace();
	}
  }
private void action_label_op_16(T_ASPARTAM x_2) throws Exception {
try {
// locales
INFO loc_i;
ETIQUETTE loc_e;
int loc_adr;
// instructions
loc_e=null;
loc_adr=this.att_code.get_adresse();
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
    loc_e.maj_dep(loc_adr);
    this.att_code.maj_refs(loc_e);
}catch(RuntimeException e) {		//e.printStackTrace();
	}
  }
private void action_calli_op_13() throws Exception {
try {
// locales
// instructions
    this.att_code.ajouter(7, 0, 0, 0);
}catch(RuntimeException e) {		//e.printStackTrace();
	}
  }
private void action_return_op_14(T_ASPARTAM x_4, T_ASPARTAM x_6) throws Exception {
try {
// locales
// instructions
    this.att_code.ajouter(8, 0, this.att_table.to_integer(x_4.att_txt), this.att_table.to_integer(x_6.att_txt));
}catch(RuntimeException e) {		//e.printStackTrace();
	}
  }
private void action_pop_op_18(T_ASPARTAM x_4, T_ASPARTAM x_6) throws Exception {
try {
// locales
// instructions
    this.att_code.ajouter(11, 0, this.att_table.to_integer(x_4.att_txt), this.att_table.to_integer(x_6.att_txt));
}catch(RuntimeException e) {		//e.printStackTrace();
	}
  }
private void action_loadi_op_5(T_ASPARTAM x_4) throws Exception {
try {
// locales
// instructions
    this.att_code.ajouter(2, 0, this.att_table.to_integer(x_4.att_txt), 0);
}catch(RuntimeException e) {		//e.printStackTrace();
	}
  }
private void action_jump_op_19(S_CINST_ASPARTAM x_3) throws Exception {
try {
// locales
// instructions
    this.att_code.ajouter(12, x_3.att_rval, 0, x_3.att_dval);
}catch(RuntimeException e) {		//e.printStackTrace();
	}
  }
private void action_auto_inh_21(T_ASPARTAM x_4, S_CINST_ASPARTAM x_6) throws Exception {
try {
// instructions
x_6.att_table=this.att_table;
x_6.att_code=this.att_code;
}catch(RuntimeException e) {		//e.printStackTrace();
	}
  }
private void action_halt_op_22() throws Exception {
try {
// locales
// instructions
    this.att_code.ajouter(15, 0, 0, 0);
}catch(RuntimeException e) {		//e.printStackTrace();
	}
  }
private void action_store_op_10(T_ASPARTAM x_4, T_ASPARTAM x_6, T_ASPARTAM x_8) throws Exception {
try {
// locales
int loc_reg;
// instructions
loc_reg=this.att_table.ref_reg(x_8.att_txt);
if (loc_reg==-1){
att_scanner._interrompre(IProblem.Semantic, att_scanner.getBeginLine(), IASPARTAMMessages.id_R_INC, ASPARTAMMessages.R_INC,new Object[]{""+x_8.att_txt});

}
else {
    this.att_code.ajouter(4, loc_reg, this.att_table.to_integer(x_4.att_txt), this.att_table.to_integer(x_6.att_txt));
}
}catch(RuntimeException e) {		//e.printStackTrace();
	}
  }
private void action_jumpi_op_20() throws Exception {
try {
// locales
// instructions
    this.att_code.ajouter(13, 0, 0, 0);
}catch(RuntimeException e) {		//e.printStackTrace();
	}
  }
private void action_auto_inh_12(T_ASPARTAM x_4, S_CINST_ASPARTAM x_6) throws Exception {
try {
// instructions
x_6.att_table=this.att_table;
x_6.att_code=this.att_code;
}catch(RuntimeException e) {		//e.printStackTrace();
	}
  }
private void action_loada_op_4(S_CINST_ASPARTAM x_3) throws Exception {
try {
// locales
// instructions
    this.att_code.ajouter(1, x_3.att_rval, 0, x_3.att_dval);
}catch(RuntimeException e) {		//e.printStackTrace();
	}
  }
private void action_loadl_op_6(S_CSTE_ASPARTAM x_3) throws Exception {
try {
// locales
// instructions
    this.att_code.ajouter(3, x_3.att_sorte, 0, x_3.att_val);
}catch(RuntimeException e) {		//e.printStackTrace();
	}
  }
  public void analyser () throws Exception {
    scanner.lit ( 1 ) ;
    switch ( scanner.fenetre[0].code ) {
      case LEX_ASPARTAM.token_load : // 43
        regle3 () ;
      break ;
      case LEX_ASPARTAM.token_loada : // 44
        regle4 () ;
      break ;
      case LEX_ASPARTAM.token_loadi : // 45
        regle5 () ;
      break ;
      case LEX_ASPARTAM.token_loadl : // 46
        regle6 () ;
      break ;
      case LEX_ASPARTAM.token_store : // 47
        regle10 () ;
      break ;
      case LEX_ASPARTAM.token_storei : // 48
        regle11 () ;
      break ;
      case LEX_ASPARTAM.token_call : // 49
        regle12 () ;
      break ;
      case LEX_ASPARTAM.token_calli : // 50
        regle13 () ;
      break ;
      case LEX_ASPARTAM.token_return : // 51
        regle14 () ;
      break ;
      case LEX_ASPARTAM.token_subr : // 52
        regle15 () ;
      break ;
      case LEX_ASPARTAM.token_ident : // 62
        regle16 () ;
      break ;
      case LEX_ASPARTAM.token_push : // 53
        regle17 () ;
      break ;
      case LEX_ASPARTAM.token_pop : // 54
        regle18 () ;
      break ;
      case LEX_ASPARTAM.token_jump : // 55
        regle19 () ;
      break ;
      case LEX_ASPARTAM.token_jumpi : // 56
        regle20 () ;
      break ;
      case LEX_ASPARTAM.token_jumpif : // 57
        regle21 () ;
      break ;
      case LEX_ASPARTAM.token_halt : // 58
        regle22 () ;
      break ;
      default :
               scanner._interrompre(IProblem.Syntax, scanner.getBeginLine(), IASPARTAMMessages.id_ASPARTAM_unexpected_token,ASPARTAMMessages.ASPARTAM_unexpected_token,new String[]{scanner.fenetre[0].getNom()});
    }
  }
  }
