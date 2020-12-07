create table batch_info (
batch_id int(11),
batch_time varchar(20),
course_id int(11)
)

create table course_list (
course_id 	int(11)	,
course_name	varchar(50),
course_synonym	varchar(10),
constraint course_info_pk primary key (course_id)
)
create table student_info (
std_roll		int(11)	,
reg_no			int(11)	,
course_id 		int(11),
first_name		varchar(30),
last_name		varchar(20),
father_name		varchar(50),
mother_name		varchar(50),
present_address		varchar(200),
permanent_address	varchar(200),
dob			date	,
religion		varchar(3),
sex			varchar(1),
nid			int(20),
emailid			varchar(60),
contact_no		varchar(17),
image			blob,
std_sl 			int(11),
academic_session	varchar(10),
batch			int(11),
constraint student_info_pk Primary key (std_sl),
constraint course_id_fk foreign key (course_id ) references course_list (course_id )
)
create table session_info (
session_id	int(11)	,
session		varchar(10),
session_name	varchar(50)
)
create table result_details (
std_sl 		int(11)	,
subject_id	int(11)	,
attendance	int(11)	,
quiz		int(11)	,
class_test	int(11)	,
lab		int(11)	,
mid	 	int(11)	,
final		int(11)	,
constraint std_sl_fk foreign key (std_sl) references student_info (std_sl)
)
create table subject_list (
subject_code 	int(11)	,
subject_name	varchar(100),
course_id	int(11),
constraint subject_list_pk primary key (subject_code),
constraint course_subject_fk foreign key (course_id) references course_list (course_id)
)
create table testimonial_info (
std_sl  	int(11),
apply_date	date,	
is_granted	varchar(1),
grant_date	date,
granted_by	varchar(30),
is_issued	varchar(1),
issued_by	varchar(30),
issue_date	date,
is_duplicate	varchar(1),
no_of_duplicate	int(11)	,
tmsl 		int(11),
constraint testimonial_info_pk primary key (tmsl),
constraint student_id_fk foreign key (std_sl) references student_info (std_sl)
)
create table user_info (
sl_no 		int(11),	
user_name 	varchar(60),	
passwd		varchar(1000),	
user_type	varchar(15),
std_sl		int(11),
constraint user_info_pk primary key (sl_no),
constraint student_user_fk foreign key (std_sl) references student_info (std_sl)
)