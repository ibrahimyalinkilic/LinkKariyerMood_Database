insert into AnnouncementSkill (SkillName,AnnouncementID,SkillLevel) values ('C#','1','İyi derece');
insert into AnnouncementSkill(SkillName,AnnouncementID,SkillLevel)  values ('MSSQL', '1' , ' Orta ');
insert into AnnouncementSkill(SkillName,AnnouncementID,SkillLevel)  values ('CCNA', '2' , ' Çok iyi ');
insert into AnnouncementSkill(SkillName,AnnouncementID,SkillLevel)  values ('Python', '3' , ' Orta ');
insert into AnnouncementSkill(SkillName,AnnouncementID,SkillLevel)  values ('Java','7','Çok iyi');

insert into EventJoin(UserID,EventID,JoinDate) values ('109234','1012','2020-2-03');
insert into EventJoin(UserID,EventID,JoinDate) values ('109239','1235','2020-3-03');
insert into EventJoin(UserID,EventID,JoinDate) values ('124570','1512','2020-4-03');
insert into EventJoin(UserID,EventID,JoinDate) values ('124577','7124','2020-5-03');
insert into EventJoin(UserID,EventID,JoinDate) values ('384212','9134','2020-12-03');
insert into EventJoin(UserID,EventID,JoinDate) values ('384213','9134','2020-11-03');
insert into EventJoin(UserID,EventID,JoinDate) values ('384213','1012','2020-10-03');

insert into UserSkill(SkillName,UserID,SkillLevel) values ('Python', '109234', 'İyi');
insert into UserSkill(SkillName,UserID,SkillLevel) values ('Java', '774195', 'Orta');
insert into UserSkill(SkillName,UserID,SkillLevel) values ('MSSQL', '124577', 'Çok iyi');
insert into UserSkill(SkillName,UserID,SkillLevel) values ('HTML', '384213', 'İyi');
insert into UserSkill(SkillName,UserID,SkillLevel) values ('C#', '863413', 'Orta');
insert into UserSkill(SkillName,UserID,SkillLevel) values ('CSS', '897524', 'İyi');

insert into Message(SenderID, ReceiverID, MessageText,MessageSendDate) values ('109234','109239','Selam','2010-3-03');
insert into Message(SenderID, ReceiverID, MessageText,MessageSendDate) values ('109234','124577','Merhaba.','2014-4-15');
insert into Message(SenderID, ReceiverID, MessageText,MessageSendDate) values ('124577','384213','Tamam','2011-2-2');
insert into Message(SenderID, ReceiverID, MessageText,MessageSendDate) values ('384213','109239','Nasılsın','2017-2-3');

insert into Cloc(CompanyID, PostCode, DistrictName) values ('14153','22000','1.Murat');
insert into Cloc(CompanyID, PostCode, DistrictName) values ('92562','22000','Saraçhane');
insert into Cloc(CompanyID, PostCode, DistrictName) values ('17820','35000','Bornova');
insert into Cloc(CompanyID, PostCode, DistrictName) values ('57816','34000','Beşiktaş');
insert into Cloc(CompanyID, PostCode, DistrictName) values ('21852','26000','OdunPazarı');
insert into Cloc(CompanyID, PostCode, DistrictName) values ('62143','34000','Mecidiyeköy');
insert into Cloc(CompanyID, PostCode, DistrictName) values ('33157','16000','Merkez');

insert into ApplyAnnouncement(UserID, AnnouncementID,ApplyDate) values ('109234','1','2011-2-11');
insert into ApplyAnnouncement(UserID, AnnouncementID,ApplyDate) values ('109239','2','2014-3-25');
insert into ApplyAnnouncement(UserID, AnnouncementID,ApplyDate) values ('124577','3','2018-5-15');
insert into ApplyAnnouncement(UserID, AnnouncementID,ApplyDate) values ('384213','7','2019-7-18');
insert into ApplyAnnouncement(UserID, AnnouncementID,ApplyDate) values ('124570','8','2018-6-15');

insert into WorksOn(UserID,CompanyID,Salary,Position,StartDate) values ('741097','14153','5000','Yönetici','2011-4-1');
insert into WorksOn(UserID,CompanyID,Salary,Position,StartDate) values ('863413','92562','6000','İşçi','2015-6-7');
insert into WorksOn(UserID,CompanyID,Salary,Position,StartDate) values ('897523','17820','8000','CEO','2014-1-2');
insert into WorksOn(UserID,CompanyID,Salary,Position,StartDate) values ('863418','57816','9000','Yazılımcı','2019-3-4');
insert into WorksOn(UserID,CompanyID,Salary,Position,StartDate) values ('946224','21852','4500','Tester','2010-5-4');
insert into WorksOn(UserID,CompanyID,Salary,Position,StartDate) values ('897524','62143','6500','Database Admin','2014-2-1');
insert into WorksOn(UserID,CompanyID,Salary,Position,StartDate) values ('541187','33157','9500','Network uzmanı','2017-4-5');

insert into AnnouncementCategory(AnnouncementID,CategoryName) values ('2','Database');
insert into AnnouncementCategory(AnnouncementID,CategoryName) values ('3','Testing');
insert into AnnouncementCategory(AnnouncementID,CategoryName) values ('7','Web');
insert into AnnouncementCategory(AnnouncementID,CategoryName) values ('8','Yazılım');
insert into AnnouncementCategory(AnnouncementID,CategoryName) values ('1','Network');

insert into GPost(UserID,GroupID,GPostContent,GPostTime) values ('946224','1','Merhabaaa',sysdate());
insert into GPost(UserID,GroupID,GPostContent,GPostTime) values ('741097','2','Güzelll',sysdate());
insert into GPost(UserID,GroupID,GPostContent,GPostTime) values ('541187','3','Yarın geleceğim',sysdate());
insert into GPost(UserID,GroupID,GPostContent,GPostTime) values ('897523','4','Karnım acıktı',sysdate());
insert into GPost(UserID,GroupID,GPostContent,GPostTime) values ('863413','5','Yemek ye o zaman',sysdate());
insert into GPost(UserID,GroupID,GPostContent,GPostTime) values ('897524','6','Yeriz bi ara',sysdate());

insert into Memberr(UserID,GroupID) values ('741097','1');
insert into Memberr(UserID,GroupID) values ('741097','2');
insert into Memberr(UserID,GroupID) values ('863413','3');
insert into Memberr(UserID,GroupID) values ('863418','7');
insert into Memberr(UserID,GroupID) values ('946224','8');
insert into Memberr(UserID,GroupID) values ('541187','1');

insert into Friend(AdderID,AddedID) values ('946224','741097');
insert into Friend(AdderID,AddedID) values ('741097','897524');
insert into Friend(AdderID,AddedID) values ('863413','946224');
insert into Friend(AdderID,AddedID) values ('897524','863413');
insert into Friend(AdderID,AddedID) values ('741097','863413');
insert into Friend(AdderID,AddedID) values ('863413','897523');



insert into Repeatt(UserID,PostID,Repeatt_Date) values ('741097','1','2019-04-04');
insert into Repeatt(UserID,PostID,Repeatt_Date) values ('863413','2','2019-04-12');
insert into Repeatt(UserID,PostID,Repeatt_Date) values ('863418','3','2018-11-11');
insert into Repeatt(UserID,PostID,Repeatt_Date) values ('946224','4','2014-04-01');
insert into Repeatt(UserID,PostID,Repeatt_Date) values ('541187','5','2011-01-23');
insert into Repeatt(UserID,PostID,Repeatt_Date) values ('897523','6','2019-11-11');

insert into Likee(UserID,PostID) values ('863413','2');
insert into Likee(UserID,PostID) values ('863418','3');
insert into Likee(UserID,PostID) values ('741097','1');
insert into Likee(UserID,PostID) values ('541187','5');
insert into Likee(UserID,PostID) values ('897523','4');
insert into Likee(UserID,PostID) values ('946224','9');

insert into Comment(UserID,PostID,CommentDate) values ('897523','3','2018-03-01');
insert into Comment(UserID,PostID,CommentDate) values ('946224','4','2011-05-7');
insert into Comment(UserID,PostID,CommentDate) values ('541187','5','2015-06-01');
insert into Comment(UserID,PostID,CommentDate) values ('741097','6','2013-11-11');
insert into Comment(UserID,PostID,CommentDate) values ('863418','7','2012-10-10');
insert into Comment(UserID,PostID,CommentDate) values ('863413','1','2008-03-03');

insert into Include(PostID,HashtagName) values ('1','algoritma');
insert into Include(PostID,HashtagName) values ('2','test');
insert into Include(PostID,HashtagName) values ('3','yazılım');
insert into Include(PostID,HashtagName) values ('4','veri madenciliği');
insert into Include(PostID,HashtagName) values ('5','yapay zeka');
insert into Include(PostID,HashtagName) values ('6','web tasarım');

insert into Follow(UserID,HashtagName) values ('897523','algoritma');
insert into Follow(UserID,HashtagName) values ('946224','test');
insert into Follow(UserID,HashtagName) values ('541187','yazılım');
insert into Follow(UserID,HashtagName) values ('741097','yapay zeka');
insert into Follow(UserID,HashtagName) values ('863418','web tasarım');
insert into Follow(UserID,HashtagName) values ('863413','test');

insert into ForumComment(UserID,ForumID,CommentText,FCommentDate) values ('897523','1','Ödev yüklendi','2008-03-03');
insert into ForumComment(UserID,ForumID,CommentText,FCommentDate) values ('946224','2','Ödev tarihi güncellendi','2012-10-10');
insert into ForumComment(UserID,ForumID,CommentText,FCommentDate) values ('541187','3','Burayı anlayamadım','2013-11-11');
insert into ForumComment(UserID,ForumID,CommentText,FCommentDate) values ('741097','4','Yarına kadar süreniz var','2015-06-01');
insert into ForumComment(UserID,ForumID,CommentText,FCommentDate) values ('863418','5','Merhaba','2018-03-03');
insert into ForumComment(UserID,ForumID,CommentText,FCommentDate) values ('863413','6','Ne zaman?','2015-06-01');

insert into Education(EducationStudentID,EducationTeacherID,EducationName,Price) values ('897523','946224','10 saatte java',30);
insert into Education(EducationStudentID,EducationTeacherID,EducationName,Price) values ('946224','897523','Hızlandırılmış Network',40);
insert into Education(EducationStudentID,EducationTeacherID,EducationName,Price) values ('863418','863413','MYSQL eğitim seti',20);
insert into Education(EducationStudentID,EducationTeacherID,EducationName,Price) values ('863413','741097','Python eğitim seti',35);
insert into Education(EducationStudentID,EducationTeacherID,EducationName,Price) values ('946224','863418','MSSQL eğitim seti',50);
insert into Education(EducationStudentID,EducationTeacherID,EducationName,Price) values ('741097','897523','20 saatte Python',100);

insert into Assisting(UserID,CourseID,AssistYear) values ('541186','1234','2019-01-01');
insert into Assisting(UserID,CourseID,AssistYear) values ('541187','1235','2019-01-01');
insert into Assisting(UserID,CourseID,AssistYear) values ('741097','1236','2019-01-01');
insert into Assisting(UserID,CourseID,AssistYear) values ('741097','1237','2019-01-01');
insert into Assisting(UserID,CourseID,AssistYear) values ('897523','1234','2019-01-01');
insert into Assisting(UserID,CourseID,AssistYear) values ('897524','1238','2019-01-01');

insert into CourseTaken(EducationTakerID,CourseID,Semester,ProjectGrade,MidtermGrade,FinaleGrade,LabGrade,EndGrade) values ('1234561','1234','1','100','50','60','70','70');
insert into CourseTaken(EducationTakerID,CourseID,Semester,ProjectGrade,MidtermGrade,FinaleGrade,LabGrade,EndGrade) values ('1234567','1235','2','40','40','40','40','40');
insert into CourseTaken(EducationTakerID,CourseID,Semester,ProjectGrade,MidtermGrade,FinaleGrade,LabGrade,EndGrade) values ('1234568','1236','3','50','60','70','80','65');
insert into CourseTaken(EducationTakerID,CourseID,Semester,ProjectGrade,MidtermGrade,FinaleGrade,LabGrade,EndGrade) values ('1234569','1237','6','80','80','80','80','80');
insert into CourseTaken(EducationTakerID,CourseID,Semester,ProjectGrade,MidtermGrade,FinaleGrade,LabGrade,EndGrade) values ('6212628','1238','5','10','0','0','20','15');
insert into CourseTaken(EducationTakerID,CourseID,Semester,ProjectGrade,MidtermGrade,FinaleGrade,LabGrade,EndGrade) values ('5432167','1239','1','60','60','60','60','60');

insert into study_at(UserID,UniversityName,FacultyName,StartDate,FinishDate) values ('863413','Ege Üniversitesi','Mühendislik','2014-02-02','2018-02-02');
insert into study_at(UserID,UniversityName,FacultyName,StartDate,FinishDate) values ('541186','Yaşar Üniversitesi','Tıp','2013-03-03','2017-03-03');
insert into study_at(UserID,UniversityName,FacultyName,StartDate,FinishDate) values ('541187','Trakya Üniversitesi','İletişim','2015-05-04','2019-05-04');
insert into study_at(UserID,UniversityName,FacultyName,StartDate) values ('741097','Ankara Üniversitesi','Hukuk','2015-06-07');
insert into study_at(UserID,UniversityName,FacultyName,StartDate,FinishDate) values ('897523','Ege Üniversitesi','Sağlık','2011-02-8','2016-02-8');
insert into study_at(UserID,UniversityName,FacultyName,StartDate) values ('897524','Sabancı Üniversitesi','Fen ve Edebiyat','2018-1-1');
insert into study_at(UserID,UniversityName,FacultyName,StartDate) values ('897524','Koç Üniversitesi','Fen ve Edebiyat','2017-05-12');

















