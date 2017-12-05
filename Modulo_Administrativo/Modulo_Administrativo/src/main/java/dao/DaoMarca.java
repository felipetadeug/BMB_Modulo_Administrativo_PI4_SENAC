
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.Marca;

/**
 *
 * @author natalia.fsilva11
 */
public class DaoMarca {
    public static ArrayList<Marca> obter() throws Exception {
        try {
            ArrayList<Marca> marcas = new ArrayList<Marca>();
            Connection conn = SqlConnection.getConexao();
            String sql = "select * from marca";
            PreparedStatement stmt = conn.prepareStatement(sql);

            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                marcas.add(new Marca(
                        rs.getInt("id_marca"),
                        rs.getString("marca")));
            }
            stmt.close();
            conn.close();

            return marcas;
        } catch (Exception e) {
            throw e;
        }
    }
}
