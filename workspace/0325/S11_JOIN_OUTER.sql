--ORACLE OUTER JOIN
--WHERE �������� ������ ���� �ʿ� (+)
SELECT t1.name as stud_name,
       t2.name as prof_name
FROM student t1, professor t2
WHERE t1.profno = t2.profno(+)
;

--ANSI OUTER JOIN
--�������ǿ� ������ �ִ� ���� ����ġ�� �ȴ�.(FROM ������)
SELECT t1.name as stud_name,
       t2.name as prof_name
FROM student t1 LEFT OUTER JOIN professor t2
ON t1.profno = t2.profno
;

--STUD_NAME                      PROF_NAME           
-------------------------------- --------------------
--James Seo                      Audie Murphy        
--Billy Crystal                  Angela Bassett      
--Richard Dreyfus                Angela Bassett      
--Rene Russo                     Winona Ryder        
--Tim Robbins                    Winona Ryder        
--Nicholas Cage                  Michelle Pfeiffer   
--Sandra Bullock                 Julia Roberts       
--Demi Moore                     Meryl Streep        
--Macaulay Culkin                Meryl Streep        
--Wesley Snipes                  Susan Sarandon      
--Danny Glover                   Nicole Kidman       
--Micheal Keaton                 Nicole Kidman       
--Steve Martin                   Nicole Kidman       
--Bill Murray                    Jodie Foster        
--Daniel Day-Lewis               Jodie Foster        
--Danny Devito                                       
--Sean Connery                                       
--Christian Slater                                   
--Charlie Sheen                                      
--Anthony Hopkins                                    