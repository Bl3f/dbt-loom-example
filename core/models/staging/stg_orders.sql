WITH raw AS (
    SELECT
        order_id,
        order_date::DATE AS order_date,
        customer_id,
        amount
    FROM {{ ref('raw_orders') }}
)

SELECT *
FROM raw