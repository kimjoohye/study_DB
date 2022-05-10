--테이블 이름 변경
--dept6 테이블을 dept7으로 변경 (ALTER는 아님)

RENAME dept6 TO dept7;
--테이블 이름이 변경되었습니다.

SELECT * FROM dept7;

--DCODE  DNAME                          LOCATION   LOC       
-------- ------------------------------ ---------- ----------
--1000   Management Support Team                   SEOUL     
--1001   Financial Management Team                 SEOUL     
--1002   General affairs                           SEOUL     