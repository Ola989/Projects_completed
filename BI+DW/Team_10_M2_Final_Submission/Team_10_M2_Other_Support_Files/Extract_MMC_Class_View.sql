/*
** Run this in SEIS732_Team_10_Products database
**
*/
if (exists(select name from sysobjects where name = 'Extract_MMC_Class' and type = 'V'))
	begin
		drop view Extract_MMC_Class;
	end;
go

create view Extract_MMC_Class
as
	select	
			MC.MMC_ID				as	PRD_MMC_ID,
			MC.MMC_Class_Name		as	PRD_Class_Name,
			MC.MMC_Class_Desc		as	PRD_Class_Description
	from
			MMC						MC;

go