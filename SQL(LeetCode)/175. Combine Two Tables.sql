-- < 175. Combine Two Tables >
-- 문제 링크: https://leetcode.com/problems/combine-two-tables/

select a.firstName, a.lastName, b.city, b.state
from Person a
    left join Address b on a.personId=b.personId;
