{%extends "panel.volt"%}
{% block submenu %} {% endblock %}
{% block title %}Menu del dia{% endblock %}
{% block seccion %}Menu del dia{% endblock %}
{%block content %}
    <div class="column row">
        {{ flash.output() }}

        <div class="crud row column" id="menuDelDia">

            <div class="crud-options row colunms text-center">
                <div class="nombre small-8 columns">Nombre</div>
                <div class="tipo small-2 columns">Tipo</div>
                <div class="small-2 columns"><a href="panelmenudia/nuevo"class="button right">Nuevo plato</a></div>
            </div>
            {%for m in menus%}
                <div class="crud-columns row colunms text-center">
                    <div class="nombre small-8 columns">{{m.name}}</div>
                    <div class="tipo small-2 columns">{{m.type}}</div>
                    <a href="panelmenudia/modificar/{{m.id}}"><div class="modificar small-1 columns"><i class="fa fa-cog"></i></div></a>
                    <a data-id="{{m.id}}" class="borrar" href="panelmenudia/borrar/{{m.id}}"><div class="small-1 columns"><i class="fa fa-trash"></i></div></a>
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
    {{ javascript_include('js/pages/panelmenudia.js') }}   
{% endblock %}