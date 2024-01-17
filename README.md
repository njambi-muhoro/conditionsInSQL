# SQL Data Analytics Repository

Welcome to the SQL Data Analytics repository! This repository contains sample SQL queries and operations for data analytics purposes.

## Table of Contents

- [Introduction](#introduction)
- [Queries](#queries)
  - [Filtering with ILIKE](#filtering-with-ilike)
  - [Combining Conditions with AND and OR](#combining-conditions-with-and-and-or)
- [SQL Operations](#sql-operations)
  - [Creating Tables](#creating-tables)
  - [Dropping Tables](#dropping-tables)
  - [Altering Columns](#altering-columns)

## Introduction

This repository is a collection of SQL queries and operations designed for data analytics tasks. Whether you're a data analyst or a developer working with databases, these examples showcase how to filter data effectively and perform basic operations on tables.

## Queries

### Filtering with ILIKE

When you want to perform a case-insensitive search, the `ILIKE` operator is handy. It allows you to filter results based on a pattern match.

Example:
```SQL
SELECT * FROM employees
WHERE name ILIKE 'John%';

## Combining Conditions with AND and OR
Use the AND and OR operators to create more complex filtering conditions.

Example:

### SQL

SELECT * FROM sales
WHERE (product ILIKE 'Laptop%' OR product ILIKE 'Desktop%')
AND quantity_sold > 10;

##SQL Operations
Creating Tables
To create a new table, use the CREATE TABLE statement.

Example:

##SQL

CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(255)
);


Dropping Tables
To remove an existing table, use the DROP TABLE statement.

Example:

##SQL

DROP TABLE IF EXISTS obsolete_data;
Altering Columns
If you need to modify the structure of a table, use the ALTER TABLE statement.

Example:

##SQL

ALTER TABLE employees
ADD COLUMN department VARCHAR(50);
