SELECT empno,
       ename,
       sal,
       deptno,
       RANK() OVER(order by sal DESC)        AS "RANK_DESC",
       DENSE_RANK() OVER(order by sal DESC)  AS "DENSE_RANK"
FROM emp
;

--     EMPNO ENAME             SAL     DEPTNO  RANK_DESC DENSE_RANK
------------ ---------- ---------- ---------- ---------- ----------
--      7839 KING             5000         10          1          1
--      7902 FORD             3000         20          2          2
--      7788 SCOTT            3000         20          2          2
--      7566 JONES            2975         20          4          3
--      7698 BLAKE            2850         30          5          4
--      7782 CLARK            2450         10          6          5
--      7499 ALLEN            1600         30          7          6
--      7844 TURNER           1500         30          8          7
--      7934 MILLER           1300         10          9          8
--      7521 WARD             1250         30         10          9
--      7654 MARTIN           1250         30         10          9
--      7876 ADAMS            1100         20         12         10
--      7900 JAMES             950         30         13         11
--      7369 SMITH             800         20         14         12