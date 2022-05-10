--NOT LIKE 
--나온 결과는 집합이라고 생각해야 함
SELECT empno,
       ename,
       job,
       deptno
FROM emp
WHERE ename NOT LIKE '%AM%'
;