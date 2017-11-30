
package model;

import java.util.Date;

/**
 *
 * @author natalia.fsilva11
 */
public class Produto {
    private int idProduto;
    private String produto;
    private double preco;
    private String descricao;
    private Date dataCadastro;
    private boolean ativo;
    private Tipo tipo;
    private Foto foto;
    private Marca marca;
    
    public Produto() {
    }

    public Produto(int idProduto, String produto, double preco, String descricao, Date dataCadastro, boolean ativo, Tipo tipo, Marca marca, Foto foto) {
        this.idProduto = idProduto;
        this.produto = produto;
        this.preco = preco;
        this.descricao = descricao;
        this.dataCadastro = dataCadastro;
        this.ativo = ativo;
        this.tipo = tipo;
        this.marca = marca;
        this.foto = foto;
    }

    public int getIdProduto() {
        return idProduto;
    }

    public String getProduto() {
        return produto;
    }

    public double getPreco() {
        return preco;
    }

    public String getDescricao() {
        return descricao;
    }

    public Date getDataCadastro() {
        return dataCadastro;
    }

    public boolean isAtivo() {
        return ativo;
    }

    public void setIdProduto(int idProduto) {
        this.idProduto = idProduto;
    }

    public void setProduto(String produto) {
        this.produto = produto;
    }

    public void setPreco(double preco) {
        this.preco = preco;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public void setDataCadastro(Date dataCadastro) {
        this.dataCadastro = dataCadastro;
    }

    public void setAtivo(boolean ativo) {
        this.ativo = ativo;
    }
    
    
}
