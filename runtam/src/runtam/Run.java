package runtam;

import itam.Assembler;
import itam.tam.Machine;
import java.io.ByteArrayOutputStream;

public class Run {

    public static void main (String[] args) throws Exception {
        if (args.length != 1) {
            System.err.println("java runtam.Run fichier.tam");
        }
        String fname = args[0];
        if (! fname.endsWith(".tam"))
          fname += ".tam";

        ByteArrayOutputStream binary = Assembler.assembleFile(fname);
        Machine fMachine = new Machine();
        fMachine.loadObjectProgram(binary);
        fMachine.mrun();
        System.out.println();
    }
}
