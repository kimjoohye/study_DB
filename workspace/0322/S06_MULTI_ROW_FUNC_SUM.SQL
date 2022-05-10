SELECT SUM(ALL sal),      -- sal 총합
       SUM(DISTINCT sal), -- sal 중복 데이터 제거 총합
       SUM(sal)
FROM emp
;

--SUM(ALLSAL) SUM(DISTINCTSAL)   SUM(SAL)
------------- ---------------- ----------
--      29025            24775      29025