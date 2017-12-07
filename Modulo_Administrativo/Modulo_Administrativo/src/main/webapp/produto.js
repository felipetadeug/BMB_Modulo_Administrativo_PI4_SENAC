//instância um objeto vazio
var produtos = {};

window.addEventListener('load', function () {
    //Botão Editar (abrir modal)
    $('button[data-target="#alterar"]').click(function () {
        if ($('tr.selecionado').length == 0) {
            alert('Por favor selecionar um registro.');
            return false;
        }

        //Popula a Modal
        $('#alterar [name=id]').val(produtos.id);
        $('#alterar [name=nome]').val(produtos.produto);
        
        $('#alterar [name=preco]').val(produtos.preco);
        $('#alterar [name=descricao]').val(produtos.descricao);
    });

    //Botão Deletar (abrir modal)
    $('button[data-target="#remover"]').click(function () {
        if ($('tr.selecionado').length == 0) {
            alert('Por favor selecionar um registro.');
            return false;
        }

        //Popula a Modal
        $('#remover [name=id]').val(produtos.id);
    });
});

//Ação ao clicar em uma linha da tabela.
$(document).on('click', "tbody > tr", function () {

    //Adiciona e remove a classe "selecionado" (cor da linha da tabela - style.css)
    $(this).addClass('selecionado').siblings().removeClass('selecionado');

    //Obtem os dados da linha da tabela e popula o objeto.
    produtos.id = $(this).find('td:nth-child(1)').html();
    produtos.produto = $(this).find('td:nth-child(2)').html();
    produtos.id_marca_produto = $(this).find('td:nth-child(3)').html();
    produtos.marca_produto = $(this).find('td:nth-child(4)').html();
    produtos.id_tipo_produto = $(this).find('td:nth-child(5)').html();
    produtos.tipo_produto = $(this).find('td:nth-child(6)').html();
    produtos.preco = $(this).find('td:nth-child(7)').html();
    produtos.descricao = $(this).find('td:nth-child(8)').html();
    produtos.data_cadastro = $(this).find('td:nth-child(9)').html();
});
