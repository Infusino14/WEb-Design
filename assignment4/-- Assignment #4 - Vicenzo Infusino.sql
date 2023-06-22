-- Assignment #4 - Vicenzo Infusino
-- June 25th 2023

-- 1. Find the names of all (students) CS majors.

SELECT
    SName
FROM Student
WHERE Major = "CS";

-- 2. Find the names of all (students) MATH majors who are also in their "Senior" year.

SELECT
    SName
FROM Student
WHERE Major = "MATH" AND Year = "Senior";

-- 3. Find the names of courses being taught by "Professor Henry".

SELECT
    c.CName
FROM Course c, Faculty f
WHERE c.FID = f.FID AND f.FName = "Professor Henry";

-- 4. List the IDs and names of courses offered by the "Physics" and "Chemistry" departments.
SELECT 
    c.CID,
    c.CName
FROM Course c, Dept d
WHERE c.DName = d.DName AND (d.DName = "Physics" or d.DName = "Chemistry");

-- 5. Find the names of all faculty members who work in the departments that have less than 20 professors.
SELECT
    f.FName
FROM Faculty f, Department d
WHERE f.DName = d.DName AND d.NumProf < 20;