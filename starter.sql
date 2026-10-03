DECLARE
    CURSOR student_cursor IS
        SELECT StudentID, StudentName, DOB, Gender, DepartmentID
        FROM Student;

    v_StudentID Student.StudentID%TYPE;
    v_StudentName Student.StudentName%TYPE;
    v_DOB Student.DOB%TYPE;
    v_Gender Student.Gender%TYPE;
    v_DepartmentID Student.DepartmentID%TYPE;
BEGIN
    OPEN student_cursor;

    LOOP
        FETCH student_cursor
        INTO v_StudentID, v_StudentName, v_DOB, v_Gender, v_DepartmentID;

        EXIT WHEN student_cursor%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(
            v_StudentID || ' ' || v_StudentName
        );
    END LOOP;

    CLOSE student_cursor;
END;
/
