with 

source as (

    select * from {{ source('olist_raw', 'product_category_name') }}

),

renamed as (

    select
        string_field_0 as category_name,
        string_field_1 as category_name_en

    from source

)

select * from renamed