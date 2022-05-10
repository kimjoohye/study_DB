--선확인
SELECT *
FROM emp_temp2
WHERE job = 'MANAGER'
;

--     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO
------------ ---------- --------- ---------- -------- ---------- ---------- ----------
--      7566 JONES      MANAGER         7839 81/04/02       2975                    20
--      7698 BLAKE      MANAGER         7839 81/05/01       2850                    30
--      7782 CLARK      MANAGER         7839 81/06/09       2450                    10

--삭제
DELETE FROM emp_temp2
WHERE job = 'MANAGER'
;

--삭제 후 확인
SELECT *
FROM emp_temp2
WHERE job = 'MANAGER'
;

COMMIT;