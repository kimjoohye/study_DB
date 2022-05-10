--1. 부모 테이블보다 자식 테이블에 먼저 넣어보기
--ORA-02291: 무결성 제약조건(SCOTT.EMPFK_DEPTNO_FK)이 위배되었습니다- 부모 키가 없습니다
INSERT INTO emp_fk (
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
    'hong',
    'CLERK',
    '7788',
    TO_DATE('2017/04/03','YYYY/MM/DD'),
    1200,
    NULL,
    10 --상위 테이블에 10번이 없어서 오류
);

-- 2. 부모 테이블에 값 넣음
INSERT INTO dept_fk (
    deptno,
    dname,
    loc
) VALUES (
    10,
    'test_dname',
    'test_log'
);

-- 3. 자식 테이블에 다시 넣어봄(성공)
INSERT INTO emp_fk (
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
    'hong',
    'CLERK',
    '7788',
    TO_DATE('2017/04/03','YYYY/MM/DD'),
    1200,
    NULL,
    10 --상위 테이블에 10번이 없어서 오류
);