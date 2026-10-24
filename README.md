# 🚖 Ola Ride Data Analysis: End-to-End Business Insights

## 📋 Project Overview
This project provides a comprehensive data-driven analysis of Ola ride-booking data. The objective is to uncover actionable business insights regarding ride volume, customer and driver behavior, vehicle performance, and revenue distribution. 

The project is executed in two primary phases:
1. **Data Extraction & Metric Calculation:** Using **SQL** to query the database and create structured views for targeted metrics.
2. **Data Visualization:** Using **Power BI** to build an interactive dashboard that brings the data to life for executive decision-making.

## 🛠️ Tech Stack
* **Database Engine:** MySQL / SQL Server
* **Data Visualization:** Power BI Desktop
* **Techniques Used:** Data Aggregation, View Creation, Time-Series Analysis, Root Cause Analysis, KPI Tracking.

## 📊 Phase 1: SQL Data Extraction
The `Ola_Analysis.sql` script contains 15 targeted queries designed to solve specific business questions. To optimize performance and reusability, several of these queries were materialized as **SQL Views**.

**Key Analyses Performed:**
* **Booking Success & Failure:** Retrieved all successful bookings and categorized incomplete rides with their specific reasons.
* **Vehicle Performance:** Calculated the average ride distance and average customer rating per vehicle type.
* **Cancellation Analysis:** Counted customer cancellations, identified repeat offenders (customers with >3 cancellations), and tracked driver cancellations due to personal/car-related issues.
* **Financial Metrics:** Calculated the total booking value for successful rides and identified the most popular payment methods (e.g., UPI).
* **Geospatial & Time Trends:** Identified the Top 10 Drop and Pickup locations, alongside peak booking hours to analyze high-demand windows.
* **Driver Metrics:** Evaluated driver ratings, specifically finding the maximum and minimum ratings for Prime Sedan bookings.

## 📈 Phase 2: Power BI Dashboard
The `data.pbix` file contains a dynamic dashboard providing a high-level overview of operational KPIs. 

**Visualizations Include:**
* **Ride Volume Over Time:** Tracking booking trends to identify seasonality and daily peaks.
* **Booking Status Breakdown:** Visualizing the ratio of Success vs. Cancellations.
* **Top 5 Vehicle Types by Ride Distance:** Profiling which vehicle categories handle the longest trips.
* **Revenue by Payment Method:** Financial breakdown highlighting digital vs. cash transactions.
* **Cancelled Rides Reasons:** A root-cause analysis visualization to help reduce churn.
* **Customer vs. Driver Ratings:** A comparative analysis to gauge overall platform satisfaction.
* **Top Customers & Driver Distributions:** Highlighting high-value customers and analyzing the spread of driver performance.

## 💡 Key Insights (Example)
* **Payment Preferences:** Digital payments (UPI) show a dominant trend over cash, indicating a shift in user behavior.
* **Cancellation Root Causes:** Identifying whether customers or drivers are the primary drivers of cancellations allows for targeted policy adjustments.
* **Peak Hours:** Highlighting specific hours with maximum ride volumes can help optimize driver allocation and surge pricing models.

## ⚙️ How to Use This Repository
1. **Explore the SQL Queries:** Open the `Ola_Analysis.sql` file to review the database queries and view definitions.
2. **Interact with the Dashboard:** Download the `data.pbix` file and open it in Power BI Desktop to interact with the visualizations and slicers.


