SELECT  
        product_category_name,
        product_description_lenght,
        avg(product_name_lenght) as tamanho_media,
        max (product_name_lenght) as tamanho_maximo,
        min(product_name_lenght) as tamanho_min
        
FROM tb_products
--primeiro vem o filtro
where product_category_name is not NULL
and product_description_lenght >= 100
--depois vem o agrupamento
GROUP BY product_category_name

