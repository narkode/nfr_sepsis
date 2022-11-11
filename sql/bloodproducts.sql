SELECT admissionid, start, stop, dose, administered
FROM drugitems
WHERE ordercategoryid = 61 -- Infuus - Bloedproducten
AND administered > 0
AND start < %(fluid_period)s 
AND admissionid IN %(sepsis_ids)s
