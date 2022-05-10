--emp hiredate�� sysdate���� ���� ��
SELECT empno,
       ename,
       hiredate,
       sysdate,
       MONTHS_BETWEEN(hiredate,SYSDATE)        AS months01,
       MONTHS_BETWEEN(SYSDATE,hiredate)        AS months02,
       TRUNC(MONTHS_BETWEEN(SYSDATE,hiredate)) AS months03
FROM emp
;
--
--     EMPNO ENAME      HIREDATE            SYSDATE               MONTHS01   MONTHS02   MONTHS03
------------ ---------- ------------------- ------------------- ---------- ---------- ----------
--      7369 SMITH      1980-12-17:00:00:00 2022-03-18:12:33:22 -495.049135 495.049135        495
--      7499 ALLEN      1981-02-20:00:00:00 2022-03-18:12:33:22 -492.95236  492.95236        492
--      7521 WARD       1981-02-22:00:00:00 2022-03-18:12:33:22 -492.887844 492.887844        492
--      7566 JONES      1981-04-02:00:00:00 2022-03-18:12:33:22 -491.533006 491.533006        491
--      7654 MARTIN     1981-09-28:00:00:00 2022-03-18:12:33:22 -485.694296 485.694296        485
--      7698 BLAKE      1981-05-01:00:00:00 2022-03-18:12:33:22 -490.565264 490.565264        490
--      7782 CLARK      1981-06-09:00:00:00 2022-03-18:12:33:22 -489.307199 489.307199        489
--      7788 SCOTT      1987-04-19:00:00:00 2022-03-18:12:33:22 -418.984618 418.984618        418
--      7839 KING       1981-11-17:00:00:00 2022-03-18:12:33:22 -484.049135 484.049135        484
--      7844 TURNER     1981-09-08:00:00:00 2022-03-18:12:33:22 -486.339457 486.339457        486
--      7876 ADAMS      1987-05-23:00:00:00 2022-03-18:12:33:22 -417.855586 417.855586        417
--      7900 JAMES      1981-12-03:00:00:00 2022-03-18:12:33:22 -483.500747 483.500747        483
--      7902 FORD       1981-12-03:00:00:00 2022-03-18:12:33:22 -483.500747 483.500747        483
--      7934 MILLER     1982-01-23:00:00:00 2022-03-18:12:33:22 -481.855586 481.855586        481