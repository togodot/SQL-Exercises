-- < 1527. Patients With a Condition >
-- 문제 링크: https://leetcode.com/problems/patients-with-a-condition/?envType=study-plan&id=sql-i

-- MySQL
select patient_id, patient_name, conditions
from Patients
where conditions like 'DIAB1%' or conditions like '% DIAB1%';
