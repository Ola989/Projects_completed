if (exists(select name from sysobjects where name ='Stage_Corporate_Owner_Address' and type = 'U'))
	begin
		drop table Stage_Corporate_Owner_Address;
	end;
go

create table Stage_Corporate_Owner_Address
	(
	OADR_ID smallint not null,
	OWN_ID smallint not null,
	OADR_Address varchar(256) not null,
    OADR_County varchar(60) not null,
    OADR_Country varchar(60) not null    
	CONSTRAINT PK_OADR_ID PRIMARY KEY CLUSTERED (OADR_ID ASC)
	);
go