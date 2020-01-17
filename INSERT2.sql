insert into event (EventID, EventName, EventDate, EventLocation, EUserID) values (1235, 'Tempsoft', '2021/02/20', 'İzmir', 124570);
insert into event (EventID, EventName, EventDate, EventLocation, EUserID) values (1512, 'Solarbreeze', '2021/06/14', 'Paris', 109239);
insert into event (EventID, EventName, EventDate, EventLocation, EUserID) values (3143, 'Tin', '2020/11/03', 'Ankara', 774195);
insert into event (EventID, EventName, EventDate, EventLocation, EUserID) values (4123, 'Konklux', '2020/01/27', 'Lancar', 541186);
insert into event (EventID, EventName, EventDate, EventLocation, EUserID) values (5215, 'Bitchip', '2020/07/12', 'Maisons-Alfort', 124570);
insert into event (EventID, EventName, EventDate, EventLocation, EUserID) values (6631, 'Aerified', '2020/07/17', 'Londra', 109239);
insert into event (EventID, EventName, EventDate, EventLocation, EUserID) values (7124, 'Zontrax', '2020/08/27', 'Lianghe', 774195);
insert into event (EventID, EventName, EventDate, EventLocation, EUserID) values (8743, 'Alpha', '2020/06/23', 'İstanbul', 124570);
insert into event (EventID, EventName, EventDate, EventLocation, EUserID) values (9134, 'Asoka', '2020/09/23', 'Artsvaberd', 774195);
insert into event (EventID, EventName, EventDate, EventLocation, EUserID) values (1012, 'Sonair', '2020/03/03', 'Wan Yai', 109239);

insert into Skill (SkillName, SkillType) values ("Python", "Yazılım");
insert into Skill (SkillName, SkillType) values ("Java", "Yazılım");
insert into Skill (SkillName, SkillType) values ("C#", "Yazılım");
insert into Skill (SkillName, SkillType) values ("HTML", "Web");
insert into Skill (SkillName, SkillType) values ("MYSQL", "Database");
insert into Skill (SkillName, SkillType) values ("MSSQL", "Database");
insert into Skill (SkillName, SkillType) values ("CSS", "Web");
insert into Skill (SkillName, SkillType) values ("JS", "Web");
insert into Skill (SkillName, SkillType) values ("CCNA", "Network");
insert into Skill (SkillName, SkillType) values ("CCNP", "Network");

insert into Category(CategoryName) values ("Yazılım");
insert into Category(CategoryName) values ("Network");
insert into Category(CategoryName) values ("Database");
insert into Category(CategoryName) values ("Web");
insert into Category(CategoryName) values ("Testing");
insert into Category(CategoryName) values ("İş analisti");
insert into Category(CategoryName) values ("Yapay Zeka");
insert into Category(CategoryName) values ("Derin Öğrenme");


insert into COMPANY (CompanyID, CompanyName, CompanyPhoneNumber, Sector, Comp_Description, CompEmployees, CompWebSite) values (14153, 'Bubbletube', '56831587281', 'Health Care', 'Medicine is good.', 1254, 'Bubbletube.com');
insert into COMPANY (CompanyID, CompanyName, CompanyPhoneNumber, Sector, Comp_Description, CompEmployees, CompWebSite) values (21852, 'Yoveo', '92743616358', 'Consumer Services', 'Call us.', 9241, 'Yoveo.com');
insert into COMPANY (CompanyID, CompanyName, CompanyPhoneNumber, Sector, Comp_Description, CompEmployees, CompWebSite) values (62143, 'Yozio', '36955025428', 'Consumer Services', 'We Call You.', 1166, 'Yozio.com');
insert into COMPANY (CompanyID, CompanyName, CompanyPhoneNumber, Sector, Comp_Description, CompEmployees, CompWebSite) values (47852, 'Fivechat', '27341213411', 'n/a', 'Maroon', 'We are good.','114', 'Fivechat.com');
insert into COMPANY (CompanyID, CompanyName, CompanyPhoneNumber, Sector, Comp_Description, CompEmployees, CompWebSite) values (46285, 'Twitterbeat', '19870334907', 'Technology', 'Technology Giant', 110252, 'Twitterbeat.com');
insert into COMPANY (CompanyID, CompanyName, CompanyPhoneNumber, Sector, Comp_Description, CompEmployees, CompWebSite) values (57816, 'Rhybox', '97620145292', 'Consumer Services', 'We are the best', 11008, 'Rhybox.com');
insert into COMPANY (CompanyID, CompanyName, CompanyPhoneNumber, Sector, Comp_Description, CompEmployees, CompWebSite) values (33157, 'Tagpad', '31761003240', 'Finance', 'Money money money', 10451, 'Tagpad.com');
insert into COMPANY (CompanyID, CompanyName, CompanyPhoneNumber, Sector, Comp_Description, CompEmployees, CompWebSite) values (54088, 'Twitterworks', '60131001494', 'Technology', 'Twitter', 11722, 'Twitterworks.com');
insert into COMPANY (CompanyID, CompanyName, CompanyPhoneNumber, Sector, Comp_Description, CompEmployees, CompWebSite) values (92562, 'Babblestorm', '27081717255', 'Health Care', 'We care your health', 10239, 'Babblestorm.com');
insert into COMPANY (CompanyID, CompanyName, CompanyPhoneNumber, Sector, Comp_Description, CompEmployees, CompWebSite) values (17820, 'Linklinks', '60554192382', 'Public Utilities', 'Business', 101667, 'Linklinks.com');


insert into GROUPP (GroupID, GroupName, CreatorID) values (1, 'Arkadaşlar', '478291');
insert into GROUPP (GroupID, GroupName, CreatorID) values (2, 'Tatil Grubu', '384212');
insert into GROUPP (GroupID, GroupName, CreatorID) values (3, 'Çalışanlar', '897523');
insert into GROUPP (GroupID, GroupName, CreatorID) values (4, 'Database grubu', '946224');
insert into GROUPP (GroupID, GroupName, CreatorID) values (5, 'Proje', '774195');
insert into GROUPP (GroupID, GroupName, CreatorID) values (6, 'Sunum', '541186');
insert into GROUPP (GroupID, GroupName, CreatorID) values (7, '4.Sınıf', '741097');
insert into GROUPP (GroupID, GroupName, CreatorID) values (8, 'Mezunlar', '741097');
insert into GROUPP (GroupID, GroupName, CreatorID) values (9, 'İş Arayanlar', '741097');
insert into GROUPP (GroupID, GroupName, CreatorID) values (10, 'Gophers', '109239');

insert into ANNOUNCEMENT (AnnouncementID, AnnouncementDate, AnnouncementTitle, AnnouncementContent, ACompanyID) values (1, '2019-1-4', 'Paralegal', 'Paralegal aranıyor.', '14153');
insert into ANNOUNCEMENT (AnnouncementID, AnnouncementDate, AnnouncementTitle, AnnouncementContent, ACompanyID) values (2, '2019-3-5', 'Web Developer II', 'Web Developer aranıyor.', '21852');
insert into ANNOUNCEMENT (AnnouncementID, AnnouncementDate, AnnouncementTitle, AnnouncementContent, ACompanyID) values (3, '2019-2-7', 'Clinical Specialist', 'Clinical Specialist aranıyor.', '62143');
insert into ANNOUNCEMENT (AnnouncementID, AnnouncementDate, AnnouncementTitle, AnnouncementContent, ACompanyID) values (4, '2019-7-1', 'VP Quality Control', 'VP Quality Control aranıyor.', '47852');
insert into ANNOUNCEMENT (AnnouncementID, AnnouncementDate, AnnouncementTitle, AnnouncementContent, ACompanyID) values (5, '2019-4-3', 'Payment Adjustment Coordinator', 'Payment Adjustment Coordinator aranıyor.', '46285');
insert into ANNOUNCEMENT (AnnouncementID, AnnouncementDate, AnnouncementTitle, AnnouncementContent, ACompanyID) values (6, '2019-5-6', 'Tax Accountant', 'Tax Accountant aranıyor', '57816');
insert into ANNOUNCEMENT (AnnouncementID, AnnouncementDate, AnnouncementTitle, AnnouncementContent, ACompanyID) values (7, '2019-6-2', 'Marketing Assistant', 'Marketing Assistant aranıyor', '33157');
insert into ANNOUNCEMENT (AnnouncementID, AnnouncementDate, AnnouncementTitle, AnnouncementContent, ACompanyID) values (8, '2019-9-2', 'Biostatistician IV', 'Biostatistician aranıyor', '54088');
insert into ANNOUNCEMENT (AnnouncementID, AnnouncementDate, AnnouncementTitle, AnnouncementContent, ACompanyID) values (9, '2019-3-8', 'Actuary', 'Actuary aranıyor', '92562');
insert into ANNOUNCEMENT (AnnouncementID, AnnouncementDate, AnnouncementTitle, AnnouncementContent, ACompanyID) values (10, '2019-10-4', 'Human Resources ', 'Human Resources Assistant', '17820');

insert into Post (PostID, PostContent, DateTime, PostCreaterID) values (1, "Osman Ünalır'ı seviyoruz.", '2019-1-4', "124570");
insert into Post (PostID, PostContent, DateTime, PostCreaterID) values (2, "Projeden 100 gelir mi hocam?", '2019-3-5', "109239");
insert into Post (PostID, PostContent, DateTime, PostCreaterID) values (3, "Hedefimiz AA", '2019-3-8', "863418");
insert into Post (PostID, PostContent, DateTime, PostCreaterID) values (4, "Ege Üniversitesini kazandım", '2018-3-5', "478291");
insert into Post (PostID, PostContent, DateTime, PostCreaterID) values (5, "Yarın görüşmek üzere", '2000-3-8', "124570");
insert into Post (PostID, PostContent, DateTime, PostCreaterID) values (6, "Etkinliğe bekliyoruz!", '2019-4-5', "897523");
insert into Post (PostID, PostContent, DateTime, PostCreaterID) values (7, "I'm coming bro", '2018-3-12', "741097");
insert into Post (PostID, PostContent, DateTime, PostCreaterID) values (8, "Database çok zevkli :)", '2019-8-10', "946224");
insert into Post (PostID, PostContent, DateTime, PostCreaterID) values (9, "Money money money..", '2018-8-12', "384212");
insert into Post (PostID, PostContent, DateTime, PostCreaterID) values (10, "Saldır cimbom", '2019-3-20', "897523");


insert into HASHTAG (HashtagName) values ("yazılım");
insert into HASHTAG (HashtagName) values ("web tasarım");
insert into HASHTAG (HashtagName) values ("mobil geliştirme");
insert into HASHTAG (HashtagName) values ("makine öğrenmesi");
insert into HASHTAG (HashtagName) values ("yapay zeka");
insert into HASHTAG (HashtagName) values ("test");
insert into HASHTAG (HashtagName) values ("oyun geliştirme");
insert into HASHTAG (HashtagName) values ("veri madenciliği");
insert into HASHTAG (HashtagName) values ("algoritma");

insert into University (UniversityName, City, Foundation_year, School_type) values ('Ege Üniversitesi', 'İzmir', '1992-2-1', 'Devlet');
insert into University (UniversityName, City, Foundation_year, School_type) values ('Anadolu Üniversitesi', 'Eskişehir', '1992-2-1', 'Devlet');
insert into University (UniversityName, City, Foundation_year, School_type) values ('Trakya Üniversitesi', 'Edirne', '1992-2-1', 'Devlet');
insert into University (UniversityName, City, Foundation_year, School_type) values ('Yaşar Üniversitesi', 'İzmir', '2006-12-12', 'Özel');
insert into University (UniversityName, City, Foundation_year, School_type) values ('Boğaziçi Üniversitesi', 'İstanbul', '1950-05-05', 'Devlet');
insert into University (UniversityName, City, Foundation_year, School_type) values ('Koç Üniversitesi', 'İstanbul', '1999-04-12', 'Özel');
insert into University (UniversityName, City, Foundation_year, School_type) values ('Sabancı Üniversitesi', 'İstanbul', '1997-04-23', 'Özel');
insert into University (UniversityName, City, Foundation_year, School_type) values ('Ankara Üniversitesi', 'Ankara', '2000-04-20', 'Devlet');

insert into CourseForum (ForumID, FCourseID) values (1, "1234");
insert into CourseForum (ForumID, FCourseID) values (2, "1235");
insert into CourseForum (ForumID, FCourseID) values (3, "1236");
insert into CourseForum (ForumID, FCourseID) values (4, "1237");
insert into CourseForum (ForumID, FCourseID) values (5, "1238");
insert into CourseForum (ForumID, FCourseID) values (6, "1239");


insert into COURSE (CourseID,CourseName, Credit, CourseTime, Semester, TeacherID, UniversityName) values ("1234","Database Management", 5, 4, 5, "124570", "Ege Üniversitesi");
insert into COURSE (CourseID,CourseName, Credit, CourseTime, Semester, TeacherID, UniversityName) values ("1235","Software Engineering", 6, 4, 7, "946224", "Trakya Üniversitesi");
insert into COURSE (CourseID,CourseName, Credit, CourseTime, Semester, TeacherID, UniversityName) values ("1236","Algoritma", 7, 4, 1, "124577", "Ege Üniversitesi");
insert into COURSE (CourseID,CourseName, Credit, CourseTime, Semester, TeacherID, UniversityName) values ("1237","Veri Yapıları", 4, 3, 5, "741092", "Ankara Üniversitesi");
insert into COURSE (CourseID,CourseName, Credit, CourseTime, Semester, TeacherID, UniversityName) values ("1238","Software Engineering", 2, 1, 1, "946224", "Boğaziçi Üniversitesi");
insert into COURSE (CourseID,CourseName, Credit, CourseTime, Semester, TeacherID, UniversityName) values ("1239","Türk Dili", 2, 2, 2, "946245", "Yaşar Üniversitesi");
insert into COURSE (CourseID,CourseName, Credit, CourseTime, Semester, TeacherID, UniversityName) values ("1241","Teknik İngilizce", 2, 1, 1, "124577", "Sabancı Üniversitesi");
insert into COURSE (CourseID,CourseName, Credit, CourseTime, Semester, TeacherID, UniversityName) values ("1278","Elektrik Devreleri", 4, 4, 3, "124570", "Trakya Üniversitesi");


insert into CourseAnnouncement (CourseID, CAnnouncementID, CAnnouncement, CADate) values (1234, '123', 'Proje kontrolü cuma günü yapılacaktır', '2019-12-25');
insert into CourseAnnouncement (CourseID, CAnnouncementID, CAnnouncement, CADate) values (1235, '122', 'Sunumunuz vardır.', '2019-12-25');
insert into CourseAnnouncement (CourseID, CAnnouncementID, CAnnouncement, CADate) values (1236, '111', 'sınavlar açıklandı', '2019-12-25');
insert into CourseAnnouncement (CourseID, CAnnouncementID, CAnnouncement, CADate) values (1237, '121', 'yarın ders yok', '2019-12-25');
insert into CourseAnnouncement (CourseID, CAnnouncementID, CAnnouncement, CADate) values (1238, '125', 'bugün ders var', '2019-12-25');
insert into CourseAnnouncement (CourseID, CAnnouncementID, CAnnouncement, CADate) values (1241, '127', 'batuhan derse gelmesin', '2019-12-25');


