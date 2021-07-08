if (exists(select name from sysobjects where name ='Extract_Product_Dealer' and type = 'V'))
	begin
		drop view Extract_Product_Dealer;
	end;
go

create view Extract_Product_Dealer
as
select DLR_Code as Prod_DLR_Code,
       DLR_City as Prod_DLR_City,
       DLR_State as Prod_DLR_State,
       DLR_Zip as Prod_DLR_Zip,
       DLR_ID as Prod_DLR_ID
from 
     Dealer   
     
go