--실습 테이블 준비
--CTAS로 DEPT_RECORD 테이블 생성
CREATE TABLE DEPT_RECORD
AS
SELECT * FROM dept;

--테이블 생성 확인
SELECT * FROM dept_record;

--레코드
--레코드 사용해서 입력
SET SERVEROUTPUT ON;
DECLARE
    --레코드 정의
    TYPE REC_DEPT IS RECORD (
        deptno NUMBER(2) NOT NULL := 99,
        dname  DEPT_RECORD.dname%TYPE,
        loc    DEPT_RECORD.loc%TYPE
    );
    
    --레코드 선언
    dept_rec REC_DEPT;
BEGIN
    dept_rec.deptno := 70;
    dept_rec.dname := 'DEVELOPER';
    dept_rec.loc := 'SHINCHON';
    
    INSERT INTO DEPT_RECORD
    VALUES dept_rec;
    
    COMMIT;
END;
/

--입력데이터 확인
SELECT * FROM dept_record;