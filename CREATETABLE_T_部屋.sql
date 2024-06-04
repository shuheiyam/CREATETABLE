DROP TABLE	[dbo].[T_部屋]

CREATE TABLE	[dbo].[T_部屋]
(
		 [部屋ID]			int IDENTITY(1,1)	NOT	NULL
		,[部屋名称]			NVARCHAR(128)		NOT NULL
		,[固定電話ID]		INT						NULL
		,[登録日時]			datetime				NULL
		,[登録者ID]			int 					NULL
		,[更新日時]			datetime				NULL
		,[更新者ID]			int 					NULL
		 CONSTRAINT [PK_T_部屋] PRIMARY KEY CLUSTERED 
		 (
			 [部屋ID] ASC
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

CREATE	NONCLUSTERED	INDEX	IX_部屋ID_居室名称	ON [dbo].[T_部屋]([部屋ID],[部屋名称])

/*
TRUNCATE TABLE [dbo].[T_部屋]

INSERT INTO [dbo].[T_部屋]
(
		 [部屋名称]
		,[登録日時]
		,[登録者ID]  
)
VALUES
 (N'所長室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'所長代理室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'管理第二課',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'研推センター',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'センター長室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'過労死等防止調査研究センター',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'図書室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'106-1',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'106-2',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'108-2',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'110',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'112',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'114',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'116',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'118国際センター',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'121',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'204',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'206-1',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'208-2',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'210',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'214',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'216',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'218',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'304-1',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'304-2',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'306-1',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'306-2',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'320',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'322',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'323',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'324',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'404',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'408',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'418-1',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'418-2',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'420-2',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'501サーバー室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'505-1',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'510',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'511',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'516',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'518',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'522-1',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'B44E',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)


SELECT	*
FROM	[dbo].[T_部屋]
*/


