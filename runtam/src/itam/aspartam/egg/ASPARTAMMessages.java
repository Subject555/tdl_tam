package itam.aspartam.egg;
import java.util.ResourceBundle;
import mg.egg.eggc.compiler.libjava.messages.NLS;
public class ASPARTAMMessages extends NLS {
  private static final long serialVersionUID = 1L;
  private static final String BUNDLE_NAME = "itam.aspartam.properties.ASPARTAMMessages";
  private ASPARTAMMessages() {
  // Do not instantiate
  }
  static {
  NLS.initializeMessages(BUNDLE_NAME, itam.aspartam.egg.ASPARTAMMessages.class);
  }
  private static final ResourceBundle RESOURCE_BUNDLE = ResourceBundle.getBundle(BUNDLE_NAME);
  public static ResourceBundle getResourceBundle() {
  return RESOURCE_BUNDLE;
  }		

  public static  String ASPARTAM_expected_token;
  public static  String ASPARTAM_unexpected_token;
  public static  String ASPARTAM_expected_eof;
  public static  String R_INC;
  public static  String S_INC;
  public static  String L_ERR;
  }
