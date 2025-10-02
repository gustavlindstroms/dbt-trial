SELECT 
order_id,
sum(amount)
FROM  {{ ref('stg_stripe__payments') }}
group by order_id
having sum(amount) < 0