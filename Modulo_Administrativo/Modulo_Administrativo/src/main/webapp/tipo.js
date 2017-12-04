//instância um objeto vazio
var tipos = {};

window.addEventListener('load', function () {
    //Botão Editar (abrir modal)
    $('button[data-target="#alterar"]').click(function () {
        if ($('tr.selecionado').length == 0) {
            alert('Por favor selecionar um registro.');
            return false;
        }

        //Popula a Modal
        $('#alterar [name=id]').val(tipos.id);
        $('#alterar [name=tipo]').val(tipos.tipo);
    });

    //Botão Deletar (abrir modal)
    $('button[data-target="#remover"]').click(function () {
        if ($('tr.selecionado').length == 0) {
            alert('Por favor selecionar um registro.');
            return false;
        }

        //Popula a Modal
        $('#remover [name=id]').val(tipos.id);
    });
});

//Ação ao clicar em uma linha da tabela.
$(document).on('click', "tbody > tr", function () {

    //Adiciona e remove a classe "selecionado" (cor da linha da tabela - style.css)
    $(this).addClass('selecionado').siblings().removeClass('selecionado');

    //Obtem os dados da linha da tabela e popula o objeto.
    tipos.id = $(this).find('td:nth-child(1)').html();
    tipos.tipo = $(this).find('td:nth-child(2)').html();
});
