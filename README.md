# Australian Job Market Analysis

## Project Overview

This project analyzes the Australian job market for Data Analyst positions by scraping job postings from LinkedIn and performing comprehensive data analysis. The project provides insights into salary trends, required skills, company preferences, and geographical distribution of data analyst opportunities across Australia.

<img src="/dashboard_screenshot.png?raw=true"/>

## Project Objectives

- Scrape Data Analyst job postings from LinkedIn across Australia
- Analyze salary distributions and trends
- Identify most in-demand skills and technologies
- Examine geographical distribution of opportunities
- Provide actionable insights for job seekers and employers

## Technologies Used

- **Python**: Core programming language
- **BeautifulSoup**: Web scraping and HTML parsing
- **Pandas**: Data manipulation and analysis
- **Requests**: HTTP library for web requests
- **SQL**: Data querying and analysis
- **Power BI**: Data visualization and reporting
- **Jupyter Notebook**: Interactive development and analysis

## How to Run the Project

### Prerequisites

- Python 3.7+
- Jupyter Notebook or JupyterLab
- Required Python packages (install via pip):

```bash
pip install pandas
pip install beautifulsoup4
pip install requests
pip install lxml
```

### Running the Analysis

1. **Clone the repository:**

   ```bash
   git clone https://github.com/nfahajan/australian-job-market-insights-dashboard
   cd australian-job-market-insights-dashboard
   ```

2. **Open the Jupyter notebook:**

   ```bash
   jupyter notebook Australian_Job_Market.ipynb
   ```

3. **Run all cells** in the notebook to:

   - Scrape job data from LinkedIn
   - Process and clean the data
   - Generate the CSV file
   - Perform initial analysis

4. **For SQL analysis:**

   - Import the CSV into your preferred SQL database
   - Run the queries from `SQLQuery.sql` and `data_cleanning.sql`

5. **For Power BI visualization:**
   - Open `job_market_BI.pbix` in Power BI Desktop
   - Refresh the data source to point to your CSV file

## Key Findings

### Data Overview

- **Total Jobs Analyzed**: 399 Data Analyst positions
- **Geographical Coverage**: Australia-wide (primarily Sydney, Melbourne, and other major cities)
- **Data Fields**: Job title, location, required skills, salary, company name

### Salary Insights

- Salary information was available for 18 out of 399 positions
- Salary range varies significantly by location and company
- Some positions offer competitive salary packages

### Skills Analysis

The most commonly required skills include:

- **Technical Skills**: Python, SQL, Excel, Power BI, Tableau, R
- **Cloud Platforms**: AWS, Azure, Google Cloud
- **Analytics Tools**: Machine Learning, Statistics, ETL
- **Soft Skills**: Communication, Problem-solving, Data Visualization

### Geographical Distribution

- **New South Wales**: High concentration of opportunities, especially in Sydney
- **Victoria**: Strong market presence in Melbourne
- **Other States**: Opportunities available across Australia

### Company Insights

- Mix of large corporations and specialized consulting firms
- Companies like NielsenIQ, carsales, Hays, and Tata Consultancy Services actively hiring
- Various industry sectors represented

## 🔍 Analysis Queries

The project includes several SQL queries for deeper analysis:

1. **Salary Analysis**: Companies with above-average salaries
2. **Geographical Ranking**: Salary rankings by location
3. **Company Trends**: Cumulative job counts per company

## Data Cleaning

The project includes data cleaning scripts to:

- Remove duplicate entries
- Standardize salary formats
- Clean location data
- Handle missing values

## Visualization

Power BI dashboard (`job_market_BI.pbix`) provides:

- Interactive charts and graphs
- Salary distribution analysis
- Skills demand visualization
- Geographical mapping
- Company analysis

**Note**: This project demonstrates web scraping, data analysis, and visualization techniques. Always ensure compliance with website terms of service and respect rate limits when scraping data.
