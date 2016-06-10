{%extends "panel.volt"%}

{%block content %}
    <div class="row column">
    {{ flash.output() }}
    </div>
{%endblock %}