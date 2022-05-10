SET SERVEROUTPUT ON;
DECLARE
    V_NUM NUMBER := 0;
BEGIN
    LOOP
        DBMS_OUTPUT.PUT_LINE('현재 V_NUM: ' || V_NUM);
        V_NUM:= V_NUM + 1;
        EXIT WHEN V_NUM > 11;
    END LOOP;
END;
/

--현재 V_NUM: 0
--현재 V_NUM: 1
--현재 V_NUM: 2
--현재 V_NUM: 3
--현재 V_NUM: 4
--현재 V_NUM: 5
--현재 V_NUM: 6
--현재 V_NUM: 7
--현재 V_NUM: 8
--현재 V_NUM: 9
--현재 V_NUM: 10
--현재 V_NUM: 11
--
--
--PL/SQL 프로시저가 성공적으로 완료되었습니다.