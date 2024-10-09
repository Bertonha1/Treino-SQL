SELECT 
        seller_state as estado,
        sum(t1.price) as receita_total,
        sum(t1.price) / count(DISTINCT t3.seller_id) as media_receita_seller,
        count(DISTINCT t3.seller_id) as qtde_sellers

from tb_order_items as t1

left JOIN tb_orders as t2
on t1.order_id = t2.order_id

left join tb_sellers as t3
on t1.seller_id = t3.seller_id

where t2.order_status = 'delivered'

GROUP BY estado