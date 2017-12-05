
package controller;

import dao.DaoFoto;
import java.util.ArrayList;
import model.Foto;

/**
 *
 * @author natalia.fsilva11
 */
public class ControllerFoto {
    public static void cadastrar(Foto foto) throws Exception {
        try {
            DaoFoto.cadastrar(foto);
        } catch (Exception e) {
            throw e;
        }
    }

    public static void alterar(Foto foto) throws Exception {
        try {
            DaoFoto.alterar(foto);
        } catch (Exception e) {
            throw e;
        }
    }

    public static Foto obter(int idFoto) throws Exception {
        try {
            return DaoFoto.obter(idFoto);
        } catch (Exception e) {
            throw e;
        }
    }

    public static ArrayList<Foto> obter() throws Exception {
        try {
            return DaoFoto.obter();
        } catch (Exception e) {
            throw e;
        }
    }

    public static void deletar(int id) throws Exception {
        try {
            DaoFoto.deletar(id);
        } catch (Exception e) {
            throw e;
        }
    }
}
