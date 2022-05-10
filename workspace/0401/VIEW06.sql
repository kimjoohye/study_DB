--데이터 없음
CREATE OR REPLACE VIEW vw_emp20
AS ( SELECT empno, ename, job, deptno
     FROM emp
     WHERE deptno = 20
);

--select절 실행하면 위의 쿼리에서 서브쿼리를 실행한다
select * 
FROM vw_emp20;