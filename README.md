**Project Overview:**

This repository contains a collection of SQL scripts designed to simulate and solve real-world retail business scenarios.

The project focuses on extracting actionable insights from relational databases (Customers & Orders) using advanced querying techniques.

**Environment:** All scripts were developed and tested using the Programiz Online Editor.

**Technical Skillset:**

This project demonstrates proficiency in:

**Data Retrieval:**

Filtering multi-country data and string concatenation for clean reporting.

Relational Mapping: Utilizing INNER JOIN and LEFT JOIN to link disparate data entities.

Aggregations & Grouping: Calculating business KPIs like highest order amounts and customer purchase frequency.

Advanced Logic: Implementing Subqueries for comparative analysis and HAVING clauses for high-density data filtering.

** Key Learning Modules**.

**1-Basic Filtering & Aggregates:**

-Filtering customers specifically from the USA or UK.

-Calculating basic order statistics such as Total_Orders_Count and Highest_Order_Amount.

**2. Relational Data Mapping(JOINS)**

-Linking customers with their respective order amounts and items.

-Customer Activity Tracking: Identifying the number of orders per customer using GROUP BY.

-Inactive Customer Analysis: Using LEFT JOIN and IS NULL filters to find customers who haven't placed orders yet.

**3. Advanced Business Analytics**

-Performance Benchmarking: Retrieving orders that are above the average order amount using subqueries.

-Market Density Analysis: Filtering countries that have more than 2 customers using the HAVING clause.

**Technical Note:**

**Empty Output in Market Density Analysis**
You might notice that the query returns no rows:

<img width="1587" height="705" alt="5" src="https://github.com/user-attachments/assets/5d84b9ed-742b-46ae-bc9c-894f8ccf19c5" />


Reason: This is a logical filtering choice. The query specifically looks for countries with a high density of customers (more than 2). Since the current sample dataset in the environment contains 1 or 2 customers per country, the result is correctly empty. 

**Visual Proof (Results)**
You can find the execution screenshots of these queries in the /screenshots folder of this repository to see how the logic performs in real-time.
