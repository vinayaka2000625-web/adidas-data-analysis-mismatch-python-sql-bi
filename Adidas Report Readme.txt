# Revenue Reconciliation & Leakage Analysis

------------------------------------------------------------------------

## 📑 Table of Contents

-   [Project Overview](#project-overview)
-   [Problem Statement](#problem-statement)
-   [Dataset](#dataset)
-   [Tools & Technologies](#tools--technologies)
-   [Methodology](#methodology)
-   [Key Metrics](#key-metrics)
-   [Dashboard](#dashboard)
-   [Results & Conclusion](#results--conclusion)
-   [How to Run](#how-to-run)
-   [Future Work](#future-work)

------------------------------------------------------------------------

## Project Overview

This project analyzes adidas transactional sales data to identify
revenue leakage caused by mismatched sales values, pricing
inconsistencies, and margin inefficiencies. Sales were recalculated
using unit price and quantity to validate reported revenue and quantify
financial impact.

------------------------------------------------------------------------

## Problem Statement
The company wants to ensure that
1.  Reported revenue is accurate.
2. Pricing and Profitability are consistent.
3. There is no hidden revenue or margin leakage.


------------------------------------------------------------------------

## Dataset

The dataset contains the following fields:

-   Retailer, Retailer ID\
-   Invoice Date\
-   Region, State, City\
-   Price per Unit\
-   Units Sold\
-   Total Sales (Reported)\
-   Operating Profit\
-   Sales Method

------------------------------------------------------------------------

## Tools & Technologies

-   Python --- Data cleaning, numeric conversion, recalculation,
    validation\
-   SQL --- Aggregations, variance analysis, hypothesis testing\
-   Power BI --- KPI reporting and dashboards\
-   ChatGPT --- Concept clarification and productivity enhancement.

------------------------------------------------------------------------

## Methodology

1.  Converted numeric columns from string to numeric format.\
2.  Removed currency symbols and formatting inconsistencies.\
3.  Recalculated sales using Price per Unit × Units Sold.\
4.  Computed revenue variance between reported and recalculated sales.\
5.  Flagged mismatched transactions.\
6.  Calculated price deviation percentage.\
7.  Computed operating margin across regions and methods.\
8.  Built dashboards for executive insights and root cause analysis.


### Python Analysis Screenshot(Corrected VS Mismatch)
![Python Analysis](Adidas pic/screenshot Py.png)


### SQL Query Screenshot(Based On Hypothesis)
![SQL Query pic1](Adidas pic/SQL Screenshort 1.png)
![SQL Query pic2](Adidas pic/SQL Screenshort 2.png)

------------------------------------------------------------------------

## Key Metrics

-   Total Reported Sales: 89.82M\
-   Total Corrected Sales: 119.99M\
-   Revenue Loss: -30.17M\
-   Revenue Loss %: 33.58%\
-   Average Price per Unit: 45.21\
-   Price Deviation: 119.82%\
-   Operating Margin: 27.63%

------------------------------------------------------------------------

## Dashboard

### Page 1 --- Executive Summary

KPIs showing total reported sales, corrected sales, revenue loss,
leakage percentage, and operating margin to quantify financial impact.

![Executive Summary](Adidas pic/Dashboard 1.png)

### Page 2 --- Pricing & Margin Drivers

Charts showing price deviation and operating margin across regions and
sales methods to identify root causes.

![Pricing & Margin Drivers](Adidas pic/Dashboard 2.png)

------------------------------------------------------------------------

## Results & Conclusion

The analysis confirms revenue leakage driven by pricing inconsistency
and margin inefficiencies rather than data quality issues. Implementing
pricing controls and margin monitoring can reduce financial loss.

------------------------------------------------------------------------

## How to Run

1.  Load dataset into Python and perform data cleaning.\
2.  Export cleaned data to SQL database.\
3.  Execute SQL queries for aggregation and analysis.\
4.  Connect Power BI to SQL data and build dashboards using defined
    measures.

------------------------------------------------------------------------

## Future Work

-   Automated validation checks for sales transactions\
-   Pricing anomaly detection models\
-   Real-time monitoring dashboards

------------------------------------------------------------------------

