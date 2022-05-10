SELECT name,
       position,
       TO_CHAR(pay, '$999,999,999') as salary
FROM emp2
WHERE pay > (SELECT MIN(pay)
             FROM emp2
             WHERE position = 'Section head')
ORDER BY 3 desc
;

--NAME                           POSITION                       SALARY       
-------------------------------- ------------------------------ -------------
--Kurt Russell                   Boss                            $100,000,000
--Kevin Bacon                    Department head                  $75,000,000
--AL Pacino                      Department head                  $72,000,000
--Val Kilmer                     Department head                  $68,000,000
--Tommy Lee Jones                Deputy department head           $60,000,000
--Gene Hackman                   Section head                     $56,000,000
--Hugh Grant                     Section head                     $51,000,000
--Woody Harrelson                Section head                     $50,000,000