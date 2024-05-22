DROP TABLE	[dbo].[MST_アカウントタイプ]

CREATE TABLE	[dbo].[MST_アカウントタイプ]
(
		 [アカウントタイプID]		nchar(2)			NOT	NULL
		,[アカウントタイプ]			NVARCHAR(128)		NOT NULL
		,[登録日時]			datetime				NULL
		,[登録者]			nvarchar(128)			NULL
		,[更新日時]			datetime				NULL
		,[更新者]			nvarchar(128)			NULL
		 CONSTRAINT [PK_MST_アカウントタイプ] PRIMARY KEY CLUSTERED 
		 (
			 [アカウントタイプID] ASC
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


TRUNCATE TABLE [dbo].[MST_アカウントタイプ]


INSERT INTO [dbo].[MST_アカウントタイプ]
(
		 [アカウントタイプID]
		,[アカウントタイプ]
		,[登録日時]
		,[登録者]  
)
VALUES
 ('01',N'本人',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,('02',N'共用',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')


SELECT	*
FROM	[dbo].[MST_アカウントタイプ]
