--� ����
--emp ���̺��� dept ���̺��� ��ȸ�Ͽ� ���

--oracle join
SELECT t1.empno,
       t1.ename,
       t2.dname
FROM emp t1, dept t2
WHERE t1.deptno = t2.deptno
;

--     EMPNO ENAME      DNAME         
------------ ---------- --------------
--      7782 CLARK      ACCOUNTING    
--      7839 KING       ACCOUNTING    
--      7934 MILLER     ACCOUNTING    
--      7566 JONES      RESEARCH      
--      7902 FORD       RESEARCH      
--      7876 ADAMS      RESEARCH      
--      7369 SMITH      RESEARCH      
--      7788 SCOTT      RESEARCH      
--      7521 WARD       SALES         
--      7844 TURNER     SALES         
--      7499 ALLEN      SALES         
--      7900 JAMES      SALES         
--      7698 BLAKE      SALES         
--      7654 MARTIN     SALES         


--ANSI JOIN
--INNER JOIN : ���� ����
--ON������ ���� ����
SELECT t1.empno,
       t1.ename,
       t2.dname
FROM emp t1 JOIN dept t2
ON t1.deptno = t2.deptno
;

--     EMPNO ENAME      DNAME         
------------ ---------- --------------
--      7782 CLARK      ACCOUNTING    
--      7839 KING       ACCOUNTING    
--      7934 MILLER     ACCOUNTING    
--      7566 JONES      RESEARCH      
--      7902 FORD       RESEARCH      
--      7876 ADAMS      RESEARCH      
--      7369 SMITH      RESEARCH      
--      7788 SCOTT      RESEARCH      
--      7521 WARD       SALES         
--      7844 TURNER     SALES         
--      7499 ALLEN      SALES         
--      7900 JAMES      SALES         
--      7698 BLAKE      SALES         
--      7654 MARTIN     SALES   