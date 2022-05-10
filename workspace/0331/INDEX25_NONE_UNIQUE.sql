--dept2 ���̺��� area �÷��� none unique index ����
--CREATE INDEX idx_dept2_area
--ON dept2(area);
--/*+ INDEX_ASC(t1 IDX_DEPT2_AREA) */ 

ALTER SESSION SET STATISTICS_LEVEL = ALL;

--area �ε��� ����Ͽ� ����
SELECT /*+ INDEX_DESC(t1 IDX_EMP_COMP) */ *
FROM emp t1
WHERE t1.ename > '0';

--sql_id, child_number,����ϰ��� �ϴ� ����,
--NULL �ش� ������ ������ ������ �ش��ϴ� sql_id, child_number
SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY_CURSOR(NULL,NULL,'ALLSTATS LAST -ROWS +PREDICATE'));