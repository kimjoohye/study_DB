--1. 테이블 생성
CREATE TABLE table_notnull (
    LOGIN_ID   VARCHAR2(20 BYTE) not null,
    LOGIN_PWD VARCHAR2(20) not null,
    tel        VARCHAR2(20)
);

desc table_notnull;

--이름        널?       유형           
----------- -------- ------------ 
--LOGIN_ID  NOT NULL VARCHAR2(20) 
--LOGIN_PWD NOT NULL VARCHAR2(20) 
--TEL                VARCHAR2(20) 

--2. NOT NULL 컬럼에 NULL입력
INSERT INTO table_notnull (login_id,login_pwd,tel) VALUES ('TEST_01',NULL,'010-1234-5678');
--오류 보고 -
--ORA-01400: NULL을 ("SCOTT"."TABLE_NOTNULL"."LOGIN_PWD") 안에 삽입할 수 없습니다

--3. NULL 입력(NULL을 넣어도 되는 곳에 입력)
INSERT INTO table_notnull (login_id,login_pwd) VALUES ('TEST_01','1234');

--4. UPDATE NOT NULL -> NULL
UPDATE table_notnull
   SET login_pwd = NULL
WHERE login_id = 'TEST_01';
--오류 보고 -
--ORA-01407: NULL로 ("SCOTT"."TABLE_NOTNULL"."LOGIN_PWD")을 업데이트할 수 없습니다

--5. NOT NULL 제약 조건 조회
--USER CONSTRAINTS
SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name
FROM user_constraints t1
WHERE t1.table_name = 'EMP'
;

--CONSTRAINT_NAME : SYS_XXXX 시스템이 이름 부여