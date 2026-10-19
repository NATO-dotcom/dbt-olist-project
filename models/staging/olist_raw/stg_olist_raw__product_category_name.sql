with 

source as (

    select * from {{ source('olist_raw', 'product_category_name') }}

),

renamed as (

    select
        string_field_0,
        string_field_1

    from source

)

select * from renamed