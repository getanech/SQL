
--11.6
--drop table azvu

create table azvu
(
  siduri int identity(1,1) primary key,
  memuza float
)

--drop trigger azvutrigger
create trigger azvutrigger
ON haovdim
FOR DELETE
AS
BEGIN
 declare @avgNow float
 set @avgNow = (select avg(maskoret) from haovdim)
   
 insert into azvu
 values(@avgNow);
END

delete from haovdim where siduri = 2
select * from azvu


--11.7
--drop procedure lefater
create procedure lefater
as
begin
declare @gavoha int
set @gavoha = (select  top 1[maskoret] from haovdim order by maskoret desc)
delete from haovdim where maskoret = @gavoha
select * from azvu
end


--11.8
declare @cntr int = 1
while @cntr < 5
begin
	exec lefater
	set @cntr = @cntr + 1
end



