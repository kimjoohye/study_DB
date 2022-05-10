--1
SELECT object_name,
       original_name,
       createtime
FROM recyclebin;

--OBJECT_NAME                         ORIGINAL_NAME               CREATETIME         
------------------------------------- --------------------------- -------------------
--BIN$FfWVsxsgTpGh95dBcIxRDQ==$0      PK_BOARD                    2022-03-30:15:38:50
--BIN$mm7pvV5CT6ul1sQW9UfQRw==$0      DEPT_TEMP                   2022-03-29:09:18:50
--BIN$I/XUTNfSQQi6V5RefolfFQ==$0      BONUS                       2022-03-15:20:38:12
--BIN$A5zMH+j/SOe20E+MMBQxcQ==$0      DEPT_TEMP                   2022-03-29:09:24:14
--SYS_IL0000074591C00003$$            SYS_IL0000074591C00003$$    2022-03-30:15:38:49
--SYS_LOB0000074591C00003$$           SYS_LOB0000074591C00003$$   2022-03-30:15:38:49
--BIN$f0xf/1CxTEyAqqo9EYCpjQ==$0      BOARD                       2022-03-30:15:38:49
--BIN$Gx+o1mPnSEyA3FNIVba8KA==$0      EMP_HW                      2022-03-31:11:05:55

FLASHBACK TABLE "BIN$Gx+o1mPnSEyA3FNIVba8KA==$0" TO BEFORE DROP;

SELECT * FROM emp_hw;