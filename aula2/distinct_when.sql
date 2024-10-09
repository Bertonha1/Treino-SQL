-- lista das categorias por ordem alfabetica

select 

    DISTINCT case WHEN product_category_name is null THEN 'outros'

            WHEN product_category_name == 'alimentos' 
                or product_category_name = 'alimentos_bebidas' then 'alimentos'

            WHEN product_category_name in ('artes','artes_e_artesanato') then 'artes'

            WHEN product_category_name like "%artigos%" then 'artigos'
                else product_category_name 

            end as categoria_fillna

from tb_products

order by 1

