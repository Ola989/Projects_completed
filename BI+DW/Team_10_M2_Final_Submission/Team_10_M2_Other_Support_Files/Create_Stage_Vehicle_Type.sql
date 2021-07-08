/*
** Run this in SEIS732_Team_10_Products database
**
*/
if (exists(select name from sysobjects where name = 'Stage_Vehicle_Type' and type = 'U'))
	begin
		drop table Stage_Vehicle_Type;
	end;
go

create table Stage_Vehicle_Type
	(
		PRD_VehicleType_ID							bigint		not null,
		PRD_MMC_ID									smallint	not null,
		PRD_Model_Year								varchar(10)	not null,
		PRD_Manufacturer_Suggested_Retail_Price		money		not null,
		PRD_Wholesale_Price							money		not null,
		CONSTRAINT	Pk_Stage_Vehicle_Type	PRIMARY KEY CLUSTERED ( PRD_VehicleType_ID ASC )
	);

go