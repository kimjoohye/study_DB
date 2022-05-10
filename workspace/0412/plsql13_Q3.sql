--dept_trg 积己
CREATE TABLE dept_trg
AS
SELECT * FROM dept;

--dept_trg_log 抛捞喉 积己
CREATE TABLE dept_trg_log 
(
    TABLENAME VARCHAR2(10),
    DML_TYPE VARCHAR2(10),
    DEPTNO NUMBER(2),
    USER_NAME VARCHAR2(30),
    CHANGE_DATE DATE
);

--犬牢
SELECT * FROM dept_trg;
SELECT * FROM dept_trg_log;

--飘府芭 积己
SET SERVEROUTPUT ON;
CREATE OR REPLACE TRIGGER trg_dept_log
AFTER
INSERT OR UPDATE OR DELETE ON dept_trg
FOR EACH ROW

BEGIN
    IF INSERTING THEN
        INSERT INTO dept_trg_log
        VALUES ('DEPT_TRG', 'INSERT', :new.deptno,
                SYS_CONTEXT('USERENV' ,'SESSION_USER'), SYSDATE);
    ELSIF UPDATING THEN
        INSERT INTO dept_trg_log
        VALUES ('DEPT_TRG', 'UPDATE', :old.deptno,
                SYS_CONTEXT('USERENV' ,'SESSION_USER'), SYSDATE);
    ELSIF DELETING THEN
        INSERT INTO dept_trg_log
        VALUES ('DEPT_TRG', 'DELETE', :old.deptno,
                SYS_CONTEXT('USERENV' ,'SESSION_USER'), SYSDATE);
    END IF;
END;
/

