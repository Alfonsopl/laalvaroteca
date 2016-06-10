{%extends "madre.volt"%}

{% block title %}{{ super() }}Cancelar Reserva {% endblock %} 
{% block css -%}
    {{super()}}
    {%- endblock %}    

    {% block fondo %}
        <div style="margin:auto"><img src="{{url('assets/image/destacadas/reservas.jpg')}}" /></div>
        {% endblock %}

    {% block etiquetafondo %}
        <h1 class="text-center">Cancelar Reserva</h1>
    {% endblock %}    

    {% block content %}

        <section class="reservas">
            <div class="column row">
                <div class="small-8 columns ">
                    <p class="blanco">
                    <h2>Información de la reserva:</h2>
                    <ul>
                        <li>Nombre : {{b.name}}</li>
                        <li>Dia: {{b.date}}</li>
                        <li>Hora: {{b.time}}</li>
                        <li>Nº Personas: {{b.pax}}</li>                      
                    </ul>
                    </p>
                    <p>¿Está seguro de que quiere eliminar la reserva?
                    </p>
                    <form method="post">
                        <input class="button" type="submit" value="eliminar">
                    </form>
                </div>
            </div>
        </section>

    {% endblock %}    



    {% block scripts %}
        {{super()}}
        {{ javascript_include('js/pages/nosotros.js') }}
    {%endblock%}