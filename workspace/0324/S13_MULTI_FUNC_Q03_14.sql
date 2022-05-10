SELECT deptno,
       name,
       pay,
       SUM(pay) OVER() AS TOTAL_PAY,
       ROUND(RATIO_TO_REPORT(pay) OVER () * 100,2) AS "RADIO_%"
FROM professor
ORDER BY "RADIO_%" DESC
;