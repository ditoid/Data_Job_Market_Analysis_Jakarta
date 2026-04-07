CREATE OR REPLACE VIEW vw_demand_pressure AS
	SELECT
		role_cleaned,
		total_jobs,
        average_posting_time,
		delayed_hiring_rate,
        CASE
			WHEN total_jobs > global_avg_total_jobs THEN 'High Job Demand'
            ELSE 'Low Job Demand' END AS demand_level,
		CASE
			WHEN delayed_hiring_rate > global_avg_delayed_rate THEN 'High Hiring Difficulty'
            ELSE 'Low Hiring Difficulty' END AS hiring_difficulty_level,
            
		CASE
			WHEN total_jobs > global_avg_total_jobs
            AND delayed_hiring_rate > global_avg_delayed_rate
				THEN 'Workforce Shortage'
			WHEN total_jobs > global_avg_total_jobs
            AND delayed_hiring_rate < global_avg_delayed_rate
				THEN 'Efficient Hiring'
			WHEN total_jobs < global_avg_total_jobs
            AND delayed_hiring_rate > global_avg_delayed_rate
				THEN 'Hard-to Fill Role'
			ELSE 'Low Priority Hire'
		END AS market_category
	FROM (
		SELECT
			*,
            AVG(total_jobs) OVER() AS global_avg_total_jobs,
            AVG(delayed_hiring_rate) OVER() AS global_avg_delayed_rate
		FROM vw_delayed_hiring_rate
	) n