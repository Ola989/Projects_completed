if (exists(select name from sysobjects where name ='Stage_Corporate_Corporate' and type = 'U'))
	begin
		drop table Stage_Corporate_Corporate;
	end;
go

create table Stage_Corporate_Corporate
	(
	DLR_ID smallint not null,
	BR_ID smallint not null,
	WEB_ID smallint not null,
	DLR_Type varchar(11) not null,
    DLR_Email varchar(256) not null,
    DLR_Since datetime not null,
    CD_Name varchar(256) not null    
	CONSTRAINT PK_CC_DLR_ID PRIMARY KEY CLUSTERED (DLR_ID ASC)
	);
go