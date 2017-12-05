
package model;

import java.util.Date;

/**
 *
 * @author natalia.fsilva11
 */
public class Desconto {
   private int idDesconto;
   private double percentual;
   private Date dataInicial;
   private Date dataFinal;

   public Desconto(){
       
   }

    public Desconto(int idDesconto, double percentual, Date dataInicial, Date dataFinal) {
        this.idDesconto = idDesconto;
        this.percentual = percentual;
        this.dataInicial = dataInicial;
        this.dataFinal = dataFinal;
    }
   
    public int getIdDesconto() {
        return idDesconto;
    }

    public double getPercentual() {
        return percentual;
    }

    public Date getDataInicial() {
        return dataInicial;
    }

    public Date getDataFinal() {
        return dataFinal;
    }

    public void setIdDesconto(int idDesconto) {
        this.idDesconto = idDesconto;
    }

    public void setPercentual(double percentual) {
        this.percentual = percentual;
    }

    public void setDataInicial(Date dataInicial) {
        this.dataInicial = dataInicial;
    }

    public void setDataFinal(Date dataFinal) {
        this.dataFinal = dataFinal;
    }
   
   
}
