-- '=' 조건과 결과가 '='인 경우
SELECT name,
       tel,
       CASE(SUBSTR(tel,1,INSTR(tel,')')-1)) WHEN '02'  THEN 'SEOUL'
                                            WHEN '031' THEN 'GYEONGGI'
                                            WHEN '051' THEN 'BUSAN'
                                            WHEN '055' THEN 'GYEONGNAM'
                                            ELSE 'ETC'
        END AS LOC02,
       DECODE(SUBSTR(tel,1,INSTR(tel,')')-1) ,'02',  'SEOUL'
                                             ,'031','GYEONGGI'
                                             ,'051','BUSAN'
                                             ,'052','UASAN'
                                             ,'055','GYEONGNAM'
                                                    ,'ETC') AS LOC
FROM student
WHERE deptno1 = 201
;