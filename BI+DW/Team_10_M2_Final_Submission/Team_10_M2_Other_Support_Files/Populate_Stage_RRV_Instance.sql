/*
**	This must be run in SEIS732_Team_10_Products database
**
*/

if (not exists(select name from sysobjects where name = 'Stage_RRV_Instance' and type = 'U'))
	begin
		declare @Msg as varchar(8000) = concat(		char(10),
										'==============================================================================',
										'ERROR:	Prototype Stage_RRV_Instance failed to load all expected value',
										'Table Stage_RRV_Instance does not exist',
										'=============================================================================='
										);
			throw 50001,@Msg,1;
	end;
go

if (not exists(select name from sysobjects where name ='Extract_RRV_Instance' and type = 'V'))
	begin
		declare @Msg as varchar(8000) = concat( 	char(10),
										'===============================================================================',
										'ERROR: Prototype Populate Extract_RRV_Instance failed to load all expected values:',
										'View Extract_RRV_Instance does not exist',
										'==================================================================================='
										);
			throw 50002,@Msg,1;
	end;
go


insert into Stage_RRV_Instance	(
					
		PRD_Color_ID,	
		PRD_VehicleType_ID
					)
		select
		
		PRD_Color_ID,	
		PRD_VehicleType_ID			
		from
		
		Extract_RRV_Instance;

go