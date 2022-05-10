SELECT '[' || TRIM(' __Oracle__ ') || ']'      AS TRIM,
       '[' || LTRIM(' __Oracle__ ') || ']'     AS LTRIM,
       '[' || LTRIM('<_Oracle_>','<_') || ']'  AS LTRIM,
       '[' || RTRIM(' __Oracle__ ') || ']'     AS LTRIM,
       '[' || RTRIM('<_Oracle_>','_>') || ']'  AS LTRIM
FROM dual
;
--TRIM         LTRIM         LTRIM      LTRIM         LTRIM     
-------------- ------------- ---------- ------------- ----------
--[__Oracle__] [__Oracle__ ] [Oracle_>] [ __Oracle__] [<_Oracle]