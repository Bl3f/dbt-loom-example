SELECT
    order_date,
    SUM(amount_excl_vat * margin) AS revenue
FROM {{ ref('stg_revenue') }}
GROUP BY order_date