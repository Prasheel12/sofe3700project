-- Returns fname, lname, crashno, gender, dob, city from the victims table if they are female OR if their crash city is the same as their home city
CREATE VIEW view5 AS SELECT fname, lname, crashno, gender, dob, city FROM victims AS vt WHERE vt.Gender='F' UNION SELECT fname, lname, crashno, gender, dob, city FROM victims AS vt WHERE vt.city = ( SELECT c.crashcity FROM crashes AS c WHERE vt.city=c.crashcity)