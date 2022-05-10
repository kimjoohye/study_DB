--charge_01, ch_total에 병합

--2회 수행시 오류가 나는데 그 이유는
--ch01.u_date값이 동일하기 때문에 오류발생

--MERGE INTO ch_total total -- total:alias
--USING charge_01 ch01      -- ch01:alias
--ON (total.u_date = ch01.u_date)
--WHEN MATCHED THEN --> 일치하는 데이터가 있을 때
--  UPDATE SET total.cust_no = ch01.cust_no
--WHEN NOT MATCHED THEN --> 일치하는 데이터가 없을 때
--  INSERT VALUES (ch01.u_date, ch01.cust_no, ch01.u_time, ch01.charge);
--
--SELECT * FROM ch_total;

MERGE INTO ch_total total
USING charge_02 ch02
ON (total.u_date = ch02.u_date)
WHEN MATCHED THEN
  UPDATE SET total.cust_no = ch02.cust_no
WHEN NOT MATCHED THEN
  INSERT VALUES (ch02.u_date, ch02.cust_no, ch02.u_time, ch02.charge);

SELECT * FROM ch_total;