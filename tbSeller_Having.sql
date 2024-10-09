
select seller_state,
    count(*) as vendedores

from tb_sellers
-- filtro pre agregação
where seller_state in ('SP', 'RJ', 'PR')

-- agregação
GROUP BY seller_state

-- filtro pós agregação
having vendedores > 10

