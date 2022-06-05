with source as (
    select *
    from {{ ref('duplicate_users') }}
),

deduped as (

    {{
        dbt_utils.deduplicate(
            'source',
            partition_by='user_id',
            order_by='version desc',
        ) | indent
    }}

)

select * from deduped