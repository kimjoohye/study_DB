--p288 Q3

SELECT empno
FROM chap10hw_emp
WHERE sal > (SELECT AVG(NVL(sal,0))
             FROM chap10hw_emp
             WHERE deptno = 50);


UPDATE chap10hw_emp
   SET deptno = 70
WHERE sal > (SELECT AVG(NVL(sal,0))
             FROM chap10hw_emp
             WHERE deptno = 50);
             
SELECT *
FROM chap10hw_emp
WHERE deptno = 70;
      
COMMIT;