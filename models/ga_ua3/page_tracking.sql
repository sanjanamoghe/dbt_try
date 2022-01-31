{{ config(materialized='table') }}

with source data as (
    select 1 as page_id, website as {{source('ga_ua3','raw_source_brand')}}.landing_page_path

)

select * from source_data