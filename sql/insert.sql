/*
INSERT(데이터 삽입)
INSERT INTO 테이블명(컬럼1, 컬럼2, ...) VALUES(컬럼1 데이터, 컬럼2데이터, ...)
*/
select * from student_tb;

INSERT INTO db_study.student_tb(student_name, student_age) values('제다정', 25);
insert into student_tb values('제다이',26);
insert into student_tb(student_age) values(27);		# Null 값을 넣을 수 있는 컬럼만 생략가능하다
insert into student_tb(student_age, student_name) values(28, '제다사');

/* 
여러줄 데이터 삽입
INSERT INTO 테이블명(컬럼1, 컬럼2, ...) VALUES('data1', 'data2), ('data3', 'data4');
*/
insert into student_tb values('제다오',25),('제다육',26);

INSERT INTO study_class_tb
VALUES
('JAVA 기초',150000,'김민수',22),
('Python 웹개발',200000,'이서연',24),
('React 입문',180000,'박지훈',21),
('Spring Boot 실전',250000,'최유진',23),
('SQL 마스터',130000,'정예은',26),
('JavaScript 중급',170000,'홍길동',20),
('HTML/CSS 디자인',120000,'신유나',19),
('데이터 분석 입문',210000,'김도윤',25),
('Node.js 백엔드', 230000, '오하늘',22),
('Flutter 웹개발', 240000, '배수현',27);

Select * from study_class_tb;

INSERT INTO study_class_tb
VALUES
('JAVA 기초',150000,'김민수',22),
('Python 웹개발',200000,'김민수',22),
('React 입문',180000,'김민수',22),
('Spring Boot 실전',250000,'최유진',23),
('SQL 마스터',130000,'최유진',23),
('JavaScript 중급',170000,'최유진',23),
('HTML/CSS 디자인',120000,'신유나',19),
('데이터 분석 입문',210000,'신유나',19),
('Node.js 백엔드', 230000, '신유나',19),
('Flutter 웹개발', 240000, '배수현',27);

INSERT into class_tb
values(default, 'python', 20000);

insert into student_tb
values
(default,'김민수',22),
(default,'이서연',24),
(default,'박지훈',21),
(default,'최유진',23),
(default,'정예은',26),
(default,'홍길동',20),
(default,'신유나',19),
(default,'김도윤',25),
(default,'오하늘',22),
(default,'배수현',27);

select * from student_tb;
