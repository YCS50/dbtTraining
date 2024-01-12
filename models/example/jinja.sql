{%- set country=['USA','uk','germany','japan'] -%}  
{%- for country in country -%}
    My country is {{ country|capitalize }}
{% endfor %}

{%- set my_score=67 -%}
{%- set passing_score=60 -%}
{%- if my_score > passing_score -%}
You  have passed the exam!
{%- else -%}
You have failed!
{%- endif -%}
