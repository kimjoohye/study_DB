--������ ����
CREATE OR REPLACE VIEW vw_emp20
AS ( SELECT empno, ename, job, deptno
     FROM emp
     WHERE deptno = 20
);

--select�� �����ϸ� ���� �������� ���������� �����Ѵ�
select * 
FROM vw_emp20;