create schema database_proje;
use database_proje;
create table USER (
UserID CHAR(6) NOT NULL,
UserFirstName VARCHAR(20) NOT NULL,
UserLastName VARCHAR(20) NOT NULL,
Gender ENUM("F","M"),
PhoneNumber CHAR(11),
E_mail VARCHAR(30),
BirthDate DATE,
PostCode CHAR(5),
TeamID CHAR(3),
NotOrt FLOAT,
UserType Enum("S","G","T","A"),
ArrivalDate datetime,

CONSTRAINT USERPK PRIMARY KEY (UserID),
CONSTRAINT NOT_ORT CHECK (NotOrt<4)	

);

ALTER TABLE USER
ADD CONSTRAINT USERPOSTCODEFK FOREIGN KEY (PostCode) REFERENCES DISTRICT(PostCode) ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE USER
ADD CONSTRAINT USERTEAMFK FOREIGN KEY (TeamID) REFERENCES TEAM(TeamID) ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE user
DROP E_MAIL ;

ALTER TABLE user
ADD E_Mail varchar(30) unique AFTER PhoneNumber;

create table PROFILE (
ProfileID int NOT NULL AUTO_INCREMENT,
PUserID CHAR(6) NOT NULL,

CONSTRAINT PROFILEPK PRIMARY KEY (ProfileID),
CONSTRAINT PROFILEFK FOREIGN KEY(PUserID) REFERENCES USER (UserID) ON DELETE CASCADE ON UPDATE CASCADE
);

create table EVENT(
EventID char(4) not null,
EventName varchar(20) not null,
EventDate date not null,
EventLocation varchar(20) not null,
EUserID char(6),

CONSTRAINT EVENTPK PRIMARY KEY (EventID),
CONSTRAINT EVENTFK FOREIGN KEY(EUserID) REFERENCES USER (UserID) ON DELETE SET NULL ON UPDATE CASCADE

);

create table SKILL (
SkillName varchar(20) NOT NULL ,
SkillType VARCHAR(20),

CONSTRAINT PROFILEPK PRIMARY KEY (SkillName)

);
create table CITY (
PostCode CHAR(5) NOT NULL ,
CityName varchar(20) NOT NULL,

CONSTRAINT PROFILEPK PRIMARY KEY (PostCode)

);



create table CATEGORY (
CategoryName varchar(15) NOT NULL,

CONSTRAINT CATEGORYPK PRIMARY KEY(CategoryName)
);

create table COMPANY (
CompanyID char(5) NOT NULL,
CompanyName VARCHAR(20) NOT NULL,
CompanyPhoneNumber char(11),
Sector varchar(20),
Comp_Description TEXT,
CompEmployees INT,
CompWebSite VARCHAR(30),

CONSTRAINT COMPANYPK PRIMARY KEY(CompanyID)
);

create table GROUPP (
GroupID char(4) NOT NULL,
GroupName varchar(15) NOT NULL,
CreatorID char(6) NOT NULL,

CONSTRAINT GROUPPPK PRIMARY KEY(GroupID),
CONSTRAINT GROUPPFK FOREIGN KEY(CreatorID) REFERENCES USER(UserID) ON DELETE CASCADE ON UPDATE CASCADE);

create table ANNOUNCEMENT (
AnnouncementID CHAR(5) NOT NULL,
AnnouncementDate date NOT NULL,
AnnouncementTitle varchar(20) NOT NULL,
AnnouncementContent text NOT NULL,
ACompanyID char(5),

CONSTRAINT ANNOUNCEMENTPK PRIMARY KEY(AnnouncementID),
CONSTRAINT ANNOUNCEMENTFK FOREIGN KEY(ACompanyID) REFERENCES COMPANY(CompanyID) ON DELETE SET NULL ON UPDATE CASCADE
);

create table POST (
PostID char(3) NOT NULL,
PostContent text not null,
DateTime date not null,
PostCreaterID char(6) not null,

CONSTRAINT POSTPK PRIMARY KEY(PostID),
CONSTRAINT POSTFK FOREIGN KEY(PostCreaterID) REFERENCES USER(UserID) ON DELETE CASCADE ON UPDATE CASCADE
);


create table HASHTAG(
HashtagName varchar(20) NOT NULL,

CONSTRAINT HashtagPK PRIMARY KEY(HashtagName)
);


create table COURSEFORUM(
ForumID char(3) NOT NULL,
FCourseID char(4) NOT NULL,

CONSTRAINT CourseForumPK PRIMARY KEY(ForumID),
CONSTRAINT CourseForumFK FOREIGN KEY (FCourseID) REFERENCES COURSE(CourseID) ON DELETE CASCADE ON UPDATE CASCADE
);

create table COURSE(
CourseID char(4) not null,
CourseName varchar(30) not null,
Credit int not null,
CourseTime int not null,
Semester int not null,
TeacherID char(6),
UniversityName varchar(30) NOT NULL,

CONSTRAINT CoursePK PRIMARY KEY(CourseID),
CONSTRAINT COURSEUNIVERSITYFK FOREIGN KEY ( UniversityName) REFERENCES UNIVERSITY(UniversityName) ON DELETE CASCADE ON UPDATE CASCADE
);


ALTER TABLE COURSE 
ADD CONSTRAINT COURSETEACHERFK FOREIGN KEY ( TeacherID ) REFERENCES TEACHER (UserID) ON DELETE SET NULL ON UPDATE CASCADE;

create table UNIVERSITY (
UniversityName varchar(30) NOT NULL,
City varchar(30) NOT NULL,
Foundation_year DATE,
School_type varchar(10),

CONSTRAINT UniversityPK PRIMARY KEY(UniversityName)
);



create table Team(
TeamID char(3) not null,
TeamName varchar(20) not null,
CreateDate date not null,
TeamField varchar(30) not null,
ManagerID char(6),

CONSTRAINT TeamPK PRIMARY KEY(TeamID),
CONSTRAINT TeamFK FOREIGN KEY(ManagerID) REFERENCES USER (UserID) ON DELETE SET NULL ON UPDATE CASCADE
);

create table District(
PostCode char(5) not null,
DistrictName varchar(20) not null,

CONSTRAINT DistrictPK PRIMARY KEY(PostCode,DistrictName),
CONSTRAINT DistrictFK FOREIGN KEY (PostCode) REFERENCES CITY(PostCode) ON DELETE CASCADE ON UPDATE CASCADE

);

create table CourseAnnouncement(
CourseID char(4) not null,
CAnnouncementID char(3) not null,
CAnnouncement text not null,
CADate date not null,

CONSTRAINT CourseAnnouncementPK PRIMARY KEY(CourseID,CAnnouncementID),
CONSTRAINT CourseAnnouncementFK FOREIGN KEY(CourseID) REFERENCES course(CourseID) ON DELETE CASCADE ON UPDATE CASCADE
);

create table EducationTaker(
EducationTakerID char(7) not null,

CONSTRAINT EducationTakerPK PRIMARY KEY (EducationTakerID)

);

create table Instructor(
InstructorID char(8) not null,
UniversityName varchar(30),

CONSTRAINT INSTRUCTORPK PRIMARY KEY (InstructorID),
CONSTRAINT INSTRUCTORFK FOREIGN KEY (UniversityName) REFERENCES University(UniversityName) ON DELETE SET NULL ON UPDATE CASCADE
);

create table Graduated(
UserID char(6) not null,
ThesisTopic text,
GraduateDegree varchar(30),
EducationTakerID char(7),
Created_date date,

CONSTRAINT GRADUATEDPK PRIMARY KEY (UserID),
CONSTRAINT GRADUATEDFK FOREIGN KEY ( UserID) REFERENCES User(UserID) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT GRADUATEDFK2 FOREIGN KEY (EducationTakerID) REFERENCES EducationTaker(EducationTakerID) ON DELETE SET NULL ON UPDATE CASCADE);




create table Student(
UserID char(6) not null,
Semester int,
StudentStartDate date,
EducationTakerID char(7),

CONSTRAINT STUDENTPK PRIMARY KEY (UserID),
CONSTRAINT STUDENTFK FOREIGN KEY (UserID) REFERENCES User(UserID) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT STUDENTFK2 FOREIGN KEY (EducationTakerID) REFERENCES EducationTaker(EducationTakerID) ON DELETE SET NULL ON UPDATE CASCADE);

create table Assistant(
UserID char(6) not null,
WorkField varchar(50),
InstructorID char(8),

CONSTRAINT AssistantPK PRIMARY KEY (UserID),
CONSTRAINT AssistantFK FOREIGN KEY ( UserID) REFERENCES User(UserID) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT AssistantFK2 FOREIGN KEY (InstructorID) REFERENCES instructor(InstructorID) ON DELETE SET NULL ON UPDATE CASCADE);

create table Teacher(
UserID char(6) not null,
UniversityDegree varchar(30),
InstructorID char(8),

CONSTRAINT TeacherPK PRIMARY KEY (UserID),
CONSTRAINT TeacherFK FOREIGN KEY ( UserID) REFERENCES User(UserID) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT TeacherFK2 FOREIGN KEY (InstructorID) REFERENCES instructor(InstructorID) ON DELETE SET NULL ON UPDATE CASCADE);

ALTER TABLE Student
add Created_date date;


ALTER TABLE Teacher
add Created_date date;


ALTER TABLE Assistant
add Created_date date;





create Table AnnouncementSkill(
SkillName varchar(20) not null,
AnnouncementID char(5) not null,
SkillLevel varchar(10),

Constraint AnnouncementSkillPK PRIMARY KEY (SkillName, AnnouncementID),
Constraint AnnouncementSkillFK FOREIGN KEY (SkillName) REFERENCES Skill(SkillName) ON DELETE CASCADE ON UPDATE CASCADE,
Constraint AnnouncementSkillFK2 FOREIGN KEY (AnnouncementID) REFERENCES Announcement(AnnouncementID) ON DELETE CASCADE ON UPDATE CASCADE
);

create Table EventJoin(
UserID char(6) not null,
EventID char(4) not null,
JoinDate date not null,

Constraint EventJoinPK PRIMARY KEY (UserID,EventID),
Constraint EventJoinFK FOREIGN KEY (UserID) REFERENCES User(UserID) ON DELETE CASCADE ON UPDATE CASCADE,
Constraint EventJoinFK2 FOREIGN KEY (EventID) REFERENCES Event(EventID) ON DELETE CASCADE ON UPDATE CASCADE
);

create table UserSkill(
SkillName varchar(20) not null,
UserID char(6) not null,
SkillLevel varchar(10),

Constraint UserSkillPK PRIMARY KEY (SkillName, UserID),
Constraint UserSkillFK FOREIGN KEY (SkillName) REFERENCES Skill(SkillName) ON DELETE CASCADE ON UPDATE CASCADE,
Constraint UserSkillFK2 FOREIGN KEY (UserID) REFERENCES User(UserID) ON DELETE CASCADE ON UPDATE CASCADE
);

create table Message(
SenderID char(6) not null,
ReceiverID char(6) not null,
MessageText text not null,
MessageSendDate date not null,

Constraint MessagePK PRIMARY KEY (SenderID, ReceiverID, MessageSendDate),
Constraint MessageFK FOREIGN KEY (SenderID) REFERENCES User(UserID) ON DELETE CASCADE ON UPDATE CASCADE,
Constraint MessageFK2 FOREIGN KEY (ReceiverID) REFERENCES User(UserID) ON DELETE CASCADE ON UPDATE CASCADE

);


create Table CLoc(
CompanyID char(5) not null,
PostCode char(5) not null,
DistrictName varchar(20) not null,

Constraint CLocPK PRIMARY KEY (CompanyID, PostCode, DistrictName),
Constraint ClocFK FOREIGN KEY (CompanyID) REFERENCES Company(CompanyID) ON DELETE CASCADE ON UPDATE CASCADE,
Constraint ClocFK2 FOREIGN KEY (PostCode) REFERENCES District(PostCode) ON DELETE CASCADE ON UPDATE CASCADE);

create table ApplyAnnouncement(
UserID char(6) not null,
AnnouncementID char(5) not null,
ApplyDate date not null,

Constraint ApplyAnnouncementPK PRIMARY KEY (UserID, AnnouncementID),
Constraint ApplyAnnouncementFK FOREIGN KEY (UserID) REFERENCES User(UserID) ON DELETE CASCADE ON UPDATE CASCADE,
Constraint ApplyAnnouncementFK2 FOREIGN KEY (AnnouncementID) REFERENCES Announcement(AnnouncementID) ON DELETE CASCADE ON UPDATE CASCADE);

create table WorksOn(
UserID char(6) not null,
CompanyID char(5) not null,
Salary int,
Position varchar(30),
StartDate date not null,

Constraint WorksOnPK PRIMARY KEY (UserID,CompanyID,StartDate),
Constraint WorksOnFK FOREIGN KEY (UserID) REFERENCES USER(UserID) ON DELETE CASCADE ON UPDATE CASCADE,
Constraint WorksOnFK2 FOREIGN KEY (CompanyID) REFERENCES Company(CompanyID) ON DELETE CASCADE ON UPDATE CASCADE);

create table AnnouncementCategory(
AnnouncementID char(5) not null,
CategoryName varchar(15) not null,

Constraint AnnouncementCategoryPK PRIMARY KEY (AnnouncementID,CategoryName),
Constraint AnnouncementCategoryFK FOREIGN KEY (AnnouncementID) REFERENCES Announcement(AnnouncementID) ON DELETE CASCADE ON UPDATE CASCADE,
Constraint AnnouncementCategoryFK2 FOREIGN KEY (CategoryName) REFERENCES Category(CategoryName) ON DELETE CASCADE ON UPDATE CASCADE);



create table GPost (
UserID char(6) not null,
GroupID char(4) not null,
GPostContent text not null,
GPostTime datetime not null,

CONSTRAINT GPostPK PRIMARY KEY  (UserID,GroupID,GPostTime),
CONSTRAINT GPostFK FOREIGN KEY (UserID) REFERENCES User(UserID) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT GPostFK2 FOREIGN KEY (GroupID) REFERENCES Groupp(GroupID) ON DELETE CASCADE ON UPDATE CASCADE
);

create table Memberr(
UserID char(6) not null,
GroupID char(4) not null,

CONSTRAINT MemberPK PRIMARY KEY  (UserID,GroupID),
CONSTRAINT MemberFK FOREIGN KEY (UserID) REFERENCES User(UserID) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT MemberFK2 FOREIGN KEY (GroupID) REFERENCES Groupp(GroupID) ON DELETE CASCADE ON UPDATE CASCADE
);

create table Friend(
AdderID char(6) not null,
AddedID char(6) not null,

CONSTRAINT FriendPK PRIMARY KEY  (AdderID,AddedID),
CONSTRAINT FriendFK FOREIGN KEY (AdderID) REFERENCES User(UserID) ON DELETE CASCADE ON UPDATE NO ACTION,
CONSTRAINT FriendFK2 FOREIGN KEY (AddedID) REFERENCES User(UserID)  ON DELETE CASCADE ON UPDATE NO ACTION
);




create table Repeatt(
UserID char(6) not null,
PostID char(3) not null,
Repeatt_Date date not null,

CONSTRAINT RepeattPK PRIMARY KEY  (UserID,PostID,Repeatt_Date),
CONSTRAINT RepeattFK FOREIGN KEY (UserID) REFERENCES User(UserID) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT RepeattFK2 FOREIGN KEY (PostID) REFERENCES Post(PostID) ON DELETE CASCADE ON UPDATE CASCADE
);

create table Likee(
UserID char(6) not null,
PostID char(3) not null,

CONSTRAINT LikePK PRIMARY KEY  (UserID,PostID),
CONSTRAINT LikeFK FOREIGN KEY (UserID) REFERENCES User(UserID) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT LikeFK2 FOREIGN KEY (PostID) REFERENCES Post(PostID) ON DELETE CASCADE ON UPDATE CASCADE
);

create table Comment(
UserID char(6) not null,
PostID char(3) not null,
CommentDate date not null,

CONSTRAINT CommentPK PRIMARY KEY  (UserID,PostID,CommentDate),
CONSTRAINT CommentFK FOREIGN KEY (UserID) REFERENCES User(UserID) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT CommentFK2 FOREIGN KEY (PostID) REFERENCES Post(PostID) ON DELETE CASCADE ON UPDATE CASCADE
);
alter table Comment
add CommentText text not null;

create table Include(
PostID char(3) not null,
HashtagName varchar(20) not null,

CONSTRAINT IncludePK PRIMARY KEY  (PostID,HashtagName),
CONSTRAINT IncludeFK FOREIGN KEY (PostID) REFERENCES Post(PostID) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT IncludeFK2 FOREIGN KEY (HashtagName) REFERENCES Hashtag(HashtagName) ON DELETE CASCADE ON UPDATE CASCADE
);

create table Follow(
UserID char(6) not null,
HashtagName varchar(20) not null,

CONSTRAINT FollowPK PRIMARY KEY  (UserID,HashtagName),
CONSTRAINT FollowFK FOREIGN KEY (UserID) REFERENCES User(UserID) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT FollowFK2 FOREIGN KEY (HashtagName) REFERENCES Hashtag(HashtagName) ON DELETE CASCADE ON UPDATE CASCADE
);

create table ForumComment(
UserID char(6) not null,
ForumID char(3) not null,
CommentText text,
FCommentDate date not null,

CONSTRAINT ForumCommentPK PRIMARY KEY  (UserID,ForumID,FCommentDate),
CONSTRAINT ForumCommentFK FOREIGN KEY (UserID) REFERENCES User(UserID) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT ForumCommentFK2 FOREIGN KEY (ForumID) REFERENCES courseforum(ForumID) ON DELETE CASCADE ON UPDATE CASCADE
);



create table Education(
EducationStudentID char(6) not null,
EducationTeacherID char(6) not null,
EducationName varchar(40) not null,
Price int default 0,

CONSTRAINT EducationPK PRIMARY KEY  (EducationStudentID,EducationTeacherID,EducationName),
CONSTRAINT EducationFK FOREIGN KEY (EducationStudentID) REFERENCES User(UserID) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT EducationFK2 FOREIGN KEY (EducationTeacherID) REFERENCES User(UserID) ON DELETE CASCADE ON UPDATE CASCADE
);

create table Assisting(
UserID char(6) not null,
CourseID char(4) not null,
AssistYear date ,

CONSTRAINT AssistingPK PRIMARY KEY  (UserID,CourseID,AssistYear),
CONSTRAINT AssistingFK FOREIGN KEY (UserID) REFERENCES User(UserID) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT AssistingFK2 FOREIGN KEY (CourseID) REFERENCES Course(CourseID) ON DELETE CASCADE ON UPDATE CASCADE

);

create table CourseTaken(
EducationTakerID char(7) not null,
CourseID char(4) not null,
Semester int not null,
ProjectGrade int ,
MidtermGrade int,
FinaleGrade int,
LabGrade int,
EndGrade int,

CONSTRAINT CourseTakenPK PRIMARY KEY  (EducationTakerID,CourseID,Semester),
CONSTRAINT CourseTakenFK FOREIGN KEY (EducationTakerID) REFERENCES educationtaker(EducationTakerID) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT CourseTakenFK2 FOREIGN KEY (CourseID) REFERENCES Course(CourseID) ON DELETE CASCADE ON UPDATE CASCADE
);

create table study_at(
UserID char(6) not null,
UniversityName varchar(30) not null,
FacultyName varchar(30) not null,
StartDate date not null,
FinishDate date,

CONSTRAINT study_atPK PRIMARY KEY  (UserID,UniversityName,FacultyName),
CONSTRAINT study_atFK FOREIGN KEY (UserID) REFERENCES User(UserID) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT study_atFK2 FOREIGN KEY (UniversityName) REFERENCES University(UniversityName) ON DELETE CASCADE ON UPDATE CASCADE


);


