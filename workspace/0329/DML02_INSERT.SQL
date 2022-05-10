DESC dept_temp;

--부서번호 : 50
--부서명 : 'DATABASE'
--지역 : 'SEOUL'

INSERT INTO dept_temp (deptno,dname,loc)
VALUES (50,'DATABASE','SEOUL');

COMMIT;

SELECT * 
FROM dept_temp;

--ROLLBACK;