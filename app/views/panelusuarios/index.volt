{%extends "panel.volt"%}
{% block submenu %} {% endblock %}
{% block title %}Panel Usuarios{% endblock %}
{% block seccion %}Panel Usuarios{% endblock %}
{%block content %}
    <div class="column row">
        {{ flash.output() }}

        <div class="crud row column" id="menuDelDia">
            {% if admin %}<a class="button" href="{{url('panelusuarios/nuevo')}}">Nuevo Usuario</a>{% endif %}
            <div class="crud-options row colunms text-center">
                <div class="nombre small-8 columns">Nombre</div>
                <div class="tipo small-2 columns">Email</div>
                <div class="small-1 columns"></div>
                <div class="small-1 columns"></div>
            </div>
            {% for u in usuarios %}
                {% if u.id == userId or admin %}
                    <div class="crud-columns row colunms text-center">
                        <div class="nombre small-8 columns">{{u.name}}</div>
                        <div class="tipo small-2 columns">{{u.email}}</div>
                        <a href="panelusuarios/modificar/{{u.id}}"><div class="modificar small-1 columns"><i class="fa fa-cog"></i></div></a>
                        {% if admin %}<a data-id="{{u.id}}" class="borrar" href="panelusuarios/borrar/{{u.id}}"><div class="small-1 columns"><i class="fa fa-trash"></i></div></a>{% endif %}
                    </div>
                {% endif %}
            {% endfor %}    
        </div>
    </div>

    <div class="reveal" id="first-modal" data-reveal>
        <h4>Borrar plato</h4>
        <p>Esta acción borrará el usuario, estás seguro de que quieres borrarlo?</p>
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
    {{ javascript_include('js/pages/panelusuarios.js') }}   
{% endblock %}