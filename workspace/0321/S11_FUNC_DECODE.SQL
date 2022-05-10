SELECT deptno,
       name,
       DECODE(deptno,101,'Computer Engineering',NULL) AS DNAME
FROM professor
;

--    DEPTNO NAME                 DNAME               
------------ -------------------- --------------------
--       101 Audie Murphy         Computer Engineering
--       101 Angela Bassett       Computer Engineering
--       101 Jessica Lange        Computer Engineering
--       102 Winona Ryder                             
--       102 Michelle Pfeiffer                        
--       102 Whoopi Goldberg                          
--       103 Emma Thompson                            
--       103 Julia Roberts                            
--       103 Sharon Stone                             
--       201 Susan Sarandon                           
--       202 Nicole Kidman                            
--       202 Holly Hunter                             
--       203 Meg Ryan                                 
--       301 Andie Macdowell                          
--       301 Jodie Foster            