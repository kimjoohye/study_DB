--SCOTT 접속
--권한 취소
REVOKE SELECT, INSERT ON TEMP FROM ORCLSTUDY;

--ORCLSTUDY 접속
SELECT *
FROM scott.temp;
--ORA-01031: 권한이 불충분합니다