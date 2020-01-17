##### Sorgu-1   ####

SELECT user.UserFirstName,user.UserLastName,user.NotOrt
FROM user
WHERE NotOrt>(2.5);

#### Sorgu-2    ####

select *
from Announcement
where AnnouncementContent LIKE '%web%';

#### Sorgu-3    ####

select courseannouncement.CourseID,CAnnouncement
from courseannouncement
where courseID = '1234';

#### Sorgu-4   ####

select user.UserFirstName,message.MessageText
from message,user
where (senderid=109239 or senderid =109234) and (receiverid=109234 or receiverid=109239) and message.senderID = user.UserID
order by MessageSendDate;

#### Sorgu-5   ####

select course.CourseName
from course,university
where university.UniversityName = 'Ege Üniversitesi' and course.UniversityName = university.UniversityName;

#### Sorgu-6  ####

select announcement.*,CompanyName
from announcement,company
where company.companyname="yoveo" and company.CompanyID=announcement.ACompanyID;

#### Sorgu-7   ####

select user.userfirstname,post.*
from user,post
where post.postcreaterid = user.userid and user.userfirstname = 'Gisela';

#### Sorgu-8   ####

select user.UserFirstName,course.CourseName,course.UniversityName,coursetaken.ProjectGrade
from coursetaken,educationtaker,course,student,user
where course.UniversityName = 'Ege Üniversitesi' and course.CourseName = 'Database Management' and  educationtaker.EducationTakerID=coursetaken.EducationTakerID and course.CourseID=coursetaken.CourseID and educationtaker.educationtakerid = student.educationtakerid and student.userid=user.userid;


#### Sorgu-9    ####

select  user.userfirstname AS 'TeacherName',  course.UniversityName
from course,teacher,user
where course.teacherID = teacher.userID and teacher.userID = user.userID
group by teacherID,universityname
having count(*)>1;

#### Sorgu-10    ####

select user.userfirstname, city.cityname, district.districtname
from user,city,district
where user.postcode = city.postcode and city.cityname = 'İzmir' and district.districtname='Bornova';


#### Sorgu-11    ####

DELIMITER //
create function check_event_going (id char(6), event char(4))
returns text
DETERMINISTIC
BEGIN
if ((select COUNT(*) from eventjoin where userid = id and eventid = event) = 1) 
then
return "Etkinliğe gidiyor.";
else
return "Etkinliğe gitmiyor.";

end if;
End//

SELECT check_event_going("109234","1012");
SELECT check_event_going("109234","9134");

#### Sorgu-12    ####

select user.userfirstname,study_at.Universityname as 'ÇALIŞTIĞI OKUL',instructor.universityname as 'OKUDUĞU OKUL'
from user,study_at,teacher,instructor
where user.userID =study_at.userID and user.userID = teacher.userID and teacher.instructorID = instructor.InstructorID and study_at.Universityname = instructor.Universityname

#### Sorgu-13    ####

select user.userfirstname AS "Hem eğitmen hem öğrenci olan kişilerin isimleri"
from education as e,education as s,user
where e.educationTeacherID = s.educationstudentID and user.UserID = s.EducationstudentID

#### Sorgu-14    ####

SELECT companyName AS 'İlan vermeyen şirketler' FROM company WHERE NOT EXISTS
(SELECT * FROM announcement   WHERE announcement.AcompanyID = company.companyid )

#### Sorgu-15    ####

select user.userfirstname,post.postID
from user LEFT JOIN
post  ON post.postcreaterid= user.userID WHERE user.usertype='S' and user.gender = 'F'
