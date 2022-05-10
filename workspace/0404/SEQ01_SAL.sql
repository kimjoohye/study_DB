CREATE TABLE dept_sequence
AS
SELECT *
FROM dept
WHERE 1=2;

DESC dept_sequence;

--�̸�     ��? ����           
-------- -- ------------ 
--DEPTNO    NUMBER(2)    
--DNAME     VARCHAR2(14) 
--LOC       VARCHAR2(13) 

--������ ����
CREATE SEQUENCE seq_dept_sequence
INCREMENT BY 10
START WITH 10
MAXVALUE 90
MINVALUE 0
NOCYCLE
CACHE 2;

--������ Ȯ��
SELECT * 
FROM user_sequences
;

--dept_sequence ���̺��� deptno�� �������� �̿��ؼ� �Է�
--seq_dept_sequence.NEXTVAL : ��ȣ ��������
INSERT INTO dept_sequence VALUES (seq_dept_sequence.NEXTVAL,'DATABASE','SEOUL');

--������ �� Ȯ��
SELECT * FROM dept_sequence;

--seq_dept_sequence.CURRVAL : ���� ������ ��ȣ
SELECT seq_dept_sequence.CURRVAL FROM dual;

--max�� �ѵ��� insert �غ���
INSERT INTO dept_sequence VALUES (seq_dept_sequence.NEXTVAL,'DATABASE','SEOUL');
--ORA-08004: ������ SEQ_DEPT_SEQUENCE.NEXTVAL exceeds MAXVALUE�� ��ʷ� �� �� �����ϴ�

--Ȯ��
SELECT * FROM dept_sequence;
