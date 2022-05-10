--��й�ȣ ���̸� 3�� �̻� �Է��ϵ��� ���̺��� ����
CREATE TABLE table_check (
    LOGIN_ID  VARCHAR2(20) CONSTRAINT tblch_loginid_pk PRIMARY KEY,
    LOGID_PWD VARCHAR2(20) CONSTRAINT tblch_logidpwd_ck CHECK( LENGTH(logid_pwd) >3),
    TEL       VARCHAR2(20)
);

--�������� Ȯ��
SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name
FROM user_constraints t1
WHERE t1.table_name IN ('TABLE_CHECK')
;

--���� ���� -
--ORA-02290: üũ ��������(SCOTT.TBLCH_LOGIDPWD_CK)�� ����Ǿ����ϴ�
--INSERT INTO table_check (login_id, logid_pwd, tel)
--VALUES ('TEST_ID', '123', '010-1234-5678');

INSERT INTO table_check (login_id, logid_pwd, tel)
VALUES ('TEST_ID', '1234', '010-1234-5678');