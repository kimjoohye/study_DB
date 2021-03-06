--CTAS로 DEPT_TCL생성
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

--트랜잭션을 영구 반영
COMMIT;
--트랜잭션을 영구 반영되었는지 확인
SELECT * FROM dept_tcl;
