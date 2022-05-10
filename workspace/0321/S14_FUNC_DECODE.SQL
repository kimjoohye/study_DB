--if(deptno == 101) {
--    if(name ----== 'Audie Murphy') {
--        'Best!'
--    } else {
--        null
--    }
--}

SELECT deptno,
       name,
       DECODE(deptno, 101, DECODE(name, 'Audie Murphy', 'BEST!', NULL)) "NEST_DECODE"
FROM professor
;