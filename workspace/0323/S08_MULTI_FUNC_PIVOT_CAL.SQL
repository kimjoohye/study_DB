SELECT * FROM (SELECT weekno "week", day, dayno FROM cal)
PIVOT
(MAX(dayno) FOR day IN ('SUN' AS SUN,
                        'MON' AS MON,
                        'TUE' AS TUE,
                        'WED' AS WED,
                        'THU' AS THU,
                        'FRI' AS FRI,
                        'SAT' AS SAT
                        )
)
ORDER BY "week"
;

--w SU MO TU WE TH FR SA
--- -- -- -- -- -- -- --
--1 1  2  3  4  5  6  7 
--2 8  9  10 11 12 13 14
--3 15 16 17 18 19 20 21
--4 22 23 24 25 26 27 28
--5 29 30 31            
