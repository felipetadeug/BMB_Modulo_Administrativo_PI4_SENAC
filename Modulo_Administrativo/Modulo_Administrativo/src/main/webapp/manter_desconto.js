//instância um objeto vazio
var descontos = {};

    //Botão Editar (abrir modal)
window.addEventListener('load', function () {
    $('button[data-target="#alterar"]').click(function () {
        if ($('tr.selecionado').length == 0) {
            alert('Por favor selecionar um registro.');
            return false;
        }

        //Popula a Modal
        $('#alterar [name=produto]').val(descontos.id_tipo_produto);
        $('#alterar [name=dt_inicio]').val(descontos.data_inicio);
        $('#alterar [name=dt_fim]').val(descontos.data_fim);
        $('#alterar [name=qtd_desconto]').val(descontos.desconto);
        $('#alterar [name=id]').val(descontos.id);
    });

    //Botão Deletar (abrir modal)
    $('button[data-target="#remover"]').click(function () {
        if ($('tr.selecionado').length == 0) {
            alert('Por favor selecionar um registro.');
            return false;
        }

        //Popula a Modal
        $('#remover [name=id]').val(descontos.id);
    });
});

//Ação ao clicar em uma linha da tabela.
$(document).on('click', "tbody > tr", function () {

    //Adiciona e remove a classe "selecionado" (cor da linha da tabela - style.css)
    $(this).addClass('selecionado').siblings().removeClass('selecionado');

    //Obtem os dados da linha da tabela e popula o objeto.
    descontos.id = $(this).find('td:nth-child(1)').html();
    descontos.id_tipo_produto = $(this).find('td:nth-child(2)').html();
    descontos.tipo_produto = $(this).find('td:nth-child(3)').html();
    descontos.desconto = $(this).find('td:nth-child(4)').html();
    descontos.data_inicio = $(this).find('td:nth-child(5)').html();
    descontos.data_fim = $(this).find('td:nth-child(6)').html();
});