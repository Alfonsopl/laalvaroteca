var pageView = Backbone.View.extend({
    el: '#reservas',
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
        var selected = target.data('selected');
        var dlg = $('#first-modal');
        $('#borralo').attr('href', 'panelreservas/borrar/' + id);
        var popup = new Foundation.Reveal(dlg);
        popup.open();
    },
});
var page = new pageView();

  $("#datepicker").datepicker(
            {minDate: 0, beforeShowDay: function (date) {
                    var day = date.getDay();
                    return [(day != 1)];
                }
            });
			
			
			
$(document).ready(function(){
    
    $("#cambiar").on('change', function(){
        $(this).submit();
        
    });
});
