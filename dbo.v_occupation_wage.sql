/*****************************************************************************************************************
NAME:    dbo.v_occupation_wage
PURPOSE: Create the dbo.v_occupation_wage view

MODIFICATION LOG:
Ver      Date        Author                Description
-----   ----------   ----------------      -------------------------------------------------------------------------------
1.0     02/15/2021   ADRIANASILVEIRA       1. Built this view for Final Capstone Project.


RUNTIME: 
0 min

NOTES:
This view shows the number of distinct Standard Occupational Classification and their average wage combining fiels from [dbo].[PERM_2020] and [dbo].['2018 Structure$'] tables.

******************************************************************************************************************/

CREATE VIEW v_occupation_wage AS (
SELECT count([INDEX]) AS 'Total Cases'
      ,[PW_SOC_CODE]
      ,AVG([PW_WAGE]) AS 'Average Yearly Wage'
	  ,[Detailed Occupation]
	  ,[Occupation Description]
  FROM [CAPSTONE].[dbo].[PERM_2020] p
  JOIN  [dbo].['2018 Structure$'] soc ON p.[PW_SOC_CODE] = soc.[Detailed Occupation]
  GROUP BY  
	   [PW_SOC_CODE]
      ,[Detailed Occupation]
	  ,[Occupation Description]);