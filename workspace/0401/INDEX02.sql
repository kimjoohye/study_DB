--최소값
SELECT MIN(name)
FROM new_emp4;
--ALLEN

--INDEX를 사용해서 최소값 구하기
SELECT name
FROM new_emp4
WHERE name > '0'
AND ROWNUM = 1
;

--최대값
SELECT MAX(name)
FROM new_emp4;
--SMITH

--INDEX를 사용해서 최대값 구하기
--ORACLE HINT : /*+ INDEX_DESC (테이블_ALIAS(or 테이블명) 인덱스명) */ name
SELECT /*+ INDEX_DESC (t1 idx_newemp4_name) */ name
FROM new_emp4 t1
WHERE name > '0'
AND ROWNUM = 1
;
--SMITH