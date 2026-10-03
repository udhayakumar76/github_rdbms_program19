SET SERVEROUTPUT ON;

DECLARE

    CURSOR c_student IS
        SELECT StudentID,
               StudentName,
               DOB,
               Gender,
               DepartmentID
        FROM Student;

    v_StudentID    Student.StudentID%TYPE;
    v_StudentName  Student.StudentName%TYPE;
    v_DOB          Student.DOB%TYPE;
    v_Gender       Student.Gender%TYPE;
    v_DepartmentID Student.DepartmentID%TYPE;

BEGIN

    OPEN c_student;

    LOOP
        FETCH c_student
        INTO v_StudentID,
             v_StudentName,
             v_DOB,
             v_Gender,
             v_DepartmentID;

        EXIT WHEN c_student%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(
            v_StudentID || ' ' || v_StudentName
        );
    END LOOP;

    CLOSE c_student;

END;
/
