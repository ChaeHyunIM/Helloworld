use acedb;

 create table if not exists s(
	id int auto_increment primary key,
	name varchar(20),
    kor tinyint,
    eng tinyint,
    mat tinyint);    

insert into s(id, name, kor, eng, mat) values(101, '이순신',85,87,90);
insert into s(name, kor, eng, mat) values('강감찬',75,80,90);
insert into s(name, kor, eng, mat) values('한석봉',99,98,99);
insert into s(name, kor, eng, mat) values('황진이',35,45,20);
insert into s(name, kor, eng, mat) values('안중근',90,85,90);
insert into s(name, kor, eng, mat) values('박문수',95,98,96);
insert into s(name, kor, eng, mat) values('임꺽정',15,35,45);
insert into s(name, kor, eng, mat) values('김정호',90,95,80);
insert into s(name, kor, eng, mat) values('정몽주',90,90,95);
insert into s(name, kor, eng, mat) values('양주종',50,45,60);

desc s;
select count(*) from s;
select * from s;
delete * from s;
drop table s;

select name, eng from s;
select name, eng from s limit 5;
select name, eng from s limit 5, 3;
select name, eng from s order by name;
select name, eng from s order by name asc; -- 기본값
select name, eng from s order by name desc; -- 기본값
select name, eng, mat from s order by eng desc, mat asc;

select name as'이름', kor as '국어' from s;
select name as '이름', min(kor)as '국어' from s;
select max(kor), min(kor), sum(kor), avg(kor) from s;
select name, (kor+eng+mat) as '총점', (kor+eng+mat)/3.0 as '평균' from s;

show tables;
select * from s2;
desc s2;

create table s5(
	name char(20),
    total int,
    avg float);
    
insert into s5 select name, kor+eng+mat, (kor+eng+mat)/3.0 from s;
select * from s5;
delete from s5;
select * from s5 where avg between 80 and 90; -- 80<=avg<=90

select * from s5 where name = '이순신';
insert into s5(name) values('이몽룡');
insert into s5(name) values('이도');
select * from s5 where name like '이%';

select trim(' kkk ');
select '           kkk            '
