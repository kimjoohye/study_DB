--SCOTT�� �޿��� 3000 -> 3500
UPDATE emp_trg
   SET sal = 3500
WHERE empno = 7788;

--Ʈ���� ȭ���� �߰� : Ʈ���� �߻�

--����� 2 �࿡�� �����ϴ� �� ���� �߻� -
--UPDATE emp_trg
--   SET sal = 3500
--WHERE empno = 7788
--���� ���� -
--ORA-20001: �ָ� ������� ���� �Ұ�
--ORA-06512: "SCOTT.TRG_EMP_NODM_WEEKEND",  8��
--ORA-04088: Ʈ���� 'SCOTT.TRG_EMP_NODM_WEEKEND'�� ����� ����