create database telecom_churn;
use telecom_churn;
show tables;
use churn_analysis;
show tables;
SELECT COUNT(*) AS total_customers
FROM `telco-customer-churn`;
RENAME TABLE `telco-customer-churn`
TO churn;
SELECT COUNT(*) AS total_customers
FROM churn;
SELECT COUNT(*)
FROM churn
WHERE Churn='Yes';
SELECT
ROUND(
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)*100.0
/COUNT(*),2
) AS churn_rate
FROM churn;
SELECT Contract,
COUNT(*) AS customers
FROM churn
GROUP BY Contract;
SELECT InternetService,
COUNT(*) AS customers
FROM churn
GROUP BY InternetService;
SELECT
AVG(MonthlyCharges)
FROM churn;
