--scott 접속 (여러 테이블을 한줄에 모두 쓰는 것은 불가능)
GRANT SELECT ON dept TO prev_hw;
GRANT SELECT ON emp TO prev_hw;
GRANT SELECT ON salgrade TO prev_hw;

--prev_hw 접속 (성공)
SELECT * FROM scott.dept;
SELECT * FROM scott.emp;
SELECT * FROM scott.salgrade;

