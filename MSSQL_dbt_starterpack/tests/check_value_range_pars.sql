{% test check_value_range_pars(model, column_name, min, max) %}
SELECT *
FROM {{ model }}
WHERE {{ column_name }} < {{ min }}
   OR {{ column_name }} > {{ max }}
{% endtest %}