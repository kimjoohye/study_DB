--부서번호              40
--부서명               'DATABASE'
--부서가 위치하는 지역   'SEOUL'

--먼저 확인
SELECT *
FROM dept_temp2
WHERE deptno = 40;

--수정
UPDATE dept_temp2
 SET dname = 'DATABASE',
     loc = 'SEOUL'
WHERE deptno = 40;

--수정 후 확인후에 괜찮으면 커밋
COMMIT;

--수정 후 확인
SELECT *
FROM dept_temp2
WHERE deptno = 40;