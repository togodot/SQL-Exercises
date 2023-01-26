-- < 608. Tree Node >
-- 문제 링크: https://leetcode.com/problems/tree-node/?envType=study-plan&id=sql-i

-- mysql
select id
    , case when p_id is null then 'Root'
           when id in (select p_id from Tree) then 'Inner' else 'Leaf' end as type
from Tree;
