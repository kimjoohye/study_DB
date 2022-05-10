SELECT empno,																										
       ename,																										
       job,																										
       mgr,																										
       level,																										
       LPAD(' ',(LEVEL-1)*2,' ') || ename as deptn_ename,																										
       SYS_CONNECT_BY_PATH(ename, '-') AS ename_list																								
FROM emp											
--WHERE ENAME <> 'JONES'
START WITH mgr IS NULL
CONNECT BY PRIOR empno = mgr	
           AND ENAME <> 'JONES'
ORDER SIBLINGS BY ename; -- 같은 level 행들의 정렬 컬럼 기법