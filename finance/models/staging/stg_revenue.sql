WITH orders AS (
    SELECT *
    FROM {{ ref('core', 'orders') }}
)

SELECT *
FROM orders
LEFT JOIN {{ ref('margins') }} ON 1 = 1