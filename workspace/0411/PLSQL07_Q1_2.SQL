--FOR LOOP
SET SERVEROUTPUT ON;
DECLARE
    V_EMP_ROW EMP%ROWTYPE;

    CURSOR C1 IS
    SELECT empno,
           ename,
           job,
           mgr,
           hiredate,
           sal,
           comm,
           deptno
    FROM emp;
    
BEGIN
    FOR c1_rec IN C1 LOOP
        DBMS_OUTPUT.PUT_LINE('EMPNO : ' || c1_rec.empno || ', ' ||
                             'ENAME : ' || c1_rec.ename || ', ' ||
                             'JOB : ' || c1_rec.job || ', ' ||
                             'SAL : ' || c1_rec.sal || ', ' ||
                             'DEPTNO : ' || c1_rec.deptno);
    END LOOP;
    
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('SQLCODE: ' || TO_CHAR(SQLCODE));
        DBMS_OUTPUT.PUT_LINE('SQLERRM: ' || SQLERRM);
END;
/

--EMPNO : 7369, ENAME : SMITH, JOB : CLERK, SAL : 800, DEPTNO : 20
--EMPNO : 7499, ENAME : ALLEN, JOB : SALESMAN, SAL : 1600, DEPTNO : 30
--EMPNO : 7521, ENAME : WARD, JOB : SALESMAN, SAL : 1250, DEPTNO : 30
--EMPNO : 7566, ENAME : JONES, JOB : MANAGER, SAL : 2975, DEPTNO : 20
--EMPNO : 7654, ENAME : MARTIN, JOB : SALESMAN, SAL : 1250, DEPTNO : 30
--EMPNO : 7698, ENAME : BLAKE, JOB : MANAGER, SAL : 2850, DEPTNO : 30
--EMPNO : 7782, ENAME : CLARK, JOB : MANAGER, SAL : 2450, DEPTNO : 10
--EMPNO : 7788, ENAME : SCOTT, JOB : ANALYST, SAL : 3000, DEPTNO : 20
--EMPNO : 7839, ENAME : KING, JOB : PRESIDENT, SAL : 5000, DEPTNO : 10
--EMPNO : 7844, ENAME : TURNER, JOB : SALESMAN, SAL : 1500, DEPTNO : 30
--EMPNO : 7876, ENAME : ADAMS, JOB : CLERK, SAL : 1100, DEPTNO : 20
--EMPNO : 7900, ENAME : JAMES, JOB : CLERK, SAL : 950, DEPTNO : 30
--EMPNO : 7902, ENAME : FORD, JOB : ANALYST, SAL : 3000, DEPTNO : 20
--EMPNO : 7934, ENAME : MILLER, JOB : CLERK, SAL : 1300, DEPTNO : 10
--
--
--PL/SQL 프로시저가 성공적으로 완료되었습니다.