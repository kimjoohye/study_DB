--ROUND()
-- ������ �������� ��ǰ������ ������ �Ǿ����� ���� ���,
-- �׷��� ������ ������ ���,

-- TRUNC()
-- ��������
SELECT SYSDATE,
       ROUND(SYSDATE) AS "ROUND_SYSDATE", -- �����̸� ����, ���ĸ� ���Ϸ� ��µ�
       TRUNC(SYSDATE) AS "TRUNC_SYSDATE" -- ������ ����
FROM dual
;

--SYSDATE             ROUND_SYSDATE       TRUNC_SYSDATE      
--------------------- ------------------- -------------------
--2022-03-18:14:15:02 2022-03-19:00:00:00 2022-03-18:00:00:00