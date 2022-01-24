SELECT admissionid, start, stop, dose, item, administered, fluidin
FROM drugitems
WHERE ordercategoryid = 55 -- Infuus - Crystalloid 
AND administered > 0
AND start < %(fluid_period)s
AND admissionid IN (
    SELECT admissionid
    FROM listitems
    WHERE itemid = 15808 -- Sepsis at ICU admission
    )
