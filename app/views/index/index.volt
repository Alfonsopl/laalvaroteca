{%extends "madre.volt"%}

{% block title %}La Alvaroteca {%endblock%} 

{% block css %}{{super()}} <style> #overlay{height:674px;}</style>{%endblock%} 

{%block content %}
    <section class="platos">
        <div class="row">
            <h2>Nuestros Platos</h2>
        </div>

        <div class="row" data-equalizer>
            <div class="medium-4 columns" data-equalizer-watch>
                <a href="{{url('carta')}}">
                    <div class="imagen">
                        <img src="assets/image/nuestros-plastos/crujientes.jpg" />
                        <div class="titulo">
                            <h3>Carta</h3>
                        </div>
                    </div>
                    <div class="contenido">
                        <p>Disfruta de nuestra innovadora cocina de autor, cuidada al mínimo detalle para tu deleite en cualquier momento con los platos de nuestra carta.</p>
                    </div>
                </a>
            </div>
            <!-- fin carta -->
            <div class="medium-4 columns" data-equalizer-watch>
                <a href="{{url('menudia')}}">
                    <div class="imagen">
                        <img src="assets/image/nuestros-plastos/porra.jpg" />
                        <div class="titulo">
                            <h3>Menú del día</h3>
                        </div>
                    </div>
                    <div class="contenido">
                        <p>¿Un día duro en el trabajo y sin ganas de cocinar? ¡Nosotros lo haremos por tí! Échale un vistazo a nuestros menús diarios actualizados cada semana.</p>
                    </div>
                </a>
            </div>
            <!-- fin menu del dia -->
            <div class="medium-4 columns" data-equalizer-watch>
                <a href="{{url('menudegustacion')}}">
                    <div class="imagen">
                        <img src="assets/image/nuestros-plastos/postre.jpg" />
                        <div class="titulo">
                            <h3>Menús Degustación</h3>
                        </div>
                    </div>
                    <div class="contenido">
                        <p>Prueba la cocina de la Alvaroteca en su máximo esplendor con nuestros menus degustación, únicos y adaptados para tí. Descubre más sobre ellos.</p>
                    </div>
                </a>
            </div>
            <!-- fin menu degustacion -->
        </div>
    </section>
    <!-- fin platos -->

    <div class="imagen-separador imagen-pano1"></div>

    <section class="galeria-sobre-nosotros black-bg">
        <div class="medium-6 columns vacio black-bg"></div>
        <div class="medium-6 columns vacio primary-bg"></div>
        <div class="contenido-sobre-nosotros">
            <div class="row">
                <div class="medium-6 columns">
                    <h2>Sobre nosotros</h2>
                    <p>La Alvaroteca es un concepto que une la calidad y el frescor de la materia prima con el factor sorpresa, ofreciéndote una nueva forma de disfrutar de la gastronomía en pleno barrio.
                    </p>
                    <p>Si lo que buscas es un lugar selecto pero informal, con encanto, con un servico exclusivo y sobre todo con buena cocina, este es tu sitio.
                    </p>
                    <a href="{{url('nosotros')}}" class="button">Descubre más</a>
                </div>
                <div class="reveal" id="modalGaleria" data-reveal data-animation-in="scale-in-up" data-animation-out="scale-out-down">
                    <img id="imagenContenedor" src="" />

                    <button class="close-button" data-close aria-label="Close reveal" type="button">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <!-- fin reveal -->

                <div class="medium-6 columns ">
                    <h2 class="blanco">Galería</h2>
                    <div id="galeria" class="row small-up-2 large-up-3">
                        <div class="column">
                            <img class="thumbnail" src="assets/image/sobre-nosotros/thumbnail/alvaro.jpg" alt="Álvaro Ávila" />
                        </div>
                        <div class="column">
                            <img class="thumbnail" src="assets/image/sobre-nosotros/thumbnail/bebida.jpg" alt="Álvaro Ávila" />
                        </div>
                        <div class="column">
                            <img class="thumbnail" src="assets/image/sobre-nosotros/thumbnail/servicio.jpg" alt="Álvaro Ávila" />
                        </div>
                        <div class="column">
                            <img class="thumbnail" src="assets/image/sobre-nosotros/thumbnail/periodico.jpg" alt="Álvaro Ávila" />
                        </div>
                        <div class="column">
                            <img class="thumbnail" src="assets/image/sobre-nosotros/thumbnail/trabajando.jpg" alt="Álvaro Ávila" />
                        </div>
                        <div class="column">
                            <img class="thumbnail" src="assets/image/sobre-nosotros/thumbnail/local.jpg" alt="Álvaro Ávila" />
                        </div>

                    </div>
                </div>
            </div>
        </div>

    </section>
    <!-- fin galeria -->

    <div class="imagen-separador imagen-pano2"></div>

    <section class="reservas">
        <div class="row">
            <div class="large-8 columns large-centered text-center ">
                <h2>Reserva ahora</h2>
                <p>
                    !Reserva con nosotros para asegurarte no quedarte sin  mesa!. Solo aceptamos reservas hasta un máximo de las 14:30 por la mañana y de las 21:30 por la noche.
                    Si pasados mas de 5 minutos de esas horas no ha llegado nadie de la reserva nos veremos obligados a canlelarla (lo sentimos mucho pero no podemos aguantar mesas
                    vacías cuando haya gente esperando por mesas). El número máximo de personas por reserva de mesas a la carta es de 10 personas, si le gustase reservar para mas
                    grupos mas grandes tenemos disponibles menus para grupos o la posibilidad de concertar platos para los comensales. Si ese fuera el caso póngase en contacto con nosotros vía telefónica. 
                </p>
                <a data-open="modalReservar" class="button">Reservar</a>
            </div>
        </div>
    </section>
    <!-- fin reservas -->
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
{% endblock %}


{% block scripts %}
    {{super()}}
    
    {{ javascript_include('js/jquery-ui.min.js') }}
    {{ javascript_include('js/pages/index.js') }}
    
{%endblock%}