package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.Marca;
import model.Tipo;

/**
 *
 * @author natalia.fsilva11
 */
public class DaoTipo {

    public static void cadastrar(Tipo tipo) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public static void alterar(Tipo tipo) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public static Tipo obter(int idTipo) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public static ArrayList<Tipo> obter() throws Exception {
        try {
            ArrayList<Tipo> tipos = new ArrayList<Tipo>();
            Connection conn = SqlConnection.getConexao();
            String sql = "select * from tipo_produto";
            PreparedStatement stmt = conn.prepareStatement(sql);

            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                tipos.add(new Tipo(
                        rs.getInt("id_tipo_produto"),
                        rs.getString("tipo")));
            }
            stmt.close();
            conn.close();

            return tipos;
        } catch (Exception e) {
            throw e;
        }
    }

    public static void deletar(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
