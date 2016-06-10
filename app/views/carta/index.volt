{%extends "madre.volt"%}

{% block title %}{{ super() }}Carta{% endblock %} 
{% block css -%}
    {{super()}}
    {%- endblock %}    

    {% block fondo %}
        <div style="margin:auto"><img style="margin:auto;display:block" src="assets/image/destacadas/carta.jpg" /></div>
    {% endblock %}

    {% block etiquetafondo %}
        <h1 class="text-center">Nuestra carta</h1>
    {% endblock %}    

    {% block content %}

        <section class="contenido black-bg">
            <div class=" row">
                <div class="crud carta-main text-right" id="carta">
                   {%for seccion in secciones%}
                       <div class="columns text-left"><h2>{{seccion.section}}</h2></div>
                       {%for plato in platos%}
                           {% if seccion.id == plato.menu_section %}
                               <div class="medium-offset-1">
                               </div>
                               <div class="row colunms platos">
                                   <div class="medium-8 columns">
                                       <b>{{plato.name}}</b>
                                   </div>
                                   <div class="medium-2 columns">
                                       <img style="margin:auto;display:block" src="{{plato.image}}" />
                                   </div>
                                   <div class="medium-offset-1">
                               </div>
                              </div>
                           {%endif%}    
                       {% endfor %}    
                   {%endfor%}     
                </div>


            </div>
        </section>

    {% endblock %}    



    {% block scripts %}
        {{super()}}
        {{ javascript_include('js/pages/nosotros.js') }}
    {%endblock%}