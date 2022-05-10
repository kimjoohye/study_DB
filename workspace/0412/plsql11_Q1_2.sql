SET SERVEROUTPUT ON;
DECLARE
    v_deptno DEPT.deptno%TYPE;
    v_dname  DEPT.dname%TYPE;
    v_loc    DEPT.loc%TYPE;
BEGIN
    v_deptno := 50; -- 데이터 없는것으로 조회(오류남)
    pro_dept_in(v_deptno, v_dname, v_loc);
    DBMS_OUTPUT.PUT_LINE('부서번호 : ' || v_deptno);
    DBMS_OUTPUT.PUT_LINE('부서명 : ' || v_dname);
    DBMS_OUTPUT.PUT_LINE('지역 : ' || v_loc);
    
END;
/