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
The company wants to ensure that<br>
1.  Reported revenue is accurate.<br>
2. Pricing and Profitability are consistent.<br>
3. There is no hidden revenue or margin leakage.


------------------------------------------------------------------------

## Dataset

The dataset contains the following fields:

-   Retailer, Retailer ID<br>
-   Invoice Date<br>
-   Region, State, City<br>
-   Price per Unit<br>
-   Units Sold<br>
-   Total Sales (Reported)<br>
-   Operating Profit<br>
-   Sales Method

------------------------------------------------------------------------

## Tools & Technologies

-   Python --- Data cleaning, numeric conversion, recalculation,
    validation<br>
-   SQL --- Aggregations, variance analysis, hypothesis testing<br>
-   Power BI --- KPI reporting and dashboards<br>
-   ChatGPT --- Concept clarification and productivity enhancement.

------------------------------------------------------------------------

## Methodology

1.  Converted numeric columns from string to numeric format.<br>
2.  Removed currency symbols and formatting inconsistencies.<br>
3.  Recalculated sales using Price per Unit × Units Sold.<br>
4.  Computed revenue variance between reported and recalculated sales.<br>
5.  Flagged mismatched transactions.<br>
6.  Calculated price deviation percentage.<br>
7.  Computed operating margin across regions and methods.<br>
8.  Built dashboards for executive insights and root cause analysis.





------------------------------------------------------------------------

## Key Metrics

-   Total Reported Sales: 89.82M<br>
-   Total Corrected Sales: 119.99M<br>
-   Revenue Loss: -30.17M<br>
-   Revenue Loss %: 33.58%<br>
-   Average Price per Unit: 45.21<br>
-   Price Deviation: 119.82%<br>
-   Operating Margin: 27.63<br>

------------------------------------------------------------------------

## Dashboard

### Page 1 --- Executive Summary

KPIs showing total reported sales, corrected sales, revenue loss,
leakage percentage, and operating margin to quantify financial impact.

![Dashboard 1](Adidas%20pic/Dashboard1.png)



### Page 2 --- Pricing & Margin Drivers

Charts showing price deviation and operating margin across regions and
sales methods to identify root causes.
![Dashboard 2](Adidas%20pic/Dashboard2.png)


------------------------------------------------------------------------

## Results & Conclusion

The analysis confirms revenue leakage driven by pricing inconsistency
and margin inefficiencies rather than data quality issues. Implementing
pricing controls and margin monitoring can reduce financial loss.

------------------------------------------------------------------------

## How to Run

1.  Load dataset into Python and perform data cleaning.<br>
2.  Export cleaned data to SQL database.<br>
3.  Execute SQL queries for aggregation and analysis.<br>
4.  Connect Power BI to SQL data and build dashboards using defined
    measures.

------------------------------------------------------------------------

## Future Work

-   Automated validation checks for sales transactions.<br>
-   Pricing anomaly detection models.<br>
-   Real-time monitoring dashboards.

------------------------------------------------------------------------

