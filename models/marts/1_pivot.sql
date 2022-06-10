SELECT date,
       Sum(CASE
             WHEN content_type = 'Reviews' THEN approved_content
             ELSE 0
           end) AS `Reviews`,
       Sum(CASE
             WHEN content_type = 'Salaries' THEN approved_content
             ELSE 0
           end) AS `Salaries`,
       Sum(CASE
             WHEN content_type = 'Interviews' THEN approved_content
             ELSE 0
           end) AS `Interviews`,
       Sum(CASE
             WHEN content_type = 'INTERVIEW_QUESTIONS' THEN approved_content
             ELSE 0
           end) AS `INTERVIEW_QUESTIONS`,
       Sum(CASE
             WHEN content_type = 'BENEFIT_OVERVIEW' THEN approved_content
             ELSE 0
           end) AS `BENEFIT_OVERVIEW`,
       Sum(CASE
             WHEN content_type = 'Employer_Response' THEN approved_content
             ELSE 0
           end) AS `Employer_Response`,
       Sum(CASE
             WHEN content_type = 'Benefit_Detail' THEN approved_content
             ELSE 0
           end) AS `Benefit_Detail`,
       Sum(CASE
             WHEN content_type = 'Photos' THEN approved_content
             ELSE 0
           end) AS `Photos`,
        Sum(CASE
             WHEN content_type = 'Resume' THEN approved_content
             ELSE 0
           end) AS `Resume`,
       Sum(CASE
             WHEN content_type = 'Awards' THEN approved_content
             ELSE 0
           end) AS `Awards`,
       Sum(CASE
             WHEN content_type = 'Interview_Answer' THEN approved_content
             ELSE 0
           end) AS `Interview_Answer`
FROM  {{ ref('f_content') }}
GROUP  BY date
LIMIT  500 