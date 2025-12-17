# The Application of SQL Server in Data Warehousing Using the Medallion Architecture  


## 📖 Introduction  

This project demonstrates the application of **Microsoft SQL Server** in designing and implementing a modern **data warehouse** solution. It adopts the **Medallion Architecture (i,e, Bronze–Silver–Gold)** as a structured approach to data integration, transformation, and analytics. The work highlights how fragmented operational data from multiple source systems can be consolidated into a unified warehouse to support business intelligence and decision‑making.  

---

## 📊 Project Overview  

- **Source Systems**: ERP and CRM datasets provided in CSV format  
- **Business Context**: Operational data was siloed across systems, limiting visibility into customer behavior, product performance, and sales trends  
- **Objectives**:  
  - Ingest raw data from ERP and CRM sources  
  - Cleanse and standardize data to ensure consistency  
  - Design a star schema optimized for analytical queries  
  - Deliver SQL‑based insights and KPIs for stakeholders  

---

## 🏗️ Methodology & Architecture  

The solution follows the **Medallion Architecture**:  

- **Bronze Layer** → Raw ingestion of ERP & CRM CSV files  
- **Silver Layer** → Cleansing, standardization, and transformation processes  
- **Gold Layer** → Business‑ready star schema supporting dashboards and reporting  

Key steps undertaken:  
- Development of ETL pipelines in SQL Server  
- Creation of fact and dimension tables for analytical modeling  
- Implementation of data quality checks and validation scripts  
- Documentation of architecture, data catalog, and naming conventions  

---

## 🎯 Outcomes  

- Consolidated ERP and CRM data into a unified analytical model  
- Improved reporting accuracy and query performance through star schema design  
- Delivered actionable insights into customer retention, product sales, and revenue trends  
- Established scalable architecture capable of integrating additional source systems  

---

## 🛠️ Skills & Tools Utilized  

- **SQL Server Express** → Database engine  
- **SQL Server Management Studio (SSMS)** → Development and administration  
- **ETL Development** → SQL‑based pipelines for ingestion and transformation  
- **Data Modeling** → Fact and dimension tables, star schema design  
- **DrawIO** → Architecture and schema diagrams  
- **GitHub** → Version control and collaboration  
- **Documentation Tools** → Notion / Markdown for project documentation  

---


## 📂 Repository Structure  

```
my-data-warehouse-project/
│
├── datasets/            # Raw ERP & CRM datasets (CSV files)
├── docs/                # Documentation & architecture diagrams
│   ├── data_architecture.drawio
│   ├── data_models.drawio
│   ├── data_flow.drawio
│   ├── data_catalog.md
│   └── naming-conventions.md
│
├── scripts/             # SQL scripts for ETL & transformations
│   ├── bronze/          # Raw ingestion scripts
│   ├── silver/          # Cleansing & transformation scripts
│   └── gold/            # Star schema & analytics scripts
│
├── tests/               # Data quality & validation scripts
├── README.md            # Project overview (this file)
├── LICENSE              # License information
└── requirements.txt     # Dependencies & requirements
```

---



## 🌟 About Me  

Hi,my name is **Monjok Joseph Terem**. I am a Graduate Civil Engineer from the Federal University of Technology, Minna,Nigeria,with a strong passion for Civil Engineering ,data engineering & analytics, Sustainability, and business intelligence. My career interests lie at the intersection of the stated fields ,where I aim to leverage data‑driven solutions to improve infrastructure planning, optimize resource utilization, and support sustainable development. With a solid foundation as an Engineer,as well as in SQL development, ETL pipelines, and data modeling, I focus on building scalable systems that transform raw data into actionable insights for both engineering and business contexts.

📫 Connect with me:  
- [LinkedIn](https://www.linkedin.com/in/joseph-monjok-a8b813232)  

---

✨ *This project illustrates the practical application of SQL Server in data warehousing using Medallion Architecture, showcasing both technical execution and business impact.*  

---




