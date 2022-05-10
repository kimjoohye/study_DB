SELECT empno,																										
       ename,																										
       job,																										
       mgr,																										
       level,																										
       LPAD(' ',(LEVEL-1)*2,' ') || ename as deptn_ename,																										
       SYS_CONNECT_BY_PATH(ename, '-') AS ename_list --루트 데이터부터 현재 전개할 데이터까지의 경로를 표시																										
FROM emp																										
START WITH mgr IS NULL
CONNECT BY PRIOR empno = mgr																										
ORDER SIBLINGS BY ename; -- 같은 level 행들의 정렬 컬럼 기법