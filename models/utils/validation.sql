{% set a_relation=ref('fsa_pre')%}

{% set b_relation=ref('fsa_post') %}

{{- audit_helper.compare_relations(
    a_relation=a_relation,
    b_relation=b_relation
) -}}