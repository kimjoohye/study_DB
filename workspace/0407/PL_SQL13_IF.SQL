SET SERVEROUTPUT ON;
DECLARE
    V_NUMBER NUMBER := 13;
BEGIN
    IF MOD(V_NUMBER,2) = 1 THEN
        DBMS_OUTPUT.PUT_LINE('V_NUMBER는 홀수입니다.');
    END IF;
END;
/

--홀수면
--V_NUMBER는 홀수입니다.
--PL/SQL 프로시저가 성공적으로 완료되었습니다.

--짝수면
--PL/SQL 프로시저가 성공적으로 완료되었습니다.