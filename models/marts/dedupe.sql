{{  dbt_utils.deduplicate(ref('duplicate_users'),
        partition_by='user_id',order_by='version desc') | indent
}}