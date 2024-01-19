# Write your MySQL query statement below
SELECT e1.name
FROM Employee e1
INNER JOIN (
    SELECT managerId, COUNT(*) AS reportCount
    FROM Employee
    GROUP BY managerId
) AS e2 ON e1.id = e2.managerId
WHERE e2.reportCount >= 5;