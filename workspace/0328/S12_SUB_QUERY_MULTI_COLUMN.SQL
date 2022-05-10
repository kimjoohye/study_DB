SELECT NAME,
       grade,
       weight
FROM student
WHERE (grade, weight) IN ( SELECT grade,
                                  MAX(weight)
                           FROM student
                           GROUP BY grade)
ORDER BY grade
;

--NAME                                GRADE     WEIGHT
-------------------------------- ---------- ----------
--Charlie Sheen                           1         81
--Wesley Snipes                           2         82
--Bill Murray                             3         58
--Demi Moore                              4         83

