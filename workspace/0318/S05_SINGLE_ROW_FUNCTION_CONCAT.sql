--SELECT CONCAT(empno,ename),
--       CONCAT(empno, CONCAT(':',ename)) AS CON
--FROM emp
--WHERE ename = 'SCOTT'
--;

SELECT empno || ename,
       empno||':'||ename AS con
FROM emp
WHERE ename = 'SCOTT'
;