
package controller;

import dao.DaoTipo;
import java.util.ArrayList;
import model.Tipo;

/**
 *
 * @author natalia.fsilva11
 */
public class ControllerTipo {
    public static void cadastrar(Tipo tipo) throws Exception {
        try {
            DaoTipo.cadastrar(tipo);
        } catch (Exception e) {
            throw e;
        }
    }

    public static void alterar(Tipo tipo) throws Exception {
        try {
            DaoTipo.alterar(tipo);
        } catch (Exception e) {
            throw e;
        }
    }

    public static Tipo obter(int idTipo) throws Exception {
        try {
            return DaoTipo.obter(idTipo);
        } catch (Exception e) {
            throw e;
        }
    }

    public static ArrayList<Tipo> obter() throws Exception {
        try {
            return DaoTipo.obter();
        } catch (Exception e) {
            throw e;
        }
    }

    public static void deletar(int id) throws Exception {
        try {
            DaoTipo.deletar(id);
        } catch (Exception e) {
            throw e;
        }
    }
    
}
