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

<img width="1329" height="602" alt="Screenshot 2025-11-10 222255" src="https://github.com/user-attachments/assets/fbf85a64-d8f2-424b-9851-53077369e84c" />


### **Tableau Credit–Debit Dashboard**

<img width="1905" height="988" alt="Screenshot 2025-11-10 222119" src="https://github.com/user-attachments/assets/6e5613fd-58bc-4902-9bf8-ec737b8c3b9e" />


### **Power BI Credit–Debit Dashboard**

<img width="1283" height="719" alt="Screenshot 2025-11-10 223009" src="https://github.com/user-attachments/assets/158a86c0-9c8e-45c8-a605-769894f00fc9" />

---

## **2️⃣ Loan Performance Dashboards**

### **Excel Loan Risk Dashboard**

KPIs used:

* Delinquent Count
* Delinquent Rate
* Default Count
* Default Rate
* Not Verified Loans

### 📸 **Project Screenshots** 

<img width="1247" height="602" alt="Screenshot 2025-11-17 160144" src="https://github.com/user-attachments/assets/bea1a2a3-7d01-4522-b06e-2088fcebb290" />

---

### **Power BI Loan Dashboard**

KPIs used:

* Count of Client ID
* Sum of Total Received Interest
* Sum of Funded Amount
* Sum of Total Payment
* Sum of Loan Amount

### 📸 **Project Screenshots**

<img width="1270" height="711" alt="Screenshot 2025-11-17 160541" src="https://github.com/user-attachments/assets/31e98d10-f225-44ad-a9e3-a101b68d247b" />

<img width="1261" height="702" alt="Screenshot 2025-11-17 160600" src="https://github.com/user-attachments/assets/c0ae4797-a316-4b9d-b0e1-073747fb1d0b" />

---

### **Tableau Loan Dashboard**

KPIs used:

* Total Collection
* Loan Issued
* Total Loan Amount
* Total Funded Amount

### 📸 **Project Screenshots**

<img width="1917" height="984" alt="Screenshot 2025-11-17 160712" src="https://github.com/user-attachments/assets/85b29ab2-781d-4523-b08f-2c85a1153cb3" />

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

