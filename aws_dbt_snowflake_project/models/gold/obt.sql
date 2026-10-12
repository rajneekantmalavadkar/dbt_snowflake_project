{% set configs = get_gold_table_configs() %} --call the macro to get the configs

SELECT
    {% for config in configs %}
        {{ config.columns }}{% if not loop.last %},{% endif %}
    {% endfor %}
FROM
    {% for config in configs %}
        {% if loop.first %}
            {{ config.table }} AS {{ config.alias }}
        {% else %}
            LEFT JOIN {{ config.table }} AS {{ config.alias }}
            ON {{ config.join_condition }}
        {% endif %}
    {% endfor %}
