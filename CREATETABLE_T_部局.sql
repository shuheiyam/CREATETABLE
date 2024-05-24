DROP TABLE	[dbo].[T_部局]

CREATE TABLE	[dbo].[T_部局]
(
		 [部局ID]			int IDENTITY(1,1)	NOT	NULL
		,[部局名]			NVARCHAR(128)		NOT NULL
		,[登録日時]			datetime				NULL
		,[登録者]			nvarchar(128)			NULL
		,[更新日時]			datetime				NULL
		,[更新者]			nvarchar(128)			NULL
		 CONSTRAINT [PK_T_部局] PRIMARY KEY CLUSTERED 
		 (
			 [部局ID] ASC
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

CREATE	NONCLUSTERED	INDEX	IX_部局ID_部局名	ON [dbo].[T_部局]([部局ID],[部局名])

/*
TRUNCATE TABLE [dbo].[T_部局]

INSERT INTO [dbo].[T_部局]
(
		 [部局名]
		,[登録日時]
		,[登録者]  
)
VALUES
 (N'幹部',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'管理部',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'研究推進国際センター',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'監査室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'開発グループ',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'支援係',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'化学物質情報管理研究センター',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'産業保健研究グループ',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'病理グループ',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'過労死等防止調査研究センター',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'労働者放射線障害防止研究センター',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'環境計測研究グループ',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'人間工学研究グループ',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'社会労働衛生研究グループ',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'試験グループ',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'受付',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'清掃',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'設備',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'警備',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')


SELECT	*
FROM	[dbo].[T_部局]
*/
