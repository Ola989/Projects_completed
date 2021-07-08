/****** This needs to be run in the star schema database  ******/

SELECT
	D.DLR_State as Dealer_State,
	format(sum(S.RRV_Handling_Fees), 'C' , 'en-US') as RRV_Handling_Fees,
	format(sum(S.RRV_Processing_Fees), 'C', 'en-US') as RRV_Processing_Fees,
	format(sum(S.RRV_Transit_Fees), 'C', 'en-US') as RRV_Transit_Fees

from
	DEALER D,
	RRV_SALES S
	
where D.DLR_Key = S.DLR_Key
and
	(
		D.DLR_State = 'AR'
	or
		D.DLR_State = 'CA'
	or
		D.DLR_State = 'NM'
	or
		D.DLR_State = 'OR'
	or
		D.DLR_State = 'WA'
		)
and 
	D.DLR_Independent_Or_Corporate = 'Corporate'

group by D.DLR_State