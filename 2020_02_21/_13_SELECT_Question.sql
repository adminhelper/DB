--1. 송강 교수가 강의하는 과목을 검색하라
SELECT p.pno, pname, cno, cname
FROM course c, professor p
WHERE c.pno = p.pno
AND pname='송강';
--2. 화학 관련 과목을 강의하는 교수의 명단을 검색하라
SELECT p.pno, pname "화학 관련 과목 교수", cno, cname
FROM course c, professor p
WHERE c.pno = p.pno
AND cname LIKE '%화학%';
--3. 학점이 2학점인 과목과 이를 강의하는 교수를 검색하라
SELECT p.pno, pname, cno, cname, st_num
FROM course c, professor p
WHERE c.pno = p.pno
AND st_num=2;
--4. 화학과 교수가 강의하는 과목을 검색하라
SELECT p.pno, pname, section, cno, cname
FROM professor p, course c
WHERE p.pno=c.pno
AND section='화학';
--5. 화학과 1학년 학생의 기말고사 성적을 검색하라
SELECT s.sno, sname, syear, result
FROM score r, student s
WHERE r.sno=s.sno
AND major='화학'
AND syear=1;
--6. 일반화학 과목의 기말고사 점수를 검색하라
SELECT s.sno, sname, c.cno, cname, result
FROM score r, course c, student s
WHERE r.cno=c.cno AND s.sno=r.sno
AND cname='일반화학';
--7. 화학과 1학년 학생의 일반화학 기말고사 점수를 검색하라
SELECT s.sno, sname, major, syear, c.cno, cname, result
FROM score r, course c, student s
WHERE r.cno=c.cno AND s.sno=r.sno
AND cname='일반화학'
AND major='화학'
AND syear=1;
--8. 화학과 1학년 학생이 수강하는 과목을 검색하라
SELECT *
FROM student;
SELECT *
FROM course;
SELECT *
FROM score;

SELECT DISTINCT c.cno, cname
FROM student s, course c, score r
WHERE s.sno=r.sno AND c.cno=r.cno
AND major='화학'
AND syear=1;
--9. 유기화학 과목의 평가점수가 F인 학생의 명단을 검색하라
SELECT s.sno, sname, cname, result, grade
FROM student s, course c, score r, scgrade g
WHERE s.sno=r.sno AND c.cno=r.cno
AND result BETWEEN loscore AND hiscore
AND cname='유기화학'
AND grade='F'
ORDER BY result DESC;