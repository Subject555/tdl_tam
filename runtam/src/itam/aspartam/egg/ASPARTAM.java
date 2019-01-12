package itam.aspartam.egg;
import itam.aspartam.att_java.*;
import java.io.ByteArrayOutputStream;
import mg.egg.eggc.compiler.libjava.EGGException;
import mg.egg.eggc.compiler.libjava.ISourceUnit;
import mg.egg.eggc.compiler.libjava.lex.LEX_CONTEXTE;
import mg.egg.eggc.compiler.libjava.problem.IProblemReporter;
import mg.egg.eggc.compiler.libjava.problem.IProblem;
import mg.egg.eggc.compiler.libjava.problem.ProblemSeverities;
import mg.egg.eggc.compiler.libjava.messages.NLS;
public class ASPARTAM {
  LEX_ASPARTAM scanner;
  protected IProblemReporter problemReporter;
    private S_PROG_ASPARTAM axiome ;
    public  S_PROG_ASPARTAM getAxiom(){return axiome;}
  public ASPARTAM(IProblemReporter pr){
	   this.problemReporter = pr;
  }
  public void compile(ISourceUnit cu) throws Exception {
    try{
      LEX_CONTEXTE contexte;
      contexte = new LEX_CONTEXTE(cu);
      scanner = new LEX_ASPARTAM(problemReporter, contexte, 2);
      scanner.analyseur.fromContext(contexte);
      att_scanner = scanner;
      axiome = new S_PROG_ASPARTAM(scanner);
      axiome.att_scanner = this.att_scanner ;
      axiome.analyser() ;
      this.att_output = axiome.att_output ;
      scanner.accepter_fds() ;
    }catch (EGGException e){
      problemReporter.handle(e.getCategory(), e.getCode(),0, NLS.bind(e.getId(),e.getArgs()),ProblemSeverities.Error,0,0,e.getArgs());
    }
    }
  ByteArrayOutputStream att_output;
  public void set_output(ByteArrayOutputStream a_output){
    att_output = a_output;
  }
  public ByteArrayOutputStream get_output(){
    return att_output;
  }
  LEX_ASPARTAM att_scanner;
  public void set_scanner(LEX_ASPARTAM a_scanner){
    att_scanner = a_scanner;
  }
  public LEX_ASPARTAM get_scanner(){
    return att_scanner;
  }
  }
