--ename S�� �����ϴ�
--SELECT empno,
--       ename,
--       job,
--       deptno
--FROM emp
--WHERE ename LIKE 'S%'
--;

--ename s�� �����ϰ��ִ�
--��ȸ�ӵ��� ù��° SQL����
SELECT empno,
       ename,
       job,
       deptno
FROM emp
WHERE ename LIKE '%S%'
;