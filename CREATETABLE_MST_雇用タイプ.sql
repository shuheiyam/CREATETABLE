DROP TABLE	[dbo].[MST_雇用タイプ]

CREATE TABLE	[dbo].[MST_雇用タイプ]
(
		 [雇用タイプCD]			nchar(2)			NOT	NULL
		,[雇用タイプ名称]		nvarchar(128)			NULL
		,[登録日時]				datetime				NULL
		,[登録者]				nvarchar(128)			NULL
		 CONSTRAINT [PK_MST_雇用タイプ] PRIMARY KEY CLUSTERED 
		 (
			 [雇用タイプCD] ASC
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

TRUNCATE TABLE [dbo].[MST_雇用タイプ]

INSERT INTO [dbo].[MST_雇用タイプ]
(
		 [雇用タイプCD]
		,[雇用タイプ名称]
		,[登録日時]
		,[登録者]
)
VALUES
	 ('01',N'研究職員',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口(修)')
	,('02',N'職員',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口(修)')
	,('03',N'機構職員',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口(修)')
	,('04',N'委託職員',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口(修)')
	,('05',N'再雇用職員',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口(修)')
	,('06',N'常勤嘱託',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口(修)')
	,('07',N'特定業務嘱託職員',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口(修)')
	,('08',N'特定有期雇用職員',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口(修)')
	,('09',N'任期付研究員',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口(修)')
	,('10',N'派遣社員',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口(修)')
	,('11',N'非常勤職員',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口(修)')
	,('12',N'本省出向',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口(修)')


SELECT		*
FROM		[dbo].[MST_雇用タイプ]
ORDER BY	[雇用タイプCD]