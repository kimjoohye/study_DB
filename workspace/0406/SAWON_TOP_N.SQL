--SELECT *
--FROM sawon
--WHERE ename = 'kakaoUU';

TRUNCATE TABLE sawon;

--데이터 삽입
INSERT INTO sawon
SELECT LPAD(ROWNUM,4,0) as empno,
       'pcwk' || LPAD(ROWNUM,4,0) as ename,
       sysdate - rownum as hiredate,
       DECODE( MOD(ROWNUM,2),0,10,20) as deptno
FROM dual
CONNECT BY LEVEL <= 9000
;

--커밋
commit;

--잘 들어갔는지 숫자 확인
SELECT COUNT(*) FROM sawon;

--페이징

--PAGE_SIZE, PAGE_NUM
--시작번호 :  1, 11, 21, 31,...
--&PAGE_SIZE*(PAGE_NUM-1)+1

--끝번호 : 10, 20, 30, 40,...
--&PAGE_SIZE*(PAGE_NUM-1)+&PAGE_SIZE

SELECT tt1.rnum as num,
       tt1.empno,
       tt1.ename,
       TO_CHAR(tt1.hiredate,'YYYY/MM/DD') AS hiredate,
       tt1.deptno
FROM (
    SELECT ROWNUM AS rnum, t1.*
    FROM ( 
        SELECT *
        FROM sawon
        --조건
        ORDER BY hiredate DESC
    )t1
    WHERE ROWNUM <= (&PAGE_SIZE*(&PAGE_NUM-1)+&PAGE_SIZE)
)tt1
WHERE rnum >= (&PAGE_SIZE*(&PAGE_NUM-1)+1)
;

--총 글 수
SELECT COUNT(*)
FROM sawon
--조건
ORDER BY hiredate DESC;
--9000

-- 페이징 2
SELECT A.*, B.*
FROM (
    SELECT tt1.rnum as num,
           tt1.empno,
           tt1.ename,
           TO_CHAR(tt1.hiredate,'YYYY/MM/DD') AS hiredate,
           tt1.deptno
    FROM (
        SELECT ROWNUM AS rnum, t1.*
        FROM ( 
            SELECT *
            FROM sawon
            --조건
            ORDER BY hiredate DESC
        )t1
        WHERE ROWNUM <= 10
    )tt1
    WHERE rnum >= 1
)A
CROSS JOIN
(
SELECT COUNT(*) AS total_cnt
FROM sawon
)B
;

