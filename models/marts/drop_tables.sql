{% set relations_to_drop = dbt_utils.get_relations_by_pattern(
    schema_pattern='dbt_nthakur',
    table_pattern='*'
) %}

{% set sql_to_execute = [] %}

{{ log('Statements to run:', info=True) }}

{% for relation in relations_to_drop %}
    {% set drop_command -%}
    -- drop {{ relation.type }} {{ relation }} cascade;
    {%- endset %}
    {% do log(drop_command, info=True) %}
    {% do sql_to_execute.append(drop_command) %}
{% endfor %}