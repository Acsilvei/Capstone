/*****************************************************************************************************************
NAME:    dbo.PERM_2020
PURPOSE: Create the dbo.PERM_2020 table

MODIFICATION LOG:
Ver      Date        Author                 Description
-----   ----------   ----------------       -------------------------------------------------------------------------------
1.0     02/15/2021   ADRIANA SILVEIRA       1. Built and load this table for my Capstone Project

RUNTIME: 
Approx. 1 min 30 sec

NOTES:
This table uses info contained in the source table dbo.PERM_FY2020Q4$ which was extracted from the website . It adds a PK to the table (INDEX), reduces the number of columns from 154 in the table source to 28 columns. The script alo includes the Drop statement and the load statement, which allow the same script to be run several times without error.
 
LICENSE: This code is covered by the GNU General Public License which guarantees end users
the freedom to run, study, share, and modify the code. This license grants the recipients
of the code the rights of the Free Software Definition. All derivative work can only be
distributed under the same license terms.
 
******************************************************************************************************************/




USE [CAPSTONE]
GO

-- Drop Table

DROP TABLE [dbo].[PERM_2020]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- Create Table

CREATE TABLE [dbo].[PERM_2020](
	[INDEX] [int] IDENTITY(1,1) NOT NULL,
	[CASE_NUMBER] [nvarchar](255) NULL,
	[CASE_STATUS] [nvarchar](255) NULL,
	[RECEIVED_DATE] [datetime] NULL,
	[DECISION_DATE] [datetime] NULL,	
	[EMPLOYER_NAME] [nvarchar](255) NULL,		
	[EMPLOYER_CITY] [nvarchar](255) NULL,
	[EMPLOYER_STATE_PROVINCE] [nvarchar](255) NULL,
	[EMPLOYER_NUM_EMPLOYEES] [float] NULL,
	[EMPLOYER_YEAR_COMMENCED_BUSINESS] [float] NULL,
	[NAICS_CODE] [float] NULL,
	[AGENT_ATTORNEY_FIRM_NAME] [nvarchar](255) NULL,
	[WORKSITE_CITY] [nvarchar](255) NULL,
	[WORKSITE_STATE] [nvarchar](255) NULL,
	[JOB_TITLE] [nvarchar](255) NULL,
	[MINIMUM_EDUCATION] [nvarchar](255) NULL,
	[MAJOR_FIELD_OF_STUDY] [nvarchar](255) NULL,
	[REQUIRED_EXPERIENCE] [nvarchar](255) NULL,
	[REQUIRED_EXPERIENCE_MONTHS] [float] NULL,
	[FOREIGN_LANGUAGE_REQUIRED] [nvarchar](255) NULL,
	[COUNTRY_OF_CITIZENSHIP] [nvarchar](255) NULL,
	[CLASS_OF_ADMISSION] [nvarchar](255) NULL,
	[FOREIGN_WORKER_EDUCATION] [nvarchar](255) NULL,
	[FOREIGN_WORKER_INFO_MAJOR] [nvarchar](255) NULL,
	[FOREIGN_WORKER_REQ_EXPERIENCE] [nvarchar](255) NULL,
	[EMPLOYER_COMPLETED_APPLICATION] [nvarchar](255) NULL,
	[PREPARER_TITLE] [nvarchar](255) NULL,
	[EMP_INFO_DECL_TITLE] [nvarchar](255) NULL
) ON [PRIMARY]
GO

-- Load Table

INSERT INTO [dbo].[PERM_2020]
SELECT DISTINCT 
	[CASE_NUMBER],
	[CASE_STATUS],
	[RECEIVED_DATE],
	[DECISION_DATE],
	[EMPLOYER_NAME],		
	[EMPLOYER_CITY],
	[EMPLOYER_STATE_PROVINCE],
	[EMPLOYER_NUM_EMPLOYEES],
	[EMPLOYER_YEAR_COMMENCED_BUSINESS],
	[NAICS_CODE],
	[AGENT_ATTORNEY_FIRM_NAME],
	[WORKSITE_CITY],
	[WORKSITE_STATE],
	[JOB_TITLE],
	[MINIMUM_EDUCATION],
	[MAJOR_FIELD_OF_STUDY],
	[REQUIRED_EXPERIENCE],
	[REQUIRED_EXPERIENCE_MONTHS],
	[FOREIGN_LANGUAGE_REQUIRED],
	[COUNTRY_OF_CITIZENSHIP],
	[CLASS_OF_ADMISSION],
	[FOREIGN_WORKER_EDUCATION],
	[FOREIGN_WORKER_INFO_MAJOR],
	[FOREIGN_WORKER_REQ_EXPERIENCE],
	[EMPLOYER_COMPLETED_APPLICATION],
	[PREPARER_TITLE],
	[EMP_INFO_DECL_TITLE]
  FROM [dbo].[PERM_FY2020Q4$] AS src


