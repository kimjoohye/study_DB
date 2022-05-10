SELECT t1.gname as cust_name,
       t1.point,
       t2.gname as gift_name
FROM customer t1, gift t2
WHERE t1.point >= t2.g_start
AND t2.gname = 'Notebook'
;