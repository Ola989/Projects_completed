/*
**	This must be run in SEIS732_Team_10_Products database
**
*/

if (not exists(select name from sysobjects where name = 'Stage_Vehicle_Type' and type = 'U'))
	begin
		declare @Msg as varchar(8000) = concat(		char(10),
										'==============================================================================',
										'ERROR:	Prototype Populate Stage_Vehicle_Type failed to load all expected value',
										'Table Stage_Vehicle_Type does not exist',
										'=============================================================================='
										);
			throw 50001,@Msg,1;
	end;
go

if (not exists(select name from sysobjects where name ='Extract_Vehicle_Type' and type = 'V'))
	begin
		declare @Msg as varchar(8000) = concat( 	char(10),
										'===============================================================================',
										'ERROR: Prototype Populate Extract_Vehicle_Type failed to load all expected values:',
										'View Extract_Vehicle_Type does not exist',
										'==================================================================================='
										);
			throw 50002,@Msg,1;
	end;
go

insert into Stage_Vehicle_Type	(
									
									PRD_VehicleType_ID,
									PRD_MMC_ID,
									PRD_Model_Year,
									PRD_Manufacturer_Suggested_Retail_Price,
									PRD_Wholesale_Price
								)
		select
									PRD_VehicleType_ID,
									PRD_MMC_ID,
									PRD_Model_Year,
									PRD_Manufacturer_Suggested_Retail_Price,
									PRD_Wholesale_Price
		
		from						Extract_Vehicle_Type;
go