/*
**	This must be run in SEIS732_Team_10_Products database
**
*/

if (not exists(select name from sysobjects where name = 'Stage_MMC' and type = 'U'))
	begin
		declare @Msg as varchar(8000) = concat(		char(10),
										'==============================================================================',
										'ERROR:	Prototype Populate Stage_MMC_Class failed to load all expected value',
										'Table Stage_MMC does not exist',
										'=============================================================================='
										);
			throw 50001,@Msg,1;
	end;
go

if (not exists(select name from sysobjects where name ='Extract_MMC' and type = 'V'))
	begin
		declare @Msg as varchar(8000) = concat( 	char(10),
										'===============================================================================',
										'ERROR: Prototype Populate Extract_MMC_Class failed to load all expected values:',
										'View Extract_MMC does not exist',
										'==================================================================================='
										);
			throw 50002,@Msg,1;
	end;
go

insert into Stage_MMC	(

			PRD_MMC_ID,
			PRD_Class_Name,
			PRD_Class_Description,
			PRD_Class_Key,
			PRD_Make_Name,
			PRD_Make_Description,
			PRD_Make_Key,
			PRD_Model_Name,
			PRD_Model_Description,
			PRD_Model_Key

								)
		select
			
			PRD_MMC_ID,
			PRD_Class_Name,
			PRD_Class_Description,
			PRD_Class_Key,
			PRD_Make_Name,
			PRD_Make_Description,
			PRD_Make_Key,
			PRD_Model_Name,
			PRD_Model_Description,
			PRD_Model_Key

		from					Extract_MMC;
go