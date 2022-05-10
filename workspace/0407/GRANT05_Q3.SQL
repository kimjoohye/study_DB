--scott 접속
--권한 회수
REVOKE SELECT ON salgrade FROM prev_hw;

--prev_hw 접속(오류)
SELECT * FROM scott.salgrade;