-- (Task 2) Write the commands for creating tables and inserting values

DROP TABLE IF EXISTS `STUDENT`;
CREATE TABLE `STUDENT` (
    `FirstName` varchar(255) DEFAULT NULL,
    `LastName` varchar(255) DEFAULT NULL,
    `Major` varchar(255) DEFAULT NULL,
    `StudentID` int(11) DEFAULT NULL,
    PRIMARY KEY (`StudentID`)
) ;


DROP TABLE IF EXISTS `SCORE`;
CREATE TABLE `SCORE` (
    `StudentID` int(11) NOT NULL,
    `AssignmentID` int(11) NOT NULL,
    `POINTS` int(11) DEFAULT 0 NOT NULL,
    PRIMARY KEY (`StudentID`, `AssignmentID`)
) ;


DROP TABLE IF EXISTS `ASSIGNMENT`;
CREATE TABLE `ASSIGNMENT` (
    `AssignmentID` int(11) NOT NULL,
    `DistributionID` int(11) NOT NULL,
    `Instance` int(11) NOT NULL,
    `PointsPossible` int(11) DEFAULT 0 NOT NULL,
    PRIMARY KEY (`AssignmentID`)
) ;


DROP TABLE IF EXISTS `DISTRIBUTION`;
CREATE TABLE `DISTRIBUTION` (
    `DistributionID` int(11) NOT NULL UNIQUE,
    `CourseID` int(11) NOT NULL,
    `CategoryName` varchar(30) NOT NULL,
    `Percentage` int(11) NOT NULL,
    PRIMARY KEY(`DistributionID`)
) ;


DROP TABLE IF EXISTS `ENROLLMENT`;
CREATE TABLE `ENROLLMENT` (
    `StudentID` int(11) NOT NULL,
    `CourseID` int(11) NOT NULL,
    PRIMARY KEY (`StudentID`, `CourseID`)
) ;


DROP TABLE IF EXISTS `COURSE`;
CREATE TABLE `COURSE` (
    `Department` varchar(255) NOT NULL,
    `CourseNumber` int(11) NOT NULL,
    `CourseName` varchar(255) NOT NULL,
    `Term` varchar(255) NOT NULL,
    `Year` int(5) NOT NULL,
    `CourseID` int(11) NOT NULL,
    PRIMARY KEY(`CourseID`)
) ;







INSERT INTO `STUDENT` VALUES('Richard', 'Hendricks', 'Computer Science', 1234);
INSERT INTO `STUDENT` VALUES('Jared', 'Dunn', 'Management Science', 5678);
INSERT INTO `STUDENT` VALUES('Erlich', 'Bachman', 'Aviato', 3456);
INSERT INTO `STUDENT` VALUES('Jimmy', 'Quoyang', 'Marine Biology', 4590);
INSERT INTO `STUDENT` VALUES('Dinesh', 'Gilfoyle', 'Computer Engineering', 5337);
INSERT INTO `STUDENT` VALUES('John', 'Doe', 'English', 5555);
INSERT INTO `COURSE` VALUES('Math', 157, 'Calculus-2', 'Fall', 2017, 85675);
INSERT INTO `COURSE` VALUES('Computer Science', 350, 'Programming Languages', 'Spring', 2017, 89994);
INSERT INTO `COURSE` VALUES('English', 109, 'Technical Writing', 'Fall', 2016, 56738);
INSERT INTO `COURSE` VALUES('Computer Science', 533, 'Senior Project', 'Spring', 2017, 90573);
INSERT INTO `COURSE` VALUES('Physics', 100, 'Mechanics', 'Fall', 2016, 48387);
INSERT INTO `ENROLLMENT` VALUES(1234, 85675);
INSERT INTO `ENROLLMENT` VALUES(5678, 85675);
INSERT INTO `ENROLLMENT` VALUES(3456, 85675);
INSERT INTO `ENROLLMENT` VALUES(4590, 85675);
INSERT INTO `ENROLLMENT` VALUES(5337, 85675);
INSERT INTO `ENROLLMENT` VALUES(5555, 85675);
INSERT INTO `ENROLLMENT` VALUES(1234, 56738);
INSERT INTO `ENROLLMENT` VALUES(5678, 56738);
INSERT INTO `ENROLLMENT` VALUES(3456, 56738);
INSERT INTO `ENROLLMENT` VALUES(4590, 56738);
INSERT INTO `ENROLLMENT` VALUES(5337, 56738);
INSERT INTO `ENROLLMENT` VALUES(5555, 56738);
INSERT INTO `ENROLLMENT` VALUES(1234, 89994);
INSERT INTO `ENROLLMENT` VALUES(1234, 90573);
INSERT INTO `ENROLLMENT` VALUES(1234, 48387);
INSERT INTO `ENROLLMENT` VALUES(5337, 90573);
INSERT INTO `DISTRIBUTION` VALUES(1, 85675, 'Quiz', 50);
INSERT INTO `DISTRIBUTION` VALUES(2, 85675, 'HW', 10);
INSERT INTO `DISTRIBUTION` VALUES(3, 85675, 'MidTerm', 20);
INSERT INTO `DISTRIBUTION` VALUES(4, 85675, 'Final', 20);
INSERT INTO `DISTRIBUTION` VALUES(5, 89994, 'Participation', 40);
INSERT INTO `DISTRIBUTION` VALUES(6, 89994, 'HW', 10);
INSERT INTO `DISTRIBUTION` VALUES(7, 89994, 'MidTerm', 25);
INSERT INTO `DISTRIBUTION` VALUES(8, 89994, 'Final', 25);
INSERT INTO `DISTRIBUTION` VALUES(9, 56738, 'Quiz', 40);
INSERT INTO `DISTRIBUTION` VALUES(10, 56738, 'HW', 15);
INSERT INTO `DISTRIBUTION` VALUES(11, 56738, 'MidTerm', 20);
INSERT INTO `DISTRIBUTION` VALUES(12, 56738, 'Final', 25);
INSERT INTO `DISTRIBUTION` VALUES(13, 90573, 'Quiz', 20);
INSERT INTO `DISTRIBUTION` VALUES(14, 90573, 'HW', 25);
INSERT INTO `DISTRIBUTION` VALUES(15, 90573, 'Project', 30);
INSERT INTO `DISTRIBUTION` VALUES(16, 90573, 'Final', 25);
INSERT INTO `DISTRIBUTION` VALUES(17, 48387, 'Quiz', 30);
INSERT INTO `DISTRIBUTION` VALUES(18, 48387, 'HW', 25);
INSERT INTO `DISTRIBUTION` VALUES(19, 48387, 'Project', 20);
INSERT INTO `DISTRIBUTION` VALUES(20, 48387, 'Final', 25);
INSERT INTO `ASSIGNMENT` VALUES(1, 1, 1, 100);
INSERT INTO `ASSIGNMENT` VALUES(2, 1, 2, 100);
INSERT INTO `ASSIGNMENT` VALUES(3, 2, 1, 100);
INSERT INTO `ASSIGNMENT` VALUES(4, 2, 2, 100);
INSERT INTO `ASSIGNMENT` VALUES(5, 3, 1, 100);
INSERT INTO `ASSIGNMENT` VALUES(6, 3, 2, 100);
INSERT INTO `ASSIGNMENT` VALUES(7, 4, 1, 100);
INSERT INTO `ASSIGNMENT` VALUES(8, 4, 2, 100);
INSERT INTO `ASSIGNMENT` VALUES(9, 5, 1, 100);
INSERT INTO `ASSIGNMENT` VALUES(10, 5, 2, 100);
INSERT INTO `ASSIGNMENT` VALUES(11, 6, 1, 100);
INSERT INTO `ASSIGNMENT` VALUES(12, 6, 2, 100);
INSERT INTO `ASSIGNMENT` VALUES(13, 7, 1, 100);
INSERT INTO `ASSIGNMENT` VALUES(14, 7, 2, 100);
INSERT INTO `ASSIGNMENT` VALUES(15, 8, 1, 100);
INSERT INTO `ASSIGNMENT` VALUES(16, 8, 2, 100);
INSERT INTO `ASSIGNMENT` VALUES(17, 9, 1, 100);
INSERT INTO `ASSIGNMENT` VALUES(18, 9, 2, 100);
INSERT INTO `ASSIGNMENT` VALUES(19, 10, 1, 100);
INSERT INTO `ASSIGNMENT` VALUES(20, 10, 2, 100);
INSERT INTO `ASSIGNMENT` VALUES(21, 11, 1, 100);
INSERT INTO `ASSIGNMENT` VALUES(22, 11, 2, 100);
INSERT INTO `ASSIGNMENT` VALUES(23, 12, 1, 100);
INSERT INTO `ASSIGNMENT` VALUES(24, 12, 2, 100);
INSERT INTO `ASSIGNMENT` VALUES(25, 13, 1, 100);
INSERT INTO `ASSIGNMENT` VALUES(26, 13, 2, 100);
INSERT INTO `ASSIGNMENT` VALUES(27, 14, 1, 100);
INSERT INTO `ASSIGNMENT` VALUES(28, 14, 2, 100);
INSERT INTO `ASSIGNMENT` VALUES(29, 15, 1, 100);
INSERT INTO `ASSIGNMENT` VALUES(30, 15, 2, 100);
INSERT INTO `ASSIGNMENT` VALUES(31, 16, 1, 100);
INSERT INTO `ASSIGNMENT` VALUES(32, 16, 2, 100);
INSERT INTO `ASSIGNMENT` VALUES(33, 17, 1, 100);
INSERT INTO `ASSIGNMENT` VALUES(34, 17, 2, 100);
INSERT INTO `ASSIGNMENT` VALUES(35, 18, 1, 100);
INSERT INTO `ASSIGNMENT` VALUES(36, 18, 2, 100);
INSERT INTO `ASSIGNMENT` VALUES(37, 19, 1, 100);
INSERT INTO `ASSIGNMENT` VALUES(38, 19, 2, 100);
INSERT INTO `ASSIGNMENT` VALUES(39, 20, 1, 100);
INSERT INTO `ASSIGNMENT` VALUES(40, 20, 2, 100);
INSERT INTO `SCORE` VALUES(1234, 1, 85);
INSERT INTO `SCORE` VALUES(5678, 1, 80);
INSERT INTO `SCORE` VALUES(3456, 1, 95);
INSERT INTO `SCORE` VALUES(4590, 1, 65);
INSERT INTO `SCORE` VALUES(5337, 1, 100);
INSERT INTO `SCORE` VALUES(5555, 1, 93);
INSERT INTO `SCORE` VALUES(1234, 2, 81);
INSERT INTO `SCORE` VALUES(5678, 2, 84);
INSERT INTO `SCORE` VALUES(3456, 2, 95);
INSERT INTO `SCORE` VALUES(4590, 2, 62);
INSERT INTO `SCORE` VALUES(5337, 2, 90);
INSERT INTO `SCORE` VALUES(5555, 2, 93);
INSERT INTO `SCORE` VALUES(1234, 18, 87);
INSERT INTO `SCORE` VALUES(5678, 18, 94);
INSERT INTO `SCORE` VALUES(3456, 18, 55);
INSERT INTO `SCORE` VALUES(4590, 18, 72);
INSERT INTO `SCORE` VALUES(5337, 18, 0);
INSERT INTO `SCORE` VALUES(5555, 18, 99);
INSERT INTO `SCORE` VALUES(1234, 16, 80);
INSERT INTO `SCORE` VALUES(1234, 30, 85);
INSERT INTO `SCORE` VALUES(1234, 40, 95);
INSERT INTO `SCORE` VALUES(5338, 26, 78);
INSERT INTO `SCORE` VALUES(1234, 3, 81);
INSERT INTO `SCORE` VALUES(5678, 3, 84);
INSERT INTO `SCORE` VALUES(3456, 3, 95);
INSERT INTO `SCORE` VALUES(4590, 3, 62);
INSERT INTO `SCORE` VALUES(5337, 3, 90);
INSERT INTO `SCORE` VALUES(5555, 3, 93);
INSERT INTO `SCORE` VALUES(1234, 4, 81);
INSERT INTO `SCORE` VALUES(5678, 4, 84);
INSERT INTO `SCORE` VALUES(3456, 4, 95);
INSERT INTO `SCORE` VALUES(4590, 4, 62);
INSERT INTO `SCORE` VALUES(5337, 4, 90);
INSERT INTO `SCORE` VALUES(5555, 4, 93);
INSERT INTO `SCORE` VALUES(1234, 5, 81);
INSERT INTO `SCORE` VALUES(5678, 5, 84);
INSERT INTO `SCORE` VALUES(3456, 5, 95);
INSERT INTO `SCORE` VALUES(4590, 5, 62);
INSERT INTO `SCORE` VALUES(5337, 5, 90);
INSERT INTO `SCORE` VALUES(5555, 5, 93);
INSERT INTO `SCORE` VALUES(1234, 6, 81);
INSERT INTO `SCORE` VALUES(5678, 6, 84);
INSERT INTO `SCORE` VALUES(3456, 6, 95);
INSERT INTO `SCORE` VALUES(4590, 6, 62);
INSERT INTO `SCORE` VALUES(5337, 6, 90);
INSERT INTO `SCORE` VALUES(5555, 6, 93);
INSERT INTO `SCORE` VALUES(1234, 7, 81);
INSERT INTO `SCORE` VALUES(5678, 7, 84);
INSERT INTO `SCORE` VALUES(3456, 7, 95);
INSERT INTO `SCORE` VALUES(4590, 7, 62);
INSERT INTO `SCORE` VALUES(5337, 7, 90);
INSERT INTO `SCORE` VALUES(5555, 7, 93);
INSERT INTO `SCORE` VALUES(1234, 8, 81);
INSERT INTO `SCORE` VALUES(5678, 8, 84);
INSERT INTO `SCORE` VALUES(3456, 8, 95);
INSERT INTO `SCORE` VALUES(4590, 8, 62);
INSERT INTO `SCORE` VALUES(5337, 8, 90);
INSERT INTO `SCORE` VALUES(5555, 8, 93);
INSERT INTO `SCORE` VALUES(1234, 9, 81);
INSERT INTO `SCORE` VALUES(5678, 9, 84);
INSERT INTO `SCORE` VALUES(3456, 9, 95);
INSERT INTO `SCORE` VALUES(4590, 9, 62);
INSERT INTO `SCORE` VALUES(5337, 9, 90);
INSERT INTO `SCORE` VALUES(5555, 9, 93);
INSERT INTO `SCORE` VALUES(1234, 10, 81);
INSERT INTO `SCORE` VALUES(5678, 10, 84);
INSERT INTO `SCORE` VALUES(3456, 10, 95);
INSERT INTO `SCORE` VALUES(4590, 10, 62);
INSERT INTO `SCORE` VALUES(5337, 10, 90);
INSERT INTO `SCORE` VALUES(5555, 10, 93);
INSERT INTO `SCORE` VALUES(1234, 12, 87);
INSERT INTO `SCORE` VALUES(5678, 12, 94);
INSERT INTO `SCORE` VALUES(3456, 12, 55);
INSERT INTO `SCORE` VALUES(4590, 12, 72);
INSERT INTO `SCORE` VALUES(5337, 12, 0);
INSERT INTO `SCORE` VALUES(5555, 12, 99);
INSERT INTO `SCORE` VALUES(1234, 13, 87);
INSERT INTO `SCORE` VALUES(5678, 13, 94);
INSERT INTO `SCORE` VALUES(3456, 13, 55);
INSERT INTO `SCORE` VALUES(4590, 13, 72);
INSERT INTO `SCORE` VALUES(5337, 13, 0);
INSERT INTO `SCORE` VALUES(5555, 13, 99);
INSERT INTO `SCORE` VALUES(5337, 26, 78);
INSERT INTO `SCORE` VALUES(5337, 28, 78);



-- (Task 3) Show the tables with the contents that you have inserted

 -- SELECT * FROM STUDENT;
 -- SELECT * FROM SCORE;
 -- SELECT * FROM ASSIGNMENT;
 -- SELECT * FROM DISTRIBUTION;
 -- SELECT * FROM ENROLLMENT;
 -- SELECT * FROM COURSE;






-- (Task 4) Compute the average/highest/lowest score of an assignment;
-- Displayed as AssignmnetID|Average|HighestScore|Lowest Score 
--  select a.AssignmentID, avg(s.POINTS), max(s.POINTS), min(s.POINTS) from ASSIGNMENT a, SCORE s where a.AssignmentID=2 AND s.AssignmentID=a.AssignmentID;
 
 
 

-- (Task 5) List all students of a given course
-- List of all students in the course 85675
-- select s.StudentID, s.FirstName from STUDENT s JOIN ENROLLMENT e where e.CourseID = 85675 and s.StudentID = e.StudentID;





-- (Task 6) List all of the students in a course and all of their scores on every assignment
-- Shows Everyone in course 85675

-- SELECT DISTINCT pt.StudentID, st.FirstName, st.LastName, pt.CourseID,pt.AssignmentID, pt.CategoryName, pt.Points, pt.PointsPossible, pt.Percentage
-- FROM (
--     SELECT STUDENT.StudentID, AssignmentID, FirstName, LastName, CourseID, Points
--     FROM STUDENT JOIN ENROLLMENT JOIN SCORE
--     WHERE STUDENT.StudentID = ENROLLMENT.StudentID
--     AND STUDENT.StudentID = SCORE.StudentID) st
--   JOIN
--   (SELECT StudentID, CourseID, CategoryName, ASSIGNMENT.AssignmentID, Points, ASSIGNMENT.PointsPossible, DISTRIBUTION.Percentage
--     FROM DISTRIBUTION JOIN ASSIGNMENT JOIN SCORE
--     WHERE DISTRIBUTION.DistributionID = ASSIGNMENT.DistributionID
--     AND ASSIGNMENT.AssignmentID = SCORE.AssignmentID) pt
--   WHERE st.AssignmentID = pt.AssignmentID
--   AND st.Points = pt.Points AND pt.Courseid = 85675;





-- (Task 8) Change the percentages of the categories for a course;
-- Update Distribution 
-- Set Percentage = Percentage + 7
-- where CourseID = 56738 And CategoryName = 'MidTerm';
-- Update Distribution 
-- Set Percentage = Percentage - 7
-- where CourseID = 56738 And CategoryName = 'HW';





-- (Task 9) Add 2 points to the score of each student on an assignment;
UPDATE Score
SET POINTS=Points + 2
WHERE AssignmentID= 2 AND POINTS <=98;
SELECT DISTINCT st.StudentID, st.FirstName, st.LastName, pt.CourseID,pt.AssignmentID, pt.CategoryName, pt.Points, pt.PointsPossible, pt.Percentage
FROM (
SELECT STUDENT.StudentID, AssignmentID, FirstName, LastName, CourseID, Points
FROM STUDENT JOIN ENROLLMENT JOIN SCORE
WHERE STUDENT.StudentID = ENROLLMENT.StudentID
AND STUDENT.StudentID = SCORE.StudentID) st
JOIN
(SELECT StudentID, CourseID, CategoryName, ASSIGNMENT.AssignmentID, Points, ASSIGNMENT.PointsPossible, DISTRIBUTION.Percentage
FROM DISTRIBUTION JOIN ASSIGNMENT JOIN SCORE
WHERE DISTRIBUTION.DistributionID = ASSIGNMENT.DistributionID
AND ASSIGNMENT.AssignmentID = SCORE.AssignmentID) pt
WHERE st.AssignmentID = pt.AssignmentID
AND st.Points = pt.Points AND pt.AssignmentID = 2;






-- (Task 10) 
--Question 10:Add 2 points just to those students whose last name contains a ‘Q’.

-- SELECT* from SCORE
-- WHERE SCORE.studentid IN( SELECT STUDENT.studentid From STUDENT WHERE
--                         CHARINDEX('Q',lastname)
-- 						or CHARINDEX('Q',firstname)
-- 						or CHARINDEX('q',firstname)
-- 						or CHARINDEX('q',lastname)
--                       	)
-- And SCORE.assignmentid=9;
-- UPDATE SCORE
-- SET 
--     points = points+2
-- WHERE SCORE.studentid IN( SELECT STUDENT.studentid From STUDENT WHERE
--                         CHARINDEX('Q',lastname)
-- 						or CHARINDEX('Q',firstname)
-- 						or CHARINDEX('q',firstname)
-- 						or CHARINDEX('q',lastname)
--                       	);
-- SELECT* from SCORE
-- WHERE SCORE.studentid IN( SELECT STUDENT.studentid From  STUDENT WHERE
--                         CHARINDEX('Q',lastname)
-- 						or CHARINDEX('Q',firstname)
-- 						or CHARINDEX('q',firstname)
-- 						or CHARINDEX('q',lastname)
--                       	)
-- And SCORE.assignmentid=9;







-- (Task 11) Compute the grade for a student
-- All grades for student with ID = 1234

 -- SELECT DISTINCT pt.StudentID, st.FirstName, st.LastName, pt.CourseID,pt.AssignmentID, pt.CategoryName, pt.Points
 -- FROM (
     -- SELECT STUDENT.StudentID, AssignmentID, FirstName, LastName, CourseID, Points
     -- FROM STUDENT JOIN ENROLLMENT JOIN SCORE
     -- WHERE STUDENT.StudentID = ENROLLMENT.StudentID
     -- AND STUDENT.StudentID = SCORE.StudentID) st
 -- JOIN
 -- (SELECT StudentID, CourseID, CategoryName, ASSIGNMENT.AssignmentID, Points
     -- FROM DISTRIBUTION JOIN ASSIGNMENT JOIN SCORE
     -- WHERE DISTRIBUTION.DistributionID = ASSIGNMENT.DistributionID
     -- AND ASSIGNMENT.AssignmentID = SCORE.AssignmentID) pt
 -- WHERE st.AssignmentID = pt.AssignmentID
 -- AND st.Points = pt.Points AND st.StudentID=1234;





-- (Task 12) Compute the grade for a student, where the lowest score for a given category is dropped.
-- -- To do so, change category name in the middle and the end of this batch of code.
-- select     sum( distinct pt.Points*pt.Percentage) *1/(1 -( select zt.Percentage From 
 -- ((SELECT StudentID, CourseID,  CategoryName, ASSIGNMENT.AssignmentID, Points, Percentage
    -- FROM DISTRIBUTION JOIN ASSIGNMENT JOIN SCORE
    -- WHERE DISTRIBUTION.DistributionID = ASSIGNMENT.DistributionID
    -- AND ASSIGNMENT.AssignmentID = SCORE.AssignmentID And CategoryName = 'Final') zt)))
-- FROM (
    -- SELECT STUDENT.StudentID, AssignmentID, FirstName, LastName, CourseID, Points
    -- FROM STUDENT JOIN ENROLLMENT JOIN SCORE
    -- WHERE STUDENT.StudentID = ENROLLMENT.StudentID
    -- AND STUDENT.StudentID = SCORE.StudentID) st
-- JOIN
-- (SELECT StudentID, CourseID,  CategoryName, ASSIGNMENT.AssignmentID, Points, Percentage
    -- FROM DISTRIBUTION JOIN ASSIGNMENT JOIN SCORE
    -- WHERE DISTRIBUTION.DistributionID = ASSIGNMENT.DistributionID
    -- AND ASSIGNMENT.AssignmentID = SCORE.AssignmentID) pt
 -- WHERE st.AssignmentID = pt.AssignmentID
 -- AND st.Points = pt.Points AND st.StudentID=1234 AND pt.CourseID = 85675 AND Not CategoryName  = 'Final';



