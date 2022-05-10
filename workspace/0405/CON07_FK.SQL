--DEPT_FK 积己
CREATE TABLE dept_fk (
    DEPTNO NUMBER(2) CONSTRAINT deptfk_deptno_pk PRIMARY KEY,
    DNAME VARCHAR2(14),
    loc VARCHAR2(13)
);

--EMP_FK 积己
CREATE TABLE emp_fk (
    empno	 NUMBER(4)      CONSTRAINT empfk_empno_pk PRIMARY KEY,		
    ename	 VARCHAR2(10),			
    job		 VARCHAR2(9),			
    mgr		 NUMBER(4),			
    hiredate DATE,						
    sal		 NUMBER(7,2),			
    comm	 NUMBER(7,2),				
    deptno	 NUMBER(2)      CONSTRAINT 	empfk_deptno_fk REFERENCES dept_fk(deptno)	
);

--力距炼扒 犬牢
SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name,
       t1.r_owner,
       t1.r_constraint_name
FROM user_constraints t1
WHERE t1.table_name IN ('DEPT_FK','EMP_FK')
;

			
