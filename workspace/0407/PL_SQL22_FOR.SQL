SET SERVEROUTPUT ON;
DECLARE
    
BEGIN
    FOR i IN REVERSE 1..10 LOOP
        DBMS_OUTPUT.PUT_LINE('i: '|| i);
    END LOOP;
END;
/

--i: 10
--I: 9
--I: 8
--I: 7
--I: 6
--I: 5
--I: 4
--I: 3
--I: 2
--I: 1
--
--
--pl/SQL 프로시저가 성공적으로 완료되었습니다.