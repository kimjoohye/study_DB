-- 1.
CREATE TABLE emp_record 
AS
SELECT * FROM EMP 
WHERE 1=2;

-- 2. 
SET SERVEROUTPUT ON;
DECLARE
    TYPE REC_EMP IS RECORD (
        empno    emp_record.empno%TYPE,
        ename    emp_record.ename%TYPE,
        job      emp_record.job%TYPE,
        mgr      emp_record.mgr%TYPE,
        hiredate emp_record.hiredate%TYPE,
        sal      emp_record.sal%TYPE,
        comm     emp_record.comm%TYPE,
        deptno   emp_record.deptno%TYPE
    );
    
    emp_rec REC_EMP;

BEGIN
    emp_rec.empno    := 1111;
    emp_rec.ename    := 'TEST_USER';
    emp_rec.job      := 'TEST_JOB';
    emp_rec.mgr      := NULL;
    emp_rec.hiredate := TO_DATE('18/03/01', 'YY/MM/DD');
    emp_rec.sal      := 3000;
    emp_rec.comm      := NULL;
    emp_rec.deptno   := 40;
    
    INSERT INTO emp_record
    VALUES emp_rec;
    
    COMMIT;
END;
/

--3. »Æ¿Œ
select * from emp_record;