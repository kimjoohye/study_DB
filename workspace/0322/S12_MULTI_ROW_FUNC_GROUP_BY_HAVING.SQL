--emp테이블에서 평균 급여가 2000만원 이상인 부서의 부서번호, 평균 급여를 출력하기

--SELECT deptno, AVG( NVL(sal,0))
--FROM emp
--WHERE AVG(NVL(sal,0)) >= 2000
--GROUP BY deptno
--;
--5행, 7열에서 오류 발생
--ORA-00934: 그룹 함수는 허가되지 않습니다

SELECT deptno, AVG( NVL(sal,0))
FROM emp
GROUP BY deptno
HAVING AVG(NVL(sal,0)) >= 2000
;

--    DEPTNO AVG(NVL(SAL,0))
------------ ---------------
--        10      2916.66667
--        20            2175