/*

Found a 25% solution on github https://github.com/CaraHill/testdome-practice-questions/blob/master/regional_sales_comparison.sql
and tried to rework it - double edged sword 

Couldn't really improve it much - adding DISTINCT - 50%

https://stackoverflow.com/questions/60140159/having-trouble-to-display-average-sales-including-the-region-with-no-sales for 100% solution

*/

-- 50%
select regions.name as name,
  ifnull(sum(sales.amount), 0) / count(DISTINCT employees.id) as average,
  (
    select ifnull(sum(sales.amount), 0) / count(sales.id) as regional_average
    from regions
    left join states on regions.id = states.regionId
    left join employees on states.id = employees.stateId
    left join sales on employees.id = sales.employeeId
    group by regions.name
    order by regional_average desc
    limit 1
  ) - (ifnull(sum(sales.amount), 0) / count(*)) as difference
from regions
  left join states on regions.id = states.regionId
  left join employees on states.id = employees.stateId
  left join sales on employees.id = sales.employeeId
group by regions.name
