package itam.aspartam.att_java;

/**
 * cette classe (un peu 'sac') d&eacute;crit les diff&eacute;rentes informations
 * s&eacute;mantiques que l'on d&eacute;sire associer aux diff&eacute;rents
 * identificateurs (diff&eacute;rencies par le champ 'sorte'
 */
public class INFO {
	/**
	 * Le type d'information.
	 * <UL>
	 * <LI>0 : &eacute;tiquette locale
	 * <LI>1 : nom de subr
	 * <LI>2 : nom de registre
	 * <LI>3 : nom de variable cha&icirc;ne
	 */
	final static int REG = 0;

	final static int LAB = 1;

	final static int STR = 2;

	final static int SUB = 3;

	private int sorte;

	private ETIQUETTE label;

	private int val;

	private String str;

	public int getVal() {
		return val;
	}

	public int getSorte() {
		return sorte;
	}

	public String getStr() {
		return str;
	}

	public ETIQUETTE getLabel() {
		return label;
	}

	public INFO(int s) {
		sorte = s;
		label = new ETIQUETTE();
		val = -1;
		str = null;

	}

	public INFO(int s, int v) {
		sorte = s;
		val = v;
		str = null;
		label = null;
	}

	// public INFO(int s, String n, int v) {
	// sorte = s;
	// val = v;
	// str = analyser(n);
	// label = null;
	// }

	public String toString() {
		StringBuffer res = new StringBuffer(40);
		switch (sorte) {
		case LAB:
			res.append(";locale : " + "= " + label);
			break;
		case SUB:
			res.append(";subr : " + ", " + val);
			break;
		case REG:
			res.append(";registre : " + ", " + val);
			break;
		case STR:
			res.append(";chaine : " + ", " + val);
			break;
		default:
			System.err.println("INFO inconnue !");
			break;
		}
		return res.toString();
	}

	public boolean estEtiquette() {
		return sorte == LAB;
	}
}
