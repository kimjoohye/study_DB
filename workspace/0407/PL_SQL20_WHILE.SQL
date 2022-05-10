SET SERVEROUTPUT ON;
DECLARE
    V_NUM NUMBER := 1;
BEGIN
    WHILE V_NUM < 11  LOOP
        DBMS_OUTPUT.PUT_LINE(V_NUM);
        V_NUM := V_NUM + 1;
    END LOOP;
END;
/

--1
--2
--3
--4
--5
--6
--7
--8
--9
--10
--
--
--PL/SQL 프로시저가 성공적으로 완료되었습니다.
