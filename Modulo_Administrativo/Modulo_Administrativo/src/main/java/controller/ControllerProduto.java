
package controller;

import dao.DaoProduto;
import java.util.ArrayList;
import model.Produto;

/**
 *
 * @author natalia.fsilva11
 */
public class ControllerProduto {
    public static void cadastrar(Produto produto) throws Exception {
        try {
            DaoProduto.cadastrar(produto);
        } catch (Exception e) {
            throw e;
        }
    }

    public static void alterar(Produto produto) throws Exception {
        try {
            DaoProduto.alterar(produto);
        } catch (Exception e) {
            throw e;
        }
    }

    public static Produto obter(int idProduto) throws Exception {
        try {
            return DaoProduto.obter(idProduto);
        } catch (Exception e) {
            throw e;
        }
    }

    public static ArrayList<Produto> obter() throws Exception {
        try {
            return DaoProduto.obter();
        } catch (Exception e) {
            throw e;
        }
    }

    public static void deletar(int id) throws Exception {
        try {
            DaoProduto.deletar(id);
        } catch (Exception e) {
            throw e;
        }
    }
}
