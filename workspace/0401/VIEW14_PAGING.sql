TRUNCATE TABLE sawon;
BEGIN
    FOR i IN 1..9000 LOOP
        INSERT INTO sawon VALUES (i,
            DBMS_RANDOM.STRING('A',9),
            SYSDATE - i,
            DECODE( MOD(i,2),0,10,20)
        );
    END LOOP;
    COMMIT;
END;
/

SELECT * FROM sawon;

SELECT A.rnum AS num,
       A.empno,
       A.ename,
       TO_CHAR(a.hiredate, 'YYYY/MM/DD') hiredate,
       A.deptno
FROM ( SELECT ROWNUM as rnum,t1.*
       FROM ( SELECT *
              FROM sawon
              ORDER BY hiredate DESC
      )t1
       WHERE ROWNUM <= :PAGE_SIZE * (:PAGE_NUM-1)+:PAGE_SIZE
       --WHERE ROWNUM <= 10
)A
WHERE rnum >= :PAGE_SIZE * (:PAGE_NUM-1)+1
--WHERE rnum >= 1
;