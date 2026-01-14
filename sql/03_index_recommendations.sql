CREATE INDEX idx_psDietTran_postdate
ON psDietTran (postdate, FK_mscDietMealType)
INCLUDE (FK_psPatRegisters, FK_mscNRStations, postflag);

CREATE INDEX idx_psDietTran_station
ON psDietTran (FK_mscNRStations);
