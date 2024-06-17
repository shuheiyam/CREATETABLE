DROP TABLE	[dbo].[T_雇用状態]

CREATE TABLE	[dbo].[T_雇用状態]
(
		 [雇用状態ID]		tinyINT IDENTITY(1,1)	NOT	NULL
		,[雇用状態名称]		nvarchar(128)				NULL
		,[建制順]			int 						NULL
		,[登録日時]			datetime					NULL
		,[登録者ID]			int 						NULL
		,[更新日時]			datetime					NULL
		,[更新者ID]			int 						NULL
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

CREATE INDEX 	IX_雇用状態名称		ON [dbo].[T_雇用状態](雇用状態名称)
CREATE INDEX 	IX_建制順			ON [dbo].[T_雇用状態](建制順)

/*
TRUNCATE TABLE [dbo].[T_雇用状態]

INSERT INTO [dbo].[T_雇用状態]
(
		 [雇用状態名称]
		,[建制順]
		,[登録日時]
		,[登録者ID]
)
VALUES
 (N'本省職員',1,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'機構職員',2,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'事務職員',3,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'研究職員',4,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'常勤嘱託',5,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'委託職員',6,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'任期付研究員',7,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'再雇用職員',8,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'特定有期雇用職員',9,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'特定業務嘱託職員',10,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'非常勤職員',11,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'派遣社員',12,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'退職',13,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)

SELECT		*
FROM		[dbo].[T_雇用状態]
ORDER BY	[雇用状態ID]

*/