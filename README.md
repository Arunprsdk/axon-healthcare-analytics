# 🏥 AXON Healthcare Analytics

### Integrated Healthcare Dashboard & SQL Analysis

An end-to-end healthcare analytics project focused on analyzing **patient activity, clinical visits, diagnostic testing, treatment outcomes, insurance, payments and patient demographics**.

The project combines **Excel, SQL, Tableau and Power BI** to transform healthcare data into interactive dashboards and business insights for management analysis.

---

## 📌 Project Overview

The objective of this project was to create a unified analytical view of healthcare operations by integrating clinical, diagnostic, treatment, insurance and financial information.

### 📊 Key Metrics

| KPI                       |   Value |
| ------------------------- | ------: |
| 👥 Total Patients         |  10,000 |
| 🏥 Total Visits           |  10,000 |
| 💰 Revenue                | $25.41M |
| 🩺 Chronic Rate           |  80.35% |
| 🎂 Average Age            |   48.94 |
| 💊 Treatment Success Rate |  33.01% |

*Headline values are taken from the supplied project dashboard visuals.*

---

## 🛠️ Tools & Technologies

* **Microsoft Excel** — Data analysis and dashboard development
* **MySQL / SQL** — Relational data model, validation and analytical queries
* **Power BI** — Clinical, executive and patient analytics dashboards
* **Tableau** — Treatment and insurance analytics
* **Data Analysis** — KPI analysis, validation and business insights

---

## 📊 Dashboards

### 1️⃣ Excel Dashboard — Clinical Visit & Diagnostic Insights

The Excel dashboard focuses on clinical visits and diagnostic testing.

### Key Metrics

* Total Visits: **10.0K**
* Visit Completion Rate: **32.66%**
* Follow-up Rate: **49.84%**
* Abnormal Test Rate: **33.54%**
* Pending Test Rate: **33.44%**

The dashboard includes interactive filters for:

* Gender
* Test Type
* Diagnosis
* Date Range

---

### 2️⃣ Tableau Dashboard — Treatment & Insurance Analytics

The Tableau dashboard focuses on treatment outcomes, insurance and payment analysis.

### Key Metrics

* Total Treatments: **10K**
* Treatment Success Rate: **33.01%**
* Direct Treatment Amount: **5.25M**
* Insurance Coverage: **100%**
* Paid Payments: **59.58%**
* Top Provider: **INS013 — 689 patients**

Interactive filters include:

* Treatment Outcome
* Treatment Type
* Insurance Provider
* Payment Status

---

### 3️⃣ Power BI — Clinical Analytics

The clinical dashboard provides analysis of:

* Clinical visits
* Diagnostic testing
* Visit completion
* Follow-up activity
* Test results
* Patient activity

---

### 4️⃣ Power BI — Executive Dashboard

The executive dashboard provides a management-level view of healthcare performance, helping monitor important operational and financial indicators.

---

### 5️⃣ Power BI — Patient Analytics

The patient analytics dashboard focuses on:

* Patient demographics
* Chronic conditions
* Patient registrations
* Healthcare activity

---

## 🗄️ SQL Database & Data Model

The project uses a relational healthcare data model connecting clinical and financial entities.

### Data Flow

```text
Department
     ↓
Doctor
     ↓
Visit
     ↓
Treatment / LabResult
     ↓
Billing
```

### Key Relationships

* Primary keys identify core records.
* Foreign keys connect patients, doctors, visits and downstream clinical/financial records.
* Patient data includes demographics, insurance, chronic conditions and allergies.
* Visit and Treatment tables capture clinical activity and treatment outcomes.

---

## 🔍 SQL Validation & Analysis

SQL was used for:

* Database creation and loading
* Data validation
* Table-level inspection
* Record-count validation
* Relational data analysis
* Supporting dashboard reporting

### Supporting Tables

**LabResult**

Contains:

* Test date
* Test name
* Result
* Numeric value
* Units
* Reference range

**Billing**

Contains:

* Billed amount
* Insurance covered amount
* Patient paid amount
* Outstanding amount
* Payment status

---

## 📈 Key Findings

### Clinical & Diagnostic

* **32.66%** visit completion rate
* **49.84%** follow-up rate
* **33.54%** abnormal test rate
* **33.44%** pending test rate

### Treatment

* **33.01%** treatment success rate
* **10K** total treatments analyzed

### Healthcare Operations

* General Medicine showed the highest displayed department revenue at approximately **$5.51M**.
* Migraine was the highest-volume diagnosis shown, with **2,039** cases.
* Hypertension had the highest displayed chronic-condition prevalence at **20.54%**.

---

## 💡 Business Recommendations

Based on the analysis:

* Improve visit completion and treatment follow-through.
* Investigate failed and ongoing treatment cases.
* Reduce the pending diagnostic-test backlog.
* Prioritize abnormal diagnostic results.
* Monitor department revenue and treatment economics.
* Use demographic and condition filters for targeted planning.
* Monitor payment status and insurance-provider performance.

---

## 📂 Repository Structure

```text
axon-healthcare-analytics/
│
├── README.md
│
├── data/
│   └── README.md
│
├── sql/
│   └── axon_healthcare_analysis.sql
│
├── excel/
│   └── axon_healthcare_dashboard.xlsx
│
├── powerbi/
│   └── axon_healthcare_dashboard.pbix
│
├── tableau/
│   └── axon_healthcare_dashboard.twbx
│
├── screenshots/
│   ├── excel-dashboard.png
│   ├── tableau-dashboard.png
│   ├── powerbi-clinical.png
│   ├── powerbi-executive.png
│   └── powerbi-patient-analytics.png
│
└── presentation/
    └── AXON_Healthcare_Analytics.pptx
```

---

## 🎯 Skills Demonstrated

* SQL & MySQL
* Data Cleaning & Validation
* Relational Data Modeling
* Excel Dashboard Development
* Power BI Dashboard Development
* Tableau Visualization
* KPI Analysis
* Healthcare Analytics
* Data Visualization
* Business Intelligence
* Business Reporting
* Data-Driven Decision Making

---

## 👥 Project Team

**Arunprasad Rajesh Kounder**
Samreen Sayed
KARTHIK_H
G. Madhukar

---

## 👤 My Role

**Data Analyst / Project Team Member**

Contributed to the development and analysis of the integrated healthcare analytics solution using **Excel, SQL, Tableau and Power BI**.

---

## 📜 Certification

**AiVariant — Data Analyst Internship**

Project work completed as part of the Data Analyst internship/project experience.

---

## 📬 Contact

**Arunprasad Rajesh Kounder**

📍 Mumbai, Maharashtra, India

📧 [arun14899k@gmail.com](mailto:arun14899k@gmail.com)

🔗 LinkedIn: [Arunprasad Kounder](https://www.linkedin.com/in/arunprasad-kounder-729bb5199)

---

⭐ *This project demonstrates an end-to-end data analytics workflow — from relational data and SQL validation to interactive dashboards and business insights.*
