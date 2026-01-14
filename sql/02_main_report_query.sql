SELECT
    nr.description                    AS NursingStation,
    CONCAT(p.lastname, ', ', p.firstname, ' ', ISNULL(p.middlename, '')) AS PatientName,
    pr.patientno                      AS HRN,
    prof.age2                         AS Age,
    r.PK_psRooms                      AS RoomCode,
    r.roomdesc                        AS Room,
    prof.Religion,
    dt.dietdesc                       AS Diet,
    dt.dietremarks                    AS DietRemarks,
    pr.impression,
    mt.description                    AS MealType,
    prof.patid                        AS PatientID,
    dt.postdate                       AS PostedDate,
    CONCAT(u.lastname, ', ', u.firstname) AS PostedBy

FROM psDietTran dt
INNER JOIN mscDietMstr dm
    ON dt.FK_mscDietMstr = dm.PK_mscDietMstr
INNER JOIN mscNrstation nr
    ON dt.FK_mscNRStations = nr.PK_mscNrstation
INNER JOIN psPatRegisters pr
    ON dt.FK_psPatRegisters = pr.PK_psPatRegisters
INNER JOIN mscDietmealType mt
    ON dt.FK_mscDietMealType = mt.PK_mscDietMealType
INNER JOIN vwReportPatientProfile prof
    ON dt.FK_psPatRegisters = prof.pk_pspatregisters
INNER JOIN psRooms r
    ON r.PK_psRooms = dt.FK_psRooms
INNER JOIN emdPatients p
    ON dt.FK_emdPatients = p.PK_emdPatients
LEFT JOIN emdUsers u
    ON dt.FK_ASUPost = u.PK_emdUsers

WHERE
    dt.postflag = 1
    AND dt.postdate BETWEEN @StartDate AND @EndDate
    AND mt.PK_mscDietMealType = @MealType
    AND (
        @IsChkNRStation = 0
        OR nr.PK_mscNrstation = @NRStation
    )

ORDER BY
    nr.description,
    r.roomdesc,
    PatientName;
