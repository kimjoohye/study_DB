CREATE TABLE table_unique2 (
    LOGIN_ID  VARCHAR2(20 BYTE) CONSTRAINT TBLUNQ02_LOGINID_UNQ UNIQUE,
    LOGIN_PWD VARCHAR2(20)      CONSTRAINT TBLUNQ02_LOGINPWD_NN NOT NULL,
    TEL       VARCHAR2(20)
);

--NOT NULL 제약 조건 조회
--USER CONSTRAINTS
SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name
FROM user_constraints t1
WHERE t1.table_name = 'TABLE_UNIQUE2'
;

SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name
FROM user_constraints t1
WHERE t1.table_name IN ('TABLE_UNIQUE2','TABLE_UNIQUE99')
;