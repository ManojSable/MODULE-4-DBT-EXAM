------------- SECTION 2 ------------

---------- QUESTION 1 --------------
create table TEMPP
(
string1 varchar(10),
string2 varchar(10),
msg varchar(50)
);
delimiter //
create procedure




------------ QUESTION 2 -------
delimiter //
create function FUNC1
(
side1 int,
side2 int,
side3 int
)
returns varchar(100)
deterministic
begin
if side1+side2>side3 and
side2+side3>side1 and
side3+side1>side2 then
return 'TRUE';
else
return 'FALSE';
end if;
end; //
delimiter;
delimiter //  