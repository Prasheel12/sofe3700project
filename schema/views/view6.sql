-- Returns fname, lname, crashno, victimid, and location of those who were involved in accidents that occurred in the morning
CREATE VIEW view6 AS SELECT DISTINCT vt.fname, vt.lname, c.crashno, vt.victimid, c.location FROM victims AS vt, crashes AS c WHERE c.crashtime='Morning' AND c.crashno=vt.crashno