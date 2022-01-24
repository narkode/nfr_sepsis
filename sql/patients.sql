SELECT a.admissionid
    , a.patientid
    , a.admissioncount
    , a.agegroup
--    , a.weightgroup
--    , a.heightgroup
    , a.dateofdeath
    , CASE WHEN a.dateofdeath IS NULL
        THEN 0
        ELSE 1
    END AS died
FROM admissions a
INNER JOIN listitems li
ON a.admissionid = li.admissionid
WHERE admissioncount = 1
AND li.itemid = 15808 -- Sepsis at ICU admission
AND li.valueid = 1 -- Sepsis at ICU admission
AND dateofdeath <= 2419200000 
GROUP BY a.admissionid
ORDER BY a.admissionid

