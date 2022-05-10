--goodman 접속 : TABLE, INSERT, SELECT

--테이블 생성
CREATE TABLE dept (
    deptno NUMBER(4) CONSTRAINT pk_dept PRIMARY KEY,
    dname  VARCHAR2(30),
    loc    VARCHAR2(50)
);

--확인
desc dept;

--삽입
INSERT INTO dept VALUES (10,'EDUCATION','SEOUL');

--조회
SELECT * FROM dept;