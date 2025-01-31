{% test value_range_pars(model, column_name, min, max) %}
-- Debugging: Print the variables
{{ log("Model: " ~ model, info=True) }}
{{ log("Column: " ~ column_name, info=True) }}
{{ log("Min: " ~ min, info=True) }}
{{ log("Max: " ~ max, info=True) }}
    -- Get the relation object for the model
    select *     
        from {{ model }}     
        where {{ column_name }} < {{ min }}        
           or {{ column_name }} > {{ max }}

{% endtest %}