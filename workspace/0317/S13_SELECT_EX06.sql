--P125 Q6
SELECT *
FROM emp
WHERE comm IS NULL
AND MGR IS NOT NULL
AND job IN ('MANAGER','CLERK')
AND ename NOT LIKE '_L%'
;