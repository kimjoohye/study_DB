--�ý��� �ð� : ����� ����Ŭ�� ��ġ�Ǿ� �ִ� ������ �ð��� �Ժη� �����ϸ� �ȵȴ�.
--SELECT SYSDATE
--FROM dual
--;
--SYSDATE 
----------
--22/03/18

--��¥ FORMAT���� �ϱ�(1ȸ��)
--ALTER SESSION SET NLS_DATE_FORMAT = 'RRRR-MM-DD:HH24:MI:SS';

SELECT SYSDATE + 1 AS tomorrow,
       SYSDATE     AS CURR_DATE,
       SYSDATE - 1 AS yesterday
FROM dual
;

--TOMORROW            CURR_DATE           YESTERDAY          
--------------------- ------------------- -------------------
--2022-03-19:12:09:30 2022-03-18:12:09:30 2022-03-17:12:09:30