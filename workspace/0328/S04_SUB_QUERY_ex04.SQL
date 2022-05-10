SELECT e.empno,
       e.ename,
       e.job,
       e.sal,
       d.deptno,
       d.dname,
       d.loc
FROM emp e, dept d
WHERE e.deptno = d.deptno
AND e.deptno = 20
AND e.sal <= (SELECT AVG(NVL(sal,0))
              FROM emp);