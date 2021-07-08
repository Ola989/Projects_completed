/*
**	This must be run in SEIS732_Team_10_Products database
**
*/

if (not exists(select name from sysobjects where name = 'Stage_Color' and type = 'U'))
	begin
		declare @Msg as varchar(8000) = concat(		char(10),
										'==============================================================================',
										'ERROR:	Prototype Populate Stage_Color failed to load all expected value',
										'Table Stage_Color does not exist',
										'=============================================================================='
										);
			throw 50001,@Msg,1;
	end;
go

if (not exists(select name from sysobjects where name ='Extract_Color' and type = 'V'))
	begin
		declare @Msg as varchar(8000) = concat( 	char(10),
										'===============================================================================',
										'ERROR: Prototype Populate Extract_Color failed to load all expected values:',
										'View Extract_Color does not exist',
										'==================================================================================='
										);
			throw 50002,@Msg,1;
	end;
go

insert into Stage_Color	(

									PRD_Color_Description,
									PRD_Color_Name,
									PRD_Color_ID
								)
		select
									PRD_Color_Description,
									PRD_Color_Name,
									PRD_Color_ID
									
									
		from						Extract_Color;
go