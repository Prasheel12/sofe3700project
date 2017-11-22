-- Returns victimid, fname, lname of victims as well as the make and model of their vehicles where a back injury occured to the victim
CREATE VIEW view10 as select vt.victimid, vt.fname, vt.lname, vh.make, vh.model FROM victims as vt, vehicles as vh, injuries as i WHERE i.crashno=vt.crashno AND vt.vehicleid=vh.vehicleid AND i.injurytype='Back'