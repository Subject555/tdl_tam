package itam.aspartam.att_java;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.Vector;

public class TDS extends HashMap<String, INFO> {
	private int nbloc;

	public int getNbloc() {
		return nbloc;
	}

	private Vector<String> strings;

	public Vector<String> getStrings() {
		return strings;
	}

	private static final long serialVersionUID = 1L;

	private TDS parente;

	public TDS() {
		this(null);

	}

	private String nom;

	public String xgetNom() {
		return nom;
	}

	private int arch;

	public int getArch() {
		return arch;
	}

	public TDS(TDS p) {
		super();
		parente = p;
		nbloc = 0;
		strings = new Vector<String>();
		declarer_regs();
		declarer_subrs();
	}

	public INFO chercherLocalement(String n) {
		return get(n);
	}

	public INFO chercherGlobalement(String n) {
		INFO i = chercherLocalement(n);
		if (i == null)
			if (parente != null)
				return parente.chercherGlobalement(n);
		return i;
	}

	public void inserer(String n, INFO i) {
		put(n, i);
	}

	public String toString() {
		StringBuffer sb = new StringBuffer();
		Set s = entrySet();
		Iterator it = s.iterator();
		while (it.hasNext()) {
			Map.Entry e = (Map.Entry) it.next();
			sb.append(e.getKey() + " : " + e.getValue() + '\n');
		}
		return sb.toString();
	}

	private final static String regs[] = { "cb", "ct", "pb", "pt", "sb", "st",
			"hb", "ht", "lb", "l1", "l2", "l3", "l4", "l5", "l6", "cp" };

	public void declarer_regs() {
		int nr = 0;
		for (String r : regs) {
			inserer(r, new INFO(INFO.REG, nr++));
		}
	}

	private final static String subrs[] = { "bneg", "bor", "band", "bout",
			"bin", "b2c", "b2i", "b2S", "cout", "cin", "c2b", "c2i", "c2S",
			"ineg", "iadd", "isub", "imul", "idiv", "imod", "ieq", "ineq",
			"ilss", "ileq", "igtr", "igeq", "iout", "iin", "i2b", "i2c", "i2s",
			"mvoid", "malloc", "mfree", "mcompare", "mcopy", "salloc", "scopy",
			"sconcat", "sout", "sin", "s2b", "s2c", "s2i" };

	public void declarer_subrs() {
		int ns = 0;
		for (String s : subrs) {
			inserer(s, new INFO(INFO.SUB, ns++));
		}

	}

	public int to_integer(String i) {
		int res;
		try {
			res = Integer.parseInt(i);
			return res;
		} catch (NumberFormatException e) {
			System.err.println(e.getMessage());
			return 0;
		}
	}

	public int to_char(String c) {
		return (int) (analyser(c)).charAt(1);
	}

	public int ref_reg(String aux) {
		int res = -1;
		INFO inf;
		inf = chercherLocalement(aux.toLowerCase());
		if (inf != null) {
			// System.err.println(regs[inf.getVal()]);
			res = inf.getVal();
		}
		return res;
	}

	public int ref_subr(String aux) {
		int res = -1;
		INFO inf;
		inf = chercherLocalement(aux.toLowerCase());
		if (inf != null) {
			// System.err.println(subrs[inf.getVal()]);
			res = inf.getVal();
		}

		return res;
	}

	public ETIQUETTE declarerEtiquette(String aux) {
		// System.err.println("Decl Etiq " + aux );
		ETIQUETTE res;
		INFO inf;
		String n;
		n = aux.toLowerCase();
		inf = new INFO(INFO.LAB);
		inserer(n, inf);
		nbloc++;
		res = inf.getLabel();
		return res;
	}

	protected String analyser(String s) {
		StringBuffer res = new StringBuffer(40);
		int i;
		char c, aux;
		// System.err.println(s);
		for (i = 0; i < s.length(); i++) {
			aux = s.charAt(i);
			if (aux == '\\') {
				i++;
				switch (s.charAt(i)) {
				case 'n':
					c = '\n';
					break;
				case 'r':
					c = '\r';
					break;
				case 't':
					c = '\t';
					break;
				default:
					c = s.charAt(i);
					break;
				}
			} else {
				c = aux;
			}
			res.append(c);
		}
		// System.err.println(res.toString());
		return res.toString();
	}

	public int declarer_chaine(String n) {
		int ns = strings.size();
		strings.add(analyser(n));

		return ns;
	}
}
