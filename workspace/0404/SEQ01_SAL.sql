CREATE TABLE dept_sequence
AS
SELECT *
FROM dept
WHERE 1=2;

DESC dept_sequence;

--이름     널? 유형           
-------- -- ------------ 
--DEPTNO    NUMBER(2)    
--DNAME     VARCHAR2(14) 
--LOC       VARCHAR2(13) 

--시퀀스 생성
CREATE SEQUENCE seq_dept_sequence
INCREMENT BY 10
START WITH 10
MAXVALUE 90
MINVALUE 0
NOCYCLE
CACHE 2;

--시퀀스 확인
SELECT * 
FROM user_sequences
;

--dept_sequence 테이블의 deptno에 시퀀스를 이용해서 입력
--seq_dept_sequence.NEXTVAL : 번호 꺼내오기
INSERT INTO dept_sequence VALUES (seq_dept_sequence.NEXTVAL,'DATABASE','SEOUL');

--시퀀스 값 확인
SELECT * FROM dept_sequence;

--seq_dept_sequence.CURRVAL : 현재 시퀀스 번호
SELECT seq_dept_sequence.CURRVAL FROM dual;

--max값 넘도록 insert 해보기
INSERT INTO dept_sequence VALUES (seq_dept_sequence.NEXTVAL,'DATABASE','SEOUL');
--ORA-08004: 시퀀스 SEQ_DEPT_SEQUENCE.NEXTVAL exceeds MAXVALUE은 사례로 될 수 없습니다

--확인
SELECT * FROM dept_sequence;
