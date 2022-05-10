--p212 Q2
SELECT job,
       COUNT(*)
FROM emp
GROUP BY job
HAVING COUNT(*) >= 3
;

--JOB         COUNT(*)
----------- ----------
--CLERK              4
--SALESMAN           4
--MANAGER            3