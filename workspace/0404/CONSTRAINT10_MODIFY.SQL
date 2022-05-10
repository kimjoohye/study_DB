--오류 : TEL 열에 NULL 값이 있는 상태에서 NOTNULL로 바꾸려 했기 때문에 오류 나게 됨
--ALTER TABLE TABLE_NOTNULL
--MODIFY(TEL NOTNULL);

--확인
SELECT *
FROM TABLE_NOTNULL;
--LOGIN_ID             LOGIN_PWD            TEL                 
---------------------- -------------------- --------------------
--TEST_01              1234                                     

--NULL 값 수정
UPDATE TABLE_NOTNULL
SET TEL = '010-1234-5678'
WHERE LOGIN_ID = 'TEST_01';

--확인
SELECT * 
FROM TABLE_NOTNULL;

COMMIT;
--NOT NULL 제약 조건 추가
ALTER TABLE TABLE_NOTNULL
MODIFY(TEL not null);

--NOT NULL 제약 조건 조회
--USER CONSTRAINTS
SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name
FROM user_constraints t1
WHERE t1.table_name = 'TABLE_NOTNULL'
;