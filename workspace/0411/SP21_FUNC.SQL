SET SERVEROUTPUT ON;
DECLARE
    after_tax number;
BEGIN
    after_tax := func_aftertax(3000);
    
    DBMS_OUTPUT.PUT_LINE('after_tax income: ' || after_tax);
END;
/

--after_tax income: 2850
--
--PL/SQL 프로시저가 성공적으로 완료되었습니다.