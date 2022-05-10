--ctest1_deptno_fk 제약조건 삭제
ALTER TABLE c_test1
DROP CONSTRAINT ctest1_deptno_fk;

--c_test1의  ctest1_deptno_fk 제약조건 변경 후 다시 생성
ALTER TABLE c_test1
ADD CONSTRAINT ctest1_deptno_fk FOREIGN KEY(deptno)
REFERENCES c_test2(no)
ON DELETE SET NULL;

-- 삭제 하기 전 조회
SELECT * FROM c_test1;
SELECT * FROM c_test2;

--삭제
DELETE FROM c_test2 WHERE no = 20;

--삭제 후 조회 : banana 행의 deptno 값이 null
SELECT * FROM c_test2;