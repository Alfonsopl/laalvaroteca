{%extends "madre.volt"%}

{% block title %}{{ super() }}Página no encontrada {% endblock %} 

{% block fondo %}
    <div class="column small-centered">
        <div style="margin:auto"><img src="{{url('assets/image/destacadas/notFound.jpg')}}" /></div>
    </div>
{% endblock %}

{% block etiquetafondo %}
    <h1>¡Página no encontrada!</h1>
{% endblock %}    

{% block content %}
    
      <section class="contenido black-bg">
                    <div class="row columns center">
                        <h1>Página no encontrada</h1>
                    </div>
                    <div class="row colums nuestra-historia">
                        <div class="smal2 blanco spaced">
                            <p>Lo siento mucho joven padawan, pero parece ser que en algún momento el miedo te llevo a la ira, la ira te llevó al odio y este te atrajo hacia
                            el lado oscuro de nuestro website. Pero si aún sientes el poder fuerza contigo, te sacaremos de aquí en tan solo un click. ¡Que la fuerza te acompañe! 
                            </p>
                            <a class="button" href="{{url("")}}">Llévame a casa</a>
                        </div>
                    </div>
    
            </section>
    
{% endblock %}    


{% block scripts %}
    {{super()}}
    {{ javascript_include('js/pages/nosotros.js') }}
    {%endblock%}