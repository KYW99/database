insert into `students` (`stdno`,`depno`,`prono`,`stdname`,`stdjumin`,`stdhp`,`stdaddr`) values('20101001','10','p10101','정우성','760121-1234567','010-1101-7601','서울');
insert into `students` (`stdno`,`depno`,`prono`,`stdname`,`stdjumin`,`stdhp`,`stdaddr`) values('20101002','10','p10101','이정재','750611-1234567','010-1101-7506','서울');
insert into `students` (`stdno`,`depno`,`prono`,`stdname`,`stdjumin`,`stdhp`,`stdemail`,`stdaddr`) values('20111011','11','p11103','전지현','890530-1234567','010-1103-8905','jjh@naver.com','대전');
insert into `students` (`stdno`,`depno`,`prono`,`stdname`,`stdjumin`,`stdhp`,`stdemail`,`stdaddr`) values('20111013','11','p11103','이나영','790413-1234567','010-2101-7904','lee@naver.com','대전');
insert into `students` (`stdno`,`depno`,`prono`,`stdname`,`stdjumin`,`stdhp`,`stdemail`,`stdaddr`) values('20111014','11','p11104','원빈','660912-1234567','010-2101-6609','one@daum.net','대전');
insert into `students` (`stdno`,`depno`,`prono`,`stdname`,`stdjumin`,`stdhp`,`stdemail`,`stdaddr`) values('21221010','23','p22110','장동건','790728-1234567','010-3101-7907','jang@naver.com','대구');
insert into `students` (`stdno`,`depno`,`prono`,`stdname`,`stdjumin`,`stdhp`,`stdemail`,`stdaddr`) values('21231002','23','p23102','고소영','840615-1234567','010-4101-8406','goso@naver.com','대구');
insert into `students` (`stdno`,`depno`,`prono`,`stdname`,`stdjumin`,`stdhp`,`stdemail`,`stdaddr`) values('22311011','31','p31104','김연아','651021-1234567','010-5101-6510','yuna@naver.com','대구');
insert into `students` (`stdno`,`depno`,`prono`,`stdname`,`stdjumin`,`stdhp`,`stdaddr`) values('22311014','31','p31104','유재석','721128-1234567','010-6101-7211','부산');
insert into `students` (`stdno`,`depno`,`prono`,`stdname`,`stdjumin`,`stdhp`,`stdaddr`) values('22401001','40','p40101','강호동','920907-1234567','010-7103-9209','부산');
insert into `students` (`stdno`,`depno`,`prono`,`stdname`,`stdjumin`,`stdhp`,`stdemail`,`stdaddr`) values('22401002','40','p40101','조인성','891209-1234567','010-7104-8912','join@naver.com','광주');
insert into `students` (`stdno`,`depno`,`prono`,`stdname`,`stdjumin`,`stdhp`,`stdemail`,`stdaddr`) values('22421003','42','p42103','강동원','770314-1234567','010-8101-7703','dong@naver.com','광주');

insert into `professors` values ('p10101','10','김유신','750120-1234567','010-1101-1976','kimys@hg.ac.kr','서울');
insert into `professors` values ('p10102','10','계백','740610-1234567','010-1102-1975','gaeback@hg.ac.kr','서울');
insert into `professors` values ('p11101','11','김관창','880529-1234567','010-1103-1989','kwanch@hg.ac.kr','대전');
insert into `professors` values ('p11103','11','김춘추','780412-1234567','010-2101-1979','kimcc@hg.ac.kr','대전');
insert into `professors` values ('p11104','11','이사부','650911-1234567','010-2104-1966','leesabu@hg.ac.kr','대전');
insert into `professors` values ('p22110','22','장보고','780727-1234567','010-3101-1979','jangbg@hg.ac.kr','대구');
insert into `professors` values ('p23102','23','선덕여왕','830614-1234567','010-4101-1984','queen@hg.ac.kr','대구');
insert into `professors` values ('p31101','31','강감찬','641020-1234567','010-5101-1965','kang@hg.ac.kr','대구');
insert into `professors` values ('p31104','31','신사임당','711127-1234567','010-6101-1972','sinsa@hg.ac.kr','부산');
insert into `professors` values ('p40101','40','이이','910906-1234567','010-7103-1992','leelee@hg.ac.kr','부산');
insert into `professors` values ('p40102','40','이황','881208-1234567','010-7104-1989','hwang@hg.ac.kr','광주');
insert into `professors` values ('p42103','42','송상현','760313-1234567','010-8101-1977','ssh@hg.ac.kr','광주');

insert into `departments` values('10','국어국문학과','051-510-1010');
insert into `departments` values('11','영어영문학과','051-510-1011');
insert into `departments` values('20','경영학과','051-510-1020');
insert into `departments` values('21','경제학과','051-510-1021');
insert into `departments` values('22','정치외교학과','051-510-1022');
insert into `departments` values('23','사회복지학과','051-510-1023');
insert into `departments` values('30','수학과','051-510-1030');
insert into `departments` values('31','통계학과','051-510-1031');
insert into `departments` values('32','생명과학과','051-510-1032');
insert into `departments` values('40','기계공학과','051-510-1040');
insert into `departments` values('41','전자공학과','051-510-1041');
insert into `departments` values('42','컴퓨터공학과','051-510-1042');

insert into `lectures` values('101001','p10101','대학글쓰기','2','10','본102');
insert into `lectures` values('101002','p10102','한국어음운론','3','30','본102');
insert into `lectures` values('101003','p10102','한국현대문학사','3','30','본103');
insert into `lectures` values('111011','p11103','중세영문학','3','25','본201');
insert into `lectures` values('111012','p11104','영미시','3','25','본201');
insert into `lectures` values('231110','p23102','사회복지학개론','1','8','별관103');
insert into `lectures` values('311002','p31101','통계학의 이해','2','16','별관303');
insert into `lectures` values('311003','p31104','기초 통계학','3','26','별관303');
insert into `lectures` values('401019','p40101','기계역학','3','36','공학관102');
insert into `lectures` values('421012','p42103','데이터베이스','3','32','공학관103');

insert into `register` (`stdno`,`lecno`,`prono`) values ('20101001','101001','p10101');
insert into `register` (`stdno`,`lecno`,`prono`) values ('20101001','101002','p10102');
insert into `register` (`stdno`,`lecno`,`prono`) values ('20111013','111011','p11103');
insert into `register` (`stdno`,`lecno`,`prono`) values ('21231002','231110','p23102');
insert into `register` (`stdno`,`lecno`,`prono`) values ('22401001','401019','p40101');
insert into `register` (`stdno`,`lecno`,`prono`) values ('22401001','421012','p42103');
insert into `register` (`stdno`,`lecno`,`prono`) values ('20101001','101003','p10102');
insert into `register` (`stdno`,`lecno`,`prono`) values ('22421003','311003','p31104');
insert into `register` (`stdno`,`lecno`,`prono`) values ('22421003','421012','p42103');
insert into `register` (`stdno`,`lecno`,`prono`) values ('20111013','111012','p11104');

#1
select 
	`stdno`,
    `stdname`,
    `stdhp`,
	a.`depno`,
    `depname`
from students as a
join departments as b on a.depno = b.depno;

#2
select 
	`prono`,
    `proname`,
    `prohp`,
    a.`depno`,
    `depname`
from professors as a
join departments as b on a.depno = b.depno;

#3
select
	`lecno`,
    `lecname`,
    `proname`,
    `prohp`
from lectures as a
join professors as b on a.prono = b.prono;

#4
select
	`lecno`,
    `lecname`,
    b.`prono`,
    `proname`,
    `prohp`,
    b.`depno`,
    `depname`
from lectures as a
join professors as b on a.prono = b.prono
join departments as c on b.depno = c.depno;

#5
select
	a.`stdno`,
    b.`stdname`,
    a.`lecno`,
    c.`lecname`,
    c.`prono`,
    d.`proname`
from register as a 
join students as b on a.stdno = b.stdno
join lectures as c on b.prono = c.prono
join professors as d on c.prono = d.prono;

#6
update `register` set `regAttenscore` = ceil(rand()*100),
					  `regmidscore` = ceil(rand()*100),
                      `regfinalscore` = ceil(rand()*100);

#7
update `register`set 
                `regtotal` = (`regattenscore` +`regMidScore` + `regFinalScore`)/3;
	
#8
update `register`set 
				`regGrade` = if (`regTotal` >= 90, 'A',
							 if	(`regTotal` >= 80, 'B',
							 if(`regTotal` >= 70, 'C',
							 if(`regTotal` >= 60, 'D', 'F'))));
                             

#9
select max(`regtotal`) as `가장 큰 점수`
from `register`;

select `regtotal` from `register` order by `regtotal` desc limit 1;

#10
select 
	avg(`regtotal`) as `총점의 평균`
from `register` as a
join `students` as b on a.stdno = b.stdno
where `stdname` = '정우성';








