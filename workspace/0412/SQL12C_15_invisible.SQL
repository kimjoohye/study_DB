CREATE TABLE T_MEMBER
(
    no NUMBER,
    name VARCHAR2(10),
    tel NUMBER,
    jumin VARCHAR2(13) invisible
);

--jumin 컬럼이 보이지 않음
desc t_member;

--이름   널? 유형           
------ -- ------------ 
--NO      NUMBER       
--NAME    VARCHAR2(10) 
--TEL     NUMBER       

--INSERT INTO T_MEMBER VALUES (1,'BBB',1234567890,1234567);
--SQL 오류: ORA-00913: 값의 수가 너무 많습니다

INSERT INTO T_MEMBER VALUES (1,'BBB',1234567890);

--값 삽입 제대로 됐는지 조회
SELECT * FROM T_MEMBER;

--속성 변경
ALTER TABLE T_MEMBER
MODIFY (jumin VISIBLE);

--속성이 제대로 변경이 됐는지 조회
SELECT * FROM T_MEMBER;

--속성 다시 변경
ALTER TABLE T_MEMBER
MODIFY (jumin INVISIBLE);

SELECT table_name,
       column_name,
       hidden_column
FROM user_tab_cols
WHERE table_name = 'T_MEMBER';

