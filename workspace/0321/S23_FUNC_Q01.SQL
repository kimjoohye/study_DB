SELECT empno,
       RPAD(SUBSTR(empno, 1,2),4,'**') AS MASKING_EMPNO,
       ename,
       RPAD(SUBSTR(ename, 1,1),LENGTH(ename),'*****') AS MASKING_NAME
FROM emp
WHERE LENGTH(ename) >= 5
AND LENGTH(ename) < 6
;

--내가 한 것
--SELECT empno,
--       REPLACE(empno, SUBSTR(empno,-2), '**') AS "MASKING_EMPNO",
--       ename,
--       REPLACE(ename, SUBSTR(ename,2),'****') AS "MASKING_ENAME"
--FROM emp
--WHERE LENGTH(ename) >= 5
--;