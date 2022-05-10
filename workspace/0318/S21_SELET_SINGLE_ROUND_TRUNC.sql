SELECT STD_DATE,
       TRUNC(STD_DATE,'CC')     AS ROUND_CC,   -- ������ 2�ڸ� 2018�̸� 2050���� �̹Ƿ� 2001��
       TRUNC(STD_DATE,'YYYY')   AS ROUND_YYYY, -- 2018-07-01 �������� �ݿø�
       TRUNC(STD_DATE, 'Q')     AS ROUND_Q,    -- �� �б��� 2��° �� 16�� ����
       TRUNC(STD_DATE, 'DDD')   AS ROUND_DDD,  -- �ش��� ����(12:00) ���� �ݿø�
       TRUNC(STD_DATE,'HH')     AS ROUND_HH    -- �ð��� �������� �ݿø�
FROM(
    SELECT TO_DATE('2018-07-13 23:56:38','YYYY-MM-DD HH24:MI:SS') STD_DATE
    FROM dual
)
;


--STD_DATE            ROUND_CC            ROUND_YYYY          ROUND_Q             ROUND_DDD           ROUND_HH           
--------------------- ------------------- ------------------- ------------------- ------------------- -------------------
--2018-07-13:23:56:38 2001-01-01:00:00:00 2018-01-01:00:00:00 2018-07-01:00:00:00 2018-07-13:00:00:00 2018-07-13:23:00:00