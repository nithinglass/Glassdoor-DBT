{% set CONTENT_TYPES  = ["Reviews", "Salaries", "Interviews", "INTERVIEW_QUESTIONS",  "BENEFIT_OVERVIEW", "Employer_Response", "Benefit_Detail", "Photos", "Resume", "Awards", "Interview_Answer"] %}

select
    {% for CONTENT_TYPE_ITEM in CONTENT_TYPES %}
    sum(case when  CONTENT_TYPE = '{{CONTENT_TYPE_ITEM}}' then APPROVED_CONTENT end) 
        as {{CONTENT_TYPE_ITEM}},
    {% endfor %}
    DATE, 
from {{ ref('f_content') }}
group by DATE