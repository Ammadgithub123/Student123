CREATE DATABASE SchoolManagementDB5;
USE SchoolManagementDB5;

CREATE TABLE Student67 (
    StudentID INT PRIMARY KEY IDENTITY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Email NVARCHAR(10),
	DateOfBirth DATE
);

CREATE TABLE Attendance1(
	AttendanceID INT PRIMARY KEY IDENTITY,
    StudentID INT FOREIGN KEY REFERENCES Student67(StudentID),
    AttendanceDate DATE,
    Status NVARCHAR(10)
);

CREATE TABLE Teacher1 (
    TeacherID INT PRIMARY KEY IDENTITY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(100),
    Email NVARCHAR(100),
	Phone NVARCHAR(50)
);

CREATE TABLE Assignments2(
    AssignmentID INT PRIMARY KEY IDENTITY,
	TeacherID int FOREIGN KEY references Teacher1(TeacherID),
	Title NVARCHAR(100),
    Details NVARCHAR(100),
    DueDate1 DATE
);

CREATE TABLE Schedules1 (
    TeacherID INT PRIMARY KEY IDENTITY(1,1),
    DayOfWeek NVARCHAR(100),
    TimeSlot NVARCHAR(100),
    Subject NVARCHAR(100)
);

CREATE TABLE AdminPanel (
    AdminID INT PRIMARY KEY IDENTITY,
    Username NVARCHAR(100) NOT NULL,
    Password NVARCHAR(100) NOT NULL
);

CREATE TABLE RoleBasedAccess (
    RoleID INT PRIMARY KEY IDENTITY(1,1),
    RoleName VARCHAR(100) NOT NULL
);

CREATE TABLE Usermanagement (
    UserID INT PRIMARY KEY IDENTITY(1,1),
    Username NVARCHAR(100) NOT NULL,
    Password12 NVARCHAR(100) NOT NULL,
    RoleID INT
);

CREATE TABLE reporting (
    ReportID INT PRIMARY KEY IDENTITY,
    ReportName NVARCHAR(100) NOT NULL,
    ReportData NVARCHAR(100) NOT NULL
);





