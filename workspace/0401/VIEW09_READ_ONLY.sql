--VIEW2 ����
CREATE OR REPLACE VIEW view2
AS (SELECT a,b FROM o_table)
WITH READ ONLY;

--������ �Է�
INSERT INTO view2 VALUES (1,2);
--SQL ����: ORA-42399: �б� ���� �信���� DML �۾��� ������ �� �����ϴ�.