{%extends "panel.volt"%}
{% block submenu %} 

    <div class='column row'>
        <a href="{{url('panelcarta')}}"><div class="small-6 medium-3 columns submenu2">
                <div class="column">
                    <i class="fa fa-leanpub" aria-hidden="true"></i>
                </div>
                <div class="column">
                    Carta
                </div>
            </div></a>
        <a href="{{url('panelcarta/nuevoplato')}}"><div class="small-6 medium-3 columns submenu2">
                <div class="column">
                    <i class="fa fa-plus-square" aria-hidden="true"></i>
                </div>
                <div class="column">
                    Nuevo Plato
                </div>
            </div></a>
        <a href="{{url('panelcarta/secciones')}}"><div class="small-6 medium-3 columns submenu2">
                <div class="column">
                    <i class="fa fa-calendar-o" aria-hidden="true"></i>
                </div>
                <div class="column">
                    Secciones
                </div>
            </div></a>
        <a href="{{url('panelcarta/nuevaseccion')}}"><div class="small-6 medium-3 columns submenu2">
                <div class="column">
                    <i class="fa fa-calendar-plus-o" aria-hidden="true"></i>
                </div>
                <div class="column">
                    Nueva Sección
                </div>
            </div></a>
    </div>

{% endblock %}
{% block title %}Carta{% endblock %}
{% block seccion %}Carta{% endblock %}
{%block content %}
    <div class="column row" >
        {{ flash.output() }}

        <div class="crud row column" id="carta">
            <div class="crud-options row colunms text-center">
                <div class="imagen large-1 medium-1 small-1 columns">
                    <i class="fa fa-eye"></i>
                </div>               
                <div class="nombre large-7 medium-6 small-6 columns">
                    <span>Nombre</span>
                </div>
                <div class="tipo large-2 medium-4 small-4 columns">
                    <form  id="cambiar" method='get' action='#'>
                    <select  name="seccion">
                        <option value="all" selected="selected">Mostrar todos</option>
                        {%for key, value  in secciones%}
                            <option value="{{key}}" {%if key == selected %}selected="selected"{% endif %}>{{value}}</option>
                        {%endfor%}
                    </select>
                    </form>
                </div>
                <div class="modificar large-1 medium-2 small-2 columns"></div>
                <div class="borrar large-1 medium-2 small-2 columns"></div>
            </div>
            {% for plato in platos %}
            <div class="row colunms crud-columns">
                <div class="imagen large-2 medium-4 small-4 columns"><img width="100px" src="{{url(plato.image)}}"></div>
                <div class="nombre large-6 medium-12 small-12 columns">{{plato.name}}</div>
                <div class="tipo large-2 medium-4 small-4 columns">{{secciones[plato.menu_section]}}</div>
                <a href="panelcarta/editarplato/{{plato.id}}"><div class="modificar large-1 medium-2 small-2 columns"><i class="fa fa-cog"></i></div></a>
                <a href="panelcarta/borrarplato/{{plato.id}}" class="borrar" data-id="{{plato.id}}"><div class="borrar large-1 medium-2 small-2 columns"><i class="fa fa-trash"></i></div></a>
            </div>
            {% endfor %}
        </div>

        <div class="reveal" id="first-modal" data-reveal>
            <h4>Borrar plato</h4>
            <p>Esta acción borrará el plato de la carta, estás seguro de que quieres borrarlo?</p>
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
    </div>
    {%endblock %}

    {% block js %}
        {{super()}}
        {{ javascript_include('js/pages/panelcarta.js') }}   
    {% endblock %}