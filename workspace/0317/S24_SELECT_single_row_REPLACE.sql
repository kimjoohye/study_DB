SELECT '010-1234-5678' as REPLACE_BEFORE,
       REPLACE('010-1234-5678','-',' ') AS REP,
       REPLACE('010-1234-5678','-') AS REP -- '-'를 완전히 지워버림
FROM dual
;