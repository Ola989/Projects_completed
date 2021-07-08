/*
** Run this in SEIS732_Team_10_Products database
**
*/
if (exists(select name from sysobjects where name = 'Extract_MMC_Model' and type = 'V'))
	begin
		drop view Extract_MMC_Model;
	end;
go

create view Extract_MMC_Model
as
	select	
			MC.MMC_ID				as	PRD_MMC_ID,
			MC.MMC_Model_Name		as	PRD_Model_Name,
			MC.MMC_Model_Desc		as	PRD_Model_Description
		from
			MMC							MC;
go