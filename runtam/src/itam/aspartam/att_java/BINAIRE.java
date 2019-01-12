package itam.aspartam.att_java;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Map;
import java.util.Set;

public class BINAIRE {

	public int[] bin;

	public int adresse;

	public int get_adresse() {
		return adresse;
	}

	public BINAIRE(int x) {
		bin = new int[x];
		adresse = 0;
	}

	// public void createFile(String name, DataOutputStream datas) throws
	// EGGException {
	// String filename = name;
	// System.err.println("Creation de " + filename);
	// try {
	// InputStream stream = (InputStream) new ByteArrayInputStream(
	// contents.toString().getBytes());
	// IFile fFile = container.getFile(new Path(filename));
	// if (!fFile.exists()) {
	// fFile.create(stream, true, null);
	// } else {
	// fFile.setContents(stream, true, false, null);
	// }
	// fFile.setDerived(false);
	// } catch (CoreException ioe) {
	// throw new EGGException(CoreMessages.EGG_file_creation_error,
	// filename);
	// }
	// }

	public void sauver(String n, TDS table) {
		DataOutputStream f;
		try {
			String nom = n;
			f = new DataOutputStream(new FileOutputStream(nom));
			writeHeader(f, table);
			writeLabels(f, table);
			writeStrs(f, table);
			writeInsts(f, table.getArch());
			f.close();
			System.err.println("code dans " + nom);
		} catch (Exception e) {
			f = null;
			System.err.println(e.getMessage());
			System.exit(1);
		}

	}

	public ByteArrayOutputStream sauver(TDS table) {
		ByteArrayOutputStream byteOut = new ByteArrayOutputStream();
		try {
			DataOutputStream f = new DataOutputStream(byteOut);
			writeHeader(f, table);
			writeLabels(f, table);
			writeStrs(f, table);
			writeInsts(f, table.getArch());
			f.close();

		} catch (Exception e) {
			System.err.println(e.getMessage());
		}
		return byteOut;

	}

	private void writeHeader(DataOutputStream f, TDS table) {
		// System.err.println("wH " + table.getNbloc() + "/" + table.getNbch());
		try {
			f.writeBytes("TAMX");
			int nbloc = table.getNbloc();
			f.writeInt(nbloc);
			// f.writeBytes(" ");
			int nbch = table.getStrings().size();
			f.writeInt(nbch);
			// f.writeBytes(" ");
			f.writeInt(adresse);
			// f.writeBytes("\n");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	private void writeLabels(DataOutputStream f, TDS table) {
		try {
			Set<Map.Entry<String, INFO>> s = table.entrySet();
			for (Map.Entry<String, INFO> e : s) {
				INFO i = e.getValue();
				if (i.getSorte() != INFO.LAB)
					continue;
				// System.err.println("wL " + e.getKey());
				f.write(e.getKey().length());
				f.writeBytes(e.getKey());
				// f.writeBytes("\n");
				f.writeInt(i.getLabel().dep);
				// f.writeBytes("\n");
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private void writeStrs(DataOutputStream f, TDS table) {
		try {
			for (String i : table.getStrings()) {
				// f.write(i.length());
				// f.writeBytes(i);
				f.writeInt(i.length());
				f.writeUTF(i);
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private void writeInsts(DataOutputStream f, int arch) {
		try {
			for (int i = 0; i < adresse; i++) {
				f.writeInt(bin[i]);
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public int coder(int op, int r, int n, int d) {
		int res;
		// System.err.println("coder ( " + op + " , " + r + " , " + n + " , " +
		// d
		// + " )");
		res = 0;
		if ((op & 0x08) != 0)
			res |= 0x80000000L;
		op = (op << 28);
		r = (r << 24);
		n = (n << 16);
		// System.err.println("\top=" + op + " r=" + r + " n=" + n + " d=" + d);
		op &= 0xF0000000L;
		r &= 0x0F000000L;
		n &= 0x00FF0000L;
		d &= 0x0000FFFFL;
		// System.err.println("\top=" + op + " r=" + r + " n=" + n + " d=" + d);
		res |= op;
		res |= r;
		res |= n;
		res |= d;
		return res;
	}

	public void ajouter(int op, int r, int n, int d) {
		int v1;
		v1 = coder(op, r, n, d);
		bin[adresse] = v1;
		adresse++;
	}

	public void maj_refs(ETIQUETTE e) {
		for (int i = 0; i < e.nbrefs; i++) {
			changer_rd(e.refs[i], e.reg, e.dep);
		}
	}

	public String toString() {
		StringBuffer res = new StringBuffer(40);
		for (int i = 0; i < adresse; i++) {
			res.append(i + ": " + bin[i] + "\n");
		}
		return res.toString();
	}

	public void afficher() {
		System.out.println(this);
	}

	public void changer_rd(int i, int r, int d) {
		int aux;
		// System.out.println ( "changer_rd ( " + i + " , " + r + " , " + d + "
		// )" ) ;
		// System.out.println ( "\tbin[i] = " + bin[i] ) ;
		aux = bin[i];
		aux &= 0xF0FF0000;
		d &= 0x0000FFFF;
		r = (r << 24);
		r &= 0x0F000000;
		aux |= r;
		aux |= d;
		bin[i] = aux;
		// System.out.println ( "\tbin[i] = " + aux ) ;
	}

}
