INSERT INTO table_pk(login_id, login_pwd, tel) VALUES ('TEST_ID_01','PWD01','010-1234-5678');

--ORA-00001: 무결성 제약 조건(SCOTT.SYS_C007804)에 위배됩니다
--INSERT INTO table_pk(login_id, login_pwd, tel) VALUES ('TEST_ID_01','PWD02','010-1234-5678');

SELECT *
FROM table_pk;