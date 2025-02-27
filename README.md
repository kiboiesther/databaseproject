# databaseproject
School Database Management System
This repository contains SQL scripts to set up a simple school database management system. The database includes tables for managing students, teachers, courses, and enrollments.

Table of Contents
1.Overview

2.Database Schema

3.Getting Started

4.Inserting Data

5.Querying Data

6.Contributing

7..License

1.Overview
The School Database Management System is designed to help manage the data for a school's students, teachers, courses, and enrollments. It includes SQL scripts to create the necessary tables, insert sample data, and query the database for relevant information.

2.Database Schema
The database consists of the following tables:

Students: Stores student information.

Teachers: Stores teacher information.

Courses: Stores course information.

Enrollments: Tracks which students are enrolled in which courses.

3.Getting Started
To get started, follow these steps:

          i) Clone the repository:
          
          git clone https://github.com/kiboiesther/databaseproject.gi
          cd databaseproject
          
          ii) Create the database tables:
          
          mysql -u yourusername -p yourpassword < create_tables.sql
          Inserting Data

4. To insert sample data into the database, run the following command:

          mysql -u yourusername -p yourpassword < insert_data.sql

5. Querying Data
Here are some example queries you can use to retrieve data from the database:

          i) List all students
          SELECT * FROM Students;
   
          ii) List all courses and their teachers
          SELECT Courses.CourseName, Teachers.FirstName, Teachers.LastName
          FROM Courses
          JOIN Teachers ON Courses.TeacherID = Teachers.TeacherID;
   
          iii) List all students enrolled in a course
          SELECT Students.FirstName, Students.LastName
          FROM Enrollments
          JOIN Students ON Enrollments.StudentID = Students.StudentID
          WHERE Enrollments.CourseID = 1;
   
6. Contributing
Contributions are welcome! If you have suggestions for improvements or find any issues, please create a pull request or open an issue.

7.License
This project is licensed under the MIT License. 
