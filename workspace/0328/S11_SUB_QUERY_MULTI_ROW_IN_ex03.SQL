SELECT t2.dname,
       t1.name,
       TO_CHAR(t1.pay, '$999,999,999') as salary
FROM emp2 t1, dept2 t2
WHERE t1.deptno = t2.dcode
AND t1.pay <ALL (SELECT AVG(NVL(pay,0))
                FROM emp2
                GROUP BY deptno);
                

--DNAME                          NAME                           SALARY       
-------------------------------- ------------------------------ -------------
--Sales2 Team                    Robert De Niro                   $22,000,000
--Sales1 Team                    JohnTravolta                     $22,000,000
--Sales3 Team                    Sly Stallone                     $22,000,000
--Sales4 Team                    Tom Cruise                       $20,000,000
--H/W Support Team               Harrison Ford                    $20,000,000
--S/W Support Team               Clint Eastwood                   $20,000,000