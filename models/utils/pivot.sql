{%- set column_values = ['red', 'blue'] %}
{%- set cmp = '=' %}

{#
{% set sql_statement %}
    select city, state from {{ ref('users') }}
{% endset %}

{%- set places = dbt_utils.get_query_results_as_dict(sql_statement) -%}

    general recenly test. 
    - dbt_utils.recency:
          datepart: day
          field: created_at
          interval: 1
    
    click data
      - dbt_expectations.expect_column_pair_values_A_to_be_greater_than_B:
            column_A: col_numeric_a
            column_B: col_numeric_a
            or_equal: True
        row_condition: "id is not null" # (Optional)

        models:
        - name: model_name
            tests:
            - dbt_utils.expression_is_true:
                expression: "col_a + col_b = total"


    tests:
    - dbt_expectations.expect_column_values_to_be_increasing:
        sort_column: date_day
        row_condition: "id is not null" # (Optional)
        strictly: true # (Optional for comparison operator. Default is 'true', and it uses '>'. If set to 'false' it uses '>='.)
        group_by: [group_id, other_group_id, ...] # (Optional)

#}
select
    size,
    {{- dbt_utils.pivot('color', column_values, cmp=cmp) -}}

from {{- ref('data_pivot') -}}
group by size