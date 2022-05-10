SET SERVEROUTPUT ON;
DECLARE
    
BEGIN
    FOR i IN 1..10 LOOP
        -- 2로 나눈 나머지가 0이면 건너 뛰어라
        CONTINUE WHEN MOD(i,2) = 0;
        DBMS_OUTPUT.PUT_LINE('현재 i의 값: ' || i);
    END LOOP;
END;
/

--현재 i의 값: 1
--현재 i의 값: 3
--현재 i의 값: 5
--현재 i의 값: 7
--현재 i의 값: 9
--
--
--PL/SQL 프로시저가 성공적으로 완료되었습니다.