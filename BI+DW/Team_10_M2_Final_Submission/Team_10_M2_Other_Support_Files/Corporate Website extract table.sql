if (exists(select name from sysobjects where name ='Extract_Corporate_Website' and type = 'V'))
	begin
		drop view Extract_Corporate_Website;
	end;
go

create view Extract_Corporate_Website
as
select WEB_ID as Web_DLR_Official_Website_ID,
       WEB_URL as Web_DLR_WebsiteURL,
       WEB_Admin as Web_DLR_Official_WebsiteAdministrator_Email,
       WEB_Start_Date as Web_DLR_Official_Website_Start_Date   

from   Website
       
go