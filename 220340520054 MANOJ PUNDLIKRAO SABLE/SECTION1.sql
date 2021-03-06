-------- SECTION 1 -----------

--------- QUESTION 1 ----------
drop table DEPT;
create table DEPT
(
DEPTNO int(2),
DNAME varchar(15),
LOC varchar(10)
);

insert into DEPT (DEPTNO, DNAME, LOC)
values (10, 'ACCOUNTING', 'NEW YORK');
insert into DEPT (DEPTNO, DNAME, LOC)
values (20, 'RESEARCH', 'DALLAS');
insert into DEPT (DEPTNO, DNAME, LOC)
values (30, 'SALES', 'CHICAGO');
insert into DEPT (DEPTNO, DNAME, LOC)
values (40, 'OPERATIONS', 'BOSTON');

select * from DEPT;


-------- QUESTION 2 --------

drop table EMP;
create table EMP
(
EMPNO int(4),
ENAME varchar(10),
JOB varchar(9),
HIREDATE date,
SAL float(7,2),
COMM float(7,2),
DEPTNO int(2)
);

insert into EMP
values
(7839, 'KING', 'MANAGER', '1991-11-17', 5000, NULL, 10),
(7698, 'BLAKE', 'CLERK', '1981-05-01', 2850, NULL, 30),
(7782, 'CLARK', 'MANAGER', '1981-06-09', 2450, NULL, 10),
(7566, 'JONES', 'CLERK', '1981-04-02', 2975, NULL, 20),
(7654, 'MARTIN', 'SALESMAN', '1981-09-28', 1250, 1400, 30),
(7499,'ALLEN', 'SALESMAN', '1981-02-20', 1600, 300, 30);

select * from EMP;
-------- QUESTION 3 -------
select ENAME from EMP 
where SAL between 2500 and 5000;


------- QUESTION 4 --------
select ENAME from EMP
order by ENAME desc;


---------- QUESTION 5 --------
select LOWER(JOB) from EMP;


------- QUESTIN 6 ----------
select ENAME, length(ENAME) from EMP;


------- QUESTION 7 ----------
select DEPTNO, COUNT(*) from EMP group by DEPTNO;


-------- QUESTION 8 -----------
select e.ENAME, D.DNAME from EMP
e join DEPT d on
e.DEPTNO = d.DEPTNO;


---------- QUESTON 9 ----------
select LOCATE('AR',ENAME)
from EMP;


---------- QUESTION 10 -----------
select ENAME, 0.2*SAL
 as "HRA" from EMP;