CREATE DATABASE IF NOT EXISTS student_management;
USE student_management;

CREATE TABLE IF NOT EXISTS students (
    roll_no INT PRIMARY KEY,
    name VARCHAR(120) NOT NULL,
    course VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    subject1 DECIMAL(5,2) NOT NULL DEFAULT 0,
    subject2 DECIMAL(5,2) NOT NULL DEFAULT 0,
    subject3 DECIMAL(5,2) NOT NULL DEFAULT 0,
    marks_entered BOOLEAN NOT NULL DEFAULT FALSE,
    total_classes INT NOT NULL DEFAULT 0,
    present_classes INT NOT NULL DEFAULT 0,
    CONSTRAINT chk_age CHECK (age > 0),
    CONSTRAINT chk_marks1 CHECK (subject1 >= 0 AND subject1 <= 100),
    CONSTRAINT chk_marks2 CHECK (subject2 >= 0 AND subject2 <= 100),
    CONSTRAINT chk_marks3 CHECK (subject3 >= 0 AND subject3 <= 100),
    CONSTRAINT chk_attendance CHECK (total_classes >= 0 AND present_classes >= 0 AND present_classes <= total_classes)
);
