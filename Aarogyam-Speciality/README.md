🏥 Aarogyam Speciality Hospital — Operational Analytics Dashboard

Problem Statement-
Hospitals generate massive amounts of patient and billing data, but without structured analysis, key operational issues — high readmission rates, cost-heavy departments, uninsured patient burden — go unnoticed. This project analyzes 984 patient records across 4 years to identify cost drivers, readmission risks, and insurance gaps to support data-driven hospital management decisions.

Tools Used-
ToolPurposeMySQLKPI development, patient segmentation, cost analysisPower BI5-page interactive dashboard with drill-through navigation

Dataset Records-
984 patients (2022–2025)
Total Treatment Cost: ₹8M+
Features: Patient ID, admission date, department, condition, treatment cost, insurance status, gender, age, length of stay, readmission, outcome, satisfaction score


Dashboard Pages-
PageFocusOverviewHigh-level KPIs, patient trends, outcomesDemographicsAge, gender distribution, condition breakdownTreatment & DepartmentCost by condition, avg length of stay, medication satisfactionQuality & OutcomesRecovery rate, readmission by condition, satisfaction scoresInsuranceInsurance vs non-insurance cost and patient split

Key Findings-
26.8% readmission rate and 38-day avg length of stay identified as primary operational risk indicators
Cancer & Prostate Cancer are the highest-cost conditions (~₹1.5M+ each); avg treatment cost is ₹8,370/patient
Heart Attack & Heart Disease show the highest readmission rates across all conditions — flagged as priority intervention targets
64.33% of patients are uninsured despite ₹8M+ in total treatment costs — significant revenue recovery opportunity
Patient volume peaked at 261 in 2023, declining to 230 in 2025 — flagged as a capacity planning signal
Overall recovery rate is 60.1% with a satisfaction score of 3.6/5


Business Recommendations

Launch targeted readmission prevention programs for Heart Attack and Heart Disease patients
Introduce insurance enrollment drives — 64% uninsured patient base represents a major billing gap
Review Cancer and Prostate Cancer treatment protocols to assess cost optimization opportunities
Investigate the 2024–2025 patient volume decline for early intervention
Use satisfaction score segmentation to identify low-performing departments and improve patient experience


SQL KPIs Developed (15 Queries)

Total patients and total treatment cost
Average cost per patient
Department-wise patient count and cost contribution %
Insurance vs non-insurance cost and patient split
Monthly patient trend and cost trend
High-cost patient segmentation (above average cost using subquery)
Age group and gender-wise patient distribution
Top 3 departments by total treatment cost

Project Structure

Aarogyam-Speciality/
├── Hospital Patient.csv               # Dataset
├── kpi.queries.sql                    # 15 SQL KPI queries
├── Health Care.pbix                   # Power BI dashboard file
├── dashboard-overview.png             # Dashboard screenshot
└── README.md                          # Project documentation
