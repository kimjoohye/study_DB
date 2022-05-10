--컬럼 이름 변경
--LOCATION2 -> LOC로 변경

ALTER TABLE dept6
RENAME COLUMN LOCATION2 TO loc;

SELECT * FROM dept6;

--DCODE  DNAME                          LOCATION   LOC       
-------- ------------------------------ ---------- ----------
--1000   Management Support Team                   SEOUL     
--1001   Financial Management Team                 SEOUL     
--1002   General affairs                           SEOUL    