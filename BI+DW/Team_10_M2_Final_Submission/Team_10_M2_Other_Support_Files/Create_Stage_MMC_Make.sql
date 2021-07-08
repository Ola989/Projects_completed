/*
** Run this in SEIS732_Team_10_Products database
**
*/
if (exists(select name from sysobjects where name = 'Stage_MMC_Make' and type = 'U'))
	begin
		drop table Stage_MMC_Make;
	end;
go

create table Stage_MMC_Make
	(
		PRD_MMC_ID				smallint		not null,
		PRD_Make_Name			varchar(40)		not null,
		PRD_Make_Description	varchar(256)	not null,
		PRD_Make_Key			smallint		identity(1,1)	not null
		CONSTRAINT	PK_Stage_MMC_Make	PRIMARY	KEY	CLUSTERED	( PRD_Make_Key ASC )
	);

go