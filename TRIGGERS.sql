#### Trigger-1  ####
delimiter //
create trigger contacts_after_graduated
             after insert
             on USER for each row
             begin
           
                 IF (SELECT UserType from user where ArrivalDate in(select max(ArrivalDate) from User))='G'
                 THEN 
                INSERT into Graduated
                ( UserID,
                Created_date
                  )
                VALUES
                ( NEW.UserID,
                sysdate()
                
                  );
                   END IF;
             END; //
             
             
#### Trigger-2 ####             
delimiter //
create trigger contacts_after_student
             after insert
             on USER for each row
             begin
           
                 IF (SELECT UserType from user where ArrivalDate in(select max(ArrivalDate) from User))='S'
                 THEN 
                INSERT into Student
                ( UserID,
                  
                  Created_date)
                VALUES
                ( NEW.UserID,
                  sysdate()
                  );
                   END IF;
             END; //
             
#### Trigger-3 ####
delimiter //
create trigger contacts_after_assistant
             after insert
             on USER for each row
             begin
           
                 IF (SELECT UserType from user where ArrivalDate in(select max(ArrivalDate) from User))='A'
                 THEN 
                INSERT into Assistant
                ( UserID,
                  
                  Created_date)
                VALUES
                ( NEW.UserID,
                  sysdate()
                  );
                   END IF;
             END; //
             
#### Trigger-4 ####             
delimiter //
create trigger contacts_after_teacher
             after insert
             on USER for each row
             begin
				IF (SELECT UserType from user where ArrivalDate in(select max(ArrivalDate) from User))='T'
                 THEN 
                INSERT into Teacher
                ( UserID,
                  
                  Created_date)
                VALUES
                ( NEW.UserID,
                  sysdate()
                  );
                   END IF;
             END; //
        
 #### Trigger-5 ####  
delimiter //
CREATE TRIGGER graduated_update
    BEFORE UPDATE
    ON Graduated FOR EACH ROW
BEGIN
 
    INSERT INTO educationtaker(EducationTakerID) Values(new.EducationTakerID);
 END; // 


#### Trigger-6 ####
delimiter //
CREATE TRIGGER student_update
    BEFORE UPDATE
    ON Student FOR EACH ROW
BEGIN
 
    INSERT INTO educationtaker(EducationTakerID) Values(new.EducationTakerID);
 END; // 
 
 
 #### Trigger-7 #### 
 delimiter //
CREATE TRIGGER teacher_update
    BEFORE UPDATE
    ON Teacher FOR EACH ROW
BEGIN
 
    INSERT INTO instructor(InstructorID) Values(new.InstructorID);
 END; // 

#### Trigger-8 ####
 delimiter //
CREATE TRIGGER assistant_update
    BEFORE UPDATE
    ON Assistant FOR EACH ROW
BEGIN
 
    INSERT INTO instructor(InstructorID) Values(new.InstructorID);
 END; //       
 
 delimiter //
 
 #### Trigger-9 #### 
CREATE TRIGGER user_profile
    AFTER INSERT
    ON user FOR EACH ROW
BEGIN
 
    INSERT INTO Profile(PUserID) Values(new.UserID);
 END; //   

 delimiter //


  #### Procedure İlan ve ilan yeteneği girildiğindiğinde bu yetenekleri karşılayan kullanıcıları gösteren procedure ####
 DELIMITER //
CREATE PROCEDURE 
  myProcedure( skillname varchar(20),AnnouncementID char(5),SkillLevel varchar(10),AnnouncementDate date,AnnouncementTitle varchar(20),AnnouncementContent text,ACompanyID char(5) )
BEGIN  
insert into announcement values(AnnouncementID,AnnouncementDate,AnnouncementTitle,AnnouncementContent,ACompanyID);
insert into announcementskill values (skillname,AnnouncementID,SkillLevel);
   Select user.userfirstname,userskill.UserID,userskill.SkillName,userskill.SkillLevel
	From user,userskill
	Where userskill.SkillName = SkillName and userskill.SkillLevel = SkillLevel and userskill.UserId=user.userId;

END 
//
call myProcedure('Python','13','İyi','2012-12-12',"Python Developer","İyi derecede python","14153");



####İstenilen gereksinim trigger ile gerçekleşmedi.####
DELIMITER // 
CREATE TRIGGER announcement_skill
after insert on announcementskill for each row
begin
call myProcedure(new.skillname,new.announcementID,new.SkillLevel);
end;
drop trigger announcement_skill;
insert into announcementskill values ('CCNP','11','Orta');