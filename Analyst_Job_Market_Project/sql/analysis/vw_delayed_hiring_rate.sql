CREATE OR REPLACE VIEW vw_delayed_hiring_rate AS
	SELECT
		role_cleaned,
		COUNT(*) AS total_jobs,
        ROUND(AVG(days_since_posted), 2) AS average_posting_time,
        SUM(CASE WHEN days_since_posted BETWEEN 0 AND 10 THEN 1 ELSE 0 END) AS fresh_jobs,
        SUM(CASE WHEN days_since_posted BETWEEN 11 AND 20 THEN 1 ELSE 0 END) AS recent_jobs,
        SUM(CASE WHEN days_since_posted > 20 THEN 1 ELSE 0 END) AS old_jobs,
        ROUND(
			SUM(CASE WHEN days_since_posted > 20 THEN 1 ELSE 0 END) * 100.0 /
			NULLIF(COUNT(*), 0), 2) AS delayed_hiring_rate
	FROM vw_role_cleaned
    WHERE role_cleaned IS NOT NULL
    GROUP BY role_cleaned