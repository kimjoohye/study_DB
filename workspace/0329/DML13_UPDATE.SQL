--선확인1
SELECT dname, loc
FROM dept
WHERE deptno = 40;

--DNAME          LOC          
---------------- -------------
--OPERATIONS     BOSTON       

--선확인2
SELECT *
FROM dept_temp2
WHERE deptno = 40;

--    DEPTNO DNAME          LOC          
------------ -------------- -------------
--        40 DATABASE       SEOUL        

--수정
UPDATE dept_temp2
   SET (dname,loc) = (SELECT dname, loc
                      FROM dept
                      WHERE deptno = 40)
WHERE deptno = 40;

--수정 후 확인
SELECT *
FROM dept_temp2
WHERE deptno = 40;

--set절을 나눠서 지정
UPDATE dept_temp2
   SET dname = (SELECT dname
                FROM dept
                WHERE deptno = 40),
      loc    = (SELECT loc
                FROM dept
                WHERE deptno = 40)
WHERE deptno = 40;