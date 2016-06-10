{%extends "madre.volt"%}

{% block title %}{{ super() }}Nosotros {% endblock %} 
{% block css -%}
    {{super()}}
    {{ stylesheet_link('bower_components/slick/slick.css') }}
    {{ stylesheet_link('bower_components/slick/slick-theme.css') }}
{%- endblock %}    

{% block fondo %}
     <img src="assets/image/destacadas/sobreNosotros.jpg" />
{% endblock %}

{% block etiquetafondo %}
    <h1>Sobre nosotros</h1>
{% endblock %}    

{% block content %}
    
      <section class="contenido black-bg">
                    <div class="row columns center">
                        <h1>Sobre nosotros</h1>
                    </div>
                    <div class="row colums nuestra-historia">
                        <div class="medium-6 medium-push-6 columns blanco spaced">
                            <h2>Nuestra historia</h2>
                            <p>La Alvaroteca es un proyecto que comenzó su andadura en septiembre de 2013. Dirigida por el chef Álvaro Ávila, que después de pasar más de 16 años entre fogones, haber trabajado en lugares tan emblemáticos como el Santiago Bernabeu, Villa Padierna o Meliá Costa del Sol y formarse bajo lar órdenes de reputados chefs como Ángel García Dalmer o Juan María Arzak, abre este negocio en su barrio de toda la vida, dispuesto a ofrecer una cocina creativa, sorprendente y de gran calidad a precios de barrio.</p>
                        </div>
                        <div class="medium-6 medium-pull-6 columns white-border spaced">
                            <img src="assets/image/sobre-nosotros/alvaro.jpg" alt="Álvaro Ávila" />
                        </div>
                    </div>
                    <div class="column row">

                        <div class="medium-12  columns center blanco spaced">
                            <br>
                            <p>Al igual que todos los comienzos, estos fueron difíciles también: el local tan sólo contaba con un póster de sabor a Málaga, un par de estanterías con libros como única decoración y una barra de mas de ocho metros en mitad del salón, pero contábamos con ganas, muchas ganas. Así que a medida que la gente iba conociendo nuestra comida, nuestra sala, equipo de restauración y cocina, fue creciendo y evolucionando poco a poco, hasta llegar ser lo que es hoy.</p>
                        </div>

                        <div class="small-12 columns img-slider white-border">
                            <div class="spaced">
                                <img src="assets/image/sobre-nosotros/alvaroteca1.jpg" alt="slide 1" />
                            </div>
                            <div class="spaced">
                                <img src="assets/image/sobre-nosotros/alvaroteca2.jpg" alt="slide 2" />
                            </div>
                            <div class="spaced">
                                <img src="assets/image/sobre-nosotros/alvaroteca3.jpg" alt="slide 3" />
                            </div>
                            <div class="spaced">
                                <img src="assets/image/sobre-nosotros/alvaroteca4.jpg" alt="slide 4" />
                            </div>
                            <div class="spaced">
                                <img src="assets/image/sobre-nosotros/alvaroteca5.jpg" alt="slide 5" />
                            </div>
                        </div>
                    </div>
                    <div class="row column">
                        <div class="medium-12 columns center blanco spaced">
                            <br>
                            <p>Gracia al esfuerzo de todo nuestro equipo y al trabajo del día a día, seguimos creciendo y manteniedo como pilares los ideales con los que se inició todo: una cocina fresca, divertida y a precios asequibles, un servicio cercano y personalizado: nuestra casa, de la cual estamos orgullosos por abriros las puertas a todos los que pasáis por aquí y es que, sin vosotros, todo el sacrificio no tendría sentido. </p>
                        </div>
                    </div>
                    <div class="row colums nuestra-historia">
                        <div class="medium-6 columns blanco spaced">
                            <h2>Nuestro futuro</h2>
                            <p>Actualmente nos encontramos en periodo de expansión, se agranda nuestra sala, nuestra cocina, y con ello nuestras posibilidades. En breve procederemos a inagurar la nueva Alvaroteca: Restaurante, Convenciones, Banquetes, Aula para Formación y Privados</p>
                            <p>Además nos mantenemos en cercana colaboración con los jóvenes restaurantes y chefs de "la nueva escuela de restauracion de Málaga", los cuales nos hacen crecer como profesionales y disfrutar como amigos. Compartimos proyectos tales como cursos de hostelería, ponencias y charlas sobre cocina y actos benéficos, y es que si tienes una pasión, ¿por qué no compartirla y ayudar con ella?</p>
                        </div>
                        <div class="medium-6 columns white-border spaced">
                            <img src="assets/image/sobre-nosotros/solidario.jpg" alt="Nuestro último evento" />
                        </div>
                    </div>



                </section>
    
{% endblock %}    


{% block scripts %}
    {{super()}}
    <script src="bower_components/slick/slick.js"></script>
    <script src="js/pages/nosotros.js"></script>
    {%endblock%}