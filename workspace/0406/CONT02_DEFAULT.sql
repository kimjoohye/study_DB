--��й�ȣ ���̸� 3�� �̻� �Է��ϵ��� ���̺��� ����
CREATE TABLE table_default (
    LOGIN_ID  VARCHAR2(20) CONSTRAINT tbldefault_loginid_pk PRIMARY KEY,
    LOGID_PWD VARCHAR2(20) DEFAULT '1234',
    TEL       VARCHAR2(20)
);

--�������� Ȯ��
SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name
FROM user_constraints t1
WHERE t1.table_name IN ('TABLE_DEFAULT')
;

--������������ ���� ���� ����


INSERT INTO table_default (login_id,tel)
VALUES ('TEST_ID','010-1234-5678');

SELECT *
FROM table_default;