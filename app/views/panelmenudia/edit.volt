{%extends "panel.volt"%}
{% block submenu %} {% endblock %}
{% block title %}Menu del dia {%if menu %}Nuevo{% else %} Modificar {% endif %}{% endblock %}
{% block seccion %}{%if menu %}Introducir {% else %} Modificar {%endif%} Menú del Día{% endblock %}
{%block content %}
    <div class="column row">
        {{ flash.output() }}
        <div class="row crud column">
            {{ form( menu ? 'panelmenudia/modificar/'~menu : 'panelmenudia/nuevo', 'class' : 'clearfix') }}
            <div {% if form.hasMessagesFor('name') -%} class="error" {%- endif %}>
                <label class="bold" for="name">Nombre del plato</label>
                {{ form.render('name',[
              'class': 'radius']) }}
                {% if form.hasMessagesFor('name') -%} <small class="error">{{ form.getMessagesFor('name')[0] }}</small> {%- endif %}
                </div>
                <div {% if form.hasMessagesFor('type') -%} class="error" {%- endif %}>
                    <label class="bold" for="type">Tipo</label>
                    {{ form.render('type',[
              'class': 'radius']) }}
                    {% if form.hasMessagesFor('type') -%} <small class="error">{{ form.getMessagesFor('type')[0] }}</small> {%- endif %}
                    </div>
                    <input type="submit" value="{% if menu -%} Modificar {%- else -%} Crear {%- endif %} Plato" class="button success radius"/>
                    </form>
                </div>
            </div>
            {% endblock %}