
SET SQL_SAFE_UPDATES = 0;

UPDATE cleaned_csv
SET Disbursement_Date = STR_TO_DATE(Disbursement_Date, '%m/%d/%Y');


select Disbursement_Date
from cleaned_csv;

UPDATE cleaned_csv
SET NextMeetingDate = STR_TO_DATE(NextMeetingDate, '%m/%d/%Y');

UPDATE cleaned_csv
SET Closed_Date = STR_TO_DATE(Closed_Date, '%m/%d/%Y');

describe cleaned_csv;


ALTER TABLE cleaned_csv
MODIFY COLUMN Disbursement_Date Date;

ALTER TABLE cleaned_csv
MODIFY COLUMN Closed_Date Date;

ALTER TABLE cleaned_csv
MODIFY COLUMN NextMeetingDate Date;

# 1 Find total loan amount disbursed per city 
SELECT City, SUM(Loan_Amount) AS Total_Loan_Disbursed
FROM cleaned_csv
GROUP BY City;


#2 Show cities having total recovery more than ₹10,000: 
SELECT City, SUM(Total_Rrec_int) AS Total_Recovery
FROM cleaned_csv
GROUP BY City
HAVING SUM(Total_Rrec_int) > 10000;

#3 List top 5 clients with highest total payment
#Concept: ORDER BY, LIMIT
SELECT Account_ID, Client_id, Total_Pymnt
FROM cleaned_csv
ORDER BY Total_Pymnt DESC
LIMIT 5;

#4 Rank clients by total payment within each branch
#Concept: Window Function (RANK OVER)
SELECT Branch_Name, Client_id, Total_Pymnt,
       RANK() OVER (PARTITION BY Branch_Name ORDER BY Total_Pymnt DESC) AS Payment_Rank
FROM cleaned_csv;

#5 inserted a new coloum called default_count
select *, 
case when Is_Default_loan='Y' then 1 
else 0
end as default_count 
from cleaned_csv;


#6 Calculate percentage contribution of each branch’s loan to total loans
#Concept: Window Function (SUM OVER)
SELECT 
    Branch_Name,
    SUM(Loan_Amount) AS Branch_Total,
    ROUND(100.0 * SUM(Loan_Amount) / (SELECT SUM(Loan_Amount) FROM cleaned_csv), 2) AS Percent_Contribution
FROM cleaned_csv
GROUP BY Branch_Name;


#7 show customer who deafulted more than once 
SELECT Account_ID, Is_Default_loan,count(Is_Default_loan) as total_default_count
FROM cleaned_csv WHERE Is_Default_loan = 'Y' group by 1,2
 having total_default_count>1 ;
 
#8 tcl 
#Create a stored procedure to fetch top-performing branches
CREATE PROCEDURE GetTopBranches()
BEGIN
  SELECT Branch_Name, SUM(Total_Pymnt) AS Total_Payment
  FROM cleaned_csv
  GROUP BY Branch Name
  ORDER BY Total_Payment DESC
  LIMIT 5;
END;


 
#9 Demonstrate Transaction Control (TCL) commands
START TRANSACTION;

UPDATE cleaned_csv
SET Is_Default_loan = 'Y'
WHERE City = 'Patiala';

ROLLBACK;