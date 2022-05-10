--tablespace ���� Ȯ��
SELECT tablespace_name,
       file_name
FROM dba_data_files;

--TABLESPACE_NAME   FILE_NAME                                            
------------------- -----------------------------------------------------
--USERS             C:\APP\JOOHE\PRODUCT\18.0.0\ORADATA\XE\USERS01.DBF   
--UNDOTBS1          C:\APP\JOOHE\PRODUCT\18.0.0\ORADATA\XE\UNDOTBS01.DBF 
--SYSTEM            C:\APP\JOOHE\PRODUCT\18.0.0\ORADATA\XE\SYSTEM01.DBF  
--SYSAUX            C:\APP\JOOHE\PRODUCT\18.0.0\ORADATA\XE\SYSAUX01.DBF

--���̺� �����̽� ����
CREATE TABLESPACE goodman_ts
DATAFILE 'C:\APP\JOOHE\PRODUCT\18.0.0\ORADATA\XE\gooman01.DBF'
SIZE 300M AUTOEXTEND ON NEXT 30M;

--goodman_ts tablespace ���� Ȯ��
SELECT tablespace_name,
       file_name
FROM dba_data_files;

--����� ����
--12c ���� ������� ���� �����ϵ��� ����
ALTER SESSION SET "_oracle_script"=true;

CREATE USER goodman
IDENTIFIED BY pcwk
DEFAULT TABLESPACE GOODMAN_TS
TEMPORARY TABLESPACE temp;

--���Ѻο�
--GRANT DBA TO ORCLSTUDY;
GRANT RESOURCE, CREATE SESSION, CREATE TABLE TO goodman;

--�̰� �߰��ؾ߸� goodman���� INSERT�� �ȴ�.
ALTER USER goodman DEFAULT TABLESPACE goodman_ts QUOTA UNLIMITED on goodman_ts;

--ORCLSTUDY ����� ���� ���
ALTER SESSION SET "_oracle_script"=true;

REVOKE RESOURCE, CREATE TABLE FROM ORCLSTUDY;
-- CREATE TABLE�ϸ� ������