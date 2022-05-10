--전체 데이터 수정
--loc를 모두 SEOUL로 변경

--확인
SELECT * 
FROM dept_temp2
;

--수정
UPDATE dept_temp2
SET loc = 'SEOUL'
;

--확인
SELECT * 
FROM dept_temp2
;
--    DEPTNO DNAME          LOC          
------------ -------------- -------------
--        10 ACCOUNTING     SEOUL        
--        20 RESEARCH       SEOUL        
--        30 SALES          SEOUL        
--        40 OPERATIONS     SEOUL        

--되돌리기      
ROLLBACK;

