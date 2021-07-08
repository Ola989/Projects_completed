/*
** Run this in SEIS732_Team_10_Products database
**
*/
if (exists(select name from sysobjects where name = 'Stage_MMC' and type = 'U'))
	begin
		drop table Stage_MMC;
	end;
go

create table Stage_MMC
	(
		PRD_MMC_ID				smallint		not null,
		PRD_Class_Name			varchar(40)		not null,
		PRD_Class_Description	varchar(256)	not null,
		PRD_Class_Key			smallint		not null,
		PRD_Make_Name			varchar(40)		not null,
		PRD_Make_Description	varchar(256)	not null,
		PRD_Make_Key			smallint		not	null,
		PRD_Model_Name			varchar(40)		not null,
		PRD_Model_Description	varchar(256)	not null,
		PRD_Model_Key			smallint		not null
			
			
		CONSTRAINT	PK_Stage_MMC	PRIMARY	KEY	CLUSTERED	( PRD_MMC_ID ASC )
	);

go