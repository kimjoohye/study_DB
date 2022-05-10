SELECT COUNT(*)||'EA' TOTAL,
       COUNT(DECODE(t1.MM,'01',0)) ||'EA' AS JAN, 
       COUNT(DECODE(t1.MM,'02',0)) ||'EA' AS FEB,
       COUNT(DECODE(t1.MM,'03',0)) ||'EA' AS MAR,
       COUNT(DECODE(t1.MM,'04',0)) ||'EA' AS APR,
       COUNT(DECODE(t1.MM,'05',0)) ||'EA' AS MAY,
       COUNT(DECODE(t1.MM,'06',0)) ||'EA' AS JUN,
       COUNT(DECODE(t1.MM,'07',0)) ||'EA' AS JUL, 
       COUNT(DECODE(t1.MM,'08',0)) ||'EA' AS AUG,
       COUNT(DECODE(t1.MM,'09',0)) ||'EA' AS SEP,
       COUNT(DECODE(t1.MM,'10',0)) ||'EA' AS OCT,
       COUNT(DECODE(t1.MM,'11',0)) ||'EA' AS NOV,
       COUNT(DECODE(t1.MM,'12',0)) ||'EA' AS DEV
FROM (
    SELECT TO_CHAR(birthday,'MM') AS MM 
    FROM student
)t1
;