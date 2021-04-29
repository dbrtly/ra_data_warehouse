{%- macro source_is_enabled(source_name) -%}

  {%- set variable_name = 'source_' + source_name -%}
  {%- if var( variable_name ) -%} 
    {{ config(enabled= True)  }}
  {%- else -%} {{ config(enabled= false)  }}
  {%- endif -%} 

{%- endmacro -%}
