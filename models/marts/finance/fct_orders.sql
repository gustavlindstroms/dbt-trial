SELECT ord."ORDER_ID", ord.customer_id, amount, order_date
 FROM {{ ref('stg_jaffle_shop__orders') }} as ord
LEFT JOIN {{ ref('stg_stripe__payments') }} as pay
USING("ORDER_ID")