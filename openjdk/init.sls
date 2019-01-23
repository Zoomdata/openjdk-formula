{%- from 'openjdk/map.jinja' import openjdk with context -%}

openjdk:
  pkg.installed:
    - name: {{ openjdk.pkg }}
