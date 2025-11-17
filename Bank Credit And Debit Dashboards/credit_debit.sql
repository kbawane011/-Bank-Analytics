SELECT * FROM credit_debit.maindata;
use credit_debit;
-- ---------------------------------KPI'S ---------------------------------------------
SELECT
-- TOTAL CREDIT AMOUNT ---------------------------------
    Concat('$',Round(Sum(CASE WHEN LOWER(`Transaction Type`) = 'credit' THEN Amount ELSE 0 END)/1000000,1),' M') AS Total_Credit_Amount,

-- TOTAL DEBIT AMOUNT -----------------------------------
  Concat('$',round(SUM(CASE WHEN LOWER(`Transaction Type`) = 'debit' THEN Amount ELSE 0 END)/1000000,1),' M') AS Total_Debit_Amount,

-- NET TRANSACTION AMOUNT --------------------------------
    concat(Round(SUM(CASE 
            WHEN LOWER(`Transaction Type`) = 'credit' THEN Amount 
            WHEN LOWER(`Transaction Type`) = 'debit' THEN -Amount 
            ELSE 0 
        END)/1000,1),' K') AS Net_Transaction_Amount,

 -- CREDIT TO DEBIT RATIO -----------------------------------      
   ROUND(
        (SUM(CASE WHEN LOWER(`Transaction Type`) = 'credit' THEN Amount ELSE 0 END) /
        NULLIF(SUM(CASE WHEN LOWER(`Transaction Type`) = 'debit' THEN Amount ELSE 0 END), 0)), 4
    ) AS Credit_to_Debit_Ratio
FROM maindata;

-- -------------------- BRANCH WISE TOTAL AMOUNT ------------------------
SELECT
    Branch,
    CONCAT(ROUND(SUM(Amount) / 1000000, 2), 'M') AS Total_Amount
FROM maindata
GROUP BY Branch
ORDER BY Total_Amount DESC;

-- ---------------------- BANK NAME WISE DEBIT AND CREDIT ANALYSIS ------------------
SELECT
	`Bank Name`,
    CONCAT(ROUND(SUM(CASE WHEN LOWER(`Transaction Type`) = 'credit' THEN Amount ELSE 0 END) / 1000000, 2), 'M') AS Total_Credit_Amount,
    CONCAT(ROUND(SUM(CASE WHEN LOWER(`Transaction Type`) = 'debit'  THEN Amount ELSE 0 END) / 1000000, 2), 'M') AS Total_Debit_Amount
FROM maindata
GROUP BY `Bank Name`
ORDER BY `Bank Name`;

-- --------------------- BANK WISE TOTAL AMOUNT ----------------------------
SELECT
`Bank Name` ,
   concat(round(sum(amount)/1000000,2),'M')as Total_Amount
   from maindata
   group by `Bank Name`
   order by `Bank Name`;
   
-- -------------------- MONTHLY TREND OF DEBIT VS CREDIT VS BANK TRANSFER ----------------   
SELECT
  DATE_FORMAT(d, '%b') AS `Month`,
  CONCAT('$', ROUND(SUM(CASE WHEN LOWER(`Transaction Method`) = 'bank transfer' THEN Amount ELSE 0 END) / 1000000, 1), ' M') AS `Bank Transfer`,
  CONCAT('$', ROUND(SUM(CASE WHEN LOWER(`Transaction Method`) = 'credit card' THEN Amount ELSE 0 END) / 1000000, 1), ' M') AS `Credit Card`,
  CONCAT('$', ROUND(SUM(CASE WHEN LOWER(`Transaction Method`) = 'debit card' THEN Amount ELSE 0 END) / 1000000, 1), ' M') AS `Debit Card`
FROM (
  SELECT *, STR_TO_DATE(`Transaction Date`, '%d-%m-%Y') AS d
  FROM Maindata
) AS t
GROUP BY DATE_FORMAT(d, '%b'), MONTH(d)
ORDER BY MONTH(d);

