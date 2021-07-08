/*
**	This must be run in SEIS732_Team_10_Products database
**
*/
use SEIS732_Team_10_Products;
go
if (not exists(select name from sysobjects where name = 'Extract_Product' and type = 'V'))
	begin
		declare @Msg as varchar(8000) = concat(		char(10),
										'==============================================================================',
										'ERROR:	Prototype Populate_Stage_Prodcut_Star_Schema failed to load all expected value',
										'View Extract_Product does not exist',
										'=============================================================================='
										);
			throw 50001,@Msg,1;
	end;
go

use SEIS732_Team_10_Star_Schema;
go

if (not exists(select name from sysobjects where name ='PRODUCT' and type = 'U'))
	begin
		declare @Msg as varchar(8000) = concat( 	char(10),
										'===============================================================================',
										'ERROR: Prototype Populate_Stage_Prodcut_Star_Schema failed to load all expected values:',
										'Table PRODUCT does not exist',
										'==================================================================================='
										);
			throw 50002,@Msg,1;
	end;
go

set identity_insert PRODUCT on;

insert into PRODUCT	(

					PRD_Key,
					PRD_VehicleType_ID,
					PRD_Model_Year,
					PRD_Manufacturer_Suggested_Retail_Price,
					PRD_Wholesale_Price,
					PRD_MMC_ID,
					PRD_Color_ID,
					PRD_Color_Name,
					PRD_Color_Description,
					PRD_Color_Key,
					PRD_Class_Name,
					PRD_Class_Description,
					PRD_Class_Key,
					PRD_Make_Name,
					PRD_Make_Description,
					PRD_Make_Key,
					PRD_Model_Key,
					PRD_Model_Description,
					PRD_Model_Name

								)
		select
			
					PRD_Key,
					PRD_VehicleType_ID,
					PRD_Model_Year,
					PRD_Manufacturer_Suggested_Retail_Price,
					PRD_Wholesale_Price,
					PRD_MMC_ID,
					PRD_Color_ID,
					PRD_Color_Name,
					PRD_Color_Description,
					PRD_Color_Key,
					PRD_Class_Name,
					PRD_Class_Description,
					PRD_Class_Key,
					PRD_Make_Name,
					PRD_Make_Description,
					PRD_Make_Key,
					PRD_Model_Key,
					PRD_Model_Description,
					PRD_Model_Name


		from		[SEIS732_Team_10_Products].[dbo].[Extract_Product];
		
set identity_insert	PRODUCT	off;

go