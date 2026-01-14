# Performance Notes – Diet List Report

## Overview
This document describes the performance considerations applied to the
Diet List reporting dataset. The objective is to ensure efficient execution,
predictable behaviour, and suitability for operational and analytical use.

---

## Original Implementation Issues
The original stored procedure exhibited several performance and maintainability
concerns:
- Use of dynamic SQL
- Scalar user-defined functions (UDFs)
- VARCHAR-based date filtering
- Limited reusability outside SSRS

---

## Refactoring Strategy

### Removal of Dynamic SQL
- Replaced dynamic SQL with a fully parameterised query
- Eliminated SQL injection risk
- Improved execution plan reuse

### Elimination of Scalar UDFs
- Replaced UDF calls with JOINs to source tables
- Avoided row-by-row execution
- Reduced CPU overhead on large result sets

---

## Join & Filtering Strategy
- All joins use indexed primary and foreign keys
- Filtering applied as early as possible in the query
- Mandatory date parameters enforce bounded queries
- Optional nursing station filter implemented using conditional logic

---

## Date Handling
- Strongly typed DATE parameters used instead of VARCHAR
- BETWEEN logic applied consistently
- Avoids implicit conversions and scan-heavy plans

---

## Indexing Considerations
Recommended supporting indexes:

```sql
CREATE INDEX idx_psDietTran_postdate
ON psDietTran (postdate, FK_mscDietMealType)
INCLUDE (FK_psPatRegisters, FK_mscNRStations, postflag);

CREATE INDEX idx_psDietTran_station
ON psDietTran (FK_mscNRStations);
