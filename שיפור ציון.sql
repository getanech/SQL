drop TABLE flights
CREATE TABLE Flights (
    siduri int identity(1,1) primary key,
    mispar_tisa nvarchar(6),
    mispar_tayas int,
    kama_ovdim int
);

select*from flights
alter table Flights add makom_yetzia nvarchar(30)
alter table Flights add makom_nechita nvarchar (40)
alter table Flights add tarrich_vesha datetime 

insert into Flights values
('LY337',5,100,'3','ashdod','04-04-1998 18:30:00'),
('LY349',4,90,'4','london','04-04-1990 18:20:00'),
('LY350',3,80,'5','new york','04-05-1960 18:10:00'),
('LY612',2,70,'6','canada','04-04-1954 18:15:00'),
('LY456',1,60,'2','barcelona','04-04-1971 18:45:00');

--1--
select*from flights

--2--
SELECT mispar_tayas FROM flights group by mispar_tayas  

--3--
select*from flights order by mispar_tayas

--4--
update flights set mispar_tayas=3 where siduri = 1

--5--
select*from Flights where siduri > 2

--6--
SELECT MAX(siduri) as max_siduri from Flights
 
SELECT MIN(siduri) as min_siduri  from Flights

SELECT SUM(siduri) as sum_siduri from Flights

 --7--
 select count(mispar_tayas)  from Flights where mispar_tayas=3

 --8--
 drop TABLE Flights2
 CREATE TABLE Flights2 (
    siduri int identity(1,1) primary key,
    mispar_tisa nvarchar(6),
    mispar_tayas int,
    kama_ovdim int
);
insert into Flights2 values
('LY337',5,100);
 
 select*from Flights
 select * from Flights2

 select Flights.mispar_tayas from Flights
 inner join Flights2 on Flights.mispar_tayas = Flights2.mispar_tayas
 
--9--
select*from Flights
where len(makom_nechita)<8

 --10--
 select*,
 datediff(year,tarrich_vesha,CURRENT_TIMESTAMP) as hefresh
 from Flights






