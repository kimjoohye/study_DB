SET SERVEROUTPUT ON;
DECLARE
    no NUMBER;
BEGIN
    no := 9;
    pro_inout(no);
    
    DBMS_OUTPUT.PUT_LINE('no: ' || no);
END;
/

--no: 18
--
--PL/SQL 프로시저가 성공적으로 완료되었습니다.