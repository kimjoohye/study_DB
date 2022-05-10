--LOOP
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
    OPEN C1;
    LOOP
        FETCH C1 INTO V_EMP_ROW;

        DBMS_OUTPUT.PUT_LINE('EMPNO : ' || V_EMP_ROW.empno || ', ' ||
                             'ENAME : ' || V_EMP_ROW.ename || ', ' ||
                             'JOB : ' || V_EMP_ROW.job || ', ' ||
                             'SAL : ' || V_EMP_ROW.sal || ', ' ||
                             'DEPTNO : ' || V_EMP_ROW.deptno);
        EXIT WHEN C1%NOTFOUND;
    
    END LOOP;
    
    CLOSE C1;
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
--EMPNO : 7934, ENAME : MILLER, JOB : CLERK, SAL : 1300, DEPTNO : 10
--
--
--PL/SQL 프로시저가 성공적으로 완료되었습니다.