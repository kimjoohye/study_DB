--SQL PLUS

--SELECT * FROM dept_tcl;
--
--deptno = 30의 LOC = 'SEOUL'
--UPDATE dept_tcl
--SET loc = 'SEOUL'
--WHERE deptno = 30;

UPDATE dept_tcl
SET loc = 'SEOUL'
WHERE deptno = 30;

COMMIT;

--SQL 디벨로퍼
--deptno = 30의 dname = 'DATABASE'
--UPDATE dept_tcl
--SET dname = 'DATABASE'
--WHERE deptno = 30;
