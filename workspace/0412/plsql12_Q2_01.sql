SELECT ename, func_date_kor(hiredate) AS hiredate
FROM emp
WHERE empno = 7369;