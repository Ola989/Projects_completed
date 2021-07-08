/*
** Run this in SEIS732_Team_10_Products database
**
*/
if (exists(select name from sysobjects where name = 'Stage_MMC_Model' and type = 'U'))
	begin
		drop table Stage_MMC_Model;
	end;
go

create table Stage_MMC_Model
	(
		PRD_MMC_ID				smallint		not null,
		PRD_Model_Name			varchar(40)		not null,
		PRD_Model_Description	varchar(256)	not null,
		PRD_Model_Key			smallint		identity(1,1)	not null
		CONSTRAINT	PK_Stage_MMC_Model	PRIMARY	KEY	CLUSTERED	( PRD_Model_Key ASC )
	);

go