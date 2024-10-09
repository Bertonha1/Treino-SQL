select t1.*

from (
    select seller_state,
        count(seller_id) as vendedores

    from tb_sellers

    --where seller_state in ('SP', 'RJ', 'PR')

    GROUP BY seller_state
) as t1

where t1.vendedores > 10
