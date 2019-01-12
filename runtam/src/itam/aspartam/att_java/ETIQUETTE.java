package itam.aspartam.att_java;

/**
 */
public class ETIQUETTE {

	public int reg;

	public int dep;

	public int[] refs;

	public int nbrefs;

	public int get_reg() {
		return reg;
	}

	public int get_dep() {
		return dep;
	}

	public ETIQUETTE() {
		refs = new int[100];
		nbrefs = 0;
		reg = 0;
		dep = 0;
	}

	public void ajouter_ref(int x) {
		refs[nbrefs] = x;
		nbrefs++;
	}

	public String refsToString() {
		StringBuffer res = new StringBuffer(40);
		for (int i = 0; i < nbrefs; i++) {
			res.append(refs[i]);
			res.append('/');
		}
		return res.toString();
	}

	public void afficher_refs() {
		System.out.println(refsToString());
	}

	public String toString() {
		return dep + "[reg#" + reg + "]";
	}

	public void afficher() {
		System.out.println(this);
	}

	public void maj_dep(int v) {
		dep = v;
	}

}
