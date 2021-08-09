USE springboardopt;

-- -------------------------------------
SET @v1 = 1612521;
SET @v2 = 1145072;
SET @v3 = 1828467;
SET @v4 = 'MGT382';
SET @v5 = 'Amber Hill';
SET @v6 = 'MGT';
SET @v7 = 'EE';			  
SET @v8 = 'MAT';

-- Index on deptId
-- CREATE INDEX DepartmentID ON Course (deptId);

-- 5. List the names of students who have taken a course from department v6 (deptId), but not v7.
SELECT s.name FROM Student s
WHERE s.id IN
	(SELECT t1.studId FROM Transcript t1, Course c1 WHERE c1.deptId = @v6 AND c1.crsCode = t1.crsCode)
		AND s.id NOT IN
	(SELECT t2.studId FROM Transcript t2, Course c2 WHERE c2.deptId = @v7 AND c2.crsCode = t2.crsCode);