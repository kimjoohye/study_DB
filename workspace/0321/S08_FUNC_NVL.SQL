SELECT empno,
       ename,
       sal,
       comm,
       (sal*12)+comm as salary,
       (sal*12)+NVL(comm,0) as salary
FROM emp
;

--     EMPNO ENAME             SAL       COMM     SALARY     SALARY
------------ ---------- ---------- ---------- ---------- ----------
--      7369 SMITH             800                             9600
--      7499 ALLEN            1600        300      19500      19500
--      7521 WARD             1250        500      15500      15500
--      7566 JONES            2975                            35700
--      7654 MARTIN           1250       1400      16400      16400
--      7698 BLAKE            2850                            34200
--      7782 CLARK            2450                            29400
--      7788 SCOTT            3000                            36000
--      7839 KING             5000                            60000
--      7844 TURNER           1500          0      18000      18000
--      7876 ADAMS            1100                            13200
--      7900 JAMES             950                            11400
--      7902 FORD             3000                            36000
--      7934 MILLER           1300      