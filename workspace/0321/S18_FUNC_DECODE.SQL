SELECT name,
       tel,
       INSTR(tel,')') AS instr,
       SUBSTR(tel,1,INSTR(tel,')')-1) AS "area",
       DECODE(SUBSTR(tel,1,INSTR(tel,')')-1),'02',  'SEOUL'
                                             ,'031','GYEONGGI'
                                             ,'051','BUSAN'
                                             ,'052','UASAN'
                                             ,'055','GYEONGNAM') AS LOC
FROM student
WHERE deptno1 = 101
;

--NAME                           TEL                  INSTR area            LOC      
-------------------------------- --------------- ---------- --------------- ---------
--James Seo                      055)381-2158             4 055             GYEONGNAM
--Billy Crystal                  055)333-6328             4 055             GYEONGNAM
--Richard Dreyfus                02)6788-4861             3 02              SEOUL    
--Danny Devito                   055)278-3649             4 055             GYEONGNAM