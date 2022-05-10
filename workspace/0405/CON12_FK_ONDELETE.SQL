--STEP 1. 테이블 생성
CREATE TABLE c_test1(
    no NUMBER,
    name VARCHAR2(6),
    deptno NUMBER
);
CREATE TABLE c_test2(
    no NUMBER,
    name VARCHAR2(10)
);
--STEP 2. 두개의 테이블에 제약 조건을 설정, 데이터 입력
--c_test1 ctest1_deptno_fk 참조키 없이 생성
--ORA-02270: 이 열목록에 대해 일치하는 고유 또는 기본 키가 없습니다.
--ALTER TABLE c_test1
--ADD CONSTRAINT ctest1_deptno_fk FOREIGN KEY(deptno)
--REFERENCES c_test2(no);
-- (1) no에 제약조건 설정
ALTER TABLE c_test2
ADD CONSTRAINT ctest2_no_uk UNIQUE(no);
-- (2) 잘못 설정해서 삭제
ALTER TABLE c_test1
DROP CONSTRAINT ctest1_deptno_fk;
-- (1) 외래키 적용 성공( (2) 위에서 삭제한 후 다시 설정한 것으로 성공)
ALTER TABLE c_test1
ADD CONSTRAINT ctest1_deptno_fk FOREIGN KEY(deptno)
REFERENCES c_test2(no)
ON DELETE CASCADE;
--STEP 3. 값 삽입
-- (1) c_test2에 값 삽입
INSERT INTO c_test2 VALUES (10,'AAA');
INSERT INTO c_test2 VALUES (20,'BBB');
INSERT INTO c_test2 VALUES (30,'CCC');
--커밋
COMMIT;
--잘 들어갔나 조회
SELECT * FROM c_test2;
-- (2) c_test1에 값 삽입
INSERT INTO c_test1 VALUES (1,'apple',10);
INSERT INTO c_test1 VALUES (2,'banana',20);
INSERT INTO c_test1 VALUES (3,'cherry',30);
--커밋
COMMIT;
--잘 들어갔나 조회
SELECT * FROM c_test1;
--ORA-02291: 무결성 제약조건(SCOTT.CTEST1_DEPTNO_FK)이 위배되었습니다- 부모 키가 없습니다
--INSERT INTO c_test1 VALUES (4,'peach',40);
--STEP 4. on delete cascade 테스트
DELETE FROM c_test2 WHERE no = 10;
--확인
SELECT * FROM c_test2;
--STEP 5. 제약조건 확인
SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name,
       t1.r_owner,
       t1.r_constraint_name
FROM user_constraints t1
WHERE t1.table_name IN ('C_TEST1','C_TEST2')
;