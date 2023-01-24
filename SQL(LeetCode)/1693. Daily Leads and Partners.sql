-- < 1693. Daily Leads and Partners >
-- 문제 링크: https://leetcode.com/problems/daily-leads-and-partners/?envType=study-plan&id=sql-i

-- mysql
select date_id, make_name
      , count(distinct lead_id) as unique_leads
      , count(distinct partner_id) as unique_partners
from DailySales
group by 1,2;
