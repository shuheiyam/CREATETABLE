DROP TABLE	[dbo].[T_建物]

CREATE TABLE	[dbo].[T_建物]
(
		 [建物ID]			int IDENTITY(1,1)	NOT	NULL
		,[建物名]			NVARCHAR(128)		NOT NULL
		,[登録日時]			datetime				NULL
		,[登録者]			nvarchar(128)			NULL
		,[更新日時]			datetime				NULL
		,[更新者]			nvarchar(128)			NULL
		 CONSTRAINT [PK_T_建物] PRIMARY KEY CLUSTERED 
		 (
			 [建物ID] ASC
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

CREATE	NONCLUSTERED	INDEX	IX_建物ID_建物名	ON [dbo].[T_建物]([建物ID],[建物名])

/*
TRUNCATE TABLE [dbo].[T_建物]

INSERT INTO [dbo].[T_建物]
(
         [建物名]
		,[登録日時]
		,[登録者]  
)
VALUES
 (N'管理棟',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'研究本館',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'工学棟',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'生物棟',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'流動棟',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'湘南アイパーク',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')

SELECT	*
FROM	[dbo].[T_建物]
*/
