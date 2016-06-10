{%extends "madre.volt"%}

{% block title %}{{ super() }}Menu del día {% endblock %} 
{% block css -%}
    {{super()}}
    {%- endblock %}    

    {% block fondo %}
        <div style="margin:auto"><img style="margin:auto;display:block" src="assets/image/destacadas/menuDia.jpg" /></div>
    {% endblock %}

    {% block etiquetafondo %}
        <h1 class="text-center">Menú del día:</h1>
    {% endblock %}    

    {% block content %}

        <section class="contenido black-bg">
            <div class="column row">
                <div class="row column menu-del-dia text-center">
                    <h2>Nuestro menú de esta semana:</h2>
                    <h4>Primeros</h4>
                    <ul class="no-bullet">
                        {%for m in menus%}
                            {%if m.type == "Primero"%}<li>{{m.name}}</li>{%endif%}
                        {%endfor%}
                    </ul>
                    <h4>Segundos</h4>
                    <ul class="no-bullet">
                        {%for m in menus%}
                            {%if m.type == "Segundo"%}<li>{{m.name}}</li>{%endif%}
                        {%endfor%}
                    </ul>
                
                </div>


            </div>
        </section>

    {% endblock %}    



    {% block scripts %}
        {{super()}}
        {{ javascript_include('js/pages/nosotros.js') }}
    {%endblock%}