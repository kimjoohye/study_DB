SET SERVEROUTPUT ON;
DECLARE
    V_DEPT dept%ROWTYPE;
BEGIN
    --다건 추출시 예외 발생!
    SELECT deptno, dname, loc INTO V_DEPT
    FROM dept
    WHERE deptno = 40;
    
    DBMS_OUTPUT.PUT_LINE('DEPTNO:  '|| V_DEPT.deptno);
    DBMS_OUTPUT.PUT_LINE('DNAME:  '|| V_DEPT.dname);
    DBMS_OUTPUT.PUT_LINE('LOC:  '|| V_DEPT.loc);
END;
/

--DEPTNO:  40
--DNAME:  OPERATIONS
--LOC:  BOSTON