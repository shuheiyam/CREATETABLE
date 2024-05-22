DROP TABLE	[dbo].[USR_所属]

CREATE TABLE	[dbo].[USR_所属]
(
		 [AutoNumberID]		int IDENTITY(1,1)	NOT NULL
		,[職員ID]			int					NOT NULL
		,[所属CD]			nchar(2)			NOT	NULL
		,[部課CD]			NCHAR(2)				NULL
		,[主所属]			bit					NOT NULL
		,[所属設定日]		date					NULL
		,[所属終了日]		date					NULL
		,[登録日時]			datetime				NULL
		,[登録者]			nvarchar(128)			NULL
		,[更新日時]			datetime				NULL
		,[更新者]			nvarchar(128)			NULL
		 CONSTRAINT [PK_USR_所属] PRIMARY KEY CLUSTERED 
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

TRUNCATE TABLE [dbo].[USR_所属]

INSERT INTO [dbo].[USR_所属]
(
		 [職員ID]
		,[所属CD]
		,[部課CD]
		,[主所属]
		,[登録日時]
		,[登録者]
)
SELECT      s.[職員ID]
           ,m.[所属CD]
		   ,b.[部課CD]
		   ,1
		   ,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time'
		   ,N'山口（修）'
FROM        [dbo].[USR_職員] AS s
            JOIN [MST_所属] AS m
            ON  s.[所属] = m.[所属名]
			LEFT JOIN [dbo].[MST_部課] b
			ON	b.[部課名] = s.[部課]


SELECT      *
FROM        [dbo].[USR_所属]
