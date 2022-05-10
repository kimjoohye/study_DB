--학생과 교수 테이블을 join하여									
--학생의 이름과 지도교수 이름을 출력하세요									

--ORACLE JOIN
SELECT t1.name as stud_name,
       t1.name as prof_name
FROM student t1, professor t2
WHERE t1.profno = t2.profno
;

--ANSI JOIN
SELECT t1.name as stud_name,
       t1.name as prof_name
FROM student t1 JOIN professor t2
ON t1.profno = t2.profno
;

--STUD_NAME                      PROF_NAME                     
-------------------------------- ------------------------------
--James Seo                      James Seo                     
--Rene Russo                     Rene Russo                    
--Sandra Bullock                 Sandra Bullock                
--Demi Moore                     Demi Moore                    
--Danny Glover                   Danny Glover                  
--Billy Crystal                  Billy Crystal                 
--Nicholas Cage                  Nicholas Cage                 
--Micheal Keaton                 Micheal Keaton                
--Bill Murray                    Bill Murray                   
--Macaulay Culkin                Macaulay Culkin               
--Richard Dreyfus                Richard Dreyfus               
--Tim Robbins                    Tim Robbins                   
--Wesley Snipes                  Wesley Snipes                 
--Steve Martin                   Steve Martin                  
--Daniel Day-Lewis               Daniel Day-Lewis