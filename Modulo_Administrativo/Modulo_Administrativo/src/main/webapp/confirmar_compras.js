//instância um objeto vazio
var confirmacao = {};

window.addEventListener('load', function () {
    //Botão Confirmar (abrir modal)
    $('button[data-target="#confirmar"]').click(function () {
        if ($('tr.selecionado').length == 0) {
            alert('Por favor selecionar um registro.');
            return false;
        }

        //Popula a Modal
        $('#confirmar [name=id]').val(confirmacao.id);
    });

    //Botão Cancelar (abrir modal)
    $('button[data-target="#cancelar"]').click(function () {
        if ($('tr.selecionado').length == 0) {
            alert('Por favor selecionar um registro.');
            return false;
        }

        //Popula a Modal
        $('#cancelar [name=id]').val(confirmacao.id);
    });
});

//Ação ao clicar em uma linha da tabela.
$(document).on('click', "tbody > tr", function () {

    //Adiciona e remove a classe "selecionado" (cor da linha da tabela - style.css)
    $(this).addClass('selecionado').siblings().removeClass('selecionado');

    //Obtem os dados da linha da tabela e popula o objeto.
    confirmacao.id = $(this).find('td:nth-child(1)').html();
});
