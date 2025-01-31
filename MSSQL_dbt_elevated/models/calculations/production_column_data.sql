{{ log("Running production_column_data model", info=True) }}
SELECT
    {{ calculate_average('ProcessTemp') }} AS avg_temp,
    TypeLMH
FROM
    {{ source('production_source', 'Production1') }}
GROUP BY
    TypeLMH