SELECT SUM(ALL sal),      -- sal ����
       SUM(DISTINCT sal), -- sal �ߺ� ������ ���� ����
       SUM(sal)
FROM emp
;

--SUM(ALLSAL) SUM(DISTINCTSAL)   SUM(SAL)
------------- ---------------- ----------
--      29025            24775      29025