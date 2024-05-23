DROP TABLE	[dbo].[T_職位]

CREATE TABLE	[dbo].[T_職位]
(
		 [職位CD]			int IDENTITY(1,1)		NOT	NULL
		,[職位名称]			nvarchar(128)			NULL	-- 姓
		,[登録日時]			datetime				NULL
		,[登録者]			nvarchar(128)			NULL
		 CONSTRAINT [PK_T_職位] PRIMARY KEY CLUSTERED 
		 (
			 [職位CD] ASC
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


TRUNCATE TABLE [dbo].[T_職位]

INSERT INTO [dbo].[T_職位]
(
		 [職位名称]
		,[登録日時]
		,[登録者]
)
VALUES
 (N'所長',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口(修)')
,(N'所長代理',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口(修)')
,(N'センター長',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口(修)')
,(N'センター長代理',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口(修)')
,(N'グループ長',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口(修)')
,(N'部長',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口(修)')
,(N'部長代理',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口(修)')
,(N'管理部長',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口(修)')
,(N'係長',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口(修)')
,(N'管理係長',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口(修)')
,(N'管理第二課長',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口(修)')
,(N'技術專門役',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口(修)')
,(N'契約係長',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口(修)')
,(N'契約係員',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口(修)')
,(N'管理係主任',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口(修)')
,(N'管理係員',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口(修)')
,(N'首席研究員',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口(修)')
,(N'上席研究員',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口(修)')
,(N'主任研究員',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口(修)')
,(N'研究員',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口(修)')
,(N'主任試験研究員',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口(修)')
,(N'上席試験研究員',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口(修)')
,(N'専門役',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口(修)')
,(N'総括領域長',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口(修)')
,(N'調査役',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口(修)')
,(N'統括研究員',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口(修)')
,(N'特任研究員',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口(修)')


SELECT		 *
FROM		 [dbo].[T_職位]
ORDER BY	 [職位CD]
