if (exists(select name from sysobjects where name ='Stage_Product_Dealer' and type = 'U'))
	begin
		drop table Stage_Product_Dealer;
	end;
go

create table Stage_Product_Dealer
	(
	DLR_ID bigint not null,
	DLR_Code varchar(15) not null,
	DLR_City varchar(60) not null,
	DLR_State varchar(60) not null,
	DLR_Zip varchar(60) not null,
	CONSTRAINT PK_DLR_ID PRIMARY KEY CLUSTERED (DLR_ID ASC)
	);
go