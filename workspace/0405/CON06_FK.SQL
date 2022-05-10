--EMP와 DEPT 테이블의 제약조건 살펴보기(FK, PK)
SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name,
       t1.r_owner,
       t1.r_constraint_name
FROM user_constraints t1
WHERE t1.table_name IN ('EMP','DEPT')
;
-- 참조된 테이블에 없는 값을 참조한 테이블에 삽입할 때 오류나는지 확인

--조회1
SELECT *
FROM emp;

--조회2
SELECT *
FROM dept;

--삽입
--ORA-02291: 무결성 제약조건(SCOTT.FK_DEPTNO)이 위배되었습니다- 부모 키가 없습니다
INSERT INTO emp (
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
    50
);
