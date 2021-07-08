/*
** Run this in SEIS732_Team_10_Products database
**
*/
if (exists(select name from sysobjects where name = 'Extract_Color' and type = 'V'))
	begin
		drop view Extract_Color;
	end;
go

create view Extract_Color
as

SELECT distinct CLR_ID as PRD_Color_ID,
   '<No Color Name for ' + cast (CLR_ID as varchar) + ' >' as PRD_Color_Name,
   '<No Color Description for ' + cast ( CLR_ID as varchar) + ' >' as PRD_Color_Description
  FROM RRV_Instance
  where CLR_ID NOT IN (select CLR_ID from Color)
  UNION
select CLR_ID as PRD_Color_ID, CLR_Name as PRD_Color_Name, CLR_Description 
as PRD_Color_Description from Color;