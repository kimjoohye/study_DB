--1~10사이 짝수일때만 출력

SET SERVEROUTPUT ON;
DECLARE
    
BEGIN
    FOR i IN 1..10 LOOP
        CONTINUE WHEN MOD(i,2) = 1;
        DBMS_OUTPUT.PUT_LINE('i: ' || i);
    END LOOP;
END;
/

--i: 2
--i: 4
--i: 6
--i: 8
--i: 10
--
--
--PL/SQL 프로시저가 성공적으로 완료되었습니다.