{%extends "madre.volt"%}

{% block title %}{{ super() }}Reservas {% endblock %} 
{% block css -%}
    {{super()}}
    {%- endblock %}    

    {% block fondo %}
        <div style="margin:auto"><img src="{{url('assets/image/destacadas/reservas.jpg')}}" /></div>
        {% endblock %}

    {% block etiquetafondo %}
        <h1 class="text-center">Reservas</h1>{{ flash.output() }}
    {% endblock %}    

    {% block content %}

        <section class="reservas">
            
            <h2 class="text-center">Reserva ahora</h2>
            <div class="row">
                <div class="small-8 columns ">
                    <p class="blanco">
                        !Reserva con nosotros para asegurarte no quedarte sin  mesa!. Solo aceptamos reservas hasta un máximo de las 14:30 por la mañana y de las 21:30 por la noche.
                        Si pasados mas de 5 minutos de esas horas no ha llegado nadie de la reserva nos veremos obligados a canlelarla (lo sentimos mucho pero no podemos aguantar mesas
                        vacías cuando haya gente esperando por mesas). </p>
                </div>
                <div class="small-4 columns ">
                    <img src="{{url('assets/image/reservas/reservas.jpg')}}" />
                </div>
            </div>
            <div class="row">
                <div class="small-4 columns ">
                    <img src="{{url('assets/image/reservas/grupos2.jpg')}}" />
                </div>
                <div class="small-8 columns ">  
                    <p class="blanco">
                    <p>El número máximo de personas por reserva de mesas a la carta es de 10 personas, si le gustase reservar para mas
                        grupos mas grandes tenemos disponibles menus para grupos o la posibilidad de concertar platos para los comensales. Si ese fuera el caso póngase en contacto con nosotros vía telefónica. 
                    </p>

                </div>

                
            </div>
                <div class="row text-center">
                <a data-open="modalReservar" class="button">Reservar</a>
                </div>
        </section>

        <div class="reveal" id="modalReservar" data-reveal>
            <h2 class="text-center">Formulario de Reservas</h2>
            <form data-abide novalidate id="reservas">
                <div class="alert callout" style="display:none" data-abide-error>
                    <p><i class="fa fa-exclamation-triangle" aria-hidden="true"></i> Hay problemas en tu formulario</p>
                </div>
                <div class="row columns">
                    <label>Nombre
                        <input type="text" placehorder="Tu Nombe" id="name" required/>
                        <span class="form-error">
                            <i class="fa fa-exclamation-triangle" aria-hidden="true"></i>
                            Tu nombre es obligatorio
                        </span>
                    </label>
                    <label>Email
                        <input type="text" placehorder="Email" id="email" required pattern="email"/>
                        <span class="form-error">
                            <i class="fa fa-exclamation-triangle" aria-hidden="true"></i>
                            Tu email es obligatorio
                        </span>
                    </label>  
                    <label>Telefono
                        <input type="tel" placehorder="Tu teléfono" id="phone" required pattern="number"/>
                        <span class="form-error">
                            <i class="fa fa-exclamation-triangle" aria-hidden="true"></i>
                            Tu teléfono es obligatorio
                        </span>
                    </label>  
                    <label>Fecha
                        <input type="text"  class="span2" id="datepicker" required/>
                        <span class="form-error">
                            <i class="fa fa-exclamation-triangle" aria-hidden="true"></i>
                            Por favor introduce la fecha de tu reserva
                        </span>
                    </label>
                    <label>Hora
                        <select name="hora" id="time" class="span2" required>
                            <option value="13:30" >13:30</option>
                            <option value="14:00" >14:00</option>
                            <option value="14:30" >14:30</option>
                            <option value="20:30" >20:30</option>
                            <option value="21:30" >21:00</option>
                            <option value="21:30" >21:30</option>
                        </select>
                        <span class="form-error">
                            <i class="fa fa-exclamation-triangle" aria-hidden="true"></i>
                            Por favor introduce la fecha de tu reserva
                        </span>
                    </label> 
                    <label>Numero de personas
                        <input type="number" min="2" placehorder="Número de personas" id="pax" required pattern="number"/>
                        <span class="form-error">
                            <i class="fa fa-exclamation-triangle" aria-hidden="true"></i>
                            Numero de personas obligatorio
                        </span>
                    </label>  
                    <label>Especificaciones
                        <textarea id="observation" placehorder="Especificaciones reserva"></textarea>
                    </label>  
                </div>
                <div>
                    <input type="submit" class="button" value="enviar"/>
                    <button class="button success" type="reset" value="reset">Reset</button>
                </div>
            </form>
        </div>

        <div class="reveal" id="first-modal" data-reveal>
            <h4>Información de reserva</h4>
            <p id="informacion-reserva"></p>
            <div class="column row">
                <div class="small-4 columns">
                    <button class="close-button right"  data-close aria-label="Close modal" type="button">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            </div>
        </div>

    </div>


{% endblock %}    



{% block scripts %}
    {{super()}}
    {{ javascript_include('js/jquery-ui.min.js') }}
    {{ javascript_include('js/pages/reservas.js') }}

{%endblock%}