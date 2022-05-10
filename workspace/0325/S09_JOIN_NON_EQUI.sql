--BETWEEN보다는 가급적이면 비교연산자를 사용하세요
--수행속도가 우수하다.
--BETWEEN보다 부등호로 하는 편이 더 빠름

--oracle join
SELECT t1.gname as cust_name,
       TO_CHAR(t1.point, '999,999,999') as point,
       t2.gname as gift_name
FROM customer t1, gift t2
WHERE t1.point >= t2.g_start 
AND t1.point <= t2.g_end
;

--ansi join
SELECT t1.gname as cust_name,
       TO_CHAR(t1.point, '999,999,999') as point,
       t2.gname as gift_name
FROM customer t1 JOIN gift t2
ON t1.point >= t2.g_start 
AND t1.point <= t2.g_end
;