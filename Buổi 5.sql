-- Bài 1:
SELECT DISTINCT CITY FROM STATION
WHERE ID%2=0
--Bài 2:
Select (count (city)- count (distinct city)) as sum from station;
--Bài 4:
SELECT 
ROUND(CAST(SUM(item_count*order_occurrences) / SUM(order_occurrences)DECEMAL),1) AS mean
FROM items_per_order
