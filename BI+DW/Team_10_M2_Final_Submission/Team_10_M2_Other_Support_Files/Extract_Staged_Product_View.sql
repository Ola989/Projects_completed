/*
** Run this in SEIS732_Team_10_Products database
**
*/
if (exists(select name from sysobjects where name = 'Extract_Product' and type = 'V'))
	begin
		drop view Extract_Product;
	end;
go

create view Extract_Product
as
select	
		RRV.PRD_Key,
		SVT.PRD_VehicleType_ID,
		SVT.PRD_Model_Year,
		SVT.PRD_Manufacturer_Suggested_Retail_Price,
		SVT.PRD_Wholesale_Price,
		MMC.PRD_MMC_ID,
		CL.PRD_Color_ID,
		CL.PRD_Color_Name,
		CL.PRD_Color_Description,
		CL.PRD_Color_Key,
		MMC.PRD_Class_Name,
		MMC.PRD_Class_Description,
		MMC.PRD_Class_Key,
		MMC.PRD_Make_Name,
		MMC.PRD_Make_Description,
		MMC.PRD_Make_Key,
		MMC.PRD_Model_Key,
		MMC.PRD_Model_Description,
		MMC.PRD_Model_Name
		
			
	from

		Stage_RRV_Instance		RRV,
		Stage_Vehicle_Type		SVT,
		Stage_Color				CL,
		Stage_MMC				MMC
		
	where
		CL.PRD_Color_ID			=	RRV.PRD_Color_ID
		and MMC.PRD_MMC_ID	=	SVT.PRD_MMC_ID
		and	SVT.PRD_VehicleType_ID		=	RRV.PRD_VehicleType_ID;		

go