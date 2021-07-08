if (exists(select name from sysobjects where name ='Stage_Corporate_Branch' and type = 'U'))
	begin
		drop table Stage_Corporate_Branch;
	end;
go

create table Stage_Corporate_Branch
	(
	BR_ID smallint not null,
	BR_Address varchar(256) not null,
    BR_County varchar(60) not null,
    BR_Country varchar(60) not null,   
	CONSTRAINT PK_BR_ID PRIMARY KEY CLUSTERED (BR_ID ASC)
	);
go