SELECT admissionid, start, stop, dose, administered
FROM drugitems
WHERE ordercategoryid = 17 -- Infuus - Colloid
AND administered > 0
AND start < %(fluid_period)s 
AND admissionid IN (
    SELECT admissionid
    FROM listitems
    WHERE itemid = 15808 -- Sepsis at ICU admission
    )
