--goodman ���� : TABLE, INSERT, SELECT

--���̺� ����
CREATE TABLE dept (
    deptno NUMBER(4) CONSTRAINT pk_dept PRIMARY KEY,
    dname  VARCHAR2(30),
    loc    VARCHAR2(50)
);

--Ȯ��
desc dept;

--����
INSERT INTO dept VALUES (10,'EDUCATION','SEOUL');

--��ȸ
SELECT * FROM dept;