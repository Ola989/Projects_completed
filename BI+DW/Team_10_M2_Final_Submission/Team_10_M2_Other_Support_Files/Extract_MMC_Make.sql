/*
** Run this in SEIS732_Team_10_Products database
**
*/
if (exists(select name from sysobjects where name = 'Extract_MMC_Make' and type = 'V'))
	begin
		drop view Extract_MMC_Make;
	end;
go

create view Extract_MMC_Make
as
	select	
			MC.MMC_ID				as	PRD_MMC_ID,
			MC.MMC_Make_Name		as	PRD_Make_Name,
			MC.MMC_Make_Desc		as	PRD_Make_Description
	from
			MMC					MC;
go