SELECT	*
INTO	[dbo].[TEMP_USR_居室]
FROM	[dbo].[USR_居室]


DROP TABLE	[dbo].[T_居室]

CREATE TABLE	[dbo].[T_居室]
(
		 [AutoNumberID]		int IDENTITY(1,1)	NOT NULL
		,[ユーザID]			int					NOT NULL
		,[建物ID]			nchar(2)			NOT	NULL
		,[居室ID]			NCHAR(2)				NULL
		,[登録日時]			datetime				NULL
		,[登録者]			nvarchar(128)			NULL
		,[更新日時]			datetime				NULL
		,[更新者]			nvarchar(128)			NULL
		 CONSTRAINT [PK_T_居室] PRIMARY KEY CLUSTERED 
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

CREATE	NONCLUSTERED INDEX IX_建物ID_居室ID ON [dbo].[T_居室]([建物ID],[居室ID])


TRUNCATE TABLE [dbo].[T_居室]

INSERT INTO [dbo].[T_居室]
(
		 [ユーザID]
		,[建物ID]
		,[居室ID]
		,[登録日時]
		,[登録者]
)
SELECT	 a.[職員ID]
		,b.[建物ID]
		,c.[部屋ID]
		,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time'
		,N'山口（修）'
FROM	 [dbo].[TEMP_USR_職員] a
         INNER JOIN [dbo].[T_建物] b 
         ON     b.[建物名] = a.[建物] 
         LEFT JOIN [dbo].[T_部屋] c 
         ON     c.[部屋名] = a.[居室]


SELECT		*
FROM		 [dbo].[T_居室]
