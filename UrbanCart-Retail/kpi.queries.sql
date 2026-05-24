-- 1. Total Patients
SELECT 
    COUNT(DISTINCT patient_id) AS total_patients
FROM hospital_records;

-- 2. Total Treatment Cost
SELECT 
    SUM(treatment_cost) AS total_treatment_cost
FROM hospital_records;

-- 3. Average Cost per Patient
SELECT 
    ROUND(SUM(treatment_cost) / COUNT(DISTINCT patient_id), 2) 
    AS avg_cost_per_patient
FROM hospital_records;

-- 4. Department-wise Patient Count
SELECT 
    department,
    COUNT(DISTINCT patient_id) AS patient_count
FROM hospital_records
GROUP BY department
ORDER BY patient_count DESC;

-- 5. Department-wise Total Treatment Cost
SELECT 
    department,
    SUM(treatment_cost) AS total_cost
FROM hospital_records
GROUP BY department
ORDER BY total_cost DESC;

-- 6. Insurance vs Non-Insurance Patient Count
SELECT 
    insurance_type,
    COUNT(DISTINCT patient_id) AS patient_count
FROM hospital_records
GROUP BY insurance_type;

-- 7. Insurance vs Non-Insurance Cost Analysis
SELECT 
    insurance_type,
    SUM(treatment_cost) AS total_cost
FROM hospital_records
GROUP BY insurance_type;

-- 8. Monthly Patient Trend
SELECT 
    DATE_TRUNC('month', admission_date) AS month,
    COUNT(DISTINCT patient_id) AS patient_count
FROM hospital_records
GROUP BY month
ORDER BY month;

-- 9. Monthly Treatment Cost Trend
SELECT 
    DATE_TRUNC('month', admission_date) AS month,
    SUM(treatment_cost) AS monthly_cost
FROM hospital_records
GROUP BY month
ORDER BY month;

-- 10. Average Treatment Cost by Department
SELECT 
    department,
    ROUND(AVG(treatment_cost), 2) AS avg_department_cost
FROM hospital_records
GROUP BY department
ORDER BY avg_department_cost DESC;

-- 11. High-Cost Patients (Above Average Cost)
SELECT 
    patient_id,
    treatment_cost
FROM hospital_records
WHERE treatment_cost >
      (SELECT AVG(treatment_cost) FROM hospital_records);

-- 12. Gender-wise Patient Distribution
SELECT 
    gender,
    COUNT(DISTINCT patient_id) AS patient_count
FROM hospital_records
GROUP BY gender;

-- 13. Age Group-wise Patient Count
SELECT 
    CASE
        WHEN age < 18 THEN 'Below 18'
        WHEN age BETWEEN 18 AND 35 THEN '18-35'
        WHEN age BETWEEN 36 AND 55 THEN '36-55'
        ELSE '56+'
    END AS age_group,
    COUNT(DISTINCT patient_id) AS patient_count
FROM hospital_records
GROUP BY age_group
ORDER BY patient_count DESC;

-- 14. Department-wise Cost Contribution Percentage
SELECT 
    department,
    SUM(treatment_cost) AS department_cost,
    ROUND(
        (SUM(treatment_cost) * 100.0) /
        (SELECT SUM(treatment_cost) FROM hospital_records),
        2
    ) AS cost_percentage
FROM hospital_records
GROUP BY department
ORDER BY cost_percentage DESC;

-- 15. Top 3 Departments by Total Treatment Cost
SELECT 
    department,
    SUM(treatment_cost) AS total_cost
FROM hospital_records
GROUP BY department
ORDER BY total_cost DESC
LIMIT 3;
