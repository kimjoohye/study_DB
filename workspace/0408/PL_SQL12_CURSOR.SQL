SELECT deptno, dname, loc
FROM dept
WHERE deptno = 40;

SET SERVEROUTPUT ON;
DECLARE
    V_DEPT DEPT%ROWTYPE;
    
    --명시적 커서 선언
    CURSOR C1 IS
    SELECT deptno, dname, loc
    FROM dept
    WHERE deptno = 40;
BEGIN
    --커서 열기
    OPEN C1;
    
    --커서로부터 읽어온 데이터를 사용
    FETCH C1 INTO V_DEPT;
    
    DBMS_OUTPUT.PUT_LINE('deptno: '|| V_DEPT.deptno);
    DBMS_OUTPUT.PUT_LINE('dname: '|| V_DEPT.dname);
    DBMS_OUTPUT.PUT_LINE('loc: '|| V_DEPT.loc);
    
    --커서 닫기
    CLOSE C1;
END;
/

--deptno: 40
--dname: OPERATIONS
--loc: BOSTON