# 🚖 Uber Trips Analytics | End-to-End Data Analytics Project

**Python Automation | SQL | Power BI | Business Intelligence**

An end-to-end data analytics project built using NYC Green Taxi trip data from 2017–2020. This project combines Python-based data preparation and automation, SQL business analysis, and Power BI dashboards to transform raw trip data into meaningful insights about revenue, demand, geography, payment behavior, passengers, and trip distances.

---

## 📑 Table of Contents

1. [Project Overview](#-project-overview)
2. [Business Objectives](#-business-objectives)
3. [Technology Stack](#-technology-stack)
4. [Project Architecture and Workflow](#-project-architecture-and-workflow)
5. [Python Automation and Data Pipeline](#-python-automation-and-data-pipeline)
6. [SQL Business Analysis](#-sql-business-analysis)
7. [Power BI Dashboard Gallery](#-power-bi-dashboard-gallery)
8. [Key Insights](#-key-insights)
9. [Business Problems This Project Can Help Solve](#-business-problems-this-project-can-help-solve)
10. [How to Explore This Project](#-how-to-explore-this-project)
11. [How to Run the Project](#-how-to-run-the-project)
12. [Data Quality and Limitations](#-data-quality-and-limitations)
13. [Future Improvements](#-future-improvements)
14. [Conclusion](#-conclusion)

---

## 📌 Project Overview

The **Uber Trips Analytics** project demonstrates an end-to-end data analytics workflow, from raw data preparation to interactive business reporting.

The project uses NYC Green Taxi trip records covering 2017–2020 to investigate travel demand, revenue trends, popular routes, borough-level activity, payment methods, tipping behavior, passenger counts, and trip distances.

Python scripts help prepare the data and automate its import into SQL. SQL queries answer business questions, while Power BI connects to the SQL data source to present the results through interactive dashboards.

### Project Highlights

- Python-based data cleaning and preparation.
- Script-based data import into SQL using a configured file path.
- SQL queries addressing 10 business questions.
- A SQL-to-Power BI connection for reporting.
- Five Power BI dashboard screenshot pages.
- An analytics workflow designed to support repeatable data updates and reporting.

**Project category:** Data Analytics, Business Intelligence, and Reporting Automation  
**Dataset period:** 2017–2020  
**Primary tools:** Python, Jupyter Notebook, SQL, Power BI, GitHub

---

## 🎯 Business Objectives

The main objective is to turn raw taxi trip records into useful information for understanding transportation operations and business performance.

This project focuses on:

- Tracking trip volume and year-over-year trends.
- Understanding monthly revenue and average fare patterns.
- Identifying high-demand days and hours.
- Analyzing pickup and drop-off zones across boroughs.
- Discovering frequently used routes.
- Evaluating payment methods and tipping patterns.
- Studying passenger counts and trip distances.
- Reducing repetitive data preparation and import tasks through Python automation.
- Making business reporting easier to review and update through Power BI.

---

## 🛠️ Technology Stack

| Technology | Purpose |
|---|---|
| Python | Data preparation, cleaning, and automation |
| Jupyter Notebook | Exploratory analysis and data preparation |
| SQL | Data storage, querying, aggregation, and business analysis |
| Power BI | Interactive dashboards and visual reporting |
| GitHub | Version control, documentation, and project sharing |

---

## 🔄 Project Architecture and Workflow

The project follows a structured pipeline from raw data to business insights.

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
      Data Import and SQL Analysis
                 |
                 v
        SQL Connection to Power BI
                 |
                 v
       Power BI Dataset / Model
                 |
                 v
       Refresh Power BI Report
                 |
                 v
       Interactive Business Dashboards
                 |
                 v
        Insights and Decision Support
```

### Workflow Explanation

1. **Data preparation:** Python and Jupyter Notebook are used to inspect, clean, and prepare the source data.
2. **Automated import:** A Python script uses a configured file path to read the prepared data and import it into the SQL database.
3. **SQL analysis:** SQL queries calculate business metrics and answer analytical questions.
4. **Power BI connection:** Power BI connects to the SQL data source and uses the data for its report model and visuals.
5. **Report refresh:** Refreshing the Power BI dataset or report retrieves updated SQL data when the connection and refresh configuration are set up correctly.
6. **Business reporting:** The dashboard pages present the results in a visual format for analysis and decision-making.

---

## ⚙️ Python Automation and Data Pipeline

One of the important features of this project is the use of a **Python automation script for data import into SQL**.

Instead of manually importing the prepared file each time, the script is configured to read data from a specified file path and load it into the target SQL database.

### Automation Process

- Read the prepared dataset from the configured file path.
- Perform the required data preparation or validation steps implemented in the script.
- Connect to the configured SQL database.
- Import the data into the target SQL table or tables.
- Make the SQL data available for downstream analysis in Power BI.

### SQL-to-Power BI Reporting

Power BI is connected to the SQL database so the report can use the latest data available in its configured source.

When the data pipeline is run again and new data is successfully loaded into SQL, refreshing the Power BI dataset can update the report visuals.

**Important distinction:** Power BI refresh updates the report from its connected data source; it does not automatically execute a separate Python import script unless an additional orchestration or scheduling process has been configured. File paths, database credentials, permissions, refresh mode, and any required gateway must also be configured correctly.

This workflow reduces repetitive manual work and creates a foundation for repeatable reporting.

---

## 🧮 SQL Business Analysis

SQL is used to transform the prepared data into business-focused metrics and comparisons.

The project investigates the following 10 questions:

| # | Business Question | Analytical Purpose |
|---|---|---|
| 1 | What are the yearly trip trends and year-over-year changes? | Understand changes in trip activity over time |
| 2 | How do monthly revenue and average revenue per trip change? | Monitor revenue performance and fare trends |
| 3 | Which days and hours have the highest average trip volume? | Identify periods of high travel demand |
| 4 | What percentage of trips originate in each borough? | Understand geographic distribution |
| 5 | What are the top 10 pickup and drop-off zone routes? | Identify frequently used routes |
| 6 | What is the average passenger count by borough? | Compare passenger patterns by location |
| 7 | How does average trip distance vary between pickup and drop-off boroughs? | Understand geographic travel distances |
| 8 | What are the payment-type shares and average fares? | Analyze payment behavior and fare differences |
| 9 | Which pickup and drop-off routes have the highest average tips? | Explore tipping patterns by route |
| 10 | Which borough-to-borough combinations generate the most revenue? | Compare revenue contribution across borough pairs |

The SQL outputs provide the analytical foundation for the Power BI reporting layer.

---

## 📊 Power BI Dashboard Gallery

The project includes five dashboard pages covering complementary aspects of taxi operations. The screenshots below are stored in the `PowerBI deshboards` folder of this repository.

### 1. Trip and Revenue Insights

**File:** `TRip and revenue insight.png`

![Trip and Revenue Insights Dashboard](PowerBI%20deshboards/TRip%20and%20revenue%20insight.png)

This dashboard focuses on overall trip performance and revenue.

**Key areas covered:**
- Total trip volume.
- Total revenue and average fare per trip.
- Yearly trip trends and growth.
- Monthly revenue patterns.
- Fare distribution.

**Business use:** Helps stakeholders monitor overall performance and investigate changes in trip volume and revenue.

### 2. Time-Based Demand Analysis

**File:** `Time-Based Demand analysis.png`

![Time-Based Demand Analysis Dashboard](PowerBI%20deshboards/Time-Based%20Demand%20analysis.png)

This dashboard examines how demand varies by time.

**Key areas covered:**
- Trip volume by hour.
- Trip volume by day of the week.
- Busy periods and recurring demand patterns.
- Average distance and fare-related metrics.

**Business use:** Helps identify potential high-demand periods for operational planning and resource allocation.

### 3. Geographic Analysis

**File:** `Geographic analysis.png`

![Geographic Analysis Dashboard](PowerBI%20deshboards/Geographic%20analysis.png)

This dashboard explores trip activity across boroughs and taxi zones.

**Key areas covered:**
- Trips by borough.
- Pickup and drop-off zone analysis.
- Geographic trip distribution.
- Average trip distance by pickup and drop-off location.

**Business use:** Helps identify high-activity locations and investigate geographic differences in travel demand.

### 4. Payment and Tips Insights

**File:** `Payment Tips insight.png`

![Payment and Tips Insights Dashboard](PowerBI%20deshboards/Payment%20Tips%20insight.png)

This dashboard focuses on payment methods and tipping behavior.

**Key areas covered:**
- Payment-type distribution.
- Payment share.
- Average tip metrics.
- Tip patterns across boroughs.

**Business use:** Helps compare payment behavior and understand how tipping patterns vary across locations.

### 5. Passenger and Distance Insights

**File:** `Passenger & Distance insight.png`

![Passenger and Distance Insights Dashboard](PowerBI%20deshboards/Passenger%20%26%20Distance%20insight.png)

This dashboard investigates passenger counts and trip distances.

**Key areas covered:**
- Trip volume by passenger count.
- Average passenger count per trip.
- Average trip distance.
- Distance patterns across boroughs.

**Business use:** Helps examine passenger travel patterns and differences in trip distances across locations.

---

## 💡 Key Insights

The SQL analysis and dashboard results highlight several patterns worth investigating.

### 1. Yearly Trip Trends

The yearly trip counts show substantial variation across the 2017–2020 period. The recorded totals rise from approximately 1.05 million trips in 2017 to 8.81 million in 2018, followed by around 6.05 million in 2019 and 1.74 million in 2020.

**Interpretation:** The dataset shows a strong decline in recorded trips after 2018. Because the dataset coverage and consistency may differ by year, these totals should be validated before attributing the changes to business or external factors.

### 2. Geographic Distribution

The borough-level analysis indicates that Manhattan accounts for approximately 33.40% of recorded trips, Brooklyn 30.96%, and Queens 28.93%. The Bronx contributes approximately 6.48%, with a small share classified as Unknown.

**Interpretation:** Manhattan, Brooklyn, and Queens represent the largest recorded trip shares in the analyzed results. This can guide further investigation of geographic demand and route activity.

### 3. Peak Demand Periods

The time-based SQL results show several high-volume periods around late afternoon and early evening on Thursdays and Fridays, including Friday at 5 PM.

**Interpretation:** These periods are candidates for closer demand analysis and operational planning. Actual staffing or vehicle allocation decisions should also consider seasonality, location, and more recent data.

### 4. Passenger Counts

The calculated average passenger count is approximately 1.33 passengers per trip overall in the dashboard results. Borough-level averages in the SQL output range from approximately 1.24 to 1.40 passengers per trip.

**Interpretation:** The results suggest that single-passenger trips are an important part of the recorded activity, while passenger patterns vary modestly by borough.

### 5. Trip Distance Patterns

The distance analysis identifies differences across borough pairs, with some routes involving Staten Island showing much higher average distances than many within-borough journeys.

**Interpretation:** Geographic distance patterns can help explain variations in trip duration and fare, but unusual values should be checked for data-entry errors or outliers.

### 6. Payment and Tips

The SQL results show payment types 1 and 2 as the largest recorded payment categories, with type 1 representing approximately 53.28% and type 2 approximately 40.68% of the analyzed records.

**Interpretation:** Payment-type distribution can help describe customer payment behavior. The meaning of each payment code should be verified against the dataset's official definitions before assigning business labels.

### 7. Revenue Concentration

The borough-pair analysis shows substantial recorded revenue for within-borough trips, including Manhattan-to-Manhattan, Brooklyn-to-Brooklyn, and Queens-to-Queens journeys.

**Interpretation:** Comparing trip counts alongside revenue helps distinguish high-volume routes from routes that generate higher revenue per trip.

**Note:** These are preliminary findings from the available SQL and dashboard results. Metric definitions, dataset coverage, duplicates, missing values, and revenue calculations must be validated before the figures are used for formal business decisions.

---

## 🏢 Business Problems This Project Can Help Solve

The project provides analytical support for several common transportation and mobility business challenges.

| Business Problem | How the Project Helps |
|---|---|
| Unclear trip performance | Yearly and monthly metrics make trip trends easier to monitor |
| Difficulty identifying peak periods | Day-and-hour analysis highlights potential high-demand windows |
| Limited visibility into geographic demand | Borough and zone analysis shows where recorded trips are concentrated |
| Unclear route performance | Pickup and drop-off analysis helps compare frequently used routes |
| Limited revenue visibility | Revenue and average-fare metrics support performance comparisons |
| Lack of payment behavior insights | Payment distribution helps describe the mix of recorded payment methods |
| Limited understanding of tipping patterns | Tip analysis compares recorded tips across routes and boroughs |
| Unclear passenger and distance patterns | Passenger and distance dashboards reveal differences across trips |
| Repetitive manual data imports | A Python script automates the configured data-loading step |
| Time-consuming report updates | SQL-connected Power BI reporting makes refreshed data easier to visualize |

### Potential Business Applications

The analysis could support:

- Transportation demand planning.
- Revenue monitoring and performance reporting.
- Geographic service analysis.
- Operational resource planning.
- Route-level performance comparisons.
- Management reporting and business intelligence.

These dashboards support analysis rather than automatically making operational decisions. Recommendations should be validated with reliable, representative, and appropriately current data.

---

## 🗂️ How to Explore This Project

If you are reviewing this repository for learning, portfolio evaluation, or technical understanding, follow this order.

### Step 1 — Review the Python Scripts

Open the `Uber_Python_Script` folder.

Review how the source data is prepared and how the automation script reads a configured file path and loads the data into SQL.

### Step 2 — Explore the SQL Analysis

Open the `SQL_Uber` folder.

Review the business queries, aggregation logic, calculated metrics, and outputs used to answer the 10 analytical questions.

### Step 3 — View the Dashboard Screenshots

Open the `PowerBI deshboards` folder or review the embedded dashboard gallery above.

Each screenshot represents a separate report page and highlights a different analytical area.

### Step 4 — Review the Project Reports

Open the `Presentation Reports` folder to explore the available presentation materials and project documentation.

### Step 5 — Understand the End-to-End Workflow

Trace the process from Python data preparation to SQL import, SQL analysis, Power BI connectivity, and report refresh. This demonstrates how data preparation, querying, and visualization work together in a reporting pipeline.

---

## 🚀 How to Run the Project

The exact execution commands depend on the Python script, SQL database engine, connection settings, and installed dependencies included in the repository.

### Prerequisites

- Python and the packages required by the included scripts.
- Jupyter Notebook, if using the notebook workflow.
- A supported SQL database and appropriate permissions.
- Microsoft Power BI Desktop.
- Access to the source dataset.
- A configured SQL connection for Power BI.

### Suggested Execution Steps

1. Clone or download this repository.
2. Review the Python files in `Uber_Python_Script`.
3. Install the dependencies required by the scripts.
4. Configure the input file path and database connection settings.
5. Run the data preparation and SQL import script.
6. Confirm that the expected data is available in the SQL database.
7. Execute the analysis queries in `SQL_Uber`.
8. Open the relevant Power BI report, if the report file is included.
9. Configure the SQL data source and required credentials.
10. Refresh the Power BI dataset or report and verify that the visuals reflect the latest available source data.

**Before running the automation script:** Check its expected file path, target table names, import behavior, and database settings. Do not commit passwords, access tokens, or other credentials to GitHub.

---

## 🔍 Data Quality and Limitations

Reliable business insights depend on consistent and correctly interpreted data.

The following checks are recommended before using the results:

- Verify record counts and data coverage for each year.
- Check for duplicate records and missing values.
- Validate fare, tip, distance, and revenue fields.
- Confirm the definitions and units of financial metrics.
- Validate payment-type codes against the source documentation.
- Check whether the Power BI measures match the SQL calculations.
- Confirm that year-over-year calculations use the correct previous-year baseline.
- Verify that all dashboards use compatible filters, date ranges, and metric definitions.

Some reported totals and measures may require reconciliation before they are treated as final business KPIs.

---

## 🔮 Future Improvements

Potential next steps for extending the project include:

- Scheduling the Python data import process.
- Adding automated validation and error logging.
- Configuring a fully scheduled refresh pipeline where supported.
- Improving handling of incremental data loads.
- Adding data-quality checks before importing records.
- Standardizing KPI definitions between SQL and Power BI.
- Adding more detailed trend and seasonal analysis.
- Documenting the database schema and script configuration.
- Adding automated tests for important calculations.

---

## 🏁 Conclusion

The Uber Trips Analytics project demonstrates a practical, end-to-end approach to data analytics and business intelligence. It combines Python for data preparation and import automation, SQL for structured business analysis, and Power BI for interactive reporting.

The 10 SQL business questions and five dashboard pages provide a framework for understanding trip trends, revenue, demand timing, geographic distribution, payment behavior, tipping, passenger counts, and travel distances.

Beyond visualization, the project demonstrates how a repeatable data pipeline can reduce manual import work and make reporting easier to maintain. With appropriate data validation and refresh configuration, the workflow can serve as a foundation for more automated analytics.

Overall, this project showcases practical skills in **data cleaning, Python scripting, SQL querying, database connectivity, dashboard development, business problem analysis, and reporting automation**.

---

**Project Name:** Uber Trips Analytics  
**Data Period:** 2017–2020  
**Tools:** Python · Jupyter Notebook · SQL · Power BI · GitHub  
**Focus Areas:** Data Analytics · Business Intelligence · Workflow Automation

