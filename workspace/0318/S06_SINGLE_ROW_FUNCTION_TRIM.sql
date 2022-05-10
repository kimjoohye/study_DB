SELECT '[' || TRIM(' **Oracle** ') || ']'               AS TRIM,
       '[' || TRIM(LEADING FROM ' **Oracle** ') || ']'  AS LEADING,
       '[' || TRIM(TRAILING FROM ' **Oracle** ') || ']' AS TRAILING,
       '[' || TRIM(BOTH FROM ' **Oracle** ') || ']'     AS BOTH
FROM dual
;