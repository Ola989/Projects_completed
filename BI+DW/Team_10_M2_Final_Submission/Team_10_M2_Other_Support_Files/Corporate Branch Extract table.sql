if (exists(select name from sysobjects where name ='Extract_Corporate_Branch' and type = 'V'))
	begin
		drop view Extract_Corporate_Branch;
	end;
go

create view Extract_Corporate_Branch
as
select
       BR_ID As Bra_BR_ID,
       BR_Address as Bra_DLR_Address,
       BR_Country as Bra_DLR_Country,
       BR_County as Bra_DLR_County    
from   Branch

go