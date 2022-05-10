--ename S로 시작하는
--SELECT empno,
--       ename,
--       job,
--       deptno
--FROM emp
--WHERE ename LIKE 'S%'
--;

--ename s를 포함하고있는
--조회속도가 첫번째 SQL비해
SELECT empno,
       ename,
       job,
       deptno
FROM emp
WHERE ename LIKE '%S%'
;