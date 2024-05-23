DROP TABLE	[dbo].[T_部課]

CREATE TABLE	[dbo].[T_部課]
(
		 [部課ID]			int IDENTITY(1,1)	NOT	NULL
		,[部課名]			NVARCHAR(128)		NOT NULL
		,[登録日時]			datetime				NULL
		,[登録者]			nvarchar(128)			NULL
		,[更新日時]			datetime				NULL
		,[更新者]			nvarchar(128)			NULL
		 CONSTRAINT [PK_T_部課] PRIMARY KEY CLUSTERED 
		 (
			 [部課ID] ASC
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

CREATE NONCLUSTERED INDEX IX_部課ID_部課名		ON [dbo].[T_部課]([部課ID],[部課名])

TRUNCATE TABLE [dbo].[T_部課]

INSERT INTO [dbo].[T_部課]
(
		 [部課名]
		,[登録日時]
		,[登録者]
)
VALUES
 (N'研究推進部門',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'管理第二課',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'国際センター',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'システム担当',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'はく露評価研究部',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'疫字研究部',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'化字物質情報管理部',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'生体防御評価研究室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'有害性評価研究部',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'登戸分室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'動物管理室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'図書',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')


SELECT	*
FROM	[dbo].[T_部課]
