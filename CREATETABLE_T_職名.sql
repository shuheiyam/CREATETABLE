DROP TABLE	[dbo].[T_職名]

CREATE TABLE	[dbo].[T_職名]
(
		 [職名ID]			int IDENTITY(1,1)		NOT	NULL
		,[職名]				nvarchar(128)			NULL	-- 姓
		,[登録日時]			datetime				NULL
		,[登録者ID]			int 					NULL
		,[更新日時]			datetime				NULL
		,[更新者ID]			int 					NULL
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

/*
TRUNCATE TABLE [dbo].[T_職名]

INSERT INTO [dbo].[T_職名]
(
		 [職名]
		,[登録日時]
		,[登録者ID]
)
VALUES
 (N'所長',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'所長代理',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'センター長',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'センター長代理',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'部長',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'部長代理',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'管理部長',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'管理第二課長',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'係長',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'契約係長',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'契約係員',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'グループ長',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'室長',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'専門役',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'技術専門役',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'特任研究員',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'管理係主任',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'管理係員',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'管理係長',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'統括研究員',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'総括領域長',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'上席研究員',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'上席試験研究員',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'主任研究員',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'主任試験研究員',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'研究員',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'調査役',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'首席研究員',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)

SELECT		*
FROM		[dbo].[T_職名]

*/


