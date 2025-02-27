use schools;
-- Students Table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    BirthDate DATE,
    Gender CHAR(1),
    Address VARCHAR(255)
);
-- Teachers Table
CREATE TABLE Teachers (
    TeacherID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    HireDate DATE,
    Department VARCHAR(50)
);

-- Courses Table
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    TeacherID INT,
    FOREIGN KEY (TeacherID) REFERENCES Teachers(TeacherID)
);

-- Enrollments Table
CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);
-- Insert Students
INSERT INTO Students (StudentID, FirstName, LastName, BirthDate, Gender, Address)
VALUES
(1, 'John', 'Doe', '2005-04-12', 'M', '123 Main St'),
(2, 'Jane', 'Smith', '2006-07-23', 'F', '456 Maple Ave');

-- Insert Teachers
INSERT INTO Teachers (TeacherID, FirstName, LastName, HireDate, Department)
VALUES
(1, 'Alice', 'Johnson', '2010-09-01', 'Mathematics'),
(2, 'Bob', 'Brown', '2012-01-15', 'Science');

-- Insert Courses
INSERT INTO Courses (CourseID, CourseName, TeacherID)
VALUES
(1, 'Algebra', 1),
(2, 'Biology', 2);

-- Insert Enrollments
INSERT INTO Enrollments (EnrollmentID, StudentID, CourseID, EnrollmentDate)
VALUES
(1, 1, 1, '2023-01-10'),
(2, 2, 2, '2023-01-10');

-- List all students
SELECT * FROM Students;

-- List all courses and their teachers
SELECT Courses.CourseName, Teachers.FirstName, Teachers.LastName
FROM Courses
JOIN Teachers ON Courses.TeacherID = Teachers.TeacherID;

-- List all students enrolled in a course
SELECT Students.FirstName, Students.LastName
FROM Enrollments
JOIN Students ON Enrollments.StudentID = Students.StudentID
WHERE Enrollments.CourseID = 1;
