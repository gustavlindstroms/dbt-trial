select 
ORDERID as order_id,
paymentmethod as payment_method,
"STATUS" as order_status,
AMOUNT as order_amount,
Created as order_date
 from raw.stripe.payment