{%extends "panel.volt"%}
{% block submenu %} {% endblock %}
{% block title %}{%if reserva %}Modificar{% else %} Nueva {% endif %} Reserva{% endblock %}
{% block seccion %}{%if reserva %}Modificar{% else %} Nueva {% endif %} Reserva{% endblock %}
{%block content %}
    <div class="column row">
        {{ flash.output() }}
        <div class="row crud column">
            {{ form( reserva ? 'panelreservas/modificar/'~reserva : 'panelreservas/nuevo', 'class' : 'clearfix') }}
            <div {% if form.hasMessagesFor('name') -%} class="error" {%- endif %}>
                <label class="bold" for="name">Nombre</label>
                {{ form.render('name',[
              'class': 'radius']) }}
                {% if form.hasMessagesFor('name') -%} <small class="error">{{ form.getMessagesFor('name')[0] }}</small> {%- endif %}
                </div>
                <div {% if form.hasMessagesFor('date') -%} class="error" {%- endif %}>
                <label class="bold" for="date">Dia</label>
                {{ form.render('date',[
              'class': 'radius', 'id':'datepicker']) }}
                {% if form.hasMessagesFor('date') -%} <small class="error">{{ form.getMessagesFor('date')[0] }}</small> {%- endif %}
                </div>
                <div {% if form.hasMessagesFor('time') -%} class="error" {%- endif %}>
                <label class="bold" for="name">Hora</label>
                {{ form.render('time',[
              'class': 'radius']) }}
                {% if form.hasMessagesFor('time') -%} <small class="error">{{ form.getMessagesFor('time')[0] }}</small> {%- endif %}
                </div>
                <div {% if form.hasMessagesFor('pax') -%} class="error" {%- endif %}>
                <label class="bold" for="pax">Numero de personas</label>
                {{ form.render('pax',[
              'class': 'radius']) }}
                {% if form.hasMessagesFor('pax') -%} <small class="error">{{ form.getMessagesFor('pax')[0] }}</small> {%- endif %}
                </div>
                <div>
                    <label class="bold" for="type">Telefono</label>
                    {{ form.render('telephone',[
              'class': 'radius']) }}
                    </div>
                    <div>
                    <label class="bold" for="type">Email</label>
                    {{ form.render('email',[
              'class': 'radius']) }}
                    </div>
                    <div>
                    <label class="bold" for="type">Observaciones</label>
                    {{ form.render('observation',[
              'class': 'radius']) }}
                    </div>
                    <input type="submit" value="{% if reserva -%} Modificar {%- else -%} Introducir {%- endif %} Reserva" class="button success radius"/>
                    </form>
                </div>
            </div>
            {% endblock %}
                
                {% block js %}
    {{super()}}
    {{ javascript_include('js/jquery-ui.min.js') }}
    {{ javascript_include('js/pages/panelreservas.js') }}   
{% endblock %}
