DROP TABLE	[dbo].[T_ユーザ_職位]

CREATE TABLE	[dbo].[T_ユーザ_職位]
(
         [AutoNumberID]     int IDENTITY(1,1)		NOT	NULL
		,[職位ID]			int                     NOT NULL
        ,[ユーザID]         int                     NOT NULL
		,[登録日時]			datetime				NULL
		,[登録者]			nvarchar(128)			NULL
		,[更新日時]			datetime				NULL
		,[更新者]			nvarchar(128)			NULL
		 CONSTRAINT [PK_T_ユーザ_職位] PRIMARY KEY CLUSTERED 
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

CREATE INDEX	IX_職位ID		ON [dbo].[T_ユーザ_職位]([職位ID])

/*
TRUNCATE TABLE [dbo].[T_ユーザ_職位]

INSERT INTO [dbo].[T_ユーザ_職位]
(
		 [職位ID]
        ,[ユーザID]
		,[登録日時]
		,[登録者]
)
SELECT      c.[職位ID]
           ,b.[ユーザID]
           ,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time'
           ,N'山口（修）'
FROM        [dbo].[TEMP_USR_職員] AS a
            JOIN [dbo].[T_ユーザ] b
            ON      b.[表示名] = a.[表示名]
            JOIN [dbo].[T_職位] AS c
            ON      c.[職位名称] = a.[職位]

SELECT		 *
FROM		 [dbo].[T_ユーザ_職位]
ORDER BY	 [職位ID]

*/


