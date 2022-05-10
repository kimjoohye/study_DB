SELECT deptno,
       name,
       DECODE(deptno, 101, DECODE(name, 'Audie Murphy', 'BEST!', 'GOOD!')) "NEST_DECODE"
FROM professor
;