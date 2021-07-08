if (exists(select name from sysobjects where name ='Extract_Staged_Dealer' and type = 'V'))
	begin
		drop view Extract_Staged_Dealer;
	end;
go

create view Extract_Staged_Dealer
as
select
   
    S_PRO.DLR_ID,
    S_PRO.DLR_Code,
    S_IND.DLR_Name,
    S_OWN.DLR_Address,
    S_BRA.DLR_City,
    S_OWN.DLR_County,
    S_OWN.DLR_Country,
    S_PRO.DLR_State,
    S_BRA.DLR_Address,
    S_BRA.DLR_County,
    S_BRA.DLR_Country,
    S_BRA.BR_ID,
    S_SAL.DLR_Authorized_Makes,
    S_SAL.DLR_Phone_Number,
    S_SAL.DLR_ID,
    S_WEB.DLR_Official_Website_ID,
    S_WEB.DLR_Official_WebsiteURL,
    S_WEB.DLR_Official_Website_Start_Date,
    S_WEB.DLR_WebsiteAdministrator_Email,
    S_IND.DLR_Independent_Or_Corporate,
    S_IND.DLR_Email_Address,
    S_IND.DLR_Initiation_Date,
    S_IND.DLR_Official_Website_ID,
    S_COR.DLR_Independent_Or_Corporate,
    S_COR.DLR_Email_Address,
    S_COR.DLR_Initiation_Date,
    S_COR.DLR_Official_Website_ID
  
from   
    Stage_Corporate_Owner_Address S_OWN,
    Stage_Corporate_Independent S_IND,
    Stage_Corporate_Branch S_BRA,
    Stage_Corporate_Corporate S_COR,
    Stage_Corporate_Website S_WEB,
    Stage_Product_Dealer S_PRO,
    Stage_SalesOrg_Dealer S_SAL
where
    S_OWN.OADR_ID = S_IND.Ind_OADR_ID and
    S_IND.WEB_ID = S_WEB.WEB_ID and
    S_WEB.WEB_ID = S_COR.WEB_ID and
    S_COR.BR_ID = S_BRA.BR_ID;

go