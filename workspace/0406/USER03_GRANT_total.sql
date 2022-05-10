--tablespace 정보 확인
SELECT tablespace_name,
       file_name
FROM dba_data_files;

--TABLESPACE_NAME   FILE_NAME                                            
------------------- -----------------------------------------------------
--USERS             C:\APP\JOOHE\PRODUCT\18.0.0\ORADATA\XE\USERS01.DBF   
--UNDOTBS1          C:\APP\JOOHE\PRODUCT\18.0.0\ORADATA\XE\UNDOTBS01.DBF 
--SYSTEM            C:\APP\JOOHE\PRODUCT\18.0.0\ORADATA\XE\SYSTEM01.DBF  
--SYSAUX            C:\APP\JOOHE\PRODUCT\18.0.0\ORADATA\XE\SYSAUX01.DBF

--테이블 스페이스 생성
CREATE TABLESPACE goodman_ts
DATAFILE 'C:\APP\JOOHE\PRODUCT\18.0.0\ORADATA\XE\gooman01.DBF'
SIZE 300M AUTOEXTEND ON NEXT 30M;

--goodman_ts tablespace 정보 확인
SELECT tablespace_name,
       file_name
FROM dba_data_files;

--사용자 생성
--12c 이전 방법으로 계정 생성하도록 변경
ALTER SESSION SET "_oracle_script"=true;

CREATE USER goodman
IDENTIFIED BY pcwk
DEFAULT TABLESPACE GOODMAN_TS
TEMPORARY TABLESPACE temp;

--권한부여
--GRANT DBA TO ORCLSTUDY;
GRANT RESOURCE, CREATE SESSION, CREATE TABLE TO goodman;

--이걸 추가해야만 goodman에서 INSERT가 된다.
ALTER USER goodman DEFAULT TABLESPACE goodman_ts QUOTA UNLIMITED on goodman_ts;

--ORCLSTUDY 사용자 권한 취소
ALTER SESSION SET "_oracle_script"=true;

REVOKE RESOURCE, CREATE TABLE FROM ORCLSTUDY;
-- CREATE TABLE하면 오류남