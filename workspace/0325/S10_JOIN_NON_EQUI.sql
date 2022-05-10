--oracle join
SELECT t1.name  as stu_name,
       t2.total as score,
       t3.grade as credit
FROM student t1, score t2, hakjum t3
WHERE t1.studno = t2.studno
AND t2.total >= t3.min_point
AND t2.total <= t3.max_point
;

--ansi join
SELECT t1.name  as stu_name,
       t2.total as score,
       t3.grade as credit
FROM student t1 JOIN score t2
ON t1.studno = t2.studno
JOIN hakjum t3
ON t2.total >= t3.min_point
AND t2.total <= t3.max_point
;

--STU_NAME                            SCORE CRE
-------------------------------- ---------- ---
--James Seo                              97 A+ 
--Macaulay Culkin                        95 A0 
--Billy Crystal                          92 A0 
--Danny Devito                           91 A0 
--Richard Dreyfus                        89 B+ 
--Sean Connery                           88 B+ 
--Danny Glover                           88 B+ 
--Nicholas Cage                          87 B+ 
--Daniel Day-Lewis                       87 B+ 
--Wesley Snipes                          86 B+ 
--Anthony Hopkins                        84 B0 
--Sandra Bullock                         83 B0 
--Charlie Sheen                          83 B0 
--Steve Martin                           82 B0 
--Christian Slater                       82 B0 
--Micheal Keaton                         81 B0 
--Bill Murray                            79 C+ 
--Rene Russo                             78 C+ 
--Tim Robbins                            77 C+ 
--Demi Moore                             62 D  