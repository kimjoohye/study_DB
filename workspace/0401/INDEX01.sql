--STEP1.
CREATE TABLE new_emp4 (
    no NUMBER,
    name VARCHAR2(10),
    sal NUMBER
);

INSERT INTO new_emp4 VALUES(1000, 'SMITH'  ,300 ); 
INSERT INTO new_emp4 VALUES(1001, 'ALLEN'  ,250 ); 
INSERT INTO new_emp4 VALUES(1002, 'KING'   ,430 ); 
INSERT INTO new_emp4 VALUES(1003, 'BLACK'  ,220 ); 
INSERT INTO new_emp4 VALUES(1004, 'JAMES'  ,620 ); 
INSERT INTO new_emp4 VALUES(1005, 'MILLER' ,2000); 

SELECT * FROM new_emp4;

--STEP 2
CREATE INDEX idx_newemp4_name
ON new_emp4(name ASC);

commit;

--STEP 3
SELECT no,name,sal
FROM new_emp4
;

--STEP 4
SELECT no, name, sal
FROM new_emp4
WHERE name > '0'
;