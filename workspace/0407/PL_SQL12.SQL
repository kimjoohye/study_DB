SET SERVEROUTPUT ON;
DECLARE
    V_DEPT_ROW DEPT%ROWTYPE;
BEGIN
    SELECT deptno, dname, loc INTO V_DEPT_ROW
    FROM dept
    WHERE deptno = 40;
    
    DBMS_OUTPUT.PUT_LINE('deptno: ' || V_DEPT_ROW.deptno);
    DBMS_OUTPUT.PUT_LINE('dname: ' || V_DEPT_ROW.dname);
    DBMS_OUTPUT.PUT_LINE('loc: ' || V_DEPT_ROW.loc);
END;
/

--deptno: 40
--dname: OPERATIONS
--loc: BOSTON
--PL/SQL 프로시저가 성공적으로 완료되었습니다.