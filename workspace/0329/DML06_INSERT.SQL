CREATE TABLE emp_temp
AS
SELECT * FROM emp
WHERE 1 <> 1;

SELECT *
FROM emp_temp;