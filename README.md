# Uber Trips Analytics — End-to-End Data Analytics Project

**Python | SQL | Power BI | Data Automation | Business Intelligence**

An end-to-end analytics project focused on exploring NYC Green Taxi trip data from 2017 to 2020. This project combines Python-based data preparation and automation, SQL business analysis, and Power BI dashboards to uncover patterns in trip demand, revenue, routes, payments, passengers, and travel distances.

The objective is to build a repeatable data workflow that transforms raw trip records into meaningful business insights and makes reporting easier to maintain.

---

## Table of Contents

1. [Project Overview](#project-overview)
2. [Business Objectives](#business-objectives)
3. [Technology Stack](#technology-stack)
4. [Project Workflow and Architecture](#project-workflow-and-architecture)
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

The Uber Trips Analytics project demonstrates how data analytics tools can work together to create a structured reporting solution.

The project uses NYC Green Taxi trip records from 2017–2020 to analyze trip performance, revenue trends, time-based demand, geographic distribution, payment methods, tipping patterns, passenger counts, and trip distances.

Python is used to prepare the data and automate its import into SQL. SQL queries answer business questions, and Power BI connects to the SQL database to present the results through interactive reports.

### Project Highlights

- Data preparation and cleaning using Python and Jupyter Notebook.
- A Python script that reads data from a configured file path and imports it into SQL.
- Ten SQL business queries covering key transportation and revenue metrics.
- A SQL database connection to Power BI.
- Five Power BI dashboard pages covering different analytical areas.
- A reporting workflow designed to support repeatable data loading and report refreshes.

**Project category:** Data Analytics and Business Intelligence  
**Dataset period:** 2017–2020  
**Primary tools:** Python, Jupyter Notebook, SQL, Power BI, GitHub

---

## Business Objectives

The main objective is to convert raw taxi trip records into useful information for understanding transportation activity and business performance.

The project aims to:

- Analyze yearly trip trends and changes over time.
- Track monthly revenue and average fare metrics.
- Identify peak demand days and hours.
- Understand trip distribution across boroughs and taxi zones.
- Discover frequently used pickup and drop-off routes.
- Compare payment methods and tipping patterns.
- Explore passenger counts and trip-distance variations.
- Reduce repetitive manual data-import work through Python automation.
- Make data-driven reporting easier through SQL-connected Power BI dashboards.

---

## Technology Stack

| Technology | Role in the Project |
|---|---|
| Python | Data preparation, processing, and automation |
| Jupyter Notebook | Data exploration and preprocessing |
| SQL | Data storage, querying, aggregation, and business analysis |
| Power BI | Dashboard development and reporting |
| GitHub | Version control, project documentation, and portfolio sharing |

---

## Project Workflow and Architecture

The project follows an end-to-end workflow, from source data preparation to business reporting.

```text
NYC Green Taxi Dataset (2017–2020)
                 |
                 v
        Python / Jupyter Notebook
        Data Cleaning and Preparation
                 |
                 v
          Python Automation Script
          Reads Data from File Path
                 |
                 v
              SQL Database
          Data Import and Analysis
                 |
                 v
          Power BI SQL Connection
                 |
                 v
        Power BI Data Model and Report
                 |
                 v
          Refresh the Report
                 |
                 v
       Interactive Dashboard Visuals
                 |
                 v
          Business Insights
```

### Workflow Explanation

**1. Data preparation:** Python and Jupyter Notebook are used to inspect and prepare the source data for analysis.

**2. Automated data import:** A Python script reads the prepared file from a configured path and loads the data into the target SQL database.

**3. SQL analysis:** SQL queries calculate metrics and answer the ten business questions defined for the project.

**4. Power BI integration:** Power BI connects to the SQL data source and uses the data to build report visuals.

**5. Report refresh:** Refreshing the connected Power BI dataset retrieves updated source data, provided the connection and refresh settings are configured correctly.

**6. Business reporting:** The five dashboard pages present the results in a visual format that is easier to explore and interpret.

---

## Python Automation and SQL Integration

A key part of this project is the Python automation script developed to simplify the data-import process.

Instead of manually importing the prepared file every time, the script uses a configured file path to read the data and load it into SQL. This makes the import process more repeatable and reduces repetitive manual steps.

### Automation Process

- Read the prepared dataset from the configured file path.
- Apply the data preparation or validation steps implemented in the script.
- Connect to the configured SQL database.
- Load the data into the appropriate target table or tables.
- Make the imported data available for SQL analysis and Power BI reporting.

### SQL-to-Power BI Connection

Power BI is connected to the SQL database so that reports can use data from the configured source.

When the Python script is run again and new data is successfully imported into SQL, refreshing the Power BI dataset can update the report visuals with the latest available data.

**Important:** Refreshing Power BI does not automatically run the separate Python import script. If the entire process must run automatically from data import to report refresh, scheduling or orchestration must also be configured. The exact setup depends on the database, Power BI connection mode, credentials, permissions, and any required gateway.

This approach provides a foundation for a more automated and maintainable reporting pipeline.

---

## SQL Business Analysis

SQL is used to analyze the prepared data and answer ten business-focused questions.

| No. | Business Question | Purpose |
|---:|---|---|
| 1 | What are the yearly trip trends and year-over-year changes? | Understand trip growth and decline |
| 2 | How do monthly revenue and average revenue per trip change? | Evaluate revenue performance |
| 3 | Which days and hours have the highest average trip volume? | Identify potential peak-demand periods |
| 4 | What percentage of trips originate in each borough? | Measure geographic distribution |
| 5 | What are the top 10 pickup and drop-off zone routes? | Discover frequently used routes |
| 6 | What is the average passenger count by borough? | Compare passenger patterns |
| 7 | How does average trip distance vary between pickup and drop-off boroughs? | Examine geographic travel distances |
| 8 | What are the payment-type shares and average fares? | Analyze payment behavior |
| 9 | Which pickup and drop-off routes have the highest average tips? | Explore tipping patterns |
| 10 | Which borough-to-borough combinations generate the most revenue? | Compare revenue across borough pairs |

These queries provide the analytical foundation for the Power BI dashboards and help translate raw records into business-focused metrics.

---

## Power BI Dashboard Gallery

The project includes five dashboard pages. Each page focuses on a different aspect of trip activity and business performance.

The screenshots are stored in the repository folder named `PowerBI deshboards`.

### 1. Trip and Revenue Insights

**Screenshot:** `TRip and revenue insight.png`

![Trip and Revenue Insights Dashboard](https://raw.githubusercontent.com/bs391095/uber-trips-analytics/main/PowerBI%20deshboards/TRip%20and%20revenue%20insight.png)

This dashboard provides an overview of trip activity and revenue performance.

**Key areas covered:**
- Total trips and revenue.
- Average fare per trip.
- Yearly trip trends.
- Monthly revenue patterns.
- Fare distribution.

**Business value:** Helps users monitor overall performance and investigate changes in trip volume and revenue.

### 2. Time-Based Demand Analysis

**Screenshot:** `Time-Based Demand analysis.png`

![Time-Based Demand Analysis Dashboard][Time-Based Demand Analysis](./PowerBI%20deshboards/Time-Based%20Demand%20analysis.png)
This dashboard examines how trip demand varies across different times of the day and days of the week.

**Key areas covered:**
- Trip volume by hour.
- Trip volume by day.
- Potential high-demand periods.
- Average trip distance and fare-related metrics.

**Business value:** Helps identify periods worth investigating for operational planning and resource allocation.

### 3. Geographic Analysis

**Screenshot:** `Geographic analysis.png`

![Geographic Analysis Dashboard](https://raw.githubusercontent.com/bs391095/uber-trips-analytics/main/PowerBI%20deshboards/Geographic%20analysis.png)

This dashboard focuses on trip distribution across boroughs and taxi zones.

**Key areas covered:**
- Trips by borough.
- Pickup and drop-off zone analysis.
- Geographic trip patterns.
- Average trip distance by location.

**Business value:** Helps identify areas with substantial recorded trip activity and compare geographic travel patterns.

### 4. Payment and Tips Insights

**Screenshot:** `Payment Tips insight.png`

![Payment and Tips Insights Dashboard](https://raw.githubusercontent.com/bs391095/uber-trips-analytics/main/PowerBI%20deshboards/Payment%20Tips%20insight.png)

This dashboard explores payment methods and tipping behavior.

**Key areas covered:**
- Payment-type distribution.
- Payment share.
- Average tip metrics.
- Tip patterns across boroughs.

**Business value:** Helps describe payment preferences in the recorded data and compare tipping patterns across locations.

### 5. Passenger and Distance Insights

**Screenshot:** `Passenger & Distance insight.png`

![Passenger and Distance Insights Dashboard](https://raw.githubusercontent.com/bs391095/uber-trips-analytics/main/PowerBI%20deshboards/Passenger%20%26%20Distance%20insight.png)

This dashboard examines passenger counts and trip distances.

**Key areas covered:**
- Trips by passenger count.
- Average passenger count per trip.
- Average trip distance.
- Distance patterns across boroughs.

**Business value:** Helps investigate passenger travel patterns and understand differences in recorded trip distances.

---

## Key Insights

The SQL results and dashboard outputs highlight several patterns that are useful for further investigation.

### 1. Yearly Trip Trends

The available SQL results report approximately 1.05 million trips in 2017, 8.81 million in 2018, 6.05 million in 2019, and 1.74 million in 2020.

**Insight:** Recorded trip volume changes substantially across the period, including a decline after 2018. Differences in data coverage and consistency should be checked before drawing conclusions about the reasons behind these changes.

### 2. Geographic Distribution

The recorded borough analysis shows approximately 33.40% of trips associated with Manhattan, 30.96% with Brooklyn, and 28.93% with Queens. The Bronx represents approximately 6.48%, while a small share is categorized as Unknown.

**Insight:** Manhattan, Brooklyn, and Queens account for the largest shares in the analyzed output. This provides a starting point for investigating geographic demand and route activity.

### 3. Peak-Demand Periods

The time-based SQL results identify several high-volume periods around late afternoon and early evening, particularly on Thursdays and Fridays.

**Insight:** These periods could be examined further when planning vehicle availability and operational resources. More recent data and seasonal comparisons would be needed before making operational decisions.

### 4. Passenger Patterns

The Power BI dashboard reports an average passenger count of approximately 1.33 per trip, while the SQL output shows some variation across boroughs.

**Insight:** Passenger counts can help describe typical trip occupancy and differences in recorded travel patterns between areas.

### 5. Distance Patterns

The SQL analysis identifies differences in average trip distance between borough pairs. Some journeys involving Staten Island have considerably higher average distances than many within-borough routes.

**Insight:** Geographic distance analysis can help explain route variation, but unusual values should be checked for outliers and data-quality issues.

### 6. Payment-Type Distribution

The available SQL results show payment type 1 at approximately 53.28% and payment type 2 at approximately 40.68% of the analyzed records.

**Insight:** These categories account for most of the recorded payment distribution in the output. Official source definitions should be checked before assigning business labels to payment codes.

### 7. Revenue by Borough Pair

The SQL output identifies substantial recorded revenue for within-borough journeys, including Manhattan-to-Manhattan, Brooklyn-to-Brooklyn, and Queens-to-Queens trips.

**Insight:** Comparing revenue alongside trip counts provides a better view of route performance than looking at trip volume alone.

**Data note:** These figures are preliminary results from the project's available outputs. Validate the source data, metric definitions, date coverage, and revenue calculations before using them for formal business decisions.

---

## Business Problems and Applications

This project helps investigate common challenges faced by transportation businesses and analysts.

| Business Problem | How This Project Helps |
|---|---|
| Limited visibility into trip performance | Yearly and monthly analysis highlights changes in trip activity |
| Difficulty identifying busy periods | Day-and-hour analysis identifies potential high-demand windows |
| Unclear geographic demand | Borough and zone analysis compares recorded trip distribution |
| Limited route-level understanding | Pickup and drop-off analysis identifies frequently used routes |
| Difficulty monitoring revenue | Revenue and average-fare metrics support performance comparisons |
| Lack of payment insights | Payment-type analysis describes the distribution of recorded payment methods |
| Limited visibility into tips | Tip analysis compares patterns across routes and boroughs |
| Unclear passenger and distance patterns | Passenger and distance dashboards reveal differences across trips |
| Repetitive manual data imports | Python automation reduces repetitive import work |
| Time-consuming reporting updates | SQL-connected Power BI reporting makes updated data easier to visualize |

### Potential Business Applications

The results could support:

- Transportation demand analysis.
- Revenue monitoring and performance reporting.
- Geographic service planning.
- Operational resource planning.
- Route-level performance comparisons.
- Payment and tipping behavior analysis.
- Management reporting and business intelligence.

The project provides analytical support rather than automatic business decisions. Any operational changes should be based on validated metrics and suitable, up-to-date data.

---

## How to Explore This Project

Follow this order to understand the project from data preparation to final reporting.

### Step 1: Explore the Python Scripts

Open the `Uber_Python_Script` folder.

Review the Python files to understand how data is prepared and how the automation script reads data from a configured file path and imports it into SQL.

### Step 2: Review the SQL Queries

Open the `SQL_Uber` folder.

Explore the business queries, aggregation logic, calculations, and results used to answer the ten analytical questions.

### Step 3: View the Power BI Dashboard Screenshots

Open the `PowerBI deshboards` folder.

Review the five dashboard images to see how the results are organized into trip and revenue, time-based demand, geographic, payment and tips, and passenger and distance analyses.

### Step 4: Explore the Presentation Reports

Open the `Presentation Reports` folder.

Review the available presentation materials and reports for additional project context and explanations of the analysis.

### Step 5: Follow the Complete Data Pipeline

Connect the stages together: Python data preparation, automated SQL import, SQL analysis, Power BI connectivity, and report refresh.

This sequence demonstrates how the project's tools work together to support a repeatable analytics workflow.

---

## How to Run the Project

The exact commands and configuration depend on the scripts and SQL database included in the repository.

### Prerequisites

- Python and the packages required by the included scripts.
- Jupyter Notebook, if using the notebook workflow.
- A supported SQL database.
- Microsoft Power BI Desktop.
- Access to the source dataset.
- Database credentials and permissions for the configured SQL connection.

### Suggested Steps

1. Clone or download the repository.
2. Review the files in `Uber_Python_Script`.
3. Install the dependencies required by the scripts.
4. Configure the source file path and SQL connection settings.
5. Run the Python data preparation and import script.
6. Verify that the data has been loaded into the expected SQL tables.
7. Execute the queries in `SQL_Uber`.
8. Open the Power BI report, if the `.pbix` file is included.
9. Configure the report's SQL data source and credentials.
10. Refresh the dataset or report and verify the updated visuals.

Before running the script, check its expected input path, target tables, import behavior, and database configuration. Never commit passwords, tokens, or private connection details to GitHub.

---

## Data Quality and Limitations

Reliable analytics depends on accurate and consistent data.

The following checks are important:

- Validate record counts and data coverage for each year.
- Check for missing values and duplicate records.
- Validate fare, tip, distance, and revenue fields.
- Confirm the units and definitions used for financial metrics.
- Verify payment codes against official dataset documentation.
- Check that SQL and Power BI calculations use consistent definitions.
- Validate year-over-year calculations and date filters.
- Investigate outliers and unexpected values.
- Confirm that all dashboards use compatible date ranges and filters.

Some totals and measures may require reconciliation before being treated as final business KPIs.

---

## Future Improvements

Potential improvements to the project include:

- Scheduling the Python import script.
- Adding automated data-quality checks.
- Introducing logging and error handling for failed imports.
- Implementing incremental data loading.
- Configuring scheduled Power BI refresh and end-to-end orchestration where supported.
- Standardizing KPI definitions across SQL and Power BI.
- Adding more detailed seasonal and trend analysis.
- Documenting database schemas and script settings.
- Adding automated tests for key calculations.

---

## Conclusion

The Uber Trips Analytics project demonstrates a practical end-to-end analytics workflow using Python, SQL, and Power BI.

Python supports data preparation and repeatable import operations, SQL provides structured business analysis, and Power BI presents the results through five dashboard pages. Together, these components help investigate trip trends, revenue, demand timing, geographic distribution, payment behavior, tipping patterns, passenger counts, and trip distances.

The project also demonstrates how connecting Python automation, a SQL database, and Power BI can reduce repetitive manual work and create a foundation for more maintainable reporting. With appropriate validation, connection settings, and refresh orchestration, the workflow can be extended into a more automated reporting pipeline.

Overall, this project showcases practical skills in **data cleaning, Python scripting, SQL querying, database connectivity, business analysis, dashboard development, and reporting automation**.

---

**Project:** Uber Trips Analytics  
**Dataset Period:** 2017–2020  
**Tools:** Python · Jupyter Notebook · SQL · Power BI · GitHub  
**Focus:** Data Analytics · Business Intelligence · Workflow Automation
