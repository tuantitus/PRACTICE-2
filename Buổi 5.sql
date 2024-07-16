-- Bài 1:
SELECT DISTINCT CITY FROM STATION
WHERE ID%2=0
--Bài 2:
Select (count (city)- count (distinct city)) as sum from station;
--Bài 4:
SELECT 
ROUND(CAST(SUM(item_count*order_occurrences) / SUM(order_occurrences)DECEMAL),1) AS mean
FROM items_per_order
--Bài 5:
SELECT candidate_id FROM candidates
WHERE Skill IN ('Python','Tableau','PostgreSQL')
GROUP BY candidate_id
HAVING COUNT(Skill)=3;
--Bài 6:
SELECT User_id,
DATE((MAX(post_date))- DATE(MIN(post_date)) AS days_between FROM posts
WHERE post_date BETWEEN '1/1/2021' AND '01/01/2022' OR post_date = '1/1/2020' AND
post_date = '01/01/2022'
GROUP BY User_id;
-- Bài 7: 
SELECT card_name, 
MAX(issued_amount)-MIN(issued_amount) AS difference
FROM monthly_cards_issued
GROUP BY card_name
ORDER BY (MAX(issued_amount)-MIN(issued_amount)) DESC;
-- Bài 8: 
SELECT manufacturer,
COUNT(drug) AS drug_count,
ABS(SUM(cogs-total_sales)) AS total_loss

FROM pharmacy_sales
WHERE total_sales<cogs

GROUP BY manufacturer
ORDER BY total_loss DESC;
-- Bài 9
# Write your MySQL query statement below
Select * from Cinema
where Count(id%2)=1 AND description !='boring'
ORDER BY rating Desc;
--Bài 10: 
Select teacher_id,
COUNT(distinct subject_id ) As CNT
from Teacher;
--Bài 11:
# Write your MySQL query statement below
Select user_id, Count(follower_id ) AS followers_count
from Followers
GROUP BY user_id
ORDER BY user_i;
--Bài 12:
Select Class from Courses
Group by class
having count(student)>=5
