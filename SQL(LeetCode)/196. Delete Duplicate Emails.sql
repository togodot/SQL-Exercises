-- < 196. Delete Duplicate Emails >
-- 문제 링크: https://leetcode.com/problems/delete-duplicate-emails/solutions/?envType=study-plan&id=sql-i

-- Accepted 풀이
delete a
from Person a, Person b
where a.email = b.email and a.id > b.id;

-- DELETE 문에 WITH절은 사용 불가능한걸까??
with temp as (
    select email, min(id)
    from Person
    group by 1
)
DELETE FROM Person WHERE id not in (select id from temp);
