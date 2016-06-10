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


$(document).ready(function () {
    $('.img-slider').slick({
        arrows: true
        , centerMode: true
        , centerPadding: '60px'
        , focusOnSelect: true
        , lazyLoad: 'ondemand'
        , slidesToShow: 1
        , responsive: [
            {
                breakpoint: 920
                , settings: {
                    arrows: false
                    , centerMode: true
                    , centerPadding: '40px'
                    , slidesToShow: 1
                }
		}


            
            , {
                breakpoint: 720
                , settings: {
                    arrows: false
                    , centerMode: true
                    , centerPadding: '30px'
                    , slidesToShow: 1
                }
		}
	  ]
    });
});