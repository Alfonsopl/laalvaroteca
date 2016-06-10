var ReservasView = Backbone.View.extend({
    el: "#reservas",
    events: {
        'submit': 'submit'
    },
    submit: function (e)
    {
	e.preventDefault();
	var name = $('#name').val();
	var phone = $('#phone').val();
	var date = $('#datepicker').val();
	var time = $('#time').val();
	var pax = $('#pax').val();
	var email = $('#email').val();
	var observation = $('#observation').val();
        $.ajax({
            type: 'POST',
            url: ('reservas/ajaxPost'),
            data: {
                name : name,
		phone : phone,
		date : date,
		time : time,
		pax : pax,
		email : email,
		observation : observation
            },
            success: _.bind(function(data) {
                if(data){
                    this.showDia(data);
                }
		},this),	
          error: _.bind(function(data){
          	this.showError(data);
          },this)
       });
   },
   showDia: function(data){
        var dlg = $('#first-modal');
        $('#informacion-reserva').html(data);
        var popup = new Foundation.Reveal(dlg);
        popup.open();
	},
    showError: function(data){
        console.log(data)
    }

});

   $("#datepicker").datepicker(
            {minDate: 0, beforeShowDay: function (date) {
                    var day = date.getDay();
                    return [(day != 1)];
                }
            });
var reservasView = new ReservasView();
