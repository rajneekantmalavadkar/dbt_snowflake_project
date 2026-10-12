# Airbnb Analytics Engineering Project using dbt and Snowflake

## Project Overview

This project demonstrates an end-to-end analytics engineering workflow using **dbt Core and Snowflake**. It transforms raw Airbnb listing, host, and booking data into structured, analytics-ready datasets using modular SQL models, Jinja templating, and data testing.

The project follows a layered data modeling approach to improve data quality, maintainability, and reusability.

## Tech Stack

- **Cloud Data Warehouse:** Snowflake
- **Transformation:** dbt Core
- **Language:** SQL, Jinja
- **Version Control:** Git and GitHub
- **Data Modeling:** Bronze, Silver, and Gold layers

## Architecture

```text
Raw Airbnb Data
      |
      v
Snowflake Source Tables
      |
      v
Bronze Layer
  - Raw/staging models
  - Source data preparation
      |
      v
Silver Layer
  - Data cleaning
  - Type casting
  - Null handling
  - Business transformations
      |
      v
Gold Layer
  - Fact and dimension models
  - Business-level aggregations
  - Analytics-ready datasets
      |
      v
Reporting and Analytics
```

## Key Features

### 1. Layered Data Modeling
Organized transformation models into Bronze, Silver, and Gold layers to separate data preparation, cleaning, and business-level transformations.

### 2. Modular SQL Models
Used dbt models and `ref()` to manage dependencies between models and build a maintainable transformation workflow.

### 3. Source Management
Configured source definitions using YAML to manage and reference source tables in Snowflake.

### 4. Jinja Templating
Used Jinja features such as `ref()`, `source()`, variables, and conditional logic to create reusable and configurable SQL models.

### 5. Incremental Processing
Implemented incremental filtering logic using timestamp columns and the maximum previously processed timestamp to reduce unnecessary reprocessing.

### 6. Data Quality Testing
Used dbt tests such as `unique`, `not_null`, and relationship checks where applicable to validate data quality.

### 7. Documentation and Lineage
Used dbt model dependencies and documentation to understand data lineage and transformation flow.

### 8. Version Control
Managed project code using Git and published the repository on GitHub.

## Project Structure

```text
.
├── analyses/
├── macros/
├── models/
│   ├── bronze/
│   ├── silver/
│   └── gold/
├── seeds/
├── snapshots/
├── tests/
├── dbt_project.yml
├── packages.yml
├── README.md
└── .gitignore
```

*Note: The directory structure may vary depending on your actual project configuration.*

## How to Run the Project

### Prerequisites
- Python
- dbt Core
- Snowflake account
- Git

### Installation

Install the required dbt adapter:

```bash
pip install dbt-snowflake
```

### Configure Snowflake

Configure your Snowflake connection in the local dbt `profiles.yml` file. Keep credentials private and do not commit this file to GitHub.

### Validate the Connection

```bash
dbt debug
```

### Install Dependencies

```bash
dbt deps
```

### Run Models

```bash
dbt run
```

### Execute Data Quality Tests

```bash
dbt test
```

### Generate Documentation

```bash
dbt docs generate
dbt docs serve
```

## Skills Demonstrated

- Snowflake data warehousing
- dbt Core and analytics engineering
- SQL transformations and CTEs
- Jinja templating
- Layered data modeling
- Incremental data processing
- Data quality testing
- Dependency management and lineage
- Git and GitHub version control

## Future Enhancements

- Add CI/CD workflows using GitHub Actions.
- Add more comprehensive singular and generic data tests.
- Implement snapshots for tracking historical changes.
- Integrate automated documentation generation.
- Add data freshness checks and pipeline monitoring.

## Author

**Rajneekant Malavadkar**

Data Engineering | AWS | Databricks | Snowflake | dbt | SQL | PySpark

