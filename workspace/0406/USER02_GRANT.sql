--12c이전으로 계정 생성하도록 변경
ALTER SESSION SET "_oracle_script"=true;

--유저 ORCLSTUDY 생성
CREATE USER ORCLSTUDY
IDENTIFIED BY ORACLE;

--권한 부여
--RESOURCE : 사용자가 테이블, 시퀀스를 비롯한 여러 객체를 생성할 수 있는 기본 시스템 권한을 묶어 놓은 롤
--CREATE SESSION : 오라클 접속 권한
ALTER SESSION SET "_oracle_script"=true;
GRANT RESOURCE, CREATE SESSION, CREATE TABLE, INSERT ANY TABLE TO ORCLSTUDY;

--설정 변경
--이 설정이 없으면 ORCL에서 삽입할 때
--ORA-01950: 테이블스페이스 'USERS'에 대한 권한이 없습니다. <-- 이 오류가 뜸
--GRANT에서 INSERT ANY TABLE도 추가해야 함
ALTER USER ORCLSTUDY DEFAULT TABLESPACE USERS QUOTA UNLIMITED ON USERS;