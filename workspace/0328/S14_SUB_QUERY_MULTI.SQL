SELECT t1.name,
       t1.position,
       TO_CHAR(t1.pay, '$999,999,999') AS salary
FROM emp2 t1
WHERE t1.pay >= (SELECT AVG(NVL(t2.pay,0))
                 FROM emp2 t2
                 WHERE t1.position = t2.position);
                 
--NAME                           POSITION                       SALARY       
-------------------------------- ------------------------------ -------------
--Kurt Russell                   Boss                            $100,000,000
--AL Pacino                      Department head                  $72,000,000
--Tommy Lee Jones                Deputy department head           $60,000,000
--Gene Hackman                   Section head                     $56,000,000
--Kevin Bacon                    Department head                  $75,000,000
--Keanu Reeves                   Deputy Section chief             $35,000,000