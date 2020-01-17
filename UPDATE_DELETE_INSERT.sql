INSERT INTO STUDY_AT VALUES ('124570','Ege Üniversitesi','Tıp','1999-10-10','2004-10-10');
INSERT INTO STUDY_AT VALUES ('124577','Ege Üniversitesi','Mühendislik','1999-10-10','2004-10-10');
INSERT INTO STUDY_AT VALUES ('741092','Trakya Üniversitesi','Fen ve Edebiyat','1999-10-10','2004-10-10');

UPDATE study_at 
SET FacultyName = 'İletişim' 
WHERE (UserID = '897524') and (UniversityName = 'Koç Üniversitesi') and (FacultyName = 'Tıp');

DELETE 
FROM study_at
WHERE UserID = 124577;


insert into HASHTAG (HashtagName) values ("root");

update hashtag
set hashtagname = 'case'
where hashtagname = 'root';

delete
from hashtag
where hashtagname = 'root';



insert into Skill (SkillName, SkillType) values ("PostgreSQL", "Database");

update skill
set skillname = 'HTML5'
where skillname = 'HTML';

delete
from skill
where skillname = 'PostgreSQL';