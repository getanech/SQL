--create database tochna

use tochna

create database 
go
use Dugma2

create table shlifot
(
chanut nvarchar(20),
ktovet nvarchar (30),
email nvarchar(20),
 iskaot int,
 menahel nvarchar(20)


insert into shlifot values
('rehitim', 'dayan 11 rechovot', 'a@gmail.com',9, 'moshe'),
('rehitim', 'ezra 14 haifa', 'bb@walla.co.il', 9, 'moshe'),
('ginot', 'weizman 122 kfar saba', 'a@walla.co.il', 11, 'avi'),
('chalav', 'ofer 14 beer sheva', 'b@gmail', 400, 'moshe'),
('humus', 'shaul 17 beer sheva', 'b@yahoo.com', 4, 'avi'),
('sfarim', 'herzl 55 holon', 'c.yahoo.com', 8, 'shimon'),
('sratim', 'chaim 155 metula', 'c.bezeqint.co.il', 8, 'shimon'),
('hazagot', 'elazar 44 holon', 'c.gmail', 8, 'avi'),
('shayish', 'vered 2 kfar saba', 'a7@walla.co.il', 1, 'avi'),
('rehitim', 'iris 44 kfar saba', 'a4@walla.co.il', 110, 'sari'),
('ginot', 'habanim 122 kfar saba', 'a3@walla.co.il', 12, 'shimon'),
('ginot', 'hanadiv 89 chadera', 'a88@walla.co.il', 55, 'moshe'),
('shayish', 'ezra 4 dimona', 'd@gmail', 18, 'riki'),
('rehitim', 'golda meir 89 chadera', 'e@gmail', 104, 'moshe')
;
select * from shlifot



