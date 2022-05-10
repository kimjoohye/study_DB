CREATE OR REPLACE VIEW v_prof_dept2
AS (
    SELECT t1.profno,
           t1.name,
           t2.dname
    FROM professor t1 JOIN department t2
    ON t1.deptno = t2.deptno
)
WITH READ ONLY
;