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
{% block title %}Secciones Carta{% endblock %}
{% block seccion %}Secciones Carta{% endblock %}
{%block content %}
    <div class="column row">
        {{ flash.output() }}

        <div class="crud row column" id="menuDelDia">

            <div class="crud-options row colunms text-center">
                <div class="nombre small-12 columns">Sección</div>
            </div>
            {%for s in secciones%}
                <div class="crud-columns row colunms text-center">
                    <div class="nombre small-10 columns">{{s.section}}</div>
                    <a href="editarseccion/{{s.id}}"><div class="modificar small-1 columns"><i class="fa fa-cog"></i></div></a>
                    <a data-id="{{s.id}}" class="borrar" href="borrarseccion/{{s.id}}"><div class="small-1 columns"><i class="fa fa-trash"></i></div></a>
                </div>
            {%endfor%}    
        </div>
    </div>

    <div class="reveal" id="first-modal" data-reveal>
        <h4>Borrar plato</h4>
        <p>Esta acción borrará esta sección y todos los platos que hubiese incluidos en ella, estás seguro de que quieres borrarla?</p>
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
    {{ javascript_include('js/pages/panelseccion.js') }}   
{% endblock %}