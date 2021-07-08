if (exists(select name from sysobjects where name ='Extract_Corporate_Independent' and type = 'V'))
	begin
		drop view Extract_Corporate_Independent;
	end;
go

create view Extract_Corporate_Independent
as
select ID_Name as Ind_DLR_Name,
       DLR_Type as Ind_DLR_Independent_Or_Corporate,
       DLR_Email as Ind_DLR_Email_Address,
       DLR_Since as Ind_DLR_Initiation_Date,
       DLR_ID as Ind_DLR_ID,       
       WEB_ID as Ind_DLR_Official_Website_ID       
from   Independent

go