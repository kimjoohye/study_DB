INSERT INTO emp_trg (
    empno,
    ename,
    job,
    mgr,
    hiredate,
    sal,
    comm,
    deptno
) VALUES (
    9999,
    'TestEmp',
    'CLERK',
    7788,
    TO_DATE('2022-03-01', 'YYYY-MM-DD'),
    1200,
    NULL,
    20
);

COMMIT;

--emp_trg ��ȸ
SELECT * FROM emp_trg;

--emp_trg_log ��ȸ
SELECT * FROM emp_trg_log;

