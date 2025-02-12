CREATE TEMP TABLE staging_full (
    employee_id INTEGER,
    full_name TEXT,
    department TEXT,
    position TEXT,
    level TEXT,
    hire_date DATE,
    city TEXT,
    country TEXT,
    region TEXT,
    remote_work_ratio FLOAT,
    travel_percentage FLOAT,
    base_salary FLOAT,
    billing_rate FLOAT,
    utilization_target FLOAT,
    actual_utilization FLOAT,
    primary_specialization TEXT,
    secondary_specialization TEXT,
    industry_expertise TEXT,
    certifications TEXT,
    performance_score FLOAT,
    innovation_score FLOAT,
    delivery_quality FLOAT,
    active_projects INTEGER,
    avg_project_complexity FLOAT,
    avg_project_duration FLOAT,
    avg_team_size FLOAT,
    projects_on_time FLOAT,
    project_satisfaction FLOAT,
    training_hours INTEGER,
    mentorship_hours INTEGER,
    knowledge_sharing_score FLOAT,
    promotion_readiness FLOAT,
    engagement_score FLOAT,
    flight_risk FLOAT,
    retention_risk TEXT,
    manager_id INTEGER,
    total_comp FLOAT,
    team_lead_projects INTEGER,
    direct_reports INTEGER,
    is_manager BOOLEAN,
    management_level TEXT,
    span_of_control TEXT,
    management_premium FLOAT,
    span_premium FLOAT
);

---

COPY staging_full
FROM 'C:/Users/govar/OneDrive/Documents/Data_Science_Journey/data/consultancy_data_5400.csv'
WITH (FORMAT csv, HEADER true);

---

CREATE TEMP TABLE staging_employees AS
SELECT employee_id, city FROM staging_full;

---

UPDATE employees e
SET city = s.city
FROM staging_employees s
WHERE e.employee_id = s.employee_id;