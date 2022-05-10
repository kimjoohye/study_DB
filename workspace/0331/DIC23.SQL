--static_table 데이터 입력
CREATE TABLE static_table (
    no NUMBER
);
--static dictionary 조회 : 데이터 입력이 반영되어 있지 않음

--입력
BEGIN
    FOR i IN 1..1000 LOOP
        INSERT INTO static_table VALUES (i);
    END LOOP;
    commit;
END;
/
--조회(이건 나옴)
SELECT COUNT(*) FROM static_table;

--딕셔너리를 수동으로 update하면 그제서야 데이터가 보인다.

--UPDATE전 : TABLE_NAME 빼고 안보임
SELECT t1.num_rows,
       t1.blocks,
       t1.table_name
FROM user_tables t1
WHERE t1.table_name = 'STATIC_TABLE'
;

--UPDATE
ANALYZE TABLE static_table COMPUTE STATISTICS;

--UPDATE 후 : 잘나옴
SELECT t1.num_rows,
       t1.blocks,
       t1.table_name
FROM user_tables t1
WHERE t1.table_name = 'STATIC_TABLE'
;