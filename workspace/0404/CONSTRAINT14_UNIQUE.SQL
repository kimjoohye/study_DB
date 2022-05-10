--1. 테이블 생성
CREATE TABLE table_unique(
    LOGIN_ID  VARCHAR2(20 BYTE) UNIQUE,
    LOGIN_PWD VARCHAR2(20)      NOT NULL,
    tel       VARCHAR2(20)
);

--2. NOT NULL 제약 조건 조회
--USER CONSTRAINTS
SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name
FROM user_constraints t1
WHERE t1.table_name = 'TABLE_UNIQUE'
;