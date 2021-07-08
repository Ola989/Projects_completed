/*
** Run this in SEIS732_Team_10_Products database
**
*/
if (exists(select name from sysobjects where name = 'Stage_MMC_Class' and type = 'U'))
	begin
		drop table Stage_MMC_Class;
	end;
go

create table Stage_MMC_Class
	(
		PRD_MMC_ID				smallint		not null,
		PRD_Class_Name			varchar(40)		not null,
		PRD_Class_Description	varchar(256)	not null,
		PRD_Class_Key			smallint		identity(1,1)	not null
		CONSTRAINT	PK_Stage_MMC_Class	PRIMARY	KEY	CLUSTERED	( PRD_Class_Key ASC )
	);

go