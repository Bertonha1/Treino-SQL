SELECT  
        product_category_name,
        count(*) as qtde_produto,
        max (product_weight_g) as peso_maximo,
        min(product_weight_g) as peso_min,
        avg(product_weight_g) as peso_media
        
FROM tb_products

--isso vem antes do group by, antes do processamento tbm 
where product_category_name is not NULL
and product_category_name != 'alimentos'

GROUP BY product_category_name
