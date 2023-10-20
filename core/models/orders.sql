SELECT
    order_id,
    order_date,
    customer_id,
    amount::DECIMAL(8,2) AS amount_incl_vat,
    (amount / 1.2)::DECIMAL(8,2) AS amount_excl_vat
FROM {{ ref("stg_orders") }}