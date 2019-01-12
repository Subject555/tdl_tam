package itam.aspartam.egg;
import java.util.Arrays;
import mg.egg.eggc.compiler.libjava.EGGException;
import mg.egg.eggc.compiler.libjava.messages.NLS;
import mg.egg.eggc.compiler.libjava.lex.LEXICAL4;
import mg.egg.eggc.compiler.libjava.lex.LEX_CONTEXTE;
import mg.egg.eggc.compiler.libjava.problem.IProblemReporter;
import mg.egg.eggc.compiler.libjava.problem.IProblem;
import mg.egg.eggc.compiler.libjava.problem.ProblemSeverities;
import itam.aspartam.att_java.*;
import java.io.ByteArrayOutputStream;
public class LEX_ASPARTAM extends LEXICAL4  {
 public static final int EOF = 0 ;
 public static final int token_jumpi = 1 ;
 public static final int token_chaine = 2 ;
 public static final int token_separateur = 3 ;
 public static final int token_cro = 4 ;
 public static final int token_jump = 5 ;
 public static final int token_store = 6 ;
 public static final int token_push = 7 ;
 public static final int token_nb = 8 ;
 public static final int token_car = 9 ;
 public static final int token_pop = 10 ;
 public static final int token_load = 11 ;
 public static final int token_crf = 12 ;
 public static final int token_halt = 13 ;
 public static final int token_storei = 14 ;
 public static final int token_ident = 15 ;
 public static final int token_loadl = 16 ;
 public static final int token_loadi = 17 ;
 public static final int token_subr = 18 ;
 public static final int token_return = 19 ;
 public static final int token_paro = 20 ;
 public static final int token_calli = 21 ;
 public static final int token_loada = 22 ;
 public static final int token_call = 23 ;
 public static final int token_moins = 24 ;
 public static final int token_jumpif = 25 ;
 public static final int token_comm = 26 ;
 public static final int token_parf = 27 ;
  static final int token_autre = 28 ;
  public static final String[][] tokenImages = {
    {"<EOF>"} ,{"jumpi"},
    {"chaine"} ,
    {"separateur"} ,
{"cro"},
{"jump"},
{"store"},
{"push"},
    {"nb"} ,
    {"car"} ,
{"pop"},
{"load"},
{"crf"},
{"halt"},
{"storei"},
    {"ident"} ,
{"loadl"},
{"loadi"},
{"subr"},
{"return"},
{"paro"},
{"calli"},
{"loada"},
{"call"},
{"moins"},
{"jumpif"},
    {"comm"} ,
{"parf"},
  } ;
  private int [] separateurs = { 
token_separateur
, token_comm
    } ;
  public int[] getSeparateurs(){
    return separateurs;
    }
  private int [] comments = { 
    } ;
  public int[] getComments(){
    return comments;
    }
  private int le_comment = -1;
  public int getComment(){
    return le_comment;
    }
  public LEX_ASPARTAM(IProblemReporter pr, LEX_CONTEXTE lc, int k) {
    super(pr, lc,k);
    dernier_accepte = 0 ;
    analyseur = new JLEX_ASPARTAM();
  }
  public void setSource ( LEXICAL4 scanner) throws EGGException{
    scanner.analyseur.toContext(scanner.contexte);
    analyseur.fromContext(scanner.contexte);
  }
  public void setReader ( LEXICAL4 scanner) {
    scanner.analyseur.setReader(scanner.contexte.source);
  }
  public void accepter_sucre ( int t ) throws EGGException {
    if ( fenetre[0].code == t ) {
      dernier_accepte = fenetre[0].ligne ;
      recovery = false;
      decaler () ;
    }else {
      _interrompre(IProblem.Syntax,getBeginLine(), IASPARTAMMessages.id_ASPARTAM_expected_token, ASPARTAMMessages.ASPARTAM_expected_token,new Object[]{fenetre[0].getNom(), Arrays.asList(tokenImages[t])});
    }
  }
  public void accepter_fds() throws EGGException {
    lit ( 1 ) ;
    if ( fenetre[0].code != EOF ) {
      _interrompre(IProblem.Syntax,getBeginLine(), IASPARTAMMessages.id_ASPARTAM_expected_token, ASPARTAMMessages.ASPARTAM_expected_eof, new Object[]{fenetre[0].getNom()});
      }
     else {
      dernier_accepte = fenetre[0].ligne ;
      }
    }
  public int ligneDepart () {
    return getBeginLine() + getEndLine() ;
    }
  public void _interrompre (int cat,  int line, int id,  String c , Object [] m )  {
      //recovery = true;
      recovery = false;
      contexte.errors++;
        problemReporter.handle(cat, id,line  , NLS.bind(c,m), getOffset(), getOffset() + getLength() - 1,ProblemSeverities.Error,m);
    }
    public void _signaler ( int cat, int line, int id, String c , Object [] m )  {
        problemReporter.handle(cat , id, line  , NLS.bind(c,m),getOffset(), getOffset() + getLength() - 1,ProblemSeverities.Warning,m);
    }
  }
