# Write your MySQL query statement below
SELECT 
round(sum(tiv_2016),2) as tiv_2016
FROM insurance
WHERE tiv_2015 IN(
SELECT tiv_2015
    FROM Insurance
    GROUP BY tiv_2015
    HAVING COUNT(*) > 1
)
AND
(lat,lon) IN (
    SELECT 
    lat
    ,lon
    from insurance
    group by lat,lon
    having count(*)=1
)