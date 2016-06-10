{%extends "madre.volt"%}

{% block title %}{{ super() }}Menus Degustación {% endblock %} 
{% block css -%}
    {{super()}}
{%- endblock %}    

{% block fondo %}
     <img src="{{url('assets/image/destacadas/menuDegustacion.jpg')}}" />
{% endblock %}

{% block etiquetafondo %}
    <h1>Menús degustación</h1>
{% endblock %}    

{% block content %}
    
      <section class="contenido black-bg">
                    <div class="row colums nuestra-historia">
                        <div class="medium-8 medium-push-4 columns blanco spaced">
                            <h2>Menús degustación</h2>
                            <p>¡Por que cada cliente es diferente nuestros menús degustación tambien lo son! Cuentanos cuales son tus gustos, que tipo de carne o pescado
                                te chiflan y que tipo de platos te atraen, y en función de que materia prima del mercado encontremos de excelentísima calidad elaboraremos
                                un menú degustación completamente personalizado para ti.</p>
                            
                        </div>
                        <div class="medium-4 medium-pull-8 columns white-border spaced">
                            <img src="assets/image/menu-degustacion/menudegustacion2.jpg" alt="Menú degustación" />
                        </div>
                    </div>
                    <div class="row colums nuestra-historia">
                        <div class="medium-8 columns blanco spaced">
                            <p>Todos los menús degustación se componen de entre 5 y 7 pases de comida y postre, con opción a maridaje</p>
                            <p>Nuestros menús degustación están disponible de martes a jueves si se reservan con al menos 48 horas de antelación, con un precio que oscila entre 40 y 60 euros 
                                dependiendo del menú deseado</p>
                        </div>
                        <div class="medium-4 columns white-border spaced">
                            <img src="assets/image/menu-degustacion/menudegustacion1.jpg" alt="Menú degustación" />
                        </div>
                    </div>
                </section>
    
{% endblock %}    


{% block scripts %}
    {{super()}}
    {{ javascript_include('js/pages/basic.js') }}
    {%endblock%}