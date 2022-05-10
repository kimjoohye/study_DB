SET SERVEROUTPUT ON;
DECLARE

BEGIN
    DBMS_OUTPUT.PUT_LINE('FUNCTION func_aftertax(sal NUMBER)');
    DBMS_OUTPUT.PUT_LINE('aftertax: ' || PKG_EXAMPLE.func_aftertax(3000));
    
    DBMS_OUTPUT.PUT_LINE('PROCEDURE pro_emp(7788)');
    PKG_EXAMPLE.pro_emp(7788);
    
    DBMS_OUTPUT.PUT_LINE('PROCEDURE pro_dept( in_deptno IN DEPT.deptno%TYPE)');
    PKG_EXAMPLE.pro_dept(10);
END;
/

/*
FUNCTION func_aftertax(sal NUMBER)
aftertax: 2850
PROCEDURE pro_emp(7788)
ename: SCOTT
sal: 3000
PROCEDURE pro_dept( in_deptno IN DEPT.deptno%TYPE)
dname: ACCOUNTING
loc  : NEW YORK
*/