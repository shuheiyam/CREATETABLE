DROP TABLE	[dbo].[T_雇用状態]

CREATE TABLE	[dbo].[T_雇用状態]
(
		 [雇用状態ID]			INT IDENTITY(1,1)	NOT	NULL
		,[雇用状態名称]		nvarchar(128)			NULL
		,[登録日時]				datetime				NULL
		,[登録者ID]				int 					NULL
		,[更新日時]				datetime				NULL
		,[更新者ID]				int 					NULL
		 CONSTRAINT [PK_T_雇用状態] PRIMARY KEY CLUSTERED 
		 (
			 [雇用状態ID] ASC
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
TRUNCATE TABLE [dbo].[T_雇用状態]

INSERT INTO [dbo].[T_雇用状態]
(
		 [雇用状態名称]
		,[登録日時]
		,[登録者ID]
)
VALUES
 (N'研究職員',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'職員',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'機構職員',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'委託職員',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'再雇用職員',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'常勤嘱託',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'特定業務嘱託職員',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'特定有期雇用職員',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'任期付研究員',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'派遣社員',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'非常勤職員',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'本省出向',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'退職',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)


SELECT		*
FROM		[dbo].[T_雇用状態]
ORDER BY	[雇用状態ID]

*/