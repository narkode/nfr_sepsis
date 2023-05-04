SELECT admissionid, start, stop, duration, dose, administered
FROM drugitems
WHERE ordercategoryid = 65 -- Spuitpompen
AND itemid = 7229 -- Norepinephrine
AND administered > 0
AND start < %(fluid_period)s 
AND admissionid IN %(sepsis_ids)s
