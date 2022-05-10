-- 테이블 생성
CREATE TABLE o_table (
    a NUMBER,
    b NUMBER
);

-- VIEW 생성
CREATE OR REPLACE VIEW view01
AS ( SELECT a,b
     FROM o_table
);

-- VIEW를 통한 입력
INSERT INTO view01 VALUES (1,2);

--o_table 조회 (뷰를 통해 입력한 값이 o_table에 들어옴)
SELECT * FROM o_table;
