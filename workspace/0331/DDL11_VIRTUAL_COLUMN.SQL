--STEP1
CREATE TABLE vt1 (
    COL1 number,
    COL2 number,
    COL3 NUMBER GENERATED ALWAYS AS (COL1 + COL2) --데이터 조작이 불가능한 가상 컬럼
);

--STEP2

--INSERT INTO vt1 VALUES(1,2,3);
--오류 발생 명령행: 7 열: 1
--오류 보고 -
--SQL 오류: ORA-54013: INSERT 작업은 가상 열에서 허용되지 않습니다.

INSERT INTO vt1(col1, col2) VALUES (1,2);

--STEP 3
SELECT * FROM vt1;

--STEP 4. : COL1의 값 1에서 5로 변경
UPDATE vt1
   SET col1 = 5;
   
SELECT * FROM vt1;

    