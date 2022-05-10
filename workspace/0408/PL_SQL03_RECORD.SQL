--레코드를 통한 UPDATE

SET SERVEROUTPUT ON;
DECLARE
    TYPE rec_dept IS RECORD (
        deptno NUMBER(2) NOT NULL := 99,
        dname  DEPT_RECORD.dname%TYPE,
        loc    DEPT_RECORD.loc%TYPE
    );
    
    dept_rec REC_DEPT;
BEGIN
    dept_rec.deptno := 50;
    dept_rec.dname := 'WEB DEV';
    dept_rec.loc := 'Hongdae';
    
    --SET ROW : 전체 데이터 할당
    UPDATE DEPT_RECORD
    SET ROW = dept_rec
    WHERE deptno = 70;
    
    COMMIT;
END;
/

--수정 데이터 확인
SELECT * FROM dept_record;