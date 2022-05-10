--CTAS로 DEPT_TCL생성
CREATE TABLE DEPT_TCL
AS
SELECT * FROM dept;

SELECT * FROM dept_tcl;

--    DEPTNO DNAME          LOC          
------------ -------------- -------------
--        10 ACCOUNTING     NEW YORK     
--        20 RESEARCH       DALLAS       
--        30 SALES          CHICAGO      
--        40 OPERATIONS     BOSTON       

--DEPT_TCL DML 작업
--INSERT
--UPDATE
--DELETE
--SELECT확인

INSERT INTO DEPT_TCL VALUES (50,'DATABASE','SEOUL');

UPDATE DEPT_TCL SET loc = 'BUSAN'
WHERE deptno = 40;

DELETE FROM DEPT_TCL WHERE dname = 'RESEARCH';

--ROLLBACK : DML작업들이 취소되었는지 확인
ROLLBACK;
