SELECT name,
       jumin,
       SUBSTR(jumin,7,1) as gender,
       DECODE(SUBSTR(jumin,7,1),1,'MAN'
                                ,2,'WOMAN'
                                ,3,'MAN'   
                                ,4,'WOMAN'
                                ) AS "Gender"
FROM student
WHERE deptno1 = 101
;

--NAME                           JUMIN         G Gende
-------------------------------- ------------- - -----
--James Seo                      7510231901813 1 MAN  
--Billy Crystal                  7601232186327 2 WOMAN
--Richard Dreyfus                7711291186223 1 MAN  
--Danny Devito                   7808192157498 2 WOMAN