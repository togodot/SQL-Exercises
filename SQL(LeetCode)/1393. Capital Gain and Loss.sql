-- < 1393. Capital Gain/Loss >
-- 문제 링크: https://leetcode.com/problems/capital-gainloss/description/?envType=study-plan&id=sql-i


-- mysql: with절을 두 번 사용해서 풀었다. 런타임이 길진 않았지만 더 간단한 쿼리문 작성이 가능할 것 같다.
with temp_01 as (
    select stock_name, sum(price) as buy_price
    from Stocks
    where operation = 'Buy'
    group by 1
),
temp_02 as (
    select stock_name, sum(price) as sell_price
    from Stocks
    where operation = 'Sell'
    group by 1
)
select a.stock_name, (sell_price - buy_price) as capital_gain_loss
from temp_01 a join temp_02 b on a.stock_name = b.stock_name;


-- mysql: 처음에 case when으로 접근하다가 with절로 우회했다. sum 안에 case when을 사용할 수 있다는 점을 놓쳤다. 쿼리문이 훨씬 간단하다.
select stock_name
    , sum(case when operation = 'Buy' then -price else price end) as capital_gain_loss
from Stocks
group by 1;


-- sum 안에 if문도 가능하다.
select stock_name
    , sum(if(operation = 'Buy', -price, price)) as capital_gain_loss
from stocks
group by stock_name;
