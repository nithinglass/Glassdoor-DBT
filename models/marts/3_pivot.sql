select 
 {{- dbt_utils.pivot('CONTENT_TYPE', 
    dbt_utils.get_column_values(ref('f_content'), 'CONTENT_TYPE')) -}}
from {{ ref('f_content') }}
GROUP BY DATE
