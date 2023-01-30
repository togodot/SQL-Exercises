-- < 1587. Bank Account Summary II >
-- [문제 링크](https://leetcode.com/problems/bank-account-summary-ii/)

-- mysql
select name, sum(amount) as balance
from Transactions a
    join Users b on a.account = b.account
group by name
having sum(amount) >= 10000;
