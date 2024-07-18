#날짜 : 2024/07/15
#이름 : 원기연
#내용 : 데이터 모델링 실습하기

#실습 6-1
#실습 6-2
insert into `customer` values ('c101','김유신','010-1234-1001','경남 김해시','2023-01-01');
insert into `customer` values ('c102','김춘추','010-1234-1002','경남 경주시','2023-01-02');
insert into `customer` values ('c103','장보고','010-1234-1003','전남 완도군','2023-01-03');
insert into `customer` values ('c104','강감찬','010-1234-1004','서울시 관악구','2023-01-04');
insert into `customer` values ('c105','이순신','010-1234-1005','부산시 금정구','2023-01-05');

insert into `product` (`prodNo`,`prodName`,`stock`,`price`,`company`) values ('1','생우깡','5000','1500','농심');
insert into `product` (`prodNo`,`prodName`,`stock`,`price`,`company`) values ('2','초코파이','2500','2500','오리온');
insert into `product` (`prodNo`,`prodName`,`stock`,`price`,`company`) values ('3','포카칩','3600','1700','오리온');
insert into `product` (`prodNo`,`prodName`,`stock`,`price`,`company`) values ('4','양파링','1250','1800','농심');
insert into `product` (`prodNo`,`prodName`,`stock`,`company`) values ('5','죠리퐁','2200','크라운');

insert into `order` (`orderid`,`orderproduct`,`ordercount`,`orderDate`) values ('c102','3','2','2023-01-01 13:15:10');
insert into `order` (`orderid`,`orderproduct`,`ordercount`,`orderDate`) values ('c101','4','1','2023-01-01 13:15:12');
insert into `order` (`orderid`,`orderproduct`,`ordercount`,`orderDate`) values ('c102','1','1','2023-01-01 13:15:14');
insert into `order` (`orderid`,`orderproduct`,`ordercount`,`orderDate`) values ('c105','2','1','2023-01-01 13:15:18');

#실습 6-3
select 
	`orderNo`,
    `name`,
    `prodname`,
    `ordercount`,
    `orderdate`
from `order` as a
join `customer` as b on a.orderId = b.custId
join `product` as c on a.orderProduct = c.prodNo;

select 
	`orderNo`,
    `prodNo`,
    `prodname`,
    `price`,
    `ordercount`,
    `orderdate`
from `order` as a
join `customer` as b on a.orderId = b.custId
join `product` as c on a.orderProduct = c.prodNo
where `name` = '김유신';

select
	sum(price * orderCount) as `총 주문 금액`
from `order` as a
join `customer` as b on a.orderId = b.custId
join `product` as c on a.orderProduct = c.prodNo;

#실습 6-4
#실습 6-5
insert into `bank_customer` values ('730423-1000001','김유신','1','010-1234-1001','경남 김해시');
insert into `bank_customer` values ('730423-1000002','김춘추','1','010-1234-1002','경남 경주시');
insert into `bank_customer` values ('730423-1000003','장보고','1','010-1234-1003','전남 완도군');
insert into `bank_customer` values ('102-12-51094','(주)정보산업','2','051-500-1004','부산시 부산진구');
insert into `bank_customer` values ('730423-1000005','이순신','1','010-1234-1005','서울 종로구');

insert into `bank_account` values ('101-11-1001','S1','자유저축예금','1550000','2011-04-11','730423-1000001');
insert into `bank_account` values ('101-11-1002','S1','자유저축예금','260000','2011-05-12','930423-1000005');
insert into `bank_account` values ('101-11-1003','S1','자유저축예금','75000','2011-06-13','750423-1000003');
insert into `bank_account` values ('101-12-1001','S2','기업전용예금','15000000','2011-07-14','102-12-51094');
insert into `bank_account` values ('101-13-1001','S3','정기저축예금','1200000','2011-08-15','730423-1000002');

insert into `bank_transaction` (`t_a_no`,`t__dist`,`t_amount`,`t_datetime`) values ('101-11-1001','1','50000','2023-01-01 13:15:10');
insert into `bank_transaction` (`t_a_no`,`t__dist`,`t_amount`,`t_datetime`) values ('101-12-1001','2','1000000','2023-01-01 13:15:12');
insert into `bank_transaction` (`t_a_no`,`t__dist`,`t_amount`,`t_datetime`) values ('101-11-1002','3','260000','2023-01-01 13:15:14');
insert into `bank_transaction` (`t_a_no`,`t__dist`,`t_amount`,`t_datetime`) values ('101-11-1002','2','100000','2023-01-01 13:15:16');
insert into `bank_transaction` (`t_a_no`,`t__dist`,`t_amount`,`t_datetime`) values ('101-11-1003','3','75000','2023-01-01 13:15:18');
insert into `bank_transaction` (`t_a_no`,`t__dist`,`t_amount`,`t_datetime`) values ('101-11-1001','1','150000','2023-01-01 13:15:28');

#실습 6-6
select 
	`c_no`,
    `c_name`,
    `c_phone`,
    `a_no`,
    `a_item_name`,
	`a_balance`
from `bank_customer` as a 
join `bank_account` as b on a.c_no = b.a_c_no;

select 
	`t__dist`,
    `t_amount`,
    `t_datetime`
from `bank_customer` as a 
join `bank_account` as b on a.c_no = b.a_c_no
join `bank_transaction` as c on b.a_no = c.t_a_no
where `c_name` = '이순신';

select 
	`c_no`,
    `c_name`,
    `a_no`,
    `a_balance`,
    `a_open_date`
from `bank_customer` as a 
join `bank_account` as b on a.c_no = b.a_c_no
where `c_dist`=1
order by `a_balance` desc
limit 1;

#실습 6-7
#실습 6-8

insert into `student` values('20201011','김유신','010-1234-1001','3','경남 김해시');
insert into `student` values('20201122','김춘추','010-1234-1002','3','경남 경주시');
insert into `student` values('20210213','장보고','010-1234-1003','2','전남 완도군');
insert into `student` values('20210324','강감찬','010-1234-1004','2','서울 관악구');
insert into `student` values('20220415','이순신','010-1234-1005','1','서울 종로구');

insert into `lecture` values('101','컴퓨터과학 개론','2','40','본301');
insert into `lecture` values('102','프로그래밍 언어','3','52','본302');
insert into `lecture` values('103','데이터베이스','3','56','본303');
insert into `lecture` values('104','자료구조','3','60','본304');
insert into `lecture` values('105','운영체제','3','52','본305');

insert into `register`(`regStdNo`,`regLecNo`,`RegMidScore`,`regFinalScore`) values('20220415','101','60','30');
insert into `register`(`regStdNo`,`regLecNo`,`RegMidScore`,`regFinalScore`) values('20210324','103','54','36');
insert into `register`(`regStdNo`,`regLecNo`,`RegMidScore`,`regFinalScore`) values('20201011','105','52','28');
insert into `register`(`regStdNo`,`regLecNo`,`RegMidScore`,`regFinalScore`) values('20220415','102','38','40');
insert into `register`(`regStdNo`,`regLecNo`,`RegMidScore`,`regFinalScore`) values('20210324','104','56','32');
insert into `register`(`regStdNo`,`regLecNo`,`RegMidScore`,`regFinalScore`) values('20210213','103','48','40');

#실습 6-9

select
	stdno,
    stdname,
    stdhp,
    stdyear
from student as a 
left join register as b on a.stdName = b.regstdNo
where regstdNo is null;

select
	regstdno,
    reglecno,
    regmidscore,
    regfinalscore,
    regmidscore + regfinalscore  as `합`,
    case
			when(regmidscore + regfinalscore >= 90 )then 'A'
            when(regmidscore + regfinalscore >= 80 )then 'B'
            when(regmidscore + regfinalscore >= 70 )then 'C'
            when(regmidscore + regfinalscore >= 60 )then 'D'
            
		else 'F'
        end as `등급`
from register;

select 
	stdno,
    stdname,
    stdyear,
    lecname,
    regmidscore,
    regfinalscore,
    regtotalscore,
    reggrade
from `student` as  a 
join `register` as b on a.stdNo = b.regstdNo
join `lecture` as c on b.regLecNo = c.lecNo
where stdyear = 2;