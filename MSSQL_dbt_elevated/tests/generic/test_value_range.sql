{% test value_range(model, column_name, min, max) %}
    SELECT * FROM {{ source('production_source', 'Production1') }}
    WHERE ProcessTemp < 273 OR ProcessTemp > 313.7
{% endtest %}