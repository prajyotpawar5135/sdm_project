create table theater(
theaterNo int primary key,
theaterName varchar(20),
location varchar(20)
);

create table customer1(
custno int primary key,
custname varchar(20),
seatNo int,
movieName varchar(20));

create table ticket(
ticketNo int primary key,
movieName varchar(30),
movidetail varchar(30),
ratings int,
ticketPrice double(9,2));

create table movie(
mID int primary key,
movieName varchar(30),
showTime varchar(20),
screenno int
theaterNo int,
constraint fk_tn foreign key (theaterNo) references theater(theaterNo) 
on delete set null, on update cascade
);
