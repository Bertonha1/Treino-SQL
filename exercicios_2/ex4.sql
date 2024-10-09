SELECT  
        product_category_name,
        avg(product_description_lenght) as tam_med_desc,
        max (product_name_lenght) as tamanho_maximo,
        min(product_name_lenght) as tamanho_min,
        avg(product_name_lenght) as tamanho_media
        
FROM tb_products

where product_category_name is not NULL
and product_description_lenght > 100

GROUP BY product_category_name

having tam_med_desc > 500

order by tamanho_media DESC, tamanho_min DESC
