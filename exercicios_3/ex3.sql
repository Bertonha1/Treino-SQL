SELECT 
        t3.seller_state as estado,
        avg(t4.product_weight_g) as media_peso

from tb_order_items as t1

left JOIN tb_orders as t2
on t1.order_id = t2.order_id

left join tb_sellers as t3
on t1.seller_id = t3.seller_id

left join tb_products as t4
on t1.product_id = t4.product_id

where t2.order_status = 'delivered'
and strftime("%Y",order_approved_at) = '2017'

GROUP BY estado


