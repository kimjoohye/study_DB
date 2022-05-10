--SELECT no,name FROM cat_a
--UNION ALL
--SELECT * FROM cat_b
--UNION ALL
--SELECT * FROM cat_c;

--        NO NA
------------ ---
--         1 A
--         2 B
--         1 C
--         2 D
--         1 E
--         2 F

--1. 정상적인 조인
SELECT cat_a.name,
       cat_b.name,
       no
FROM cat_a, cat_b
WHERE cat_a.no = cat_b.no
;
--ORA-00918: 열의 정의가 애매합니다

--2. 2개의 테이블로 카티션 곱 생성(조인 조건 누락)
SELECT a.name,
       b.name,
       a.no
FROM cat_a a, cat_b b
--WHERE a.no = b.no
;

--N N         NO
--- - ----------
--A C          1
--A D          1
--B C          2
--B D          2

--3. 3개 테이블 정상 조인
SELECT a.name,
       b.name,
       c.name,
       b.no
FROM cat_a a, cat_b b, cat_c c
WHERE a.no = b.no
AND   a.no = c.no
;

--N N N         NO
--- - - ----------
--A C E          1
--B D F          2

--4. 3테이블 카티션 곱
SELECT a.name,
       b.name,
       c.name,
       b.no
FROM cat_a a, cat_b b, cat_c c
WHERE a.no = b.no
--AND   a.no = c.no
;

--sql 개발 tool은 페이지 되어있음
select * 
from student t1, professor t2
;
