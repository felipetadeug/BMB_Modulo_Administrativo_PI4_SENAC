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

    public static void cadastrar(Tipo tipo) throws Exception {
        try {
            Connection conn = SqlConnection.getConexao();
            String sql = "insert into tipo_produto (tipo, ativo) values (?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);

            stmt.setString(1, tipo.getTipo());
            stmt.setInt(2, 1);

            stmt.execute();
            stmt.close();
            conn.close();
        } catch (Exception e) {
            throw e;
        }
    }

    public static void alterar(Tipo tipo) {
        try {
            Connection conn = SqlConnection.getConexao();
            String sql = "call alterar_tipo(?,?)";
            PreparedStatement stmt = conn.prepareStatement(sql);

            stmt.setInt(1, tipo.getIdTipo());
            stmt.setString(2, tipo.getTipo());
            
            stmt.execute();
            stmt.close();
            conn.close();
        } catch (Exception e) {
            System.out.println(e);
        }
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
        try {
            Connection conn = SqlConnection.getConexao();
            String sql = "update tipo_produto set ativo = 0 where id_produto = ?";
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
