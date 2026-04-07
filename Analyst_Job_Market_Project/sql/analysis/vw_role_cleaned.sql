CREATE OR REPLACE VIEW vw_role_cleaned AS
SELECT
    *,
    CASE
        WHEN LOWER(open_position) LIKE '%data scientist%'
            OR LOWER(open_position) LIKE '%machine learning%'
            THEN 'Data Scientist / ML'

        WHEN LOWER(open_position) LIKE '%data engineer%'
            OR LOWER(open_position) LIKE '%etl%'
            THEN 'Data Engineer'

        WHEN LOWER(open_position) LIKE '%data analyst%'
            THEN 'Data Analyst'

        WHEN LOWER(open_position) LIKE '%business intelligence%'
            OR LOWER(open_position) LIKE '%reporting analyst%'
            OR LOWER(open_position) LIKE '%business analyst%'
            THEN 'Business Intelligence/Analyst'

        WHEN LOWER(open_position) LIKE '%analyst%'
            THEN 'Analyst'

        ELSE NULL
    END AS role_cleaned

FROM staging_js