# Data Job Market Analysis in Jakarta

## Overview

This project analyzes job listings using "data" as keyword (March 2026) period in Jakarta to understand demand, hiring difficulty, and market positioning across data-related roles.
The goal is to identify which roles are in demand, which are hardest to fill, and where opportunities exist for job seekers.

---

## Objectives

- identify the in-demand data roles within business context using job listing as basis.
- Measure hiring difficulty using job posting duration as proxy metric.
- Classify roles into market segments based on demand from total open role and hiring difficulty.
- Provide insights for job seekers.

---

## Data Pipeline

The project follows a structured data workflow:

```
Raw Data            1. Cleaning & Normalization (Power Query + Excel)
                    2. Modeling & Analysis (MySQL)
                    3. Visualization (Power BI)
```

**Cleaning & Normalization**: Performed in Power Query and Excel (handling inconsistencies, mapping position)
**MySQL**: Used for data modeling and analytical views
**PowerBI**: Used to build an interactive dashboard

---


## Key Insights

### 1.  The General Analyst Dominance

- Analyst that are not specifically labeled have the highest number of job listed.
- Level of hiring difficulty is relatively lower compared to overall.
- Likely due to the roles itself more applicable to multiple industry.
	**Observation** this indicate suggest that technical analytical skill is not the sole factor, but knowledge of the industry can be the differentiator.

---

### 2. Opportunity in the Niche Role

- Data Engineer have relatively lower number job listed.
- Hiring difficulty slightly higher than average.
- This might be attributed to more specialized technical skills necessary for the job.
	**Observation** this might suggest that there are opportunity here for people who wants to develop further technical skills.

---

### 3. Business Intelligence/Analyst Gap

- Business Intelligence/Analyst show moderately higher job demand and difficulty rate.
- This might suggest that there are talent gaps for the position.
	**Observation** this might suggest that employers struggle to find candidates with several technical skill (i.e analytics + visualization) alongside business understanding.

---

### 4. Data Focused Roles in Market

- Data Scientist have the lowest job demand alongside relatively low hiring difficulty, this indicate there are limited demand for the position.
- Data Analyst falls right in the middle of both hiring difficulty and job demand, this indicate stable demand and moderate competition.
- Overall the market itself doesnt have extreme differences of demand or hiring difficulty across data roles.
	**Observation** this should be interpreted with caution due to the analysis are using proxy metrics and limited dataset.

---

## Limitations

- Hiring difficulty is based on posting duration (proxy, not direct measurement).
- Threshold (20 days) is assumption-based.
- Dataset limited to available job listings with keyword searching.