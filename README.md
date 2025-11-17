# 💳📊 **Bank Analytics Dashboard**

A complete end-to-end **Bank Analytics** project analyzing credit–debit transactions and loan performance using **Excel**, **MySQL**, **Tableau**, and **Power BI**.
This project provides actionable insights related to cash flow, loan funding, defaults, delinquency, customer activity, and branch performance.


## 📝 **Project Overview**

This project analyzes financial transactions and loan portfolio data using multiple BI tools. It covers **data cleaning**, **SQL-based modeling**, **KPI extraction**, and **dashboard creation** across Excel, Tableau, and Power BI.

The goal is to help stakeholders monitor **cash flow**, **loan performance**, **risk factors**, **customer activity**, and **branch contributions**—all through interactive dashboards.


## ⭐ **Features**

## **1️⃣ Credit & Debit Dashboard (Excel + Tableau + Power BI)**

KPIs used:

* Total Credit
* Total Debit
* Credit–Debit Ratio
* Total Transaction Amount
* Net Transaction
* Transaction Method Trends
* Branch-wise Transaction Value

# 📸 **Dashboard Previews**

### **Excel Credit–Debit Dashboard**

<img width="1329" height="602" alt="Screenshot 2025-11-10 222255" src="https://github.com/user-attachments/assets/26181ec9-abe8-410e-a323-e37e38d2e950" />


### **Tableau Credit–Debit Dashboard**

<img width="1905" height="988" alt="Screenshot 2025-11-10 222119" src="https://github.com/user-attachments/assets/78b200fb-aa84-4418-b97a-d5dda8d18e55" />


### **Power BI Credit–Debit Dashboard**

<img width="1283" height="719" alt="Screenshot 2025-11-10 223009" src="https://github.com/user-attachments/assets/4c38d52d-53a9-4cd7-acfc-803ad857e6d7" />


## **2️⃣ Loan Performance Dashboards**

### **Excel Loan Risk Dashboard**

KPIs used:

* Delinquent Count
* Delinquent Rate
* Default Count
* Default Rate
* Not Verified Loans

### 📸 **Project Screenshots** 

<img width="1247" height="602" alt="Screenshot 2025-11-17 160144" src="https://github.com/user-attachments/assets/678bfa9b-bc1d-4aa2-8b47-79130004d2ca" />


### **Power BI Loan Dashboard**

KPIs used:

* Count of Client ID
* Sum of Total Received Interest
* Sum of Funded Amount
* Sum of Total Payment
* Sum of Loan Amount

### 📸 **Project Screenshots**

<img width="1270" height="711" alt="Screenshot 2025-11-17 160541" src="https://github.com/user-attachments/assets/3f36b3e2-16a9-4d24-b01a-fe9adc31c9a8" />

<img width="1261" height="702" alt="Screenshot 2025-11-17 160600" src="https://github.com/user-attachments/assets/5a0cb7a6-6758-4275-80ee-2af0fff09e7d" />

---

### **Tableau Loan Dashboard**

KPIs used:

* Total Collection
* Loan Issued
* Total Loan Amount
* Total Funded Amount

### 📸 **Project Screenshots**

<img width="1917" height="984" alt="Screenshot 2025-11-17 160712" src="https://github.com/user-attachments/assets/30a74562-5d14-41b6-ac88-6544722738c1" />

---

# 📊 **Key Insights**

* Net transaction amount shows the bank’s cash flow strength
* Branch-wise analysis highlights top-performing locations
* Credit–debit ratio reveals customer transaction behavior
* Delinquent & default KPIs identify high-risk loan categories
* Not-verified loans indicate documentation and compliance risks
* Funded vs Loan amount shows funding efficiency
* Customer-level insights help in targeted risk management

---

# 🛠 **Tools & Technology Used**

| Tool           | Purpose                                        |
| -------------- | ---------------------------------------------- |
| **Excel**      | Data cleaning, transformation, risk KPIs       |
| **MySQL**      | Database setup, joins, running KPI queries     |
| **Tableau**    | Visualizing loan performance & trends          |
| **Power BI**   | Advanced dashboarding for loans & transactions |
| **CSV/Excel**  | Input datasets                                 |
| **PowerPoint** | Presentation for final submission              |

---

# 📁 **Dataset Information**

The dataset consists of multiple tables:

### **Loan Data**

* Loan Amount
* Funded Amount
* Total Payment
* Received Interest
* Grade, Status
* Verification Status

### **Customer Data**

* Client ID
* Age Group
* Religion
* Home Ownership
* State

### **Transaction Data**

* Debit / Credit Amount
* Transaction Type
* Bank Name
* Branch
* Month

### **Risk Data**

* Default Flag
* Delinquent Flag
* Not Verified Loans

---

# 📈 **How to Use the Dashboards**

### **1. Credit–Debit Dashboard**

* Analyze total credit, total debit, and net transaction
* Compare branches
* View transaction method influence
* Understand monthly trends

### **2. Excel Loan Dashboard**

* Monitor delinquency & default behavior
* Identify unverified loans
* Check loan status distribution

### **3. Tableau Loan Dashboard**

* Explore loan distribution across states
* Analyze funded amount & loan amount
* View top-performing branches

### **4. Power BI Loan Dashboard**

* Check customer-level metrics
* Compare funded vs loan amount
* Examine payments and interest revenue

---

# 🔮 **Future Enhancements**

* Add machine learning model to predict default probability
* Add anomaly detection for fraud transactions
* Integrate real-time SQL database refresh
* Add forecasting for loan demand and repayment trends
* Create a mobile-friendly dashboard version

---

# 📦 **Project Structure**

```
/data
    loan_data.csv
    transaction_data.csv
/sql
    Create_Tables.sql
    KPI_Queries.sql
/dashboards
    Excel_Credit_Debit.xlsx
    Tableau_Debit_Credit.twbx
    PowerBI_Credit_Debit.pbix
    Excel_Loan_Risk.xlsx
    PowerBI_Loan.pbix
    Tableau_Loan.twbx
README.md
```

