SELECT admissionid
    , patientid
    , admissioncount
    , location
    , origin
    , admittedat
    , destination
    , gender
    , agegroup
    , dateofdeath
    , specialty
FROM admissions
WHERE admissionid IN %(sepsis_ids)s
AND admissioncount = 1
