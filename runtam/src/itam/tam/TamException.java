package itam.tam;

public class TamException extends Exception {

	private static final long serialVersionUID = 1L;

	public TamException(String m) {
		super("Tam error : " + m);
	}
}
