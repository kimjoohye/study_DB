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

--1. �������� ����
SELECT cat_a.name,
       cat_b.name,
       no
FROM cat_a, cat_b
WHERE cat_a.no = cat_b.no
;
--ORA-00918: ���� ���ǰ� �ָ��մϴ�

--2. 2���� ���̺�� īƼ�� �� ����(���� ���� ����)
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

--3. 3�� ���̺� ���� ����
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

--4. 3���̺� īƼ�� ��
SELECT a.name,
       b.name,
       c.name,
       b.no
FROM cat_a a, cat_b b, cat_c c
WHERE a.no = b.no
--AND   a.no = c.no
;

--sql ���� tool�� ������ �Ǿ�����
select * 
from student t1, professor t2
;
