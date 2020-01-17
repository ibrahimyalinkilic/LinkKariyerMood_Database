update Teacher
set InstructorID = "12345678", UniversityDegree='Prof'
where UserID = "124570";

update Teacher
set InstructorID = "87654321",UniversityDegree="Dr"
where UserID = "946224";

update Teacher
set InstructorID = "87654325",UniversityDegree="yard.doç"
where UserID = "124577";

update Teacher
set InstructorID = "87654320",UniversityDegree="Dr"
where UserID = "946245";

update Teacher
set InstructorID = "87654320",UniversityDegree="Dr"
where UserID = "946245";

update Assistant
set InstructorID = "12345687",workfield="Network"
where UserID = "541186";

update Assistant
set InstructorID = "12345655",workfield="Database"
where UserID = "541187";

update Assistant
set InstructorID = "12385655",workfield="Software"
where UserID = "741097";

update Assistant
set InstructorID = "33385655",workfield="AI"
where UserID = "897523";

update Assistant
set InstructorID = "33388855",workfield="Software"
where UserID = "897524";


update Student
set Semester = 1, StudentStartDate = '2014-05-11' , EducationTakerID = '1234567'
where userID = '109239';

update Student
set Semester = 2, StudentStartDate = '2011-08-11' , EducationTakerID = '1234568'
where userID = '384212';

update Student
set Semester = 3, StudentStartDate = '2012-03-11' , EducationTakerID = '1234569'
where userID = '384213';

update Student
set Semester = 4, StudentStartDate = '2016-10-5' , EducationTakerID = '1234561'
where userID = '774195';

update Student
set Semester = 5, StudentStartDate = '2011-4-24' , EducationTakerID = '5432167'
where userID = '863413';

update Student
set Semester = 6, StudentStartDate = '2012-6-11' , EducationTakerID = '2135467'
where userID = '863418';

update Graduated
set  ThesisTopic = 'Mobil araştırma' , GraduateDegree = 'Lisans',EducationTakerID='6262628'
where userID = '109234';

update Graduated
set  ThesisTopic = 'Grafik araştırma' , GraduateDegree = 'Yüksek Lisans',EducationTakerID='6269628'
where userID = '478092';

update Graduated
set  ThesisTopic = 'Network sistemleri araştırma' , GraduateDegree = 'Dr',EducationTakerID='6212628'
where userID = '478291';

update Graduated
set  ThesisTopic = 'Mobil araştırma' , GraduateDegree = 'Lisans',EducationTakerID='8262628'
where userID = '774196';

update Instructor
set UniversityName = "Ege Üniversitesi"
where InstructorID = "12345678" ;

update Instructor
set UniversityName = "Trakya Üniversitesi"
where InstructorID = "87654321" ;

update Instructor
set UniversityName = "Ege Üniversitesi"
where InstructorID = "87654325" ;

update Instructor
set UniversityName = "Ankara Üniversitesi"
where InstructorID = '87654326';

update Instructor
set UniversityName = "Yaşar Üniversitesi"
where InstructorID = '87654320';

update Instructor
set UniversityName = "Ege Üniversitesi"
where InstructorID = '12345655';

update Instructor
set UniversityName = "Boğaziçi Üniversitesi"
where InstructorID = '12345687';

update Instructor
set UniversityName = "Sabancı Üniversitesi"
where InstructorID = '12385655';

update Instructor
set UniversityName = "Trakya Üniversitesi"
where InstructorID = '33385655';

update Instructor
set UniversityName = "Ankara Üniversitesi"
where InstructorID = '33388855';

