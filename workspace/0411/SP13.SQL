CREATE OR REPLACE PROCEDURE pro_param_in
(    param1 IN NUMBER,
     param2 NUMBER, --MODE 생략 하면 IN
     param3 NUMBER := 3,
     param4 NUMBER DEFAULT 4
)
IS

BEGIN
    dbms_output.put_line('param1: ' || param1);
    dbms_output.put_line('param2: ' || param2);
    dbms_output.put_line('param3: ' || param3);
    dbms_output.put_line('param4: ' || param4);
END;
/

--Procedure PRO_PARAM_IN이(가) 컴파일되었습니다.

--실행1
EXEC pro_param_in(1,2,9,7);

--param1: 1
--param2: 2
--param3: 9
--param4: 7
--
--
--PL/SQL 프로시저가 성공적으로 완료되었습니다.

--실행2
EXEC pro_param_in(1,2);

--param1: 1
--param2: 2
--param3: 3
--param4: 4

--실행3
EXEC pro_param_in(1);
--ORA-06550: 줄 1, 열74:PLS-00306: 'PRO_PARAM_IN' 호출 시 인수의 갯수나 유형이 잘못되었습니다
--ORA-06550: 줄 1, 열74:PL/SQL: Statement ignored

--실행4
EXEC pro_param_in(param1 => 1, param2 => 2);

--param1: 1
--param2: 2
--param3: 3
--param4: 4


--PL/SQL 프로시저가 성공적으로 완료되었습니다.