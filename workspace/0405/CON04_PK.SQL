--ORA-01400: NULL을 ("SCOTT"."TABLE_PK"."LOGIN_ID") 안에 삽입할 수 없습니다
--NULL을 PK열에 삽입할 수 없다
INSERT INTO table_pk(login_id, login_pwd, tel)
VALUES (NULL,'PWD01','010-1234-5678');

--ORA-01400: NULL을 ("SCOTT"."TABLE_PK"."LOGIN_ID") 안에 삽입할 수 없습니다
--PK열을 빼고 삽입할 수 없다.
INSERT INTO table_pk(login_pwd, tel)
VALUES ('PWD01','010-1234-5678');