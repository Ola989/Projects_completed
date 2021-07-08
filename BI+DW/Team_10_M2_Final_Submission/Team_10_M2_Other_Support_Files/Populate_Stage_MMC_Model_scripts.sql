/*
**	This must be run in SEIS732_Team_10_Products database
**
*/

if (not exists(select name from sysobjects where name = 'Stage_MMC_Model' and type = 'U'))
	begin
		declare @Msg as varchar(8000) = concat(		char(10),
										'==============================================================================',
										'ERROR:	Prototype Populate Stage_MMC_Model failed to load all expected value',
										'Table Stage_MMC_Model does not exist',
										'=============================================================================='
										);
			throw 50001,@Msg,1;
	end;
go

if (not exists(select name from sysobjects where name ='Extract_MMC_Model' and type = 'V'))
	begin
		declare @Msg as varchar(8000) = concat( 	char(10),
										'===============================================================================',
										'ERROR: Prototype Populate Extract_MMC_Model failed to load all expected values:',
										'View Extract_MMC_Model does not exist',
										'==================================================================================='
										);
			throw 50002,@Msg,1;
	end;
go

insert into Stage_MMC_Model	(
									
									PRD_Model_Description,
									PRD_Model_Name,
									PRD_MMC_ID

								)
		select
									PRD_Model_Description,
									PRD_Model_Name,
									PRD_MMC_ID
									
		from						Extract_MMC_Model
go