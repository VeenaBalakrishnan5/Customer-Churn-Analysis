

--1. Overall Churn rate
SELECT COUNT(*) AS Total_Customers,SUM(CASE WHEN churn = 'Yes' THEN 1
ELSE 0 END) AS Churned_Customers, CAST (ROUND(100.0 * SUM(CASE 
WHEN churn = 'Yes' THEN 1 ELSE 0 END)/ COUNT(*),2)
AS DECIMAL(5,2)) AS Churn_Rate_Percentage FROM customer_churn;


--2. Churn by Contract
SELECT contract,COUNT(*) customers,SUM(CASE WHEN churn='Yes'
THEN 1 ELSE 0 END ) churned FROM customer_churn GROUP BY Contract
ORDER BY churned DESC;



--3.Revenue Lost
SELECT SUM(monthlycharges) AS Revenue_Lost FROM customer_churn WHERE churn='Yes';



--4.Churn by Internet Type
SELECT internetservice, COUNT(*) customers,
SUM(CASE WHEN churn='Yes' THEN 1 ELSE 0 END) AS churned 
FROM customer_churn GROUP BY internetservice;



--5.Top Risk Segment
SELECT contract,internetservice,COUNT(*) customers,
SUM(CASE WHEN churn='Yes' THEN 1 ELSE 0 END) churned FROM customer_churn
GROUP BY contract,internetservice ORDER BY Churned DESC;
