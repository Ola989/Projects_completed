if (exists(select name from sysobjects where name ='Stage_Corporate_Independent' and type = 'U'))
	begin
		drop table Stage_Corporate_Independent;
	end;
go

create table Stage_Corporate_Independent
	(
	DLR_ID smallint not null,
	OADR_ID smallint not null,
	WEB_ID smallint not null,
	DLR_Type varchar(11) not null,
    DLR_Code varchar(256) not null,
    DLR_Since datetime not null,
    ID_Name varchar(256) not null   
    	CONSTRAINT PK_I_DLR_ID PRIMARY KEY CLUSTERED (DLR_ID ASC)
	);
go