SELECT deptno,
       name,
       pay,
       SUM(pay) OVER(PARTITION BY deptno) AS TOTAL_PAY,
       ROUND(RATIO_TO_REPORT(pay) OVER (PARTITION BY deptno) * 100,2) AS "RADIO_%"
FROM professor
ORDER BY deptno, name
;

--SELECT문 수행 순서
5  SELECT
1  FROM
2  WHERE
3  GROUP BY
4  HAVING
6  ORDER BY
