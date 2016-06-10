{%extends "panel.volt"%}
{% block submenu %} {% endblock %}
{% block title %}Menu del dia{% endblock %}
{% block seccion %}Menu del dia{% endblock %}
{%block content %}
    <div id="reservas" class="column row">
        {{ flash.output() }}
        <div class="row column">
            <div class="small-6 columns"><a href="{{url('panelreservas/nuevo')}}" class="button">Nueva reserva</a></div>
            <div class="small-6 columns">
                <h4>Fecha a mostrar:</h4>
                <form id="cambiar" method="get" action="#">
                <input type="text" name="dia" id="datepicker" value="{{selected}}">
                </form>
            </div>
        </div>
        <div class="crud row column" id="menuDelDia">
            <h2>Turno de dia</h2>
            <div class="row colunm text-center">
                <div class="small-6 columns">   
            <canvas id="canvas" height="300" width="300"></canvas>
                </div>
                <div class="small-6 columns"> 
                    <div class="columns small-12">
                        Ocupación de sala:
                     </div>
                    <div class="columns small-12" style="color:#3F9F3F">
                        {{dayDay}} Ocupado.
                     </div>
                    <div class="columns small-12" style="color:#222">
                        {{50 - dayDay}} Libre.
                     </div>
                </div>
            </div>
            <div class="crud-options row colunms text-center">
                <div class="nombre small-2 columns">Anotada</div>
                <div class="nombre small-2 columns">Hora</div>
                <div class="nombre small-3 columns">Nombre</div>
                <div class="nombre small-2 columns">telefóno</div>
                <div class="nombre small-2 columns">email</div>
                <div class="nombre small-1 columns">Pax</div>
            </div>
            {%for b in dbookings%}          
                <div class="crud-columns row colunms text-center">
                    <div class="nombre small-2 columns">{{b.created}} </div>
                    <div class="nombre small-2 columns">{{b.time}} </div>
                    <div class="nombre small-3 columns">{{b.name}} </div>
                    <div class="nombre small-2 columns">{{b.telephone}} </div>
                    <div class="nombre small-2 columns">{{b.email}} </div>
                    <div class="nombre small-1 columns">{{b.pax}} </div>
                    <div class="nombre small-10 textarea columns">{{b.observation}} </div>
                    <a href="panelreservas/modificar/{{b.id}}"><div class="modificar small-1 columns"><i class="fa fa-cog"></i></div></a>
                    <a data-id="{{b.id}}" data-selected="{{selected}}" class="borrar" href="panelreservas/borrar/{{b.id}}"><div class="small-1 columns"><i class="fa fa-trash"></i></div></a>
                </div>
            {%endfor%}    
        </div>
        
         <div class="crud row column" id="menuDelDia">
            <h2>Turno de noche</h2>
            <div class="row colunm text-center">
                <div class="small-6 columns">   
            <canvas id="canvas2" height="300" width="300"></canvas>
                </div>
                <div class="small-6 columns"> 
                    <div class="columns small-12">
                        Ocupación de sala:
                     </div>
                    <div class="columns small-12" style="color:#3F9F3F">
                        {{nightDay}} Ocupado.
                     </div>
                    <div class="columns small-12" style="color:#222">
                        {{50 - nightDay}} Libre.
                     </div>
                </div>
            </div>
            <div class="crud-options row colunms text-center">
                <div class="nombre small-2 columns">Anotada</div>
                <div class="nombre small-2 columns">Hora</div>
                <div class="nombre small-3 columns">Nombre</div>
                <div class="nombre small-2 columns">telefóno</div>
                <div class="nombre small-2 columns">email</div>
                <div class="nombre small-1 columns">Pax</div>
            </div>
            {%for b in nbookings%}          
                <div class="crud-columns row colunms text-center">
                    <div class="nombre small-2 columns">{{b.created}} </div>
                    <div class="nombre small-2 columns">{{b.time}} </div>
                    <div class="nombre small-3 columns">{{b.name}} </div>
                    <div class="nombre small-2 columns">{{b.telephone}} </div>
                    <div class="nombre small-2 columns">{{b.email}} </div>
                    <div class="nombre small-1 columns">{{b.pax}} </div>
                    <div class="nombre small-10 textarea columns">{{b.observation}} </div>
                    <a href="panelreservas/modificar/{{b.id}}"><div class="modificar small-1 columns"><i class="fa fa-cog"></i></div></a>
                    <a data-id="{{b.id}}" data-selected="{{selected}}" class="borrar" href="panelreservas/borrar/{{b.id}}"><div class="small-1 columns"><i class="fa fa-trash"></i></div></a>
                </div>
            {%endfor%}    
        </div>
    </div>

    <div class="reveal" id="first-modal" data-reveal>
        <h4>Borrar plato</h4>
        <p>Esta acción borrará el plato del menú del día, estás seguro de que quieres borrarlo?</p>
        <div class="column row">
            <div class="small-4 columns">
            <a class="button alert radius" data-close left>Cancelar</a>
            </div>
            <div class="small-4 columns">
            <a id="borralo" href="" class="button alert radius">Borrar</a>
            <button class="close-button right"  data-close aria-label="Close modal" type="button">
                <span aria-hidden="true">&times;</span>
            </button>
            </div>
        </div>
    </div>
{%endblock %}

{% block js %}
    {{super()}}
    {{ javascript_include('js/jquery-ui.min.js') }}
    
   {{ javascript_include('js/Chart.js') }}
    {{ javascript_include('js/pages/panelreservas.js') }}   
    <script>
 $(document).ready(function () {
   
    var pieData = [
        {
          value: 2 * {{dayDay}},
          color:"#3F9F3F"
        },
        {
          value : 100-(2*{{dayDay}}),
          color : "#222"
        }
      ];

    var myPie = new Chart(document.getElementById("canvas").getContext("2d")).Doughnut(pieData,{percentageInnerCutout : 80});
    
    var pieData2 = [
        {
          value: 2 * {{nightDay}},
          color:"#3F9F3F"
        },
        {
          value : 100-(2*{{nightDay}}),
          color : "#222"
        }
      ];

    var myPie2 = new Chart(document.getElementById("canvas2").getContext("2d")).Doughnut(pieData2,{percentageInnerCutout : 80});




});


    </script>
{% endblock %}
