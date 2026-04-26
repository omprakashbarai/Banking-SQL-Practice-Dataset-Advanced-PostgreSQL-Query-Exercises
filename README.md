# Banking-SQL-Practice-Dataset-Advanced-PostgreSQL-Query-Exercises
PostgreSQL Banking SQL Practice Dataset for intermediate to advanced learning. Includes branches, accounts, and transactions tables to practice joins, aggregations, CTEs, window functions, ranking, and financial analytics. Ideal for SQL interview preparation, portfolio projects, and real-world banking data analysis.

This project contains a structured Banking SQL Practice Dataset built using PostgreSQL for learning and improving SQL skills from intermediate to advanced level.

The dataset simulates a real-world banking system that includes customer accounts, branches, and transactions. It is designed to help learners practice SQL concepts used in Data Analytics, Banking Analytics, Financial Reporting, and Interview Preparation.

---

# Project Overview

This repository provides a banking database schema with realistic sample data for SQL practice.

The project focuses on solving business-oriented SQL problems such as:

- Customer account analysis
- Branch-level financial reporting
- Transaction analysis
- Ranking and window functions
- Aggregation and grouping
- CTEs and subqueries
- Banking performance insights

---

# Database Tables

## 1. Branches Table

Stores branch-related information.

### Columns:
- branch_id
- branch_name
- city

---

## 2. Accounts Table

Contains customer account details.

### Columns:
- account_id
- customer_name
- branch_id
- balance
- account_type

---

## 3. Transactions Table

Stores banking transaction records.

### Columns:
- transaction_id
- account_id
- amount
- transaction_type
- transaction_date

---

# SQL Concepts Covered

## Intermediate SQL
- SELECT Statements
- WHERE Clause
- ORDER BY
- GROUP BY
- Aggregate Functions
- JOIN Operations

---

## Advanced SQL
- Window Functions
- ROW_NUMBER()
- RANK()
- DENSE_RANK()
- LAG()
- LEAD()
- Common Table Expressions (CTEs)
- Subqueries

---

## Banking Analytics Practice
- Branch-wise balance analysis
- Customer ranking by account balance
- Transaction trend analysis
- Running totals
- Previous vs next transaction comparison
- Account-level reporting
- Financial aggregation

---

# Practice Questions Included

This project supports solving practical SQL questions such as:

- Find highest balance customer per branch
- Calculate running transaction totals
- Rank branches by total balance
- Find customers above average balance
- Analyze account transactions
- Identify top-performing branches
- Compare transactions over time

---

# Tools Used

- PostgreSQL
- SQL
- pgAdmin
- DBeaver
- GitHub

---

# Project Goal

The goal of this project is to provide a realistic SQL practice environment for improving PostgreSQL skills and preparing for Data Analyst, Business Analyst, and SQL Interview roles.

---

# Learning Outcome

After practicing this dataset, you will understand:

- Real-world SQL querying
- Banking data analysis
- Window functions and ranking
- Aggregation and reporting
- Advanced SQL interview concepts

---

# Repository Structure

```bash
Banking-SQL-Practice/
│
├── datasets/
│   ├── branches.sql
│   ├── accounts.sql
│   └── transactions.sql
│
├── schema/
│   ├── create_tables.sql
│
├── practice_questions/
│   ├── intermediate_questions.sql
│   ├── advanced_questions.sql
│
├── solutions/
│   ├── intermediate_solutions.sql
│   ├── advanced_solutions.sql
│
└── README.md
```

---

# How to Use

1. Clone this repository
2. Import SQL schema into PostgreSQL
3. Insert sample banking data
4. Practice SQL queries
5. Solve intermediate → advanced → analytics-level problems

---

# Author

Created for SQL Practice, PostgreSQL Learning, and Data Analytics Preparation.
