# Hospital Diet List Report

## Overview
This project is a SQL Server–based reporting solution designed to generate daily hospital diet lists by nursing station and meal type (Breakfast, Lunch, Dinner). The report supports clinical and dietary operations by providing a structured, filterable view of patient diet requirements for a selected service date.

The dataset was refactored from a dynamic SQL stored procedure into a fully parameterised, JOIN-based query, improving performance, security, and BI reusability.

# Key Features
- Date-driven diet listing
- Optional nursing station filtering
- Meal type selection (Breakfast / Lunch / Dinner)
- Patient-centric output including age, room, diet, and remarks
- Audit-friendly and BI-ready dataset design

# Technologies Used
- SQL Server (T-SQL)
- SQL Server Reporting Services (SSRS)
- Hospital Information Systems (HIS)
- Relational reporting design
