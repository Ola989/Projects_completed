if (exists(select name from sysobjects where name = 'Extract_RRV_Instance' and type = 'V'))
	begin
		drop view Extract_RRV_Instance;
	end;
go

create view Extract_RRV_Instance
as
select	
		RRV_Instance.CLR_ID		as			PRD_Color_ID,	
		RRV_Instance.VT_ID		as			PRD_VehicleType_ID
		
			
	from	
		RRV_Instance;		

go