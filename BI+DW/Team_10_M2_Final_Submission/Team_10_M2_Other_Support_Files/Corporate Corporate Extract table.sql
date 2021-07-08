if (exists(select name from sysobjects where name ='Extract_Corporate_Corporate' and type = 'V'))
	begin
		drop view Extract_Corporate_Corporate;
	end;
go

create view Extract_Corporate_Corporate
as
select CD_Name as Corp_DLR_Name,
       DLR_Type as Corp_DLR_Independent_Or_Corporate,
       DLR_Email as Corp_DLR_Email_Address,
       DLR_Since as Corp_DLR_Initiation_Date,
       DLR_ID as Corp_DLR_ID,
       WEB_ID as Corp_DLR_Official_Website_ID,
       BR_ID as Corp_BR_ID      
from   Corporate

go