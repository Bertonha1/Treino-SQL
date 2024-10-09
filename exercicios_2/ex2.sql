SELECT  
        product_category_name,
        max (product_name_lenght) as tamanho_maximo,
        min(product_name_lenght) as tamanho_min,
        avg(product_name_lenght) as tamanho_media
        
FROM tb_products

where product_category_name is not NULL

GROUP BY product_category_name