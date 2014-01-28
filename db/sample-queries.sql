-- Search Student with Grade information

SELECT *
FROM student st, registered r, section sc
WHERE st.id = r.student_id
AND sc.id = r.section_id
AND st.id = :studentId
AND st.first_name like :firstName
AND st.last_name like :lastName
AND sc.id = :sectionId

-- Update Grade

UPDATE registered
SET letter_grade = :letterGrade,
    numeric_grade = :numericGrade
WHERE registered.section_id = :sectionId
AND registered.student_id = :studentId

-- Student’s Registered Courses

SELECT *
FROM student st, registered r, section sc, course c
WHERE st.id = r.student_id
AND sc.id = r.section_id
AND c.course_number = sc.course
AND st.id = :studentId

-- All Course Information

SELECT *
FROM section sc, course c 
WHERE c.course_number = sc.course

-- Find Instructor information of logged in User

SELECT *
FROM instructor i, utd_user u
WHERE  i.utd_user = u.id
AND u.username = :username
