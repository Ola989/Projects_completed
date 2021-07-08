if (exists(select name from sysobjects where name ='Stage_SalesOrg_Dealer' and type = 'U'))
	begin
		drop table Stage_SalesOrg_Dealer;
	end;
go

create table Stage_SalesOrg_Dealer
	(
	DLR_ID smallint not null,
	DLR_Authorized_Makes varchar(30) not null,
    DLR_Phone varchar(30) not null   
	CONSTRAINT PK_SO_DLR_ID PRIMARY KEY CLUSTERED (DLR_ID ASC)
	);
go 