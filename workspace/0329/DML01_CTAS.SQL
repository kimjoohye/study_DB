--DEPT테이블 복사해서 DEPT_TEMP 테이블 만들기

--테이블 삭제
DROP TABLE dept_temp;

--테이블 생성
CREATE TABLE dept_temp
AS
SELECT * FROM DEPT;

--생성된 테이블 조회
SELECT * FROM dept_temp;

--확정
COMMIT;

--되돌리기
ROLLBACK;