/*
**	This must be run in SEIS732_Team_10_Products database
**
*/

if (not exists(select name from sysobjects where name = 'Stage_MMC_Make' and type = 'U'))
	begin
		declare @Msg as varchar(8000) = concat(		char(10),
										'==============================================================================',
										'ERROR:	Prototype Populate Stage_MMC_Make failed to load all expected value',
										'Table Stage_MMC_Make does not exist',
										'=============================================================================='
										);
			throw 50001,@Msg,1;
	end;
go

if (not exists(select name from sysobjects where name ='Extract_MMC_Make' and type = 'V'))
	begin
		declare @Msg as varchar(8000) = concat( 	char(10),
										'===============================================================================',
										'ERROR: Prototype Populate Extract_MMC_Make failed to load all expected values:',
										'View Extract_MMC_Make does not exist',
										'==================================================================================='
										);
			throw 50002,@Msg,1;
	end;
go

insert into Stage_MMC_Make	(
									PRD_Make_Description,
									PRD_Make_Name,
									PRD_MMC_ID

								)
		select
									PRD_Make_Description,
									PRD_Make_Name,
									PRD_MMC_ID

		from						Extract_MMC_Make;
go