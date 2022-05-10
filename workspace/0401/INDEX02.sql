--�ּҰ�
SELECT MIN(name)
FROM new_emp4;
--ALLEN

--INDEX�� ����ؼ� �ּҰ� ���ϱ�
SELECT name
FROM new_emp4
WHERE name > '0'
AND ROWNUM = 1
;

--�ִ밪
SELECT MAX(name)
FROM new_emp4;
--SMITH

--INDEX�� ����ؼ� �ִ밪 ���ϱ�
--ORACLE HINT : /*+ INDEX_DESC (���̺�_ALIAS(or ���̺��) �ε�����) */ name
SELECT /*+ INDEX_DESC (t1 idx_newemp4_name) */ name
FROM new_emp4 t1
WHERE name > '0'
AND ROWNUM = 1
;
--SMITH