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

-- 4. List the names of students who have taken a course taught by professor v5 (name).
SELECT s.name FROM Student s
WHERE s.id IN (
	SELECT t2.studId FROM Teaching t 
	INNER JOIN Transcript t2 ON t.crsCode = t2.crsCode
	INNER JOIN Professor p ON t.profId = p.id 
	WHERE p.name = @v5
);