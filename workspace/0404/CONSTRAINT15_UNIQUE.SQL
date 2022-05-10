--1. 행 삽입
INSERT INTO table_unique VALUES('TEST_ID_01','PWD01','010-1234-5678');

--ORA-00001: 무결성 제약 조건(SCOTT.SYS_C007784)에 위배됩니다(UNIQUE 위배 - LOGIN_ID 중복)
--INSERT INTO table_unique VALUES('TEST_ID_01','PWD02','010-1234-5678');

INSERT INTO table_unique VALUES('TEST_ID_02','PWD02','010-1234-5678');

--2. 삽입 확인
SELECT * FROM table_unique;

--UNIQUE 열에 NULL 넣어서 삽입
INSERT INTO table_unique VALUES(NULL,'PWD02','010-1234-5678');

--삽입 확인
SELECT * FROM table_unique;

--NULL -> TEST_ID_01
--ORA-00001: 무결성 제약 조건(SCOTT.SYS_C007784)에 위배됩니다
--UPDATE table_unique
--   SET LOGIN_ID = 'TEST_ID_01'
--WHERE LOGIN_ID IS NULL;

SELECT * FROM  table_unique;