--UPPER : �ҹ��ڸ� �빮�ڷ�
--LOWER : �빮�ڸ� �ҹ��ڷ�
--INITCAP : ù ���ڸ� �빮�ڷ� 

--SELECT ename,
--       LOWER(ename) AS lower_name,
--       UPPER(ename) AS upper_name,
--       INITCAP(ename) AS initcap_name
--FROM emp
--;

--UPPER�Լ��� ���ڿ� ���ϱ�(����̸��� SCOTT�� ������ ã��)
SELECT *
FROM emp
Where ename = UPPER('scott')
;

--1�к���, p132
SELECT ename,
       UPPER(ename) AS upper_name
FROM emp
;