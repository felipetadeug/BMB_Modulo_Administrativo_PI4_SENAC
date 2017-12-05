
package model;

/**
 *
 * @author natalia.fsilva11
 */
public class Marca {
    private int idMarca;
    private String marca;

    public Marca() {
    }

    public Marca(int idMarca, String marca) {
        this.idMarca = idMarca;
        this.marca = marca;
    }

    public int getIdMarca() {
        return idMarca;
    }

    public String getMarca() {
        return marca;
    }

    public void setIdMarca(int idMarca) {
        this.idMarca = idMarca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }
    
    
}
