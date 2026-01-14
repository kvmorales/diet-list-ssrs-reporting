# Hospital Diet List Report

## Overview

This project implements a SQL Server–based reporting solution to generate daily hospital diet lists filtered by reference date, meal type, and nursing station. The report provides a structured, operational view of patient dietary requirements to support daily ward and dietary service workflows.

The dataset was refactored from a legacy dynamic SQL stored procedure into a secure, parameterised, and BI-ready query suitable for SSRS and downstream analytics.

## Business Problem
- Hospitals require accurate and timely diet lists to:
- Coordinate meal preparation by ward and meal schedule
- Reduce manual reconciliation of patient dietary information
- Ensure consistency between clinical records and dietary services
- Support audit and retrospective review of diet orders
- The original implementation relied on dynamic SQL and scalar functions, which limited performance, security, and reusability.

## Technical Solution
- Rewrote the dataset as a fully parameterised, JOIN-based T-SQL query
- Removed dynamic SQL and scalar UDFs to improve performance and maintainability
- Implemented mandatory date and meal type parameters
- Added optional nursing station filtering without dynamic query construction
- Designed output for reuse in SSRS and BI tools

## Technologies Used
- SQL Server (T-SQL)
- SQL Server Reporting Services (SSRS)
- Relational Database Design
- Healthcare Information Systems

## Key Report Fields
- Nursing Station
- Patient Name
- Hospital Record Number (HRN)
- Age
- Room
- Diet
- Diet Remarks
- Religion
- Meal Type
- Posted Date
- Posted By

## Performance Optimisations
- Eliminated dynamic SQL to enable execution plan reuse
- Replaced scalar UDFs with relational joins
- Used strongly typed date parameters
- Applied filtering early in query execution
- Added targeted non-clustered indexes for date and meal-type filtering

## License
This project is licensed under the MIT License.
