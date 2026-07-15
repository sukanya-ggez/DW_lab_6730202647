with source as (

    select * from {{ source('northwind', 'customer') }}
)
select
    *,
    current_localtimestamp() as ingestion_timestamp ##ให้เพิ่มคอลัมน์ ingestion_timestamp เพื่อเก็บเวลาที่ข้อมูลถูกดึงเข้ามา
from source