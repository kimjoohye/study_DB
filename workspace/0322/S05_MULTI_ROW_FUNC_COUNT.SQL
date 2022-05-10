--COUNT(*) : null 포함 결과
--COUNT(comm) : null 제외

SELECT COUNT(*), COUNT(comm)
FROM emp
;

--  COUNT(*) COUNT(COMM)
------------ -----------
--        14           4