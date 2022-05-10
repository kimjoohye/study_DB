SELECT COUNT(*) AS TOTAL,
       COUNT(DECODE(LOC,'02',1))  AS SEOUL,
       COUNT(DECODE(LOC,'031',1)) AS GYEONGGI,
       COUNT(DECODE(LOC,'051',1)) AS BUSAN,
       COUNT(DECODE(LOC,'052',1)) AS ULSAN,
       COUNT(DECODE(LOC,'053',1)) AS DAEGU,
       COUNT(DECODE(LOC,'055',1)) AS GYEONGNAM
FROM (
    SELECT SUBSTR(tel,1,INSTR(tel,')')-1) AS LOC
    FROM student
)
;