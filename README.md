# Uber Trips Analytics — End-to-End Data Analytics Project

**Python | SQL | Power BI | Automation | Business Intelligence**

An end-to-end data analytics project using NYC Green Taxi trip data from 2017–2020. This project combines Python-based data preparation, automated SQL data loading, business-focused SQL queries, and interactive Power BI dashboards to analyze trip demand, revenue, geographic patterns, payment methods, tips, passengers, and travel distances.

The project demonstrates how raw transportation data can be transformed into structured business insights through a repeatable data analytics workflow.

---

## Table of Contents

1. [Project Overview](#project-overview)
2. [Business Objectives](#business-objectives)
3. [Technology Stack](#technology-stack)
4. [Project Architecture and Workflow](#project-architecture-and-workflow)
5. [Python Automation and SQL Integration](#python-automation-and-sql-integration)
6. [SQL Business Analysis](#sql-business-analysis)
7. [Power BI Dashboard Gallery](#power-bi-dashboard-gallery)
8. [Key Insights](#key-insights)
9. [Business Problems and Applications](#business-problems-and-applications)
10. [How to Explore This Project](#how-to-explore-this-project)
11. [How to Run the Project](#how-to-run-the-project)
12. [Data Quality and Limitations](#data-quality-and-limitations)
13. [Future Improvements](#future-improvements)
14. [Conclusion](#conclusion)

---

## Project Overview

Uber Trips Analytics is a data analytics and business intelligence project focused on NYC Green Taxi trip records from 2017 to 2020.

The project explores transportation activity through Python data preparation, SQL analysis, and Power BI visualization. It investigates how trip volume, revenue, demand periods, geographic distribution, payment behavior, passenger counts, and trip distances vary across the available data.

A Python automation script reads data from a configured file path and imports it into SQL. Power BI connects to the SQL database to visualize the analytical results through five dashboard pages.

### Project Highlights

- Python-based data preparation and cleaning.
- Jupyter Notebook for data exploration and preprocessing.
- A Python script for importing prepared data into SQL.
- Ten SQL business queries.
- SQL connectivity with Power BI.
- Five Power BI dashboard pages.
- Business insights supported by SQL results and dashboard visuals.
- A repeatable workflow designed to reduce manual data-import work.

**Project Category:** Data Analytics and Business Intelligence  
**Dataset Period:** 2017–2020  
**Tools:** Python, Jupyter Notebook, SQL, Power BI, GitHub

---

## Business Objectives

The primary objective is to convert raw taxi trip records into meaningful information that can support transportation analysis and business reporting.

The project aims to:

- Analyze yearly trip trends and year-over-year changes.
- Monitor monthly revenue and average fare metrics.
- Identify high-demand days and hours.
- Analyze trip distribution across boroughs and taxi zones.
- Discover frequently used pickup and drop-off routes.
- Compare payment methods and tipping patterns.
- Explore passenger counts and trip-distance variations.
- Automate repetitive data-import tasks using Python.
- Connect SQL data with Power BI for visual reporting.
- Present findings through clear, organized dashboards.

---

## Technology Stack

| Technology | Purpose |
|---|---|
| Python | Data preparation, processing, and automation |
| Jupyter Notebook | Data exploration and preprocessing |
| SQL | Data storage, querying, aggregation, and analysis |
| Power BI | Interactive dashboards and reporting |
| GitHub | Version control, documentation, and portfolio presentation |

---

## Project Architecture and Workflow

The project follows an end-to-end workflow from raw data to business insights.

```text
NYC Green Taxi Dataset (2017–2020)
                 |
                 v
        Python / Jupyter Notebook
        Data Preparation and Cleaning
                 |
                 v
          Python Automation Script
          Reads Configured File Path
                 |
                 v
              SQL Database
         Data Import and Analysis
                 |
                 v
          SQL Connection to Power BI
                 |
                 v
          Power BI Data Model
                 |
                 v
          Refresh Power BI Report
                 |
                 v
        Five Dashboard Pages
                 |
                 v
          Business Insights
```

### Workflow Description

**1. Data Preparation**

Python and Jupyter Notebook are used to inspect, clean, and prepare the source data for analysis.

**2. Automated SQL Import**

The Python script reads the prepared dataset from a configured file path and imports the data into the target SQL database.

**3. SQL Analysis**

SQL queries calculate metrics, aggregate records, and answer ten business questions.

**4. Power BI Integration**

Power BI connects to the SQL database and uses the available data to build report visuals.

**5. Report Refresh**

Refreshing the Power BI dataset retrieves updated data from the connected SQL source when the connection and refresh settings are configured correctly.

**6. Business Reporting**

Five dashboard pages present the results in a visual format for exploring patterns and supporting analysis.

---

## Python Automation and SQL Integration

A key component of this project is the Python automation script developed to simplify data importing.

Instead of manually importing the prepared file each time, the script uses a configured file path to read the data and load it into the SQL database. This reduces repetitive manual steps and makes the import process more consistent.

### Automation Process

- Read the prepared dataset from the configured file path.
- Apply the data preparation or validation steps implemented in the script.
- Connect to the configured SQL database.
- Load the data into the intended SQL table or tables.
- Make the imported data available for SQL analysis and Power BI reporting.

### SQL-to-Power BI Connection

Power BI is connected to SQL so that the report can use the data stored in the database.

When the Python script is run again and updated data is successfully imported into SQL, refreshing the Power BI dataset can update the report visuals with the latest available source data.

**Important:** Refreshing Power BI does not automatically execute the separate Python import script. To automate the entire process from data import to report refresh, scheduling or orchestration must also be configured. The required setup depends on the database, connection mode, credentials, permissions, and any required gateway.

This workflow provides a foundation for repeatable data loading and more maintainable reporting.

---

## SQL Business Analysis

SQL is used to investigate ten business questions and convert the prepared dataset into analytical results.

| No. | Business Question | Analytical Purpose |
|---:|---|---|
| 1 | What are the yearly trip trends and year-over-year changes? | Understand trip growth and decline |
| 2 | How do monthly revenue and average revenue per trip change? | Monitor revenue performance |
| 3 | Which days and hours have the highest average trip volume? | Identify potential peak-demand periods |
| 4 | What percentage of trips originate in each borough? | Understand geographic distribution |
| 5 | What are the top 10 pickup and drop-off zone routes? | Identify frequently used routes |
| 6 | What is the average passenger count by borough? | Compare passenger patterns |
| 7 | How does average trip distance vary between pickup and drop-off boroughs? | Understand geographic travel distances |
| 8 | What are the payment-type shares and average fares? | Analyze payment behavior |
| 9 | Which pickup and drop-off routes have the highest average tips? | Explore tipping patterns |
| 10 | Which borough-to-borough combinations generate the most revenue? | Compare revenue contribution by route |

These queries provide the analytical foundation for the dashboard visuals and support deeper investigation of transportation activity.

---

## Power BI Dashboard Gallery

The project contains five Power BI dashboard screenshots. Each page focuses on a different aspect of trip activity and business performance.

All images are stored in the repository folder `PowerBI deshboards`.

### 1. Trip and Revenue Insights

**File:** `TRip and revenue insight.png`

![Trip and Revenue Insights Dashboard](https://raw.githubusercontent.com/bs391095/uber-trips-analytics/main/PowerBI%20deshboards/TRip%20and%20revenue%20insight.png)

This dashboard provides an overview of trip performance and revenue.

**Key areas covered:**
- Total trip volume.
- Total revenue and average fare per trip.
- Yearly trip trends.
- Monthly revenue patterns.
- Fare distribution.

**Business value:** Helps monitor overall performance and investigate changes in trip volume and revenue.

### 2. Time-Based Demand Analysis

**File:** `Time Based Demand analysis.png`

![Time-Based Demand Analysis Dashboard](https://raw.githubusercontent.com/bs391095/uber-trips-analytics/main/PowerBI%20deshboards/Time%20Based%20Demand%20analysis.png)

This dashboard examines how trip demand varies across different hours and days of the week.

**Key areas covered:**
- Trip volume by hour.
- Trip volume by day of the week.
- Potential high-demand periods.
- Average trip distance and fare-related metrics.

**Business value:** Helps identify periods that can be investigated for operational planning and resource allocation.

### 3. Geographic Analysis

**File:** `Geographic analysis.png`

![Geographic Analysis Dashboard](https://raw.githubusercontent.com/bs391095/uber-trips-analytics/main/PowerBI%20deshboards/Geographic%20analysis.png)

This dashboard explores trip distribution across boroughs and taxi zones.

**Key areas covered:**
- Trips by borough.
- Pickup and drop-off zone analysis.
- Geographic trip patterns.
- Average trip distance by location.

**Business value:** Helps identify areas with substantial recorded trip activity and compare geographic travel patterns.

### 4. Payment and Tips Insights

**File:** `Payment Tips insight.png`

![Payment and Tips Insights Dashboard](https://raw.githubusercontent.com/bs391095/uber-trips-analytics/main/PowerBI%20deshboards/Payment%20Tips%20insight.png)

This dashboard explores payment methods and tipping behavior.

**Key areas covered:**
- Payment-type distribution.
- Payment share.
- Average tip metrics.
- Tip patterns across boroughs.

**Business value:** Helps describe payment behavior in the recorded data and compare tipping patterns across locations.

### 5. Passenger and Distance Insights

**File:** `Passenger & Distance insight.png`

![Passenger and Distance Insights Dashboard](https://raw.githubusercontent.com/bs391095/uber-trips-analytics/main/PowerBI%20deshboards/Passenger%20%26%20Distance%20insight.png)

This dashboard investigates passenger counts and trip distances.

**Key areas covered:**
- Trips by passenger count.
- Average passenger count per trip.
- Average trip distance.
- Distance patterns across boroughs.

**Business value:** Helps explore passenger travel patterns and understand differences in recorded trip distances.

---

## Key Insights

The available SQL results and Power BI outputs highlight several patterns for further investigation.

### 1. Yearly Trip Trends

The SQL results report approximately 1.05 million trips in 2017, 8.81 million in 2018, 6.05 million in 2019, and 1.74 million in 2020.

**Insight:** Recorded trip volume varies substantially across the period, with a decline after 2018. Dataset coverage and consistency should be checked before attributing the changes to business or external factors.

### 2. Geographic Distribution

The borough-level results show approximately 33.40% of trips associated with Manhattan, 30.96% with Brooklyn, and 28.93% with Queens. The Bronx accounts for approximately 6.48%, with a small share categorized as Unknown.

**Insight:** Manhattan, Brooklyn, and Queens have the largest recorded trip shares in the analyzed output. This provides a starting point for investigating geographic demand and route activity.

### 3. Peak-Demand Periods

The time-based SQL results identify several high-volume periods in the late afternoon and early evening, particularly on Thursdays and Fridays.

**Insight:** These periods can be investigated further for operational planning. More recent data and seasonal comparisons would be needed before making decisions about vehicle allocation.

### 4. Passenger Patterns

The Power BI dashboard reports an average passenger count of approximately 1.33 per trip.

**Insight:** Passenger-count analysis helps describe typical occupancy patterns and compare recorded passenger activity across locations.

### 5. Trip Distance Patterns

The SQL analysis identifies differences in average trip distance across borough pairs. Some journeys involving Staten Island have higher average distances than many within-borough trips.

**Insight:** Geographic distance analysis can help explain differences between routes. Unusual values should be checked for outliers and data-quality issues.

### 6. Payment-Type Distribution

The available SQL results show payment type 1 at approximately 53.28% and payment type 2 at approximately 40.68% of the analyzed records.

**Insight:** These categories account for most of the recorded payment distribution in the output. Official dataset documentation should be checked before assigning labels to payment codes.

### 7. Revenue by Borough Pair

The SQL results show substantial recorded revenue for within-borough trips, including Manhattan-to-Manhattan, Brooklyn-to-Brooklyn, and Queens-to-Queens journeys.

**Insight:** Comparing revenue alongside trip counts provides a more complete picture than analyzing trip volume alone.

**Note:** These figures are preliminary results from the available analysis. Validate data coverage, metric definitions, and revenue calculations before using these findings for formal business decisions.

---

## Business Problems and Applications

| Business Problem | How This Project Helps |
|---|---|
| Limited visibility into trip performance | Yearly and monthly metrics reveal changes in recorded trip activity |
| Difficulty identifying busy periods | Day-and-hour analysis highlights potential peak-demand windows |
| Unclear geographic demand | Borough and zone analysis compares trip distribution |
| Limited route-level understanding | Pickup and drop-off analysis identifies frequently used routes |
| Difficulty monitoring revenue | Revenue and average-fare metrics support performance comparisons |
| Lack of payment insights | Payment analysis describes the distribution of recorded payment methods |
| Limited visibility into tips | Tip analysis compares patterns across routes and boroughs |
| Unclear passenger and distance patterns | Passenger and distance dashboards reveal differences between trips |
| Repetitive manual data imports | Python automation reduces repetitive import steps |
| Time-consuming reporting updates | SQL-connected Power BI reporting makes updated data easier to visualize |

### Potential Business Applications

The project can support analysis related to:

- Transportation demand planning.
- Revenue monitoring and performance reporting.
- Geographic service analysis.
- Operational resource planning.
- Route-level performance comparisons.
- Payment and tipping behavior.
- Management reporting and business intelligence.

The project supports analysis rather than making operational decisions automatically. Business actions should be based on validated metrics and appropriate, up-to-date data.

---

## How to Explore This Project

Follow this sequence to understand the complete project workflow.

### Step 1: Explore Python Scripts

Open the `Uber_Python_Script` folder.

Review how the data is prepared and how the automation script reads the configured file path and imports the data into SQL.

### Step 2: Review SQL Queries

Open the `SQL_Uber` folder.

Explore the queries, aggregations, calculations, and outputs used to answer the ten business questions.

### Step 3: View Power BI Dashboard Screenshots

Open the `PowerBI deshboards` folder or review the dashboard gallery above.

The five screenshots cover trip and revenue, time-based demand, geographic analysis, payment and tips, and passenger and distance insights.

### Step 4: Explore Presentation Reports

Open the `Presentation Reports` folder.

Review the available presentations and reports for additional project context, findings, and explanations.

### Step 5: Follow the Complete Workflow

Trace the process from Python data preparation to automated SQL import, SQL analysis, Power BI connectivity, and report refresh.

This sequence demonstrates how data preparation, querying, and visualization work together in an analytics pipeline.

---

## How to Run the Project

The exact commands depend on the scripts, dependencies, and SQL database configuration included in the repository.

### Prerequisites

- Python and the packages required by the included scripts.
- Jupyter Notebook, if using the notebook workflow.
- A supported SQL database.
- Microsoft Power BI Desktop.
- Access to the source dataset.
- Appropriate database credentials and permissions.

### Suggested Steps

1. Clone or download the repository.
2. Review the Python files in `Uber_Python_Script`.
3. Install the required Python dependencies.
4. Configure the input file path and SQL connection settings.
5. Run the data preparation and import script.
6. Verify that the data has been loaded into the expected SQL tables.
7. Execute the queries in `SQL_Uber`.
8. Open the Power BI report, if a `.pbix` file is included.
9. Configure the SQL data source and credentials.
10. Refresh the dataset or report and verify that the visuals reflect the latest available data.

Before running the automation script, check its expected file path, target table names, import behavior, and database settings. Never commit passwords, access tokens, or private connection details to GitHub.

---

## Data Quality and Limitations

Reliable analytics depends on accurate and consistent source data.

Important validation steps include:

- Checking record counts and data coverage for each year.
- Checking for missing values and duplicate records.
- Validating fare, tip, distance, and revenue fields.
- Confirming the definitions and units of financial metrics.
- Verifying payment codes against official dataset documentation.
- Ensuring SQL and Power BI calculations use consistent definitions.
- Validating year-over-year calculations and date filters.
- Investigating outliers and unexpected values.
- Confirming that dashboard filters and date ranges are consistent.

Some totals and measures may require reconciliation before being treated as final business KPIs.

---

## Future Improvements

Potential improvements include:

- Scheduling the Python import script.
- Adding automated data-quality checks.
- Introducing logging and error handling for failed imports.
- Implementing incremental data loading.
- Configuring scheduled Power BI refresh and end-to-end orchestration where supported.
- Standardizing KPI definitions across SQL and Power BI.
- Adding seasonal and trend analysis.
- Documenting database schemas and script settings.
- Adding automated tests for key calculations.

---

## Conclusion

The Uber Trips Analytics project demonstrates a practical end-to-end data analytics workflow using Python, SQL, and Power BI.

Python supports data preparation and repeatable import operations, SQL provides structured business analysis, and Power BI presents the results through five dashboard pages. Together, these components help investigate trip trends, revenue, time-based demand, geographic distribution, payment behavior, tipping patterns, passenger counts, and trip distances.

The project also demonstrates how Python automation, a SQL database, and Power BI can work together to reduce repetitive manual work and create a foundation for more maintainable reporting. With appropriate validation, connection settings, and refresh orchestration, this workflow can be extended into a more automated reporting pipeline.

Overall, the project showcases practical skills in **data cleaning, Python scripting, SQL querying, database connectivity, business analysis, dashboard development, and reporting automation**.

---

**Project:** Uber Trips Analytics  
**Dataset Period:** 2017–2020  
**Tools:** Python · Jupyter Notebook · SQL · Power BI · GitHub  
**Focus Areas:** Data Analytics · Business Intelligence · Workflow Automation
