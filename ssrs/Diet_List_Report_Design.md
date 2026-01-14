# Diet List Report – SSRS Design

## Report Purpose
The Diet List Report provides a structured view of patient dietary requirements
for a selected reference date and meal type. The report is intended to support
operational diet preparation and ward-level review.

---

## Report Parameters
The report uses the following parameters:
- Reference Date (Start / End Date)
- Meal Type (e.g., Breakfast, Lunch, Dinner)
- Optional Nursing Station filter

These parameters allow the report to be reused for daily operations and
retrospective review.

---

## Report Layout
The report is designed as a **tabular SSRS report** with clear grouping and
sorting for ease of use in operational settings.

---

## Report Columns

| Column | Description |
|------|------------|
| Nursing Station | Ward or unit |
| Patient Name | Display name |
| HRN | Hospital record number |
| Age | Patient age |
| Room | Room assignment |
| Diet | Prescribed diet |
| Diet Remarks | Additional dietary instructions |
| Religion | Informational field |
| Meal Type | Selected meal |
| Posted Date | Date diet was recorded |
| Posted By | User who posted the diet |

---

## Sorting & Grouping
- Primary grouping: Nursing Station
- Secondary grouping: Room
- Sorting within groups by Patient Name

This structure supports:
- Efficient diet preparation
- Ward-level verification
- Clear printed output

---

## Report Header
The header displays:
- Report title
- Selected parameter values
- Report execution date/time

---

## Performance Considerations
- Dataset uses a JOIN-based SQL query
- Date-bounded filtering is mandatory
- Optional filters applied conditionally

---

## Usability & Output
- Optimised for printing and PDF export
- Page width set for readability
- Suitable for daily operational use

---

## Data Protection
- Sensitive patient data masked or anonymised
- Designed for internal reporting and portfolio demonstration only
