--제약조건 삭제
ALTER TABLE TABLE_NOTNULL2
DROP CONSTRAINT TBL_NM22_TEL_NN;

--NOT NULL 제약 조건 조회
--USER CONSTRAINTS
SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name
FROM user_constraints t1
WHERE t1.table_name = 'TABLE_NOTNULL2'
;