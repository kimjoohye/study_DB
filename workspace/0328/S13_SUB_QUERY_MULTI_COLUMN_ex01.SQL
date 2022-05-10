--다중 컬럼 서브쿼리 사용
--PK를 여러 컬럼을 합쳐서 만들었을 경우 한꺼번에 비교 하기 위해 사용
SELECT t1.profno,
       t1.name as prof_name,
       TO_CHAR(t1.hiredate, 'YYYY-MM-DD') as hiredate,
       t2.dname as dept_name
FROM professor t1, department t2
WHERE t1.deptno = t2.deptno
AND (t1.deptno,t1.hiredate) IN ( SELECT deptno, 
                                        MIN(hiredate)
                                 FROM professor
                                 GROUP BY deptno)
ORDER BY hiredate;

--    PROFNO PROF_NAME            HIREDATE   DEPT_NAME                                         
------------ -------------------- ---------- --------------------------------------------------
--      1001 Audie Murphy         1980-06-23 Computer Engineering                              
--      4001 Meryl Streep         1981-10-23 Electronic Engineering                            
--      3001 Emma Thompson        1981-10-23 Software Engineering                              
--      2003 Whoopi Goldberg      1982-04-29 Multimedia Engineering                            
--      4005 Meg Ryan             1985-09-18 Chemical Engineering                              
--      4003 Nicole Kidman        1999-12-01 Mechanical Engineering                            
--      4007 Jodie Foster         2001-05-23 Library and Information science