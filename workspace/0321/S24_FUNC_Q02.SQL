SELECT empno,
       ename,
       sal,
       TRUNC(TO_CHAR(sal/21.5,999.999),2) AS day_pay,
       ROUND(TO_CHAR(sal/(21.5*8),999.999),1) AS time_pay
FROM emp
;