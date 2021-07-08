/*
** Run this in SEIS732_Team_10_Products database
**
*/
if (exists(select name from sysobjects where name = 'Extract_MMC' and type = 'V'))
	begin
		drop view Extract_MMC;
	end;
go

create view Extract_MMC
as
	select	
			MC.MMC_ID					as	PRD_MMC_ID,
			CL.PRD_Class_Name			as	PRD_Class_Name,
			CL.PRD_Class_Description	as	PRD_Class_Description,
			CL.PRD_Class_Key			as	PRD_Class_Key,
			MK.PRD_Make_Name			as	PRD_Make_Name,
			MK.PRD_Make_Description		as	PRD_Make_Description,
			MK.PRD_Make_Key				as	PRD_Make_Key,
			MD.PRD_Model_Name			as	PRD_Model_Name,
			MD.PRD_Model_Description	as	PRD_Model_Description,
			MD.PRD_Model_Key			as	PRD_Model_Key
			
	from
			MMC					MC,
			Stage_MMC_Class		CL,
			Stage_MMC_Make		MK,
			Stage_MMC_Model		MD
			
	where
			MC.MMC_ID			=		CL.PRD_MMC_ID
	and		MC.MMC_ID			=		MK.PRD_MMC_ID
	and		MC.MMC_ID			=		MD.PRD_MMC_ID;					

			
go