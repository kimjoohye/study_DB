--RENAME 전 확인
SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name
FROM user_constraints t1
WHERE t1.table_name = 'TABLE_UNIQUE2'
;

--RENAME
ALTER TABLE TABLE_UNIQUE2
RENAME CONSTRAINT SYSC007424 TO TBLUNQ02_TEL_UNQ;

--RENAME 후 확인
SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name
FROM user_constraints t1
WHERE t1.table_name = 'TABLE_UNIQUE2'
;

-- 삭제
ALTER TABLE TABLE_UNIQUE2
DROP CONSTRAINT TBLUNQ02_TEL_UNQ99;

--수정
ALTER TABLE TABLE_UNIQUE2
MODIFY (TEL CONSTRAINT TBLUNQ02_TEL_UNQ99 UNIQUE);
