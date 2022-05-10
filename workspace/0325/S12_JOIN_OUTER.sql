--ORACLE OUTER JOIN
--WHERE �������� ������ ���� �ʿ� (+)
SELECT t1.name as stud_name,
       t2.name as prof_name
FROM student t1, professor t2
WHERE t1.profno(+) = t2.profno
ORDER BY stud_name
;

--ANSI OUTER JOIN
--�������ǿ� ������ �ִ� ���� ����ġ�� �ȴ�.(FROM ������)
SELECT t1.name as stud_name,
       t2.name as prof_name
FROM student t1 RIGHT OUTER JOIN professor t2
ON t1.profno = t2.profno
ORDER BY stud_name
;

--STUD_NAME                      PROF_NAME           
-------------------------------- --------------------
--Bill Murray                    Jodie Foster        
--Billy Crystal                  Angela Bassett      
--Daniel Day-Lewis               Jodie Foster        
--Danny Glover                   Nicole Kidman       
--Demi Moore                     Meryl Streep        
--James Seo                      Audie Murphy        
--Macaulay Culkin                Meryl Streep        
--Micheal Keaton                 Nicole Kidman       
--Nicholas Cage                  Michelle Pfeiffer   
--Rene Russo                     Winona Ryder        
--Richard Dreyfus                Angela Bassett
--Sandra Bullock                 Julia Roberts       
--Steve Martin                   Nicole Kidman       
--Tim Robbins                    Winona Ryder        
--Wesley Snipes                  Susan Sarandon      
--                               Jessica Lange       
--                               Andie Macdowell     
--                               Meg Ryan            
--                               Holly Hunter        
--                               Sharon Stone        
--                               Whoopi Goldberg     
--                               Emma Thompson       