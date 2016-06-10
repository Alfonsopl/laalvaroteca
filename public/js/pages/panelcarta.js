var pageView = Backbone.View.extend({
    el: '#carta',
    events: {
        'click a.borrar': 'deleteApplication',
    },
    initialize: function ()
    {
    },
    deleteApplication: function (e)
    {
        e.preventDefault();
        var target = $(e.currentTarget);
        var id = target.data('id');
        var dlg = $('#first-modal');
        $('#borralo').attr('href', 'panelcarta/borrarplato/' + id);
        var popup = new Foundation.Reveal(dlg);
        popup.open();
    },
});

$(document).ready(function(){
    
    $("#cambiar").on('change', function(){
        $(this).submit();
        
    });
});

var page = new pageView();