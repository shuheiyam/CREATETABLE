DROP TABLE	[dbo].[T_ユーザ_雇用タイプ]

CREATE TABLE	[dbo].[T_ユーザ_雇用タイプ]
(
         [AutoNumberID]         INT IDENTITY(1,1)   NOT NULL
        ,[ユーザID]             INT                 NOT NULL
		,[雇用タイプID]			INT                 NOT	NULL
		,[登録日時]				datetime				NULL
		,[登録者]				nvarchar(128)			NULL
		,[更新日時]				datetime				NULL
		,[更新者]				nvarchar(128)			NULL
		 CONSTRAINT [PK_T_ユーザ_雇用タイプ] PRIMARY KEY CLUSTERED 
		 (
			 [AutoNumberID] ASC
		 )
		 WITH
		 (
				 PAD_INDEX = OFF
				,STATISTICS_NORECOMPUTE = OFF
				,IGNORE_DUP_KEY = OFF
				,ALLOW_ROW_LOCKS = ON
				,ALLOW_PAGE_LOCKS = ON
				,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
		 ) ON [PRIMARY]
) ON [PRIMARY]
GO

/*
TRUNCATE TABLE [dbo].[T_ユーザ_雇用タイプ]

INSERT INTO [dbo].[T_ユーザ_雇用タイプ]
(
         [ユーザID]
		,[雇用タイプID]
		,[登録日時]
		,[登録者]
)
SELECT		u.ユーザID
		   ,t.雇用タイプID
		   ,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time'
		   ,N'山口（修）'
FROM		[dbo].[T_ユーザ] AS u 
			JOIN [dbo].[T_雇用タイプ] AS t 
			ON		t.[雇用タイプ名称] = u.雇用タイプ

SELECT		*
FROM		[dbo].[T_ユーザ_雇用タイプ]
ORDER BY	[雇用タイプID]

*/