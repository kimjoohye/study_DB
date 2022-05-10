CREATE OR REPLACE PACKAGE pkg_overload
IS
    PROCEDURE pro_emp(in_empno IN emp.empno%TYPE);
    
    PROCEDURE pro_emp(in_ename IN emp.ename%TYPE);
END;
/