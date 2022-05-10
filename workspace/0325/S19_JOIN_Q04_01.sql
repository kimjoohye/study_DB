SELECT t1.name,
       t1.deptno1,
       t2.dname
FROM student t1, department t2
WHERE t1.deptno1 = t2.deptno
ORDER BY t1.studno
;