SET SERVEROUTPUT ON;
DECLARE
    --커서 데이터를 입력할 변수
    V_DEPT_ROW DEPT%ROWTYPE;
    
    --명시적 커서 선언
    CURSOR c1 (p_deptno DEPT.deptno%TYPE) IS
    SELECT deptno, dname, loc
    FROM dept
    WHERE deptno = p_deptno;
    
BEGIN
    --10번 부서용 커서
    OPEN c1(10);
    
    LOOP
        FETCH c1 INTO V_DEPT_ROW;
        
        EXIT WHEN c1%NOTFOUND; --더 이상 데이터가 없으면 LOOP를 벗어나라
        
        DBMS_OUTPUT.PUT_LINE('10번 부서 - deptno : ' || V_DEPT_ROW.deptno || ', ' ||
                                         'dname : ' || V_DEPT_ROW.dname || ', ' ||
                                         'loc : ' || V_DEPT_ROW.loc 
        );
    END LOOP;
    
    CLOSE c1;
    
    --20번 부서용 커서
    OPEN c1(20);
    
    LOOP
        FETCH c1 INTO V_DEPT_ROW;
        
        EXIT WHEN c1%NOTFOUND; --더 이상 데이터가 없으면 LOOP를 벗어나라
        
        DBMS_OUTPUT.PUT_LINE('20번 부서 - deptno : ' || V_DEPT_ROW.deptno || ', ' ||
                                         'dname : ' || V_DEPT_ROW.dname || ', ' ||
                                         'loc : ' || V_DEPT_ROW.loc 
        );
    END LOOP;
    
    CLOSE c1;
END;
/

--10번 부서 - deptno : 10, dname : ACCOUNTING, loc : NEW YORK
--20번 부서 - deptno : 20, dname : RESEARCH, loc : DALLAS