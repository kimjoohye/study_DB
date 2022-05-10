SELECT empno,
       ename,
       sal,
       CASE WHEN sal BETWEEN 1    AND 1000 THEN 'Level 1'
            WHEN sal BETWEEN 1001 AND 2000 THEN 'Level 2'
            WHEN sal BETWEEN 2001 AND 3000 THEN 'Level 3'
            WHEN sal BETWEEN 3001 AND 4000 THEN 'Level 4'
            WHEN sal >= 4001               THEN 'Level 5'
        END AS "LEVEL"
FROM emp
-- 4 출력 컬럼 순서(Level)
ORDER BY 4 DESC
;