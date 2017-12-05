
package controller;

import dao.DaoEstoque;
import java.util.ArrayList;
import model.Estoque;

/**
 *
 * @author natalia.fsilva11
 */
public class ControllerEstoque {
    public static void cadastrar(Estoque estoque) throws Exception {
        try {
            DaoEstoque.cadastrar(estoque);
        } catch (Exception e) {
            throw e;
        }
    }

    public static void alterar(Estoque estoque) throws Exception {
        try {
            DaoEstoque.alterar(estoque);
        } catch (Exception e) {
            throw e;
        }
    }

    public static Estoque obter(int idEstoque) throws Exception {
        try {
            return DaoEstoque.obter(idEstoque);
        } catch (Exception e) {
            throw e;
        }
    }

    public static ArrayList<Estoque> obter() throws Exception {
        try {
            return DaoEstoque.obter();
        } catch (Exception e) {
            throw e;
        }
    }

    public static void deletar(int id) throws Exception {
        try {
            DaoEstoque.deletar(id);
        } catch (Exception e) {
            throw e;
        }
    }
}
