
-- 132 produtos da categoria 'beleza_saude'
-- com menos de 1 litro
select count(*) qtd_linhas
from tb_products

where (product_category_name = 'beleza_saude'
and litros < 1)
