SELECT t1.profno,
       t1.name,
       TO_CHAR(t1.hiredate, 'YYYY/MM/DD') AS hiredate,
       COUNT(t2.hiredate) AS COUNT
FROM professor t1, professor t2
WHERE t1.hiredate > t2.hiredate(+)
GROUP BY t1.profno, t1.name, t1.hiredate
ORDER BY t1.hiredate
;