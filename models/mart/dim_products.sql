select
    p.product_id,
    p.category_name as product_category_name,
    pc.category_name_en as product_category_name_english,
    p.weight_g
from {{ ref('stg_olist_raw__products') }} p
left join {{ ref('stg_olist_raw__product_category_name') }} pc
    on p.category_name = pc.category_name