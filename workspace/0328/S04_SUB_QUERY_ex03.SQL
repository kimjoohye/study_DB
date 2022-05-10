SELECT name,
       weight
FROM student
where weight > (SELECT AVG(NVL(weight,0))
                FROM student
                WHERE deptno1 = 201);
                
--NAME                               WEIGHT
-------------------------------- ----------
--James Seo                              72
--Demi Moore                             83
--Danny Glover                           70
--Richard Dreyfus                        72
--Tim Robbins                            70
--Wesley Snipes                          82
--Christian Slater                       69
--Charlie Sheen                          81