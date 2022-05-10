INSERT INTO emp_temp(
    empno,
    ename,
    job,
    mgr,
    hiredate,
    sal,
    comm,
    deptno
)SELECT t1.empno,
       t1.ename,
       t1.job,
       t1.mgr,
       t1.hiredate,
       t1.sal,
       t1.comm,
       t1.deptno
FROM emp t1, salgrade t2
WHERE t1.sal BETWEEN t2.losal AND t2.hisal
AND t2.grade = 1;

SELECT * FROM emp_temp;

--     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO
------------ ---------- --------- ---------- -------- ---------- ---------- ----------
--      9999 全辨悼     PRESIDENT            01/01/01       5000       1000         10
--      1111 全03       PRESIDENT            01/01/01       5000       1000         10
--      2112 全05       PRESIDENT            01/01/01       5000       1000         10
--      2113 全06       PRESIDENT            22/03/29       5000       1000         10
--      7369 SMITH      CLERK           7902 80/12/17        800                    20
--      7876 ADAMS      CLERK           7788 87/05/23       1100                    20
--      7900 JAMES      CLERK           7698 81/12/03        950                    30
