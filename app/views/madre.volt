<!doctype html>
<html class="no-js" lang="en">

    <head>
        {% block metatags -%}
            <meta charset="utf-8">
            <meta http-equiv="x-ua-compatible" content="ie=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <meta name=”description” content='Restaurante La Alvaroteca Gastrobar.Cocina de autor a precios de barrio en Málaga.'>
            {%- endblock %}
            <title>{% block title %}La Alvaroteca-{% endblock %}</title>
            {% block css -%}
                {{ stylesheet_link('css/app.css') }}
                {{ stylesheet_link('css/font-awesome.css') }}
                {%- endblock %}

                <link rel="apple-touch-icon" sizes="57x57" href="{{url("assets/image/favicon/apple-icon-57x57.png")}}">
                <link rel="apple-touch-icon" sizes="60x60" href="{{url("assets/image/favicon/apple-icon-60x60.png")}}">
                <link rel="apple-touch-icon" sizes="72x72" href="{{url("assets/image/favicon/apple-icon-72x72.png")}}">
                <link rel="apple-touch-icon" sizes="76x76" href="{{url("assets/image/favicon/apple-icon-76x76.png")}}">
                <link rel="apple-touch-icon" sizes="114x114" href="{{url("assets/image/favicon/apple-icon-114x114.png")}}">
                <link rel="apple-touch-icon" sizes="120x120" href="{{url("assets/image/favicon/apple-icon-120x120.png")}}">
                <link rel="apple-touch-icon" sizes="144x144" href="{{url("assets/image/favicon/apple-icon-144x144.png")}}">
                <link rel="apple-touch-icon" sizes="152x152" href="{{url("assets/image/favicon/apple-icon-152x152.png")}}">
                <link rel="apple-touch-icon" sizes="180x180" href="{{url("assets/image/favicon/apple-icon-180x180.png")}}">
                <link rel="icon" type="image/png" sizes="192x192"  href="{{url("assets/image/favicon/android-icon-192x192.png")}}">
                <link rel="icon" type="image/png" sizes="32x32" href="{{url("assets/image/favicon/favicon-32x32.png")}}">
                <link rel="icon" type="image/png" sizes="96x96" href="{{url("assets/image/favicon/favicon-96x96.png")}}">
                <link rel="icon" type="image/png" sizes="16x16" href="{{url("assets/image/favicon/favicon-16x16.png")}}">
                <link rel="manifest" href="{{url("assets/image/favicon/manifest.json")}}">
                <meta name="msapplication-TileColor" content="#ffffff">
                <meta name="msapplication-TileImage" content="{{url("assets/image/favicon/ms-icon-144x144.png")}}">
                <meta name="theme-color" content="#ffffff">
            </head>

            <body>
                <div class="off-canvas-wrapper">
                    <div class="off-canvas-wrapper-inner" data-off-canvas-wrapper>
                        <div class="off-canvas position-left" id="menuPrincipal" data-off-canvas data-position="left">
                            <h3 class="text-center">Navegación</h3>
                            <ul class="menu vertical" data-drilldown>
                                <li><a href='{{url('')}}'>Inicio</a></li>
                                <li><a href='{{url('nosotros')}}'>Nosotros</a></li>
                                <li class="has-submenu is-drilldown-submenu-parent">
                                    <a>Nuestros Platos</a>
                                    <ul class="menu vertical">
                                        <li><a href="{{url("carta")}}">Nuestra Carta</a></li>
                                        <li><a href="{{url("menudia")}}">Menú del día</a></li>
                                        <li><a href="{{url("menudegustacion")}}">Menú Degustación</a></li>
                                    </ul>
                                </li>
                                <li><a href='{{url('reservas')}}'>Reservas</a></li>
                            </ul>
                        </div>
                        <!-- off canvas -->

                        <div class="off-canvas-content" data-off-canvas-content>



                            <header class="black-bg">
                                <div id="overlay"></div>
                                <div class="row columns">
                                    {% block fondo %} <video id="video" autoplay="autoplay" loop="loop">
                                            <source src="assets/video/fondo.mp4" type="video/mp4" />
                                        </video> {% endblock %}
                                    </div>
                                    <div class="encabezado">
                                        <div class="column row">
                                            {% block etiquetafondo %}<h1 class="text-center">Pasión por la Cocina</h1>{% endblock %}
                                        </div>
                                    </div>
                                    <div class="navegacion">
                                        <div class="column row">
                                            <div class="small-8 medium-4 columns">
                                                <a href="{{url('')}}"<img src="assets/image/logoCabecera.png" />
                                            </div>
                                            <div class="small-4 medium-4 columns">
                                                <a data-open="menuPrincipal" class="menu-icon float-right"></a>
                                            </div>

                                        </div>
                                    </div>

                                </header>
                                {%block content %}

                                {% endblock %}
                                <footer>
                                    <div class="row">
                                        <div class="large-5 columns">
                                            <ul class="menu vertical large-horizontal">
                                                <li><a href="{{url("")}}">Inicio</a></li>
                                                <li><a href="{{url("nosotros")}}">Nosotros</a></li>
                                                <li><a href="{{url("carta")}}">Nuestra Carta</a></li>
                                                
                                            </ul>
                                            <ul class="menu vertical large-horizontal">
                                                <li><a href="{{url("menudia")}}">Menú del día</a></li>
                                                <li><a href="{{url("menudegustacion")}}">Menú Degustación</a></li>                                              
                                                <li><a href="{{url('reservas')}}">Reservas</a></li>
                                            </ul>
                                        </div>
                                        <div class="large-3 columns">
                                            <div class="informacion-contacto">
                                                <ul class="menu no-bullet vertical">
                                                    <li><a href="https://www.google.es/maps/place/La+Alvaroteca/@36.7131961,-4.4414191,17z/data=!3m1!4b1!4m5!3m4!1s0xd72f7762de19fc7:0x5019538ddc1307e3!8m2!3d36.7131918!4d-4.4392304?hl=es"><i class="fa fa-map-marker" aria-hidden="true"></i>Calle Gerona, 39, 29006 Málaga</a></li>
                                                    <li><i class="fa fa-phone" aria-hidden="true"></i> +34-680-625-214</li>
                                                    <li><i class="fa fa-envelope" aria-hidden="true"></i> laAlvaroteca@laAlvaroteca.com</li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="large-4 columns">
                                            <div class="sobre-nosotros">
                                                <h4>Horario de apertura</h4>

                                                <ul class="menu vertical">
                                                    <li>Mártes a jueves: 13:30 a 16:00 y de 20:30 a 23:00 </li>
                                                    <li>Viernes y Sábados: 13:30 a 16:30 y de 20:30 a 00:00 </li>
                                                    <li>Domingos: 13:30 a 17:00</li>
                                                    <li>Lunes cerrado por descanso del personal</li>
                                                </ul>

                                            </div>
                                            <ul class="social menu align-center">
                                                <li><a href="https://www.facebook.com/laalvaroteca/"><i class="fa fa-facebook-official" aria-hidden="true"></i></a></li>
                                                <li><a href="https://twitter.com/la_alvaroteca"><i class="fa fa-twitter-square" aria-hidden="true"></i></a></li>
                                                <li><a href="https://www.tripadvisor.es/Restaurant_Review-g187438-d4995536-Reviews-La_Alvaroteca-Malaga_Costa_del_Sol_Province_of_Malaga_Andalucia.html"><i class="fa fa-tripadvisor" aria-hidden="true"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="copyright">
                                        <div class="row">
                                            <p class="text-center">Derechos Reservados La Alvaroteca.</p>
                                        </div>
                                    </div>

                                </footer>
                            </div>
                        </div>
                    </div>

                    {% block scripts %}
                        {{ javascript_include('bower_components/jquery/dist/jquery.js') }}
                        {{ javascript_include('bower_components/what-input/what-input.js') }}
                        {{ javascript_include('bower_components/foundation-sites/dist/foundation.js') }}
                        {{ javascript_include('js/app.js') }}
                        {{ javascript_include('js/underscore.js') }}
                        {{ javascript_include('js/backbone.js') }}
                    {%endblock%}
                </body>

            </html>