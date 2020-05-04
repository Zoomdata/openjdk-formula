{%- from 'openjdk/map.jinja' import openjdk with context -%}

{%- if openjdk.set_java_home and 'java_home' in openjdk -%}

openjdk/Set JAVA_HOME env variable globally:
  file.managed:
    - name: '/etc/profile.d/java_home.sh'
    - contents: 'JAVA_HOME={{ openjdk.java_home }}'

{%- endif %}
