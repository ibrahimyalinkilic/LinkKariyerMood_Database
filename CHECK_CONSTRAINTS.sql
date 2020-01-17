#### Check Constraint-1 ####

alter table User
add constraint age_check check ( (year(sysdate()) - year(BirthDate)) >= 16 ); 

#### Check Constraint-2 ####

CONSTRAINT NOT_ORT CHECK (NotOrt<4)

#### Check Constraint-3 ####

DELIMITER |
CREATE TRIGGER friend_exist 
BEFORE INSERT ON Friend
FOR EACH ROW
BEGIN
    IF EXISTS (select * from friend where friend.AdderID=new.AddedID and friend.AddedID=new.AdderID)
	THEN
		SIGNAL SQLSTATE '45001' SET MESSAGE_TEXT = 'Arkadaşlık zaten mevcut';
	END IF;
END|   
DELIMITER ; 

#### Check Constraint-4 ####

alter table Friend
add constraint friendscheck check(
AdderID!=AddedID
);

#### Check Constraint-5 ####

alter table study_at
add constraint finish_date_check check (year(finishdate)-year(startdate)<9)
;

#### Check Constraint-6 ####

DELIMITER |
CREATE TRIGGER group_member_check 
BEFORE INSERT ON Memberr
FOR EACH ROW
BEGIN
    IF(select count(*) from memberr where GroupID=new.GroupID group by GroupID ) >=100
	THEN
		SIGNAL SQLSTATE '45001' SET MESSAGE_TEXT = 'Grup maksimum kişi sayısına ulaştığı için üye alınamamaktadır.';
	END IF;
END|   
DELIMITER ; 

drop trigger  group_member_check ;



#### Check Constraint-7 ####

DELIMITER |
CREATE TRIGGER include_check BEFORE INSERT ON  include
FOR EACH ROW
BEGIN
    IF (SELECT count(*) FROM include WHERE PostID=new.PostID GROUP BY postID) >=3
	THEN
		SIGNAL SQLSTATE '45001' SET MESSAGE_TEXT = 'Bir post 3ten fazla hashtag içeremez.';
	END IF;
END|  
DELIMITER ;