USE [CAPSTONE]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/*****************************************************************************************************************
NAME:    dbo.v_cases_approved_attorney
PURPOSE: Create the dbo.v_cases_approved_attorney

MODIFICATION LOG:
Ver      Date        Author                Description
-----   ----------   ----------------      -------------------------------------------------------------------------------
1.0     03/08/2021   ADRIANASILVEIRA       1. Built this view for Final Capstone Project.


RUNTIME: 
30 seconds

NOTES:
This view shows the number of Approved cases by Attorney Firm, so I can calculate the ratio between Approved/Denied cases by Attorney firm.

******************************************************************************************************************/

CREATE VIEW [dbo].[dbo.v_cases_approved_attorney] AS (
SELECT 
[AGENT_ATTORNEY_FIRM_NAME]
,p.CASE_STATUS
,COUNT (CASE_Status) AS 'Number of Approved Cases'
FROM dbo.PERM_2020 p
WHERE p.CASE_STATUS = 'Certified'
GROUP BY p.AGENT_ATTORNEY_FIRM_NAME
,p.CASE_STATUS);

GO


