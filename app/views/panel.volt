<!doctype html>
<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>{% block title %}Panel de Control-{% endblock %}</title>
        {% block css -%}
            {{ stylesheet_link('css/app.css') }}
            {{ stylesheet_link('css/font-awesome.css') }}
            {%- endblock %}
        </head>
        <link rel="apple-touch-icon" sizes="57x57" href="assets/image/favicon/apple-icon-57x57.png">
                <link rel="apple-touch-icon" sizes="60x60" href="assets/image/favicon/apple-icon-60x60.png">
                <link rel="apple-touch-icon" sizes="72x72" href="assets/image/favicon/apple-icon-72x72.png">
                <link rel="apple-touch-icon" sizes="76x76" href="assets/image/favicon/apple-icon-76x76.png">
                <link rel="apple-touch-icon" sizes="114x114" href="assets/image/favicon/apple-icon-114x114.png">
                <link rel="apple-touch-icon" sizes="120x120" href="assets/image/favicon/apple-icon-120x120.png">
                <link rel="apple-touch-icon" sizes="144x144" href="assets/image/favicon/apple-icon-144x144.png">
                <link rel="apple-touch-icon" sizes="152x152" href="assets/image/favicon/apple-icon-152x152.png">
                <link rel="apple-touch-icon" sizes="180x180" href="assets/image/favicon/apple-icon-180x180.png">
                <link rel="icon" type="image/png" sizes="192x192"  href="assets/image/favicon/android-icon-192x192.png">
                <link rel="icon" type="image/png" sizes="32x32" href="assets/image/favicon/favicon-32x32.png">
                <link rel="icon" type="image/png" sizes="96x96" href="assets/image/favicon/favicon-96x96.png">
                <link rel="icon" type="image/png" sizes="16x16" href="assets/image/favicon/favicon-16x16.png">
                <link rel="manifest" href="assets/image/favicon/manifest.json">
                <meta name="msapplication-TileColor" content="#ffffff">
                <meta name="msapplication-TileImage" content="assets/image/favicon/ms-icon-144x144.png">
                <meta name="theme-color" content="#ffffff">
        <body>
            <div class="off-canvas-wrapper">
                <div class="off-canvas-wrapper-inner" data-off-canvas-wrapper>

                    <!-- off-canvas title bar for 'small' screen -->
                    <div class="title-bar" data-responsive-toggle="widemenu" data-hide-for="medium">
                        <a href="{{url('')}}"><div class="title-bar-title"><img src="{{url('assets/image/logoCabecera.png')}}" width="300px" /></div></a>
                        <div class="title-bar-right">
                            <button class="menu-icon" type="button" data-open="offCanvasLeft"></button>

                        </div>
                    </div>

                    <!-- off-canvas left menu -->
                    <div class="off-canvas position-left " id="offCanvasLeft" data-off-canvas>
                        <ul class="menu vertical" data-drilldown>
                            <li class="has-submenu is-drilldown-submenu-parent">
                                <a>Carta</a>
                                <ul class="menu vertical">
                                    <li><a href="{{url('panelcarta')}}">Platos</a></li>
                                    <li><a href="{{url('panelcarta/secciones')}}">Secciones</a></li>
                                </ul>
                            </li>
                            <li><a href="/panelmenudia">Menu del día</a></li>
                            <li><a href="{{url('panelreservas')}}">Reservas</a></li>
                            <li><a href="{{url('panelusuarios')}}">Usuarios</a></li>
                            <li><a href="{{url('acceso/end')}}">Desloguearme</a></li>
                        </ul>
                    </div>

                    <!-- "wider" top-bar menu for 'medium' and up -->
                    <div id="widemenu" class="top-bar">
                        <div class="top-bar-left">
                            <ul class="dropdown menu" data-dropdown-menu>
                                <li class="menu-text"><a href="{{url('')}}"><img src="{{url('assets/image/logoCabecera.png')}}" width="300px" /></a>
                                </li>
                                <li class="has-submenu">
                                    <a href="#">Carta</a>
                                    <ul class="menu submenu vertical" data-submenu>
                                        <li><a href="{{url('panelcarta')}}">Platos</a></li>
                                        <li><a href="{{url('panelcarta/secciones')}}">Secciones</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="{{url('panelmenudia')}}">Menu del Día</a>
                                </li>
                                <li>
                                    <a href="{{url('panelreservas')}}">Reservas</a>
                                </li>
                                <li>
                                    <a href="{{url('panelusuarios')}}">Usuarios</a>
                                </li>
                                <li>
                                    <a href="{{url('acceso/end')}}">Desloguearme</a>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <!-- original content goes in this container -->
                    <div class="off-canvas-content" data-off-canvas-content>
                        <div class="page-heading primary-bg ">
                            <h1 class="bold blanco">{% block seccion %}Panel de control{% endblock %}</h1>
                        </div>
                        <div id="user-menu-content">
                            {%block submenu %}
                                <div class='column row'>
                                    <a href="{{url('panelcarta')}}"><div class="small-6 medium-3 columns submenu2">
                                            <div class="column">
                                                <i class="fa fa-leanpub" aria-hidden="true"></i>
                                            </div>
                                            <div class="column">
                                                Carta
                                            </div>
                                        </div></a>
                                    <a href="{{url('panelmenudia')}}"><div class="small-6 medium-3 columns submenu2">
                                            <div class="column">
                                                <i class="fa fa-list-alt" aria-hidden="true"></i>
                                            </div>
                                            <div class="column">
                                                Menu día
                                            </div>
                                        </div></a>
                                    <a href="{{url('panelreservas')}}"><div class="small-6 medium-3 columns submenu2">
                                            <div class="column">
                                                <i class="fa fa-calendar" aria-hidden="true"></i>
                                            </div>
                                            <div class="column">
                                                Reservas
                                            </div>
                                        </div></a>
                                    <a href="{{url('panelusuarios')}}"><div class="small-6 medium-3 columns submenu2">
                                            <div class="column">
                                                <i class="fa fa-users" aria-hidden="true"></i>
                                            </div>
                                            <div class="column">
                                                Usuarios
                                            </div>
                                        </div></a>
                                </div>
                            {%endblock %}
                            {%block content %}
                            {%endblock %}
                        </div>
                    </div>
                </div>
            </div>
            {% block js -%}
                {{ javascript_include('bower_components/jquery/dist/jquery.js') }}
                {{ javascript_include('bower_components/foundation-sites/dist/foundation.js') }}
                {{ javascript_include('js/app.js') }}
                {{ javascript_include('js/underscore.js') }}
                {{ javascript_include('js/backbone.js') }}     
            {%endblock%}

        </body>

    </html>