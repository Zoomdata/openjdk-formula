{%- from 'openjdk/map.jinja' import openjdk with context -%}

{%- for conf, params in openjdk.apt_config|default({}, true)|dictsort %}

openjdk/Configure APT {{ conf }}:
  file.managed:
    - name: {{ salt['file.join']('/etc/apt/apt.conf.d', conf) }}
    - user: root
    - group: root
    - mode: '0644'
    - contents: {{ params|yaml }}

{%- endfor %}

{%- if 'repo_name' in openjdk %}

openjdk/Set {{ openjdk.repo_name }} repo:
  pkgrepo.managed:
    {%- if 'repo_ppa' in openjdk %}
    - ppa: {{ openjdk.repo_ppa }}
    {%- else %}
    - name: {{ openjdk.repo_entry|format(**openjdk) }}
    {%- endif %}

{%- endif %}
