package controller;

import dao.DaoMarca;
import java.util.ArrayList;
import model.Marca;

public class ControllerMarca {
    public static void cadastrar(Marca marca) throws Exception {
        try {
            DaoMarca.cadastrar(marca);
        } catch (Exception e) {
            throw e;
        }
    }

    public static void alterar(Marca marca) throws Exception {
        try {
            DaoMarca.alterar(marca);
        } catch (Exception e) {
            throw e;
        }
    }

    public static Marca obter(int idMarca) throws Exception {
        try {
            return DaoMarca.obter(idMarca);
        } catch (Exception e) {
            throw e;
        }
    }

    public static ArrayList<Marca> obter() throws Exception {
        try {
            return DaoMarca.obter();
        } catch (Exception e) {
            throw e;
        }
    }

    public static void deletar(int id) throws Exception {
        try {
            DaoMarca.deletar(id);
        } catch (Exception e) {
            throw e;
        }
    }
}
