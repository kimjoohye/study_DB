--dept2 테이블의 area 컬럼에 none unique index 생성
--CREATE INDEX idx_dept2_area
--ON dept2(area);
--/*+ INDEX_ASC(t1 IDX_DEPT2_AREA) */ 

ALTER SESSION SET STATISTICS_LEVEL = ALL;

--area 인덱스 사용하여 정렬
SELECT /*+ INDEX_DESC(t1 IDX_EMP_COMP) */ *
FROM emp t1
WHERE t1.ename > '0';

--sql_id, child_number,출력하고자 하는 포맥,
--NULL 해당 세션의 마지막 쿼리에 해당하는 sql_id, child_number
SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY_CURSOR(NULL,NULL,'ALLSTATS LAST -ROWS +PREDICATE'));