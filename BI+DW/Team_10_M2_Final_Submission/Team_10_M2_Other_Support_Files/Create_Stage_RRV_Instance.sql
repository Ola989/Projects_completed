/*
** Run this in SEIS732_Team_10_Products database
**
*/
if (exists(select name from sysobjects where name = 'Stage_RRV_Instance' and type = 'U'))
	begin
		drop table Stage_RRV_Instance;
	end;
go

create table Stage_RRV_Instance
	(
		PRD_Color_ID				bigint		not null,
		PRD_VehicleType_ID			bigint		not	null,
		PRD_Key						numeric		identity(1,1)	not null,
		CONSTRAINT	PK_Stage_RRV_Instance	PRIMARY	KEY	CLUSTERED	( PRD_Key ASC )
	);

go