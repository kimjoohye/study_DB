--USER : ORCLSTUDY
--PW : ORACLE

--12c이후 계정 생성
--CREATE USER C##aaaa IDENTIFIED BY bbbb;

--C## 안붙이고 그냥 하면 오류
--ORA-65096: 공통 사용자 또는 롤 이름이 부적합합니다.
--CREATE USER ORCLSTUDY
--IDENTIFIED BY ORACLE;

--12c이전으로 계정 생성하도록 변경
ALTER SESSION SET "_oracle_script"=true;

--생성 다시 시도
CREATE USER ORCLSTUDY
IDENTIFIED BY ORACLE;

--권한이 할당되지 않아서 ORCLSTUDY에 접속이 안됨


--권한 할당
GRANT CREATE SESSION TO ORCLSTUDY;

--사용자 정보 조회1
SELECT *
FROM ALL_USERS t1
WHERE t1.username = 'ORCLSTUDY'
;

--사용자 정보 조회2
SELECT *
FROM DBA_USERS t1
WHERE t1.username = 'ORCLSTUDY'
;
--사용자 비번 변경 : ORACLE -> ORCL
ALTER USER ORCLSTUDY
IDENTIFIED BY ORCL;

--사용자 삭제하기
ALTER SESSION SET "_oracle_script"=true;

DROP USER ORCLSTUDY CASCADE; -- 사용자와 객체 모두 삭제하기
