DROP TABLE	[dbo].[T_職名]

CREATE TABLE	[dbo].[T_職名]
(
		 [職名ID]		tinyint IDENTITY(1,1)	NOT	NULL
		,[職名]			nvarchar(128)				NULL
		,[建制順]		tinyint 					NULL
		,[登録日時]		datetime					NULL
		,[登録者ID]		int 						NULL
		,[更新日時]		datetime					NULL
		,[更新者ID]		int 						NULL
		 CONSTRAINT [PK_T_職名] PRIMARY KEY CLUSTERED 
		 (
			 [職名ID] ASC
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

CREATE INDEX	IX_職名		ON [dbo].[T_職名]([職名])
CREATE INDEX 	IX_建制順	ON [dbo].[T_職名]([建制順])

/*
TRUNCATE TABLE [dbo].[T_職名]

INSERT INTO [dbo].[T_職名]
(
		 [職名]
		,[建制順]
		,[登録日時]
		,[登録者ID]
)
VALUES
 (N'所長',1,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'所長代理',2,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'首席研究員',3,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'センター長',4,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'センター長代理',5,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'領域長',6,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'部長',7,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'部長代理',8,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'グループ長',9,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'室長',10,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'特任研究員',11,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'統括研究員',12,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'上席研究員',13,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'上席試験研究員',14,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'主任研究員',15,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'主任試験研究員',16,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'研究員',17,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'技術専門役',18,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'専門役',19,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'管理部長',20,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'課長',21,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'係長',22,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'主任',23,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'調査役',24,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)

SELECT		*
FROM		[dbo].[T_職名]

*/


