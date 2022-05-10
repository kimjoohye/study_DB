SET SERVEROUTPUT ON;
DECLARE
    
BEGIN
    FOR i IN 1..10 LOOP
        DBMS_OUTPUT.PUT_LINE('i: '|| i);
    END LOOP;
END;
/

--i: 1
--i: 2
--i: 3
--i: 4
--i: 5
--i: 6
--i: 7
--i: 8
--i: 9
--i: 10
--
--
--PL/SQL 프로시저가 성공적으로 완료되었습니다.