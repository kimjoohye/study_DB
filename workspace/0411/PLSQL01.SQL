--0개 행 이(가) 업데이트되었습니다.
--UPDATE dept
--   SET dname = 'DATABASE'
--WHERE deptno = 50;

SET SERVEROUTPUT ON;
DECLARE
    
BEGIN
    UPDATE dept
       SET dname = 'DATABASE'
    WHERE deptno = 50;
    
    --갱신된 행의 수 : 0
    DBMS_OUTPUT.PUT_LINE('갱신된 행의 수 : ' || SQL%ROWCOUNT);
    
    --갱신 대상 행 존재 여부 : FALSE
    IF(SQL%FOUND) THEN
        DBMS_OUTPUT.PUT_LINE('갱신 대상 행 존재 여부 : TRUE');
    ELSE
        DBMS_OUTPUT.PUT_LINE('갱신 대상 행 존재 여부 : FALSE');
    END IF;
    
    --커서의 OPEN여부 : FALSE
    IF(SQL%ISOPEN) THEN
        DBMS_OUTPUT.PUT_LINE('커서의 OPEN여부 : TRUE');
    ELSE
        DBMS_OUTPUT.PUT_LINE('커서의 OPEN여부 : FALSE');
    END IF;
    
END;
/
