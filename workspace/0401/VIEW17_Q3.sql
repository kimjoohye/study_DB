SELECT a.dname, a.max_height, b.name, b.height
FROM ( 
        SELECT t2.deptno, t2.dname, MAX(t1.height) max_height
        FROM student t1 INNER JOIN department t2
        ON t1.deptno1 = t2.deptno
        GROUP BY t2.deptno, t2.dname
) a JOIN student b
ON a.deptno = b.deptno1
AND a.max_height = b.height
;