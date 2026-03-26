# SQL Learning Project – Alex The Analyst Course

This repository contains my notes, practice queries, and mini-projects completed while following the SQL course by Alex The Analyst. The goal of this project is to build a strong foundation in SQL for data analysis and data engineering.

---

## 🎯 Objectives

* Learn core SQL concepts
* Write efficient queries for data analysis
* Understand how to manipulate and retrieve data from relational databases
* Prepare for data analyst / data engineer interviews

---

## 🛠️ Tech Stack

* SQL
* PostgreSQL (primary database)
* Optional: MySQL / Microsoft SQL Server

---

## 📚 Topics Covered

* Basic Queries (`SELECT`, `WHERE`, `ORDER BY`)
* Joins (`INNER`, `LEFT`, `RIGHT`)
* Aggregations (`GROUP BY`, `HAVING`)
* Subqueries
* Window Functions
* Data Cleaning Techniques
* Case Statements

---

## 📂 Project Structure

```
sql-learning/
│── basics/
│── joins/
│── aggregations/
│── window_functions/
│── projects/
│── datasets/
│── README.md
```

---

## ▶️ How to Run

1. Install a VS Code
2. Install extensions - postgreSQL, container tools, dev container.
3. Install docker to create database container for postgreSQL.
4. Create server with recommended/desired connetion details.
5. Load the provided .sql dataset and run the queries.

---

## ▶️ Alternative Method

1. Install a SQL database (MySQL Workbench recommended)
2. Load the provided datasets
3. Open your SQL editor
4. Run the .sql files in each folder

## 📊 Sample Queries

```sql
SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department;
```

---

## 🚀 Key Learnings

* Writing optimized SQL queries
* Understanding how data is structured in relational databases
* Using joins to combine multiple datasets
* Applying window functions for advanced analysis

---

## 🔮 Future Improvements

* Add real-world datasets
* Build end-to-end data projects
* Integrate with Python for data processing
* Practice advanced SQL interview questions

---

## 👤 Author

Shriharsha Naik
---

## ⭐ Acknowledgment

Special thanks to Alex The Analyst for creating beginner-friendly and practical SQL learning content.
