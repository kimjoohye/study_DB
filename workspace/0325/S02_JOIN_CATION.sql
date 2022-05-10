--STEP 1 �μ� ��ȣ�� 10���� ������� ���� ��ȸ

--STEP 2 ������ 3���� ����

--STEP 3 īƼ�� ������ �μ� ��ȣ�� 10�� ���� 3��Ʈ�� �����


--STEP 1
SELECT empno,
       ename,
       job,
       sal
FROM emp
WHERE deptno = 10
;

--STEP 2
SELECT LEVEL c1
FROM dual
CONNECT BY LEVEL <= 3
;

--        C1
------------
--         1
--         2
--         3

--STEP 3
SELECT *
FROM (SELECT empno,
             ename,
             job,
             sal
      FROM emp
      WHERE deptno = 10),
      (SELECT LEVEL c1
       FROM dual
       CONNECT BY LEVEL <= 3);
       
--     EMPNO ENAME      JOB              SAL         C1
------------ ---------- --------- ---------- ----------
--      7782 CLARK      MANAGER         2450          1
--      7839 KING       PRESIDENT       5000          1
--      7934 MILLER     CLERK           1300          1
--      7782 CLARK      MANAGER         2450          2
--      7839 KING       PRESIDENT       5000          2
--      7934 MILLER     CLERK           1300          2
--      7782 CLARK      MANAGER         2450          3
--      7839 KING       PRESIDENT       5000          3
--      7934 MILLER     CLERK           1300          3