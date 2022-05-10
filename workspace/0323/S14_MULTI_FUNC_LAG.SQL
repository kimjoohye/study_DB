SELECT ename,
       hiredate,
       sal,
       LAG(sal,1,0) OVER( ORDER BY sal) AS "LAG"
FROM emp
;

--ENAME      HIREDATE        SAL        LAG
------------ -------- ---------- ----------
--SMITH      80/12/17        800          0
--JAMES      81/12/03        950        800
--ADAMS      87/05/23       1100        950
--WARD       81/02/22       1250       1100
--MARTIN     81/09/28       1250       1250
--MILLER     82/01/23       1300       1250
--TURNER     81/09/08       1500       1300
--ALLEN      81/02/20       1600       1500
--CLARK      81/06/09       2450       1600
--BLAKE      81/05/01       2850       2450
--JONES      81/04/02       2975       2850
--SCOTT      87/04/19       3000       2975
--FORD       81/12/03       3000       3000
--KING       81/11/17       5000       3000