create database if not exists testdb;
use testdb;
create external table if not exists grades (
	_id string,
	student_id int,
	scores[0].type string,
	scores[1].type string,
	scores[2].type string,
	scores[3].type string,
	scores[0].score double,
	scores[1].score double,
	scores[2].score double,
	scores[3].score double,
	class_id int
)
row format delimited
fields terminated by ','
lines terminated by '\n'
stored as textfile location 'hdfs://namenode:8020/user/hive/warehouse/testdb.db/grades';



CREATE TABLE Grades (id string, sID int, typeZero string, typeOne string, typeTwo string, typeThree string, scoreZero double, scoreOne double, scoreTwo double, scoreThree double, classID int) row format delimited fields terminated by ',';
