SELECT empno,
       ename,
       sal,
       deptno,
       RANK() OVER(PARTITION BY deptno order by sal DESC) "RANK_DESC"
FROM emp
;

--     EMPNO ENAME             SAL     DEPTNO  RANK_DESC
------------ ---------- ---------- ---------- ----------
--      7839 KING             5000         10          1
--      7782 CLARK            2450         10          2
--      7934 MILLER           1300         10          3
--      7788 SCOTT            3000         20          1
--      7902 FORD             3000         20          1
--      7566 JONES            2975         20          3
--      7876 ADAMS            1100         20          4
--      7369 SMITH             800         20          5
--      7698 BLAKE            2850         30          1
--      7499 ALLEN            1600         30          2
--      7844 TURNER           1500         30          3
--      7654 MARTIN           1250         30          4
--      7521 WARD             1250         30          4
--      7900 JAMES             950         30          6