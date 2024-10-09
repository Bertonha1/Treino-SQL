--sum(price) as receita
SELECT 
        t3.customer_state as estado,
        sum(t1.price) / count(distinct t2.customer_id) as receita__media_cliente

from tb_order_items as t1

left JOIN tb_orders as t2
on t1.order_id = t2.order_id

left join tb_customers as t3
on t2.customer_id = t3.customer_id

where t2.order_status = 'delivered'

GROUP BY estado