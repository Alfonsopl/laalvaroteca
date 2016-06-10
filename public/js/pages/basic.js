(function ($) {
    function overlay() {
        var alto = $('header').height();
        $('#overlay').css({
            'height': alto + 'px'
        });
    }
    overlay();
    $(window).on('resize', function () {
        (overlay())
    });
})(jQuery);

$(document).foundation();