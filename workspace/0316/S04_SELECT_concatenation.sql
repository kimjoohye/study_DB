--emp 테이블을 조회하여 모든 사람들의 이름과 직업을 출력하세요
SELECT ename ||'(' || job ||') , ' || ename || ' '''|| job || '''' AS "name and job"
FROM emp
;