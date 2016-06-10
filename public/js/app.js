(function ($) {


    $('#galeria .column img').wrap('<a data-open="modalGaleria">');

    $('#galeria a').on('click', function () {
        var imagen = $(this).find('img').attr('src');
        var imagenSeleccionada = imagen.split('thumbnail');
        $('#imagenContenedor').attr('src', imagenSeleccionada[0] + 'fullsize' + imagenSeleccionada[1]);
    });


})(jQuery);

$(document).foundation();