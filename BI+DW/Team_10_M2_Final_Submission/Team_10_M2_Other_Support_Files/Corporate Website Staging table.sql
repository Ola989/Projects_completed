if (exists(select name from sysobjects where name ='Stage_Corporate_Website' and type = 'U'))
	begin
		drop table Stage_Corporate_Website;
	end;
go

create table Stage_Corporate_Website
	(
	WEB_ID smallint not null,
    WEB_URL varchar(256) not null,
    WEB_ADMIN varchar(256) not null,
    WEB_Start_Date datetime not null
	CONSTRAINT PK_WEB_ID PRIMARY KEY CLUSTERED (WEB_ID ASC)
	);
go