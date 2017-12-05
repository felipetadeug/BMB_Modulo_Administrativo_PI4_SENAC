
package model;

/**
 *
 * @author natalia.fsilva11
 */
public class Foto {
    private int idFoto;
    private int ordem;
    private String path;

    public Foto() {
    }

    public Foto(int idFoto, int ordem, String path) {
        this.idFoto = idFoto;
        this.ordem = ordem;
        this.path = path;
    }

    public int getIdFoto() {
        return idFoto;
    }

    public int getOrdem() {
        return ordem;
    }

    public String getPath() {
        return path;
    }

    public void setIdFoto(int idFoto) {
        this.idFoto = idFoto;
    }

    public void setOrdem(int ordem) {
        this.ordem = ordem;
    }

    public void setPath(String path) {
        this.path = path;
    }
    
            
            
}
