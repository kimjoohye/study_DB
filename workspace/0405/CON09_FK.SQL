--dept_fk에 10번 부서 삭제
--ORA-02292: 무결성 제약조건(SCOTT.EMPFK_DEPTNO_FK)이 위배되었습니다- 자식 레코드가 발견되었습니다
--DELETE FROM dept_fk
--WHERE deptno = 10;

--1. EMPFK테이블로 가서 deptno = 10인 데이터를 삭제한다. 그 다음 dept_fk 테이블의 deptno=10 정보를 삭제한다

--2. parent 테이블과 자식테이블 참조데이터 삭제 처리
--  (1) 열 데이터 삭제할 때 이 데이터를 참조하고 있는 데이터도 함께 삭제
--      CONSTRAINT [제약조건_이름] REFERENCES 참조테이블(참조컬럼) ON DELETE CASCADE;

--  (2)열 데이터 삭제할 때 이 데이터를 참조하는 데이터를 NULL로 변경
--      CONSTRAINT [제약조건_이름] REFERENCES 참조테이블(참조컬럼) ON DELETE SET NULL;