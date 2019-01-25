{%- from 'openjdk/map.jinja' import openjdk with context -%}

{%- if openjdk.set_java_home and 'java_home' in openjdk -%}

openjdk/Set JAVA_HOME env variable globally:
  file.blockreplace:
    - name: /etc/environment
    - content: 'JAVA_HOME={{ openjdk.java_home }}'
    - append_if_not_found: True

{%- endif %}
