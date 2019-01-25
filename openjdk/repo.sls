{%- from 'openjdk/map.jinja' import openjdk with context -%}

{%- if 'repo_name' in openjdk %}

openjdk/Set {{ openjdk.repo_name }} repo:
  pkgrepo.managed:
    {%- if 'repo_ppa' in openjdk %}
    - ppa: {{ openjdk.repo_ppa }}
    {%- else %}
    - name: {{ openjdk.repo_entry|format(**openjdk) }}
    {%- endif %}

{%- endif %}
