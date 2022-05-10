--선확인
SELECT *
FROM emp_temp
WHERE sal <= 2500;

--수정
UPDATE emp_temp
   SET comm = 50
WHERE sal <= 2500;

--수정 후 확인
SELECT *
FROM emp_temp
WHERE sal <= 2500;

COMMIT;