{{ 
    dbt_ml_preprocessing.one_hot_encoder( ref('content_retention') ,
    'column_to_encode',handle_unknown='ignore')
}}

{{ 
    dbt_ml_preprocessing.robust_scaler( ref('content_retention') ,
    ['column_to_encode']) 
}}

{{ dbt_ml_preprocessing.normalizer( ref('content_retention') ,
    ['column_to_encode']) 
}}