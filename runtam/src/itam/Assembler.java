package itam;

import itam.aspartam.egg.ASPARTAM;
import itam.tam.TamException;

import java.io.ByteArrayOutputStream;

import mg.egg.eggc.compiler.libjava.EGGException;
import mg.egg.eggc.compiler.libjava.ISourceUnit;
import mg.egg.eggc.compiler.libjava.SourceUnit;
import mg.egg.eggc.compiler.libjava.problem.IProblem;
import mg.egg.eggc.compiler.libjava.problem.ProblemReporter;
import mg.egg.eggc.compiler.libjava.problem.ProblemRequestor;

public class Assembler {

	public static ByteArrayOutputStream assembleFile(String file)
			throws Exception, TamException {
		ISourceUnit cu = new SourceUnit(file);
		return assemble(cu);
	}

	public static ByteArrayOutputStream assembleString(final String source)
			throws Exception, TamException {
		ISourceUnit cu = new ISourceUnit() {
			public char[] getContents() throws EGGException {
				return source.toCharArray();
			}

			public String getFileName() {
                            return source;
			}
		};
		return assemble(cu);
	}

	private static ByteArrayOutputStream assemble(ISourceUnit cu)
			throws Exception, TamException {
		ProblemReporter prp = new ProblemReporter(cu);
		ProblemRequestor prq = new ProblemRequestor();
		// new EGGOptionsAnalyzer(cu).analyse();
		ASPARTAM compilo = new ASPARTAM(prp);
		prq.beginReporting();
		compilo.compile(cu);
		for (IProblem problem : prp.getAllProblems())
			prq.acceptProblem(problem);
		prq.endReporting();
		if (prp.getAllProblems().size() != 0) {
			throw new TamException("Aspartam stopped");
		}
		ByteArrayOutputStream out = compilo.get_output();
		return out;
	}

}
