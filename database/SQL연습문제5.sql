#날짜 : 2024/07/12
#이름 : 원기연
#내용 : SQL연습문제5 실습하기

#실습5-2
create table `Customer`(
	`custId` int primary key auto_increment,
    `name` varchar(10) not null,
    `address` varchar(20) default null,
    `phone` varchar(13) default null
);

create table `Book`(
	`bookId` int primary key,
    `bookname` varchar(20) not null,
    `publisher` varchar(20) not null,
    `price` int default null
);

create table `Order`(
	`orderId` int primary key auto_increment,
    `custId` int not null,
    `bookId` int not null,
    `salePrice` int not null,
    `orderDate` date not null
);

#실습5-3
insert into `customer` (`name`,`address`,`phone`) values ('박지성','영국 맨체스타','000-5000-0001');
insert into `customer` (`name`,`address`,`phone`) values ('김연아','대한민국 서울','000-6000-0001');
insert into `customer` (`name`,`address`,`phone`) values ('장미란','대한민국 강원도','000-7000-0001');
insert into `customer` (`name`,`address`,`phone`) values ('추신수','미국 클리블랜드','000-8000-0001');
insert into `customer` (`name`,`address`) values ('박세리','대한민국 대전');

insert into `book` values ('1','축구의 역사','굿스포츠','7000');
insert into `book` values ('2','축구아는 여자','나무스','13000');
insert into `book` values ('3','축구의 이해','대한미디어','22000');
insert into `book` values ('4','골프 바이블','대한미디어','35000');
insert into `book` values ('5','피겨 교본','굿스포츠','8000');
insert into `book` values ('6','역도 단계별기술','굿스포츠','6000');
insert into `book` values ('7','야구의 추억','이상미디어','20000');
insert into `book` values ('8','야구를 부탁해','이상미디어','13000');
insert into `book` values ('9','올림픽 이야기','삼성당','7500');
insert into `book` values ('10','Olympic Champions','Person','13000');

insert into `Order` (`custId`,`bookId`,`salePrice`,`orderDate`) values('1','1','6000','2014-07-01');
insert into `Order` (`custId`,`bookId`,`salePrice`,`orderDate`) values('1','3','21000','2014-07-03');
insert into `Order` (`custId`,`bookId`,`salePrice`,`orderDate`) values('2','5','8000','2014-07-03');
insert into `Order` (`custId`,`bookId`,`salePrice`,`orderDate`) values('3','6','6000','2014-07-04');
insert into `Order` (`custId`,`bookId`,`salePrice`,`orderDate`) values('4','7','20000','2014-07-05');
insert into `Order` (`custId`,`bookId`,`salePrice`,`orderDate`) values('1','2','12000','2014-07-07');
insert into `Order` (`custId`,`bookId`,`salePrice`,`orderDate`) values('4','8','13000','2014-07-07');
insert into `Order` (`custId`,`bookId`,`salePrice`,`orderDate`) values('3','10','12000','2014-07-08');
insert into `Order` (`custId`,`bookId`,`salePrice`,`orderDate`) values('2','10','7000','2014-07-09');
insert into `Order` (`custId`,`bookId`,`salePrice`,`orderDate`) values('3','8','13000','2014-07-10');


#실습5-4
select `custId`,`name`,`address` from `customer`;

#실습5-5
select `bookname`,`price` from `book`;

#실습5-6
select `price`,`bookname` from `book`;

#실습5-7
select * from `book`;

#실습5-8
select `publisher` from `book`;

#실습5-9
select distinct`publisher` from `book` ;

#실습5-10
select * from `book` where `price` >=20000;

#실습5-11
select * from `book` where `price` <20000;

#실습5-12
select * from `book` where `price` <=20000 and `price` >= 10000;

#실습5-13
select `bookId`,`bookname`,`price`  from `book` where `price` <=30000 and `price` >= 15000;

#실습5-14
select * from `book` where `bookId` in(2,3,5);

#실습5-15
select * from `book` where `bookId` % 2 = 0;

#실습5-16
select * from `customer` where `name` like "박%";

#실습5-17
select * from `customer` where `address` like "%대한민국%";

#실습5-18
select * from `customer` where `phone` is not null;

#실습5-19
select * from `book` where `publisher` = '굿스포츠' or `publisher`= '대한미디어';

#실습5-20
select `publisher` from `book` where `bookname` = '축구의 역사';

#실습5-21
select `publisher` from `book` where `bookname` like '축구%';

#실습5-22
select * from `book` where `bookname` like '_구%';

#실습5-23
select * from `book` where `bookname` like '축구%' and `price` >= 20000;

#실습5-24
select * from `book` order by `bookname` asc;

#실습5-25
select * from `book` order by `price` asc , `bookname` asc;

#실습5-26
select * from `book` order by `price` desc, `publisher` asc;

#실습5-27
select * from `book` order by `price` desc limit 3;

#실습5-28
select * from `book` order by `price` asc limit 3;

#실습5-29
select sum(`salePrice`) as `총판매액` from `order`;

#실습5-30
select sum(`salePrice`) as `총판매액` , 
avg(`salePrice`) as `평균값`,
min(`salePrice`) as `최저가`,
max(`salePrice`) as `최과가`
from `order`;
 
#실습5-31
select count(*) as `판매건수` 
from `order`;

#실습5-32
select
  bookid,
 replace(bookname,'야구','농구') as bookname, 
 publisher,
 price
from  `book`;

#실습5-33
select 
	`custId`   ,
    sum(`custid`) as `수량` 
	from `order` 
    where `salePrice` >= 8000 
    group by `custId`
    having`수량` >= 2;
    
#실습5-34
select * from `customer`
join `order` ;

#실습5-35
select * from `customer`
join `order` ;



#실습5-36
select 
	`name`,
    `saleprice`
from `customer` a
join `order` as b on a.custId = b.custId;

#실습5-37
select 
	`name`,
    sum(`salePrice`) 
from `customer` a
join `order` as b on a.custId = b.custId
group by name;

#실습5-38
select 
	`name`,
    `bookname`
from `customer` a
join `order` as b on a.custId = b.custId
join `book` as c on b.bookId = c.bookId;


#실습5-39
select 
	`name`,
    `bookname`
from `customer` a
join `order` as b on a.custId = b.custId
join `book` as c on b.bookId = c.bookId
where `price` = 20000;

#실습5-40
select 
	`name`,
    `salePrice`
from `customer` a
left join `order` as b on a.custId = b.custId
left join `book` as c on b.bookId = c.bookId;

#실습5-41
select sum(`saleprice`) as `총매출`
from `order` as a
join `customer` as b on a.custId = b.custId
where b.custId = '2'; 

#실습5-42
select 
	`bookname`
from `book` 
where `Price`
order by price desc limit 1;

#실습5-43
select 
	`name`
from `customer` as a
left join `order` as b on a.custId = b.custId
where orderId is null;

#실습5-44
insert into `book` (`bookId`,`bookname`,`publisher`) values ('11','스포츠의학','한솔의학서적');

#실습5-45
update `customer` set `address` =  '대한민국 부산' where `custId` = 5;

#실습5-46
delete from `customer` where `custId` = 5;

