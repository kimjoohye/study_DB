--제약조건 확인
SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name,
       t1.r_owner,
       t1.r_constraint_name
FROM user_constraints t1
WHERE t1.table_name IN ('EMP_FK')
;

--EMP_FK테이블의 ename열에 UNIQUE 생성 (이름 : emp_ename_uk)
ALTER TABLE emp_fk
ADD CONSTRAINT emp_ename_uk UNIQUE(ename);
