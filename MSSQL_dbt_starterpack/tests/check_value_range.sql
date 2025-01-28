-- This script checks if the values in the ProcessTemp column are out of the range 273 to 313.7.
-- Define your range here, for example 273 to 313.7, and check if the values are out of the range.
-- If the values are not out of the range, return the row.
WITH temp_validation AS (
    SELECT * FROM {{ ref('stg_production') }}
    WHERE ProcessTemp < 273 OR ProcessTemp > 313.7
)

SELECT *
FROM temp_validation