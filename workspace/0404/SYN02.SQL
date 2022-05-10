--SCOTT사용자의 emp 테이블의 동의어를 e로 생성 private SYNONYM
CREATE SYNONYM e FOR emp;

--동의어 e를 통해서 select, dml 작업 가능
SELECT *
FROM e;

--SCOTT사용자의 dept 테이블의 동의어를 d2로 생성 public SYNONYM
CREATE PUBLIC SYNONYM d2 FOR dept;

--d2를 통해 select
SELECT *
FROM d2;

--SYNONYM 조회
SELECT t1.synonym_name,
       t1.table_owner,
       t1.table_name
FROM user_synonyms t1
WHERE t1.table_name = 'EMP'
;