SET @bonus_value := 1000;

SELECT
    name,
    bonus
FROM
    employee
    LEFT JOIN bonus ON employee.empId = bonus.empId
WHERE
    bonus < @bonus_value
    OR bonus IS NULL;