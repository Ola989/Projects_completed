declare @count_PRODUCT int
select	@count_PRODUCT=count(*)	from PRODUCT
if	(@count_PRODUCT<>1009901)
begin
declare	@MSG as varchar(8000) = concat(		char(10),
													'==================================================================================',
													'ERROR: PRODUCT failed to load all expected values: ',char(10),
													'Table PRODUCT',	char(10),
													'Expected Count:	1009901',	char(10),
														'Actual Count:	',@count_PRODUCT,	char(10),
													'=================================================================================='
													);
		throw 50001,@MSG,1;
end