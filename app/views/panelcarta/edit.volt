{%extends "panel.volt"%}
{% block submenu %} {% endblock %}
{% block title %} {%if carta %}Modificar {% else %}Nuevo {% endif %} Plato{% endblock %}
{% block seccion %}{%if carta %}Modificar {% else %} Introducir {%endif%} Platp{% endblock %}
{%block content %}
    <div class="column row">
        {{ flash.output() }}
        <div class="row crud column">
            {{ form( carta ? 'panelcarta/editarplato/'~carta : 'panelcarta/nuevoplato', 'class' : 'clearfix', 'enctype':'multipart/form-data') }}
            <div {% if form.hasMessagesFor('name') -%} class="error" {%- endif %}>
                <label class="bold" for="name">Nombre del plato</label>
                {{ form.render('name',[
              'class': 'radius']) }}
                {% if form.hasMessagesFor('name') -%} <small class="error">{{ form.getMessagesFor('name')[0] }}</small> {%- endif %}
                </div>
                <div {% if form.hasMessagesFor('menu_section') -%} class="error" {%- endif %}>
                    <label class="bold" for="menu_section">Tipo</label>
                    {{ form.render('menu_section',[
              'class': 'radius']) }}
                    {% if form.hasMessagesFor('menu_section') -%} <small class="error">{{ form.getMessagesFor('menu_section')[0] }}</small> {%- endif %}
                    </div>
                    <div class="row column">
                        <div class="columns small-2">{%if carta %}<img src="{{url(plato.image)}}"/>{% endif %}</div>
                        <div class="columns small-10"><input type="file" name="image" accept="image/*"></div>
                    </div>
                </div>
                    <input type="submit" value="{% if carta -%} Modificar {%- else -%} Crear {%- endif %} Plato" class="button success radius"/>
                    </form>
                </div>
            </div>
            {% endblock %}