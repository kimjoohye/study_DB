CREATE OR REPLACE PROCEDURE pro_err
IS
    err_no NUMBER;
BEGIN
    err_no = 100; --제거(오류)
    
    DBMS_OUTPUT.PUT_LINE('err_no: ' || err_no);
END;
/
--오류: 컴파일러 로그를 확인하십시오

SHOW ERRORS;

/*
LINE/COL ERROR
-------- ------------------------------------------------------
5/12     PLS-00103: 심볼 "="를 만났습니다 다음 중 하나가 기대될 때:
         := . ( @ % ;
         심볼이 ":= 계속하기 위해 "=" 전에 삽입되었음
*/

SHOW ERR PROCEDURE PRO_ERR;
/*
PROCEDURE PRO_ERR에 대한 오류:

LINE/COL ERROR
-------- ------------------------------------------------------
5/12     PLS-00103: 심볼 "="를 만났습니다 다음 중 하나가 기대될 때:
         := . ( @ % ;
         심볼이 ":= 계속하기 위해 "=" 전에 삽입되었음
         */