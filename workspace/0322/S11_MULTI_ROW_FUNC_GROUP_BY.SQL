--부서별 직무별 평균 급여
--ORACLE 10G 이전에서는 정렬되어서 출력
--ORACLE 10G 이후에서는 안됨, ORDER BY절 명시

SELECT deptno AS no,
       AVG(NVL(sal,0)) "AVG_SAL"
FROM emp
GROUP BY no, job -- group by절에는 alias 사용안됨
ORDER BY deptno, job
;
--ORA-00904: "NO": 부적합한 식별자

--    DEPTNO JOB          AVG_SAL
------------ --------- ----------
--        10 CLERK           1300
--        10 MANAGER         2450
--        10 PRESIDENT       5000
--        20 ANALYST         3000
--        20 CLERK            950
--        20 MANAGER         2975
--        30 CLERK            950
--        30 MANAGER         2850
--        30 SALESMAN        1400