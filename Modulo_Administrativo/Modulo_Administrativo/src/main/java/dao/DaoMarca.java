
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
            String sql = "select * from marca where ativo = 1";
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

    public static void cadastrar(Marca marca) throws Exception {
        try {
            Connection conn = SqlConnection.getConexao();
            String sql = "insert into marca (marca, ativo) values (?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);

            stmt.setString(1, marca.getMarca());
            stmt.setInt(2, 1);

            stmt.execute();
            stmt.close();
            conn.close();
        } catch (Exception e) {
            throw e;
        }
    }

    public static void alterar(Marca marca) throws Exception {
        try {
            Connection conn = SqlConnection.getConexao();
            String sql = "call alterar_marca(?,?)";
            PreparedStatement stmt = conn.prepareStatement(sql);

            stmt.setInt(1, marca.getIdMarca());
            stmt.setString(2, marca.getMarca());
            
            stmt.execute();
            stmt.close();
            conn.close();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public static void deletar(int id) {
        try {
            Connection conn = SqlConnection.getConexao();
            String sql = "update marca set ativo = 0 where id_marca = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);

            stmt.setInt(1, id);
            
            
            stmt.execute();
            stmt.close();
            conn.close();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
