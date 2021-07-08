/*
** Run this in SEIS732_Team_10_Products database
**
*/
if (exists(select name from sysobjects where name = 'Extract_Vehicle_Type' and type = 'V'))
	begin
		drop view Extract_Vehicle_Type;
	end;
go

create view Extract_Vehicle_Type
as
select	VT_ID				as	PRD_VehicleType_ID,
		VT_Model_Year		as	PRD_Model_Year,
		VT_MSRP				as	PRD_Manufacturer_Suggested_Retail_Price,
		VT_Wholesale_Price	as	PRD_Wholesale_Price,
		MMC_ID				as	PRD_MMC_ID
from	Vehicle_Type;

go