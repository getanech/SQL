use Dugma1
drop table patients

create table patients
(
shem nvarchar(30),
rofe nvarchar(30),
machala nvarchar(30),
trufa nvarchar(30)
)

insert into  patients values
('avi','dr adi','shapaat','acamol'),
('izik','dr or','corono','pfizer'),
('tami','dr chen','shapaat','nirofen'),
('iris','dr or','shapaat','acamol'),
('kobi','dr adi','daleket','acamol')
select * from patients

drop table medicins
create table medicins
(shemtrufa nvarchar(20),
mechir float,
sapak nvarchar(20),
ktovet nvarchar(20)
)

insert into medicins values
('acamol',5.99  ,'aa acamol', 'herzl 3 yahud'),
('pfizer', 300.00 ,'pfizer_med', 'irisim 1 kadima'),
('nirofen', 12.13 ,'aa acamol', 'herzl 3 yahud')
select * from medicins


select shem from
medicins, patients
where medicins.shemtrufa = patients.trufa
and sapak = 'pfizer_med'

select rofe from
medicins, patients
where medicins.shemtrufa = patients.trufa
and mechir > 10

select count(*) as schum, avg(mechir) as memuza from
medicins, patients
where medicins.shemtrufa = patients.trufa
and rofe = 'dr adi'

