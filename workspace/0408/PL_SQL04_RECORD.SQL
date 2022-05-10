--SELECT t1.empno, t1.ename, t2.deptno, t2.dname, t2.loc
--FROM emp t1, dept t2
--WHERE t1.deptno = t2.deptno
--AND t1.empno = 7839
--;

SET SERVEROUTPUT ON;
DECLARE
    --dept record 정의
    TYPE REC_DEPT IS RECORD(
        deptno DEPT.deptno%TYPE,
        dname DEPT.dname%TYPE,
        loc DEPT.loc%TYPE
    );
    
    --emp record 정의
    TYPE REC_EMP IS RECORD(
        empno EMP.empno%TYPE,
        ename EMP.ename%TYPE,
        --DEPT 레코드 포함
        dinfo rec_dept
    );
    --emp record 선언
    emp_rec REC_EMP;
    
BEGIN
    SELECT t1.empno, t1.ename, t2.deptno, t2.dname, t2.loc 
    INTO emp_rec.empno, emp_rec.ename,
    emp_rec.dinfo.deptno, emp_rec.dinfo.dname,emp_rec.dinfo.loc
    FROM emp t1, dept t2
    WHERE t1.deptno = t2.deptno
    AND t1.empno = 7788;
    
    --조회 데이터 출력
    DBMS_OUTPUT.PUT_LINE('empno: ' || emp_rec.empno);
    DBMS_OUTPUT.PUT_LINE('ename: ' || emp_rec.ename);
    
    DBMS_OUTPUT.PUT_LINE('deptno: ' || emp_rec.dinfo.deptno);
    DBMS_OUTPUT.PUT_LINE('dname: ' || emp_rec.dinfo.dname);
    DBMS_OUTPUT.PUT_LINE('loc: ' || emp_rec.dinfo.loc);
END;
/

--empno: 7788
--ename: SCOTT
--deptno: 20
--dname: RESEARCH
--loc: DALLAS
--
--
--PL/SQL 프로시저가 성공적으로 완료되었습니다.