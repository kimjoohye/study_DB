ALTER TABLE TABLE_NOTNULL2
MODIFY (TEL CONSTRAINT TBL_NM2_TEL_NN NOT NULL);

--NOT NULL ���� ���� ��ȸ
--USER CONSTRAINTS
SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name
FROM user_constraints t1
WHERE t1.table_name = 'TABLE_NOTNULL2'
;