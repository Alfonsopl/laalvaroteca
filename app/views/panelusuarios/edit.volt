{%extends "panel.volt"%}
{% block submenu %} {% endblock %}
{% block title %}{%if user %}Nuevo{% else %} Modificar {% endif %} Usuario{% endblock %}
{% block seccion %}{%if user %}Modificar {% else %} Introducir {%endif%} Usuario{% endblock %}
{%block content %}
    <div class="column row">
        {{ flash.output() }}
        <div class="row crud column">
            {{ form( user ? 'panelusuarios/modificar/'~user : 'panelusuarios/nuevo', 'class' : 'clearfix') }}
            <div {% if form.hasMessagesFor('name') -%} class="error" {%- endif %}>
                <label class="bold" for="name">Nombre de Usuario:</label>
                {{ form.render('name',[
              'class': 'radius']) }}
                {% if form.hasMessagesFor('name') -%} <small class="error">{{ form.getMessagesFor('name')[0] }}</small> {%- endif %}
                </div>
                <div {% if form.hasMessagesFor('email') -%} class="error" {%- endif %}>
                    <label class="bold" for="type">Contraseña:</label>
                    {{ form.render('email',[
              'class': 'radius']) }}
                    {% if form.hasMessagesFor('email') -%} <small class="error">{{ form.getMessagesFor('email')[0] }}</small> {%- endif %}
                </div>
                <div {% if form.hasMessagesFor('password') -%} class="error" {%- endif %}>
                    <label class="bold" for="type">Contraseña:</label>
                    {{ form.render('password',[
              'class': 'radius']) }}
                    {% if form.hasMessagesFor('password') -%} <small class="error">{{ form.getMessagesFor('password')[0] }}</small> {%- endif %}
                </div>
                <div {% if form.hasMessagesFor('confirmPassword') -%} class="error" {%- endif %}>
                    <label class="bold" for="confirmPassword">Repita contraseña:</label>
                    {{ form.render('confirmPassword',[
              'class': 'radius']) }}
                    {% if form.hasMessagesFor('confirmPassword') -%} <small class="error">{{ form.getMessagesFor('confirmPassword')[0] }}</small> {%- endif %}
                </div>
               {% if admin %} <div {% if form.hasMessagesFor('is_admin') -%} class="error" {%- endif %}>
                    <label class="bold" for="is_admin">Es Administrador:</label>
                    {{ form.render('is_admin',[
              'class': 'radius']) }}
                    {% if form.hasMessagesFor('is_admin') -%} <small class="error">{{ form.getMessagesFor('is_admin')[0] }}</small> {%- endif %}
               {% endif  %} </div>
                    <input type="submit" value="{% if user -%} Modificar {%- else -%} Crear {%- endif %} Usuario" class="button success radius"/>
                    </form>
                </div>
            </div>
            {% endblock %}