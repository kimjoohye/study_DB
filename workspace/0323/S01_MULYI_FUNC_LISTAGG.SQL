SELECT  deptno,
        LISTAGG(ename, ',') WITHIN GROUP (ORDER BY ename) as list_agg
FROM emp
GROUP BY deptno
ORDER BY deptno
;

--    DEPTNO    LIST_AGG  
-----------   ---------------                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
--10          CLARK,KING,MILLER
--20          ADAMS,FORD,JONES,SCOTT,SMITH                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
--30          ALLEN,BLAKE,JAMES,MARTIN,TURNER,WARD   
       
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          

         
  