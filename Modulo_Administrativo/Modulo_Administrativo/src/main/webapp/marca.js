//instância um objeto vazio
var marcas = {};

window.addEventListener('load', function () {
    //Botão Editar (abrir modal)
    $('button[data-target="#alterar"]').click(function () {
        if ($('tr.selecionado').length == 0) {
            alert('Por favor selecionar um registro.');
            return false;
        }

        //Popula a Modal
        $('#alterar [name=id]').val(marcas.id);
        $('#alterar [name=marca]').val(marcas.marca);
    });

    //Botão Deletar (abrir modal)
    $('button[data-target="#remover"]').click(function () {
        if ($('tr.selecionado').length == 0) {
            alert('Por favor selecionar um registro.');
            return false;
        }

        //Popula a Modal
        $('#remover [name=id]').val(marcas.id);
    });
});

//Ação ao clicar em uma linha da tabela.
$(document).on('click', "tbody > tr", function () {

    //Adiciona e remove a classe "selecionado" (cor da linha da tabela - style.css)
    $(this).addClass('selecionado').siblings().removeClass('selecionado');

    //Obtem os dados da linha da tabela e popula o objeto.
    marcas.id = $(this).find('td:nth-child(1)').html();
    marcas.marca = $(this).find('td:nth-child(2)').html();
});
