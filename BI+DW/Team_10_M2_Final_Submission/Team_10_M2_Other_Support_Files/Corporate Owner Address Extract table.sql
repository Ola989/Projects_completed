if (exists(select name from sysobjects where name ='Extract_Corporate_Owner_Address' and type = 'V'))
	begin
		drop view Extract_Corporate_Owner_Address;
	end;
go

create view Extract_Corporate_Owner_Address
as
select OADR_Address as Add_DLR_Address,
       OADR_Country as Add_DLR_Country,
       OADR_County as Add_DLR_County,
       OWN_ID  as Add_OWN_ID     
from   Owner_Address

go