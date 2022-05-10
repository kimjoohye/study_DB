--SCOTT

--TEMP
--GRANT SELECT
--GRANT INSERT

--TEMP 테이블 생성
CREATE TABLE temp (
    COL1 VARCHAR2(20),
    COL2 VARCHAR2(20)
);

--temp select 권한을 orclstudy에게 부여
GRANT SELECT ON temp TO orclstudy;

--temp INSERT 권한을 orclstudy에게 부여
GRANT INSERT ON temp TO orclstudy;

-- SELECT, INSERT 권한을 한꺼번에 부여
GRANT SELECT, INSERT ON TEMP TO ORCLSTUDY;

--ORCLSTUDY에서 SELECT, INSERT 시도, 커밋 후 SELECT (데이터 존재)
SELECT * FROM temp;

--ORCLSTUDY 접속
--SELECT 시도 (성공)
SELECT *
FROM scott.temp;

--INSERT 시도 (성공)
INSERT INTO scott.temp VALUES ('TEST','FROM ORCLSTUDY');

--SELECT 시도 (성공) : 값이 들어와 있음
SELECT *
FROM scott.temp;

COMMIT;