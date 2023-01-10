-- < New Companies >
-- 문제 링크: https://www.hackerrank.com/challenges/the-company/problem?isFullScreen=true

select a.company_code, min(b.founder),
    count(distinct a.lead_manager_code),
    count(distinct a.senior_manager_code),
    count(distinct a.manager_code),
    count(distinct a.employee_code)
from Employee a
    left join Company b on a.company_code = b.company_code
group by a.company_code
order by a.company_code;
