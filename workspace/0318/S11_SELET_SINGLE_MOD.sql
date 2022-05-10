SELECT MOD(15,6)  MOD01,
       MOD(10,2)  MOD02,
       MOD(11,2)  MOD03,
       CEIL(3.14) CEIL04
FROM dual
;
--     MOD01      MOD02      MOD03
------------ ---------- ----------
--         3          0          1