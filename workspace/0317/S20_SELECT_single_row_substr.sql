--student ���̺��� juminĮ���� ����ؼ� 1������ 101���� �л����� �̸��� �¾ ����,											
--���� �Ϸ� �� ��¥�� ����ϼ���											

SELECT name,
       SUBSTR(jumin,1,6) "BITTHDAY",
       SUBSTR(jumin,1,6)-1 "BIRTHDAY-1" 
FROM student
WHERE deptno1 = 101
;