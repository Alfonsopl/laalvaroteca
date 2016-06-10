{%extends "panel.volt"%}
{% block submenu %} {% endblock %}
{% block title %}Menu del dia {%if menu %}Nuevo{% else %} Modificar {% endif %}{% endblock %}
{% block seccion %}{%if menu %} Modificar {% else %} Introducir  {%endif%} Sección{% endblock %}
{%block content %}
    <div class="column row">
        {{ flash.output() }}
        <div class="row crud column">
            {{ form( menu ? 'panelcarta/editarseccion/'~menu : 'panelcarta/nuevaseccion', 'class' : 'clearfix') }}
            <div {% if form.hasMessagesFor('section') -%} class="error" {%- endif %}>
                <label class="bold" for="name">Nombre de la sección</label>
                {{ form.render('section',[
              'class': 'radius']) }}
                {% if form.hasMessagesFor('section') -%} <small class="error">{{ form.getMessagesFor('section')[0] }}</small> {%- endif %}
                </div>
                <div {% if form.hasMessagesFor('position') -%} class="error" {%- endif %}>
                <label class="bold" for="name">Posición a mostrar:</label>
                {{ form.render('position',[
              'class': 'radius']) }}
                {% if form.hasMessagesFor('position') -%} <small class="error">{{ form.getMessagesFor('position')[0] }}</small> {%- endif %}
                </div>
                    <input type="submit" value="{% if menu -%} Modificar {%- else -%} Crear {%- endif %} Seccion" class="button success radius"/>
                    </form>
                </div>
            </div>
        {% endblock %}