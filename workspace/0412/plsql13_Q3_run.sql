--INSERT
INSERT INTO dept_trg (
    deptno,
    dname,
    loc
) VALUES (
    99,
    'test_dname',
    'seoul'
);

commit;

--Ȯ��
SELECT * FROM DEPT_TRG;
SELECT * FROM DEPT_TRG_LOG;

--UPDATE
UPDATE DEPT_TRG
   SET LOC = 'TEST_LOC'
WHERE DEPTNO = 99;

COMMIT;

--Ȯ��
SELECT * FROM DEPT_TRG;
SELECT * FROM DEPT_TRG_LOG;

--DELETE
DELETE FROM DEPT_TRG WHERE DEPTNO = 99;

COMMIT;

--Ȯ��
SELECT * FROM DEPT_TRG;
SELECT * FROM DEPT_TRG_LOG;