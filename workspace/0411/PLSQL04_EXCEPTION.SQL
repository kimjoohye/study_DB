SET SERVEROUTPUT ON;
DECLARE
    V_WRONG NUMBER;
BEGIN
    DBMS_OUTPUT.PUT_LINE('1');

    --문자열 -> NUMBER
    SELECT dname INTO V_WRONG
    FROM dept
    WHERE deptno = 10;
    
    DBMS_OUTPUT.PUT_LINE('2');
    
EXCEPTION
    WHEN VALUE_ERROR THEN
        DBMS_OUTPUT.PUT_LINE('예외처리 : 수치 또는 값 오류 발생');
END;
/

--1
--예외처리 : 수치 또는 값 오류 발생
--
--PL/SQL 프로시저가 성공적으로 완료되었습니다.