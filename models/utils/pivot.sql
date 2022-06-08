{%- set column_values = ['red', 'blue'] %}
{%- set cmp = '=' %}

select
    size,
    {{- dbt_utils.pivot('color', column_values, cmp=cmp) -}}

from {{- ref('data_pivot') -}}
group by size