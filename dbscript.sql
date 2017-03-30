/*
SQLyog - Free MySQL GUI v5.13
Host - 5.0.22-community-nt : Database - university
*********************************************************************
Server version : 5.0.22-community-nt
*/

SET NAMES utf8;

SET SQL_MODE='';
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `course_details` */

DROP TABLE IF EXISTS `course_details`;

CREATE TABLE `course_details` (
  `course_id` int(11) NOT NULL auto_increment,
  `course_name` varchar(30) default NULL,
  `status` varchar(10) default NULL,
  `course_code` varchar(20) default NULL,
  `type` varchar(50) default NULL,
  `capacity` int(11) default NULL,
  `dept_name` varchar(100) default NULL,
  `available` varchar(30) default NULL,
  `professor` varchar(40) default NULL,
  PRIMARY KEY  (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `course_details` */

insert into `course_details` (`course_id`,`course_name`,`status`,`course_code`,`type`,`capacity`,`dept_name`,`available`,`professor`) values (1,'Software Engineering','1','SE001','Graduate',35,'Computer Science','Fall','Yue Man lui');
insert into `course_details` (`course_id`,`course_name`,`status`,`course_code`,`type`,`capacity`,`dept_name`,`available`,`professor`) values (3,'Compiler Design','1','CD002','Graduate',30,'Computer Science','Fall','Wang');
insert into `course_details` (`course_id`,`course_name`,`status`,`course_code`,`type`,`capacity`,`dept_name`,`available`,`professor`) values (5,'Operating System','1','OS111','Graduate',45,'Computer Science','Fall','Bo li');
insert into `course_details` (`course_id`,`course_name`,`status`,`course_code`,`type`,`capacity`,`dept_name`,`available`,`professor`) values (6,'Compiler Design','1','CD004','Graduate',30,'Computer Science','Fall','Taibul');
insert into `course_details` (`course_id`,`course_name`,`status`,`course_code`,`type`,`capacity`,`dept_name`,`available`,`professor`) values (8,'Motors','1','M001','Graduate',50,'civil','Fall','Ross');
insert into `course_details` (`course_id`,`course_name`,`status`,`course_code`,`type`,`capacity`,`dept_name`,`available`,`professor`) values (9,'Mechanics','1','ME002','Graduate',30,'Civil','Fall','Chandler');
insert into `course_details` (`course_id`,`course_name`,`status`,`course_code`,`type`,`capacity`,`dept_name`,`available`,`professor`) values (10,'Robotics','1','M004','Graduate',35,'Civil','1','Monica');
insert into `course_details` (`course_id`,`course_name`,`status`,`course_code`,`type`,`capacity`,`dept_name`,`available`,`professor`) values (11,'Bilogoy','1','B00001','Under Graduate',40,'Pharmacy','Fall','Sunae shin');
insert into `course_details` (`course_id`,`course_name`,`status`,`course_code`,`type`,`capacity`,`dept_name`,`available`,`professor`) values (12,'Physics','1','B0002','Under Graduate',40,'Pharmacy','1','Yue man lui');

/*Table structure for table `enrollment_details` */

DROP TABLE IF EXISTS `enrollment_details`;

CREATE TABLE `enrollment_details` (
  `enroll_id` int(11) NOT NULL auto_increment,
  `student_id` int(11) default NULL,
  `course_id` int(11) default NULL,
  `status` varchar(10) default NULL,
  PRIMARY KEY  (`enroll_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `enrollment_details` */

insert into `enrollment_details` (`enroll_id`,`student_id`,`course_id`,`status`) values (14,1,8,'null');
insert into `enrollment_details` (`enroll_id`,`student_id`,`course_id`,`status`) values (15,3,9,'null');

/*Table structure for table `login_details` */

DROP TABLE IF EXISTS `login_details`;

CREATE TABLE `login_details` (
  `user_name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `last_login_date` date default NULL,
  `security_question` varchar(100) default NULL,
  `security_answer` varchar(50) default NULL,
  `user_type` varchar(20) default NULL,
  `student_id` int(11) default NULL,
  PRIMARY KEY  (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login_details` */

insert into `login_details` (`user_name`,`password`,`last_login_date`,`security_question`,`security_answer`,`user_type`,`student_id`) values ('admin','admin',NULL,'1','admin','admin',4);
insert into `login_details` (`user_name`,`password`,`last_login_date`,`security_question`,`security_answer`,`user_type`,`student_id`) values ('chandana','chandana','2016-10-08','1','dog','International',11);
insert into `login_details` (`user_name`,`password`,`last_login_date`,`security_question`,`security_answer`,`user_type`,`student_id`) values ('keerthi','student','2016-06-15','1','student','International',9);
insert into `login_details` (`user_name`,`password`,`last_login_date`,`security_question`,`security_answer`,`user_type`,`student_id`) values ('kiran','kiran','2015-12-12','1','student','International',6);
insert into `login_details` (`user_name`,`password`,`last_login_date`,`security_question`,`security_answer`,`user_type`,`student_id`) values ('shruthi','student','2015-12-11','1','student','Domestic',5);
insert into `login_details` (`user_name`,`password`,`last_login_date`,`security_question`,`security_answer`,`user_type`,`student_id`) values ('staff','staff','2016-11-28','1','student','staff',13);
insert into `login_details` (`user_name`,`password`,`last_login_date`,`security_question`,`security_answer`,`user_type`,`student_id`) values ('stud','stud','2016-11-28','1','student','student',12);
insert into `login_details` (`user_name`,`password`,`last_login_date`,`security_question`,`security_answer`,`user_type`,`student_id`) values ('student','student1',NULL,'1','student','International',1);
insert into `login_details` (`user_name`,`password`,`last_login_date`,`security_question`,`security_answer`,`user_type`,`student_id`) values ('student1','student1','2015-12-10','1','student','International',3);
insert into `login_details` (`user_name`,`password`,`last_login_date`,`security_question`,`security_answer`,`user_type`,`student_id`) values ('student12','student1','2016-06-15','1','student','Domestic',10);
insert into `login_details` (`user_name`,`password`,`last_login_date`,`security_question`,`security_answer`,`user_type`,`student_id`) values ('student5','student1','2015-12-12','1','student','Domestic',3);
insert into `login_details` (`user_name`,`password`,`last_login_date`,`security_question`,`security_answer`,`user_type`,`student_id`) values ('student6','student6','2015-12-12','1','student','Domestic',3);

/*Table structure for table `student_details` */

DROP TABLE IF EXISTS `student_details`;

CREATE TABLE `student_details` (
  `student_id` int(11) NOT NULL auto_increment,
  `first_name` varchar(30) default NULL,
  `middle_name` varchar(30) default NULL,
  `last_name` varchar(30) default NULL,
  `email_id` varchar(30) default NULL,
  `contact_no` varchar(20) default NULL,
  `status` varchar(20) default NULL,
  `dept_name` varchar(50) default NULL,
  PRIMARY KEY  (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `student_details` */

insert into `student_details` (`student_id`,`first_name`,`middle_name`,`last_name`,`email_id`,`contact_no`,`status`,`dept_name`) values (1,'udaya','kumara','c','ukc@gmail.com','5732021562','Approved','Computer Science');
insert into `student_details` (`student_id`,`first_name`,`middle_name`,`last_name`,`email_id`,`contact_no`,`status`,`dept_name`) values (3,'student1','student1','student','customer1@gmail.com','8121689601','Approved','Computer Science');
insert into `student_details` (`student_id`,`first_name`,`middle_name`,`last_name`,`email_id`,`contact_no`,`status`,`dept_name`) values (4,'admin','admin','admin','admin@gmail.com','888888888','Approved','na');
insert into `student_details` (`student_id`,`first_name`,`middle_name`,`last_name`,`email_id`,`contact_no`,`status`,`dept_name`) values (5,'shruthi','shruthi','bhosle','customer1@gmail.com','8121689601','Approved','Psychology');
insert into `student_details` (`student_id`,`first_name`,`middle_name`,`last_name`,`email_id`,`contact_no`,`status`,`dept_name`) values (6,'kiran','kiran','kiran','customer1@gmail.com','8121689601','Approved','Computer Science');
insert into `student_details` (`student_id`,`first_name`,`middle_name`,`last_name`,`email_id`,`contact_no`,`status`,`dept_name`) values (7,'student1','student1','student1','customer1@gmail.com','8121689601','Approved','Computer Science');
insert into `student_details` (`student_id`,`first_name`,`middle_name`,`last_name`,`email_id`,`contact_no`,`status`,`dept_name`) values (8,'student1','student1','student1','customer1@gmail.com','8121689601','Approved','Computer Science');
insert into `student_details` (`student_id`,`first_name`,`middle_name`,`last_name`,`email_id`,`contact_no`,`status`,`dept_name`) values (9,'keerthi','K','student','keerthi@gmail.com','5732021563','Approved','Computer Science');
insert into `student_details` (`student_id`,`first_name`,`middle_name`,`last_name`,`email_id`,`contact_no`,`status`,`dept_name`) values (10,'student12','student12','student12','customer1@gmail.com','8121689601','Approved','Computer Science');
insert into `student_details` (`student_id`,`first_name`,`middle_name`,`last_name`,`email_id`,`contact_no`,`status`,`dept_name`) values (11,'chandana','Reddy','Ammulu','fff','98989898989','Approved','Computer Science');
insert into `student_details` (`student_id`,`first_name`,`middle_name`,`last_name`,`email_id`,`contact_no`,`status`,`dept_name`) values (12,'stud','stud','stud','customer1@gmail.com','8121689601','Approved','Computer Science');
insert into `student_details` (`student_id`,`first_name`,`middle_name`,`last_name`,`email_id`,`contact_no`,`status`,`dept_name`) values (13,'sf','sfm','sfl','customer1@gmail.com','8121689601','Approved','Computer Science');

/*Table structure for table `ticket_details` */

DROP TABLE IF EXISTS `ticket_details`;

CREATE TABLE `ticket_details` (
  `enquiry_id` int(11) NOT NULL auto_increment,
  `name` varchar(50) default NULL,
  `email_id` varchar(50) default NULL,
  `message` varchar(1000) default NULL,
  `enquiry_date` date default NULL,
  `status` varchar(10) default NULL,
  `response` varchar(1000) default NULL,
  `service_type` varchar(50) default NULL,
  PRIMARY KEY  (`enquiry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ticket_details` */

insert into `ticket_details` (`enquiry_id`,`name`,`email_id`,`message`,`enquiry_date`,`status`,`response`,`service_type`) values (1,'student','usha123@gmail.com','helloooo','2015-12-10','Open','','1');
insert into `ticket_details` (`enquiry_id`,`name`,`email_id`,`message`,`enquiry_date`,`status`,`response`,`service_type`) values (2,'student','usha123@gmail.com','ccc','2015-12-11','open','null','1');
insert into `ticket_details` (`enquiry_id`,`name`,`email_id`,`message`,`enquiry_date`,`status`,`response`,`service_type`) values (3,'student','usha123@gmail.com','cgf','2015-12-11','Close','','2');
insert into `ticket_details` (`enquiry_id`,`name`,`email_id`,`message`,`enquiry_date`,`status`,`response`,`service_type`) values (4,'student','test@gmail.om','clarification','2015-12-11','Close','','2');
insert into `ticket_details` (`enquiry_id`,`name`,`email_id`,`message`,`enquiry_date`,`status`,`response`,`service_type`) values (5,'student','keer@gmail.com','Problemm with course enrollment','2016-06-15','Close','closed','1');
insert into `ticket_details` (`enquiry_id`,`name`,`email_id`,`message`,`enquiry_date`,`status`,`response`,`service_type`) values (6,'student1','test@gmail.om','test','2016-06-18','Close','tested','1');
insert into `ticket_details` (`enquiry_id`,`name`,`email_id`,`message`,`enquiry_date`,`status`,`response`,`service_type`) values (7,'chandana','chandana@gmail.com','Fall courses registration deadline','2016-10-08','open','null','1');
insert into `ticket_details` (`enquiry_id`,`name`,`email_id`,`message`,`enquiry_date`,`status`,`response`,`service_type`) values (8,'student','udaych.java@gmail.com','Seats not available.','2016-11-28','Close','Extra seats added in all classrooms','Class room issues');
insert into `ticket_details` (`enquiry_id`,`name`,`email_id`,`message`,`enquiry_date`,`status`,`response`,`service_type`) values (9,'uday','customer@gmail.com','Clarification on....','2016-11-28','open','null','Library Support');
insert into `ticket_details` (`enquiry_id`,`name`,`email_id`,`message`,`enquiry_date`,`status`,`response`,`service_type`) values (10,'stud','stud@gmail.com','no markers','2016-11-28','Close','Added markers','Class room issues');
insert into `ticket_details` (`enquiry_id`,`name`,`email_id`,`message`,`enquiry_date`,`status`,`response`,`service_type`) values (11,'stud','saikiran694@gmail.com','No additional books','2016-11-28','Close','Added new books','Library Support');

SET SQL_MODE=@OLD_SQL_MODE;