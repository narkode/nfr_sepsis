SELECT admissionid, start, stop, dose, administered
FROM drugitems
WHERE ordercategoryid = 65 -- Spuitpompen
AND itemid = 7229 -- Norepinephrine
AND administered > 0
AND start < %(fluid_period)s 
--AND admissionid IN (
--    SELECT admissionid
--    FROM listitems
--    WHERE itemid = 15808 -- Sepsis at ICU admission
--    )
