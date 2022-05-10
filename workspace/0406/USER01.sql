--USER : ORCLSTUDY
--PW : ORACLE

--12c���� ���� ����
--CREATE USER C##aaaa IDENTIFIED BY bbbb;

--C## �Ⱥ��̰� �׳� �ϸ� ����
--ORA-65096: ���� ����� �Ǵ� �� �̸��� �������մϴ�.
--CREATE USER ORCLSTUDY
--IDENTIFIED BY ORACLE;

--12c�������� ���� �����ϵ��� ����
ALTER SESSION SET "_oracle_script"=true;

--���� �ٽ� �õ�
CREATE USER ORCLSTUDY
IDENTIFIED BY ORACLE;

--������ �Ҵ���� �ʾƼ� ORCLSTUDY�� ������ �ȵ�


--���� �Ҵ�
GRANT CREATE SESSION TO ORCLSTUDY;

--����� ���� ��ȸ1
SELECT *
FROM ALL_USERS t1
WHERE t1.username = 'ORCLSTUDY'
;

--����� ���� ��ȸ2
SELECT *
FROM DBA_USERS t1
WHERE t1.username = 'ORCLSTUDY'
;
--����� ��� ���� : ORACLE -> ORCL
ALTER USER ORCLSTUDY
IDENTIFIED BY ORCL;

--����� �����ϱ�
ALTER SESSION SET "_oracle_script"=true;

DROP USER ORCLSTUDY CASCADE; -- ����ڿ� ��ü ��� �����ϱ�
