var pageView = Backbone.View.extend({
    el: '#menuDelDia',
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
        $('#borralo').attr('href', 'borrarseccion/' + id);
        var popup = new Foundation.Reveal(dlg);
        popup.open();
    },
});
var page = new pageView();