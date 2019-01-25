{%- from 'openjdk/map.jinja' import openjdk with context -%}

openjdk/Install JRE package:
  pkg.installed:
    - name: {{ openjdk.pkg }}
    {%- if 'repo_name' in openjdk %}
    - fromrepo: {{ openjdk.repo_name }}
    {%- endif %}
