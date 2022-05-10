--p125 Q3

--집합연산자를 사용하지 않은 방식
--SELECT empno,
--       ename,
--       job,
--       sal,
--       deptno
--FROM emp
--WHERE deptno IN (20,30)
--AND sal > 2000
--;

--집합 연산자를 사용한 방식
SELECT empno,
       ename,
       job,
       sal,
       deptno
FROM emp
WHERE deptno = 20
AND sal > 2000
UNION
SELECT empno,
       ename,
       job,
       sal,
       deptno
FROM emp
WHERE deptno = 30
AND sal > 2000
;