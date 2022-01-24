SELECT a.admissionid
    , (SELECT SUM(administered) 
        FROM drugitems d
        WHERE ordercategoryid = 55 -- Infuus - Crystalloid
        AND a.admissionid = d.admissionid) AS crystalloid_intake_ml
    , (SELECT SUM(administered) 
        FROM drugitems d
        WHERE ordercategoryid = 17 -- Infuus - Colloid
        AND a.admissionid = d.admissionid) AS colloid_intake_ml
    , (SELECT SUM(administered) 
        FROM drugitems d 
        WHERE ordercategoryid = 61 -- Infuus - Bloedproducten
        AND a.admissionid = d.admissionid) AS bloodproducts_intake_ml
    , (SELECT SUM(fluidin)
        FROM drugitems d
        WHERE a.admissionid = d.admissionid) AS fluidin
    , (SELECT SUM(administered) 
        FROM drugitems d 
        WHERE ordercategoryid = 65 -- Spuitpompen
        AND itemid = 7229
        AND a.admissionid = d.admissionid) AS norepinephrine_intake_mcg
FROM admissions a
GROUP BY admissionid
