--OR�����ڸ� ����Ͽ� ���� �� ������ �����ϴ� ������ ���
--SELECT empno,
--       ename,
--       deptno
--FROM emp
--WHERE job = 'MAMAGER'
--   OR job = 'SALESMAN'
--   OR job = 'CLERK'
--;

SELECT empno,
       ename,
       deptno
FROM emp
WHERE job IN ('MANAGER', 'SALESMAN', 'CLERK')
;