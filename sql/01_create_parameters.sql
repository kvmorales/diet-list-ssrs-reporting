/*
Diet List Report – SSRS Parameter Documentation
*/

DECLARE @StartDate   DATE;
DECLARE @EndDate     DATE;
DECLARE @MealType    VARCHAR(20);
DECLARE @NRStation   INT;
DECLARE @IsChkNRStation BIT;

/*
Parameter Logic:
- Date range is mandatory
- MealType is required
- Nursing Station is optional
*/
