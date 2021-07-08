if (exists(select name from sysobjects where name ='Extract_SalesOrg_Dealer' and type = 'V'))
	begin
		drop view Extract_SalesOrg_Dealer;
	end;
go

create view Extract_SalesOrg_Dealer
as
select DLR_Type as Sales_DLR_Authorized_Makes,
       DLR_Phone as Sales_DLR_Phone_Number,
       DLR_ID as Sales_DLR_ID,
       MICSA_ID as Sales_MICSA_ID,
       ST_ID as Sales_SI_ID
from Dealer
 
go