SELECT  
        product_category_name,
        avg(product_description_lenght) as tamanho_media,
        max (product_description_lenght) as tamanho_maximo,
        min(product_description_lenght) as tamanho_min
        
FROM tb_products

where product_category_name is not NULL

GROUP BY product_category_name