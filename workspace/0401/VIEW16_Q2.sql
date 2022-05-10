SELECT b.dname,
       a.max_height,
       a.max_weight
FROM ( SELECT t1.deptno1, 
              MAX(t1.height) AS max_height,
              MAX(t1.weight) AS max_weight
       FROM student t1 
       GROUP BY deptno1
      )a JOIN department b
ON a.deptno1 = b.deptno
;