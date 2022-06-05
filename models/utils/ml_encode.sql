{{ config(materialized='view') }}

{{ dbt_ml_preprocessing.one_hot_encoder( ref('ml') ,
    'column_to_encode',handle_unknown='ignore') }}

{{ dbt_ml_preprocessing.robust_scaler( ref('ml') ,
    ['column_to_encode']) }}


{{ dbt_ml_preprocessing.normalizer( ref('ml') ,
    ['column_to_encode']) }}