--STEP 1 부서 번호가 10번인 사원들의 정보 조회

--STEP 2 임의의 3건을 추출

--STEP 3 카티션 곱으로 부서 번호가 10번 집합 3세트를 만든다


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