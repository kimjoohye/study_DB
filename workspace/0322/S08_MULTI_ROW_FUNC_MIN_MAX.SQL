--sort로 최소, 최대를 구한다.
--SELECT MAX(sal), MIN(sal)
--FROM emp
--;

--  MAX(SAL)   MIN(SAL)
------------ ----------
--      5000        800

SELECT MAX(hiredate),
       MIN(hiredate)
FROM emp
;

--MAX(HIREDA MIN(HIREDA
------------ ----------
--87/05/23 80/12/17