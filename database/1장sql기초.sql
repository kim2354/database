#날짜 :2023/06/14
#이름 : 김철학
#내용 : 1장 SQL기초

#실습 1-1
CREATE DATABASE `UserDB`;

#실습 1-2
CREATE TABLE `User1`(
`uid`  VARCHAR(20),
`name` VARCHAR(10),
`hp`  CHAR (13),
`age` TINYINT 
);
DROP TABLE `Uesr1`;
#실습 1-3
INSERT INTO `User1`VALUES('A101','김유신','01012341001','24');
INSERT INTO `User1`VALUES('A102','김춘추','01012341002','25');
INSERT INTO `User1`VALUES('A103','장보고','01012341003','26');
INSERT INTO `User1`VALUES('A104','강감찬','01012341004','27');
INSERT INTO `User1`VALUES('A105','이순신','01012341005','28');
INSERT INTO `User1`SET `uid`= `A100`, `name`=`이순신`,`hp`='010-1243-6789';
#실습 1-4
SELECT * FROM `User1`;
SELECT * FROM `User1` where `UID`='A101';
SELECT * FROM `User1` where `name`='최유신';
SELECT * FROM `USER1` where `AGE` < 30;
SELECT * FROM `USER1` where `AGE`>=30;
SELECT `UID`,`NAME`,`AGE`FROM `USER1`;

#실습 1-5
UPDATE `User1` SET `hp`='010-1234-4444' WHERE `uid`='A104';
UPDATE `User1` SET `age`=51 WHERE `uid`='A105';
UPDATE `User1` SET `hp`='010-1234-1001', `age`=27 WHERE `uid`='A101';
#실습 1-6
delete FROM `user1` where `uid` = 'a101';
DELETE FROM `User1` WHERE `uid`='A102' AND `age`=25;
delete FROM `user1` where `age` >= 30;
#실습 1-7
create table `tblproduct`(
`prdcode` int,
`prdname` varchar(10),
`prdprice` int,
`prdamount` int,
`prdcompany` varchar(10),
`prdmakedate` date
);
create table `tbliser`(
`userid` varchar(10),
`username` varchar(10),
`userhp` char(13),
`userage` tinyint,
`useraddr` varchar(30)
);

#실습 1-8
insert into `tbiuser` values ('a101','김유신','01012341001','25','서울시 중구');
insert into `tbiuser` values ('a102','김춘추','01012341002','26','인천 부평');
insert into `tbiuser` values ('a103','장보고','01012341003','27','경북 칠곡');
insert into `tbiuser` values ('a104','강감찬','01012341004','28','전남 여수');
insert into `tbiuser` values ('a105','이순신','01012341005','29','부산 연제구');
insert into `tbiuser` set
                         `user id` = 'p101' 
                         `user name`='김유신'
                         `user hp`= '01012341001'
                         `userage` = '25'
                         `user addr` = '서울시 중구'
                         
#실습 1-9
