
package model;

import java.util.Date;

/**
 *
 * @author natalia.fsilva11
 */
public class Estoque {
   private int idEstoque;
   private int quantidade;
   private Date data;

    public Estoque(){
        
    }
   
    public int getIdEstoque() {
        return idEstoque;
    }

    public int getQuantidade() {
        return quantidade;
    }

    public Date getData() {
        return data;
    }

    public void setIdEstoque(int idEstoque) {
        this.idEstoque = idEstoque;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }

    public void setData(Date data) {
        this.data = data;
    }
   
   
}
