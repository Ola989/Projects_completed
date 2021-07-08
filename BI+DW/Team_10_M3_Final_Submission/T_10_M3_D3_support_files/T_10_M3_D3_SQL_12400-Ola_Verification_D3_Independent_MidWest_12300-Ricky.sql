/*
**	Must be run in SEIS732_Team_10_Star_Schema database
**
**	Verifying Pivot table report implemented in: T_10_M3_D3_Independent_MidWest_12300-Ricky.xlsx
**
**
**	where the MidWest is defined as dealers in IA, MN, ND, SD and WI
**
**	This SQL originally authored by: 12400-Ola
*/
select
	D.DLR_State as 'Dealership State', sum(R.RRV_Handling_Fees) as 'RRV Handling Fees', 
	round(sum(R.RRV_Processing_Fees),2) as 'RRV Processing Fees',
	sum(R.RRV_Transit_Fees) as 'RRV Transit Fees' 
	from 
			RRV_SALES			R,
			DEALER				D
	where 
			R.DLR_Key	=	D.DLR_Key
	and
		(
				D.DLR_State = 'IA'
			or
				D.DLR_State = 'MN'
			or
				D.DLR_State = 'ND'
			or
				D.DLR_State = 'SD'
			or
				D.DLR_State = 'WI'
			)
	and
			(
				D.DLR_Independent_Or_Corporate = 'Independent' 

			)

	group by
			D.DLR_State
			
	order by
			D.DLR_State;