-- 55 produtos possiveis para a categoria artes

SELECT
    count(*) as qtde_linhas,
    count(product_id) as qtde_produtos,
    count(distinct product_id) as qtde_produtos_distintos,
    count(distinct product_category_name) as qtde_categorias_distintas

FROM tb_products
WHERE product_category_name = 'artes'



