--정렬과 묶음 검색
--
--SELECT 컬럼, 컬럼, ...
--FROM 테이블
--ORDER BY 컬럼 [ASC/DESC], 컬럼 [ASC/DESC]...;
--1) 따로 지정하지 않으면 ASC 가 적용
--2) 앞쪽이 우선 정렬, 뒤쪽이 다음 정렬

--사원의 이름을 급여순으로 검색한다
SELECT eno, ename, sal
FROM emp
ORDER BY sal DESC;

--사원의 급여를 이름순으로 검색한다
SELECT eno, ename, sal
FROM emp
ORDER BY ename ASC;

--사원의 연봉순으로 검색하라
SELECT eno, ename, sal*12+NVL(comm, 0) 연봉
FROM emp;

SELECT eno, ename, sal*12+NVL(comm,0) 연봉
FROM emp
ORDER BY sal*12+NVL(comm,0) DESC;

SELECT eno, ename, sal*12+NVL(comm, 0) 연봉
FROM emp
ORDER BY 연봉 DESC;


--사원의 이름을 사번순으로 검색한다
SELECT eno, ename, sal
FROM emp
ORDER BY eno;

SELECT eno, ename, sal
FROM emp
ORDER BY 1;

--사원의 이름을 이름순으로 검색한다
SELECT eno, ename, sal
FROM emp
ORDER BY ename;

SELECT eno, ename, sal
FROM emp
ORDER BY 2;

--사원의 이름을 급여순으로 검색한다
SELECT eno, ename, sal
FROM emp
ORDER BY sal;

SELECT eno, ename, sal
FROM emp
ORDER BY 3;

--정렬을 사용하는 2가지 의미
--1) 순서대로 검색
--2) 동일한 값끼리 묶어서 검색

--업무별로 사원의 연봉을 검색하라
SELECT *
FROM emp;

SELECT job 업무, eno, ename, sal*12+NVL(comm,0) 연봉
FROM emp
ORDER BY job, eno;

--각 부서별로 사원의 급여를 검색한다
--단 급여를 많이 받는 사람부터 검색한다
SELECT dno, sal, eno, ename
FROM emp
ORDER BY dno, sal DESC;

--1) 성적순으로 학생의 이름을 검색하라
SELECT avr, sno, sname
FROM student
ORDER BY avr DESC;

--2) 학과별 성적순으로 학생의 정보를 검색하라 
SELECT major, avr, sno, sname
FROM student
ORDER BY major, avr DESC;

--3) 학년별 성적순으로 학생의 정보를 검색하라
SELECT syear, avr, sno, sname
FROM student
ORDER BY syear, avr DESC;

--4) 학과별 학년별로 학생의 정보를 성적순으로 검색하라
SELECT major, syear, avr, sno, sname
FROM student
ORDER BY major, syear, avr DESC;

--5) 학점순으로 과목 이름을 검색하라
SELECT st_num, cno, cname
FROM course
ORDER BY st_num DESC;






