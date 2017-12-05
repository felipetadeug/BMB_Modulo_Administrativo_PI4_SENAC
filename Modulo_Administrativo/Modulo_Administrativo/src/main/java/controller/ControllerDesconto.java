
package controller;

import dao.DaoDesconto;
import java.util.ArrayList;
import model.Desconto;

public class ControllerDesconto {
    public static void cadastrar(Desconto desconto) throws Exception {
        try {
            DaoDesconto.cadastrar(desconto);
        } catch (Exception e) {
            throw e;
        }
    }

    public static void alterar(Desconto desconto) throws Exception {
        try {
            DaoDesconto.alterar(desconto);
        } catch (Exception e) {
            throw e;
        }
    }

    public static Desconto obter(int idDesconto) throws Exception {
        try {
            return DaoDesconto.obter(idDesconto);
        } catch (Exception e) {
            throw e;
        }
    }

    public static ArrayList<Desconto> obter() throws Exception {
        try {
            return DaoDesconto.obter();
        } catch (Exception e) {
            throw e;
        }
    }

    public static void deletar(int id) throws Exception {
        try {
            DaoDesconto.deletar(id);
        } catch (Exception e) {
            throw e;
        }
    }
}
