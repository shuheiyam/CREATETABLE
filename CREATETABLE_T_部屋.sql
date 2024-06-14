DROP TABLE	[dbo].[T_部屋]

CREATE TABLE	[dbo].[T_部屋]
(
		 [部屋ID]			int IDENTITY(1,1)	NOT	NULL
		,[部屋名称]			NVARCHAR(128)		NOT NULL
		,[建物ID]			INT						NULL
		-- ,[固定電話ID]		INT						NULL
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

CREATE	NONCLUSTERED	INDEX	IX_建物ID_部屋ID_居室名称	ON [dbo].[T_部屋]([建物ID],[部屋ID],[部屋名称])

/*
1	管理棟
2	研究本館
3	工学棟
4	生物棟
5	流動棟
6	湘南アイパーク
*/


/*
TRUNCATE TABLE [dbo].[T_部屋]

INSERT INTO [dbo].[T_部屋]
(
		 [部屋名称]
		,[建物ID]
		,[登録日時]
		,[登録者ID]  
)
VALUES
 (N'所長室',1,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'所長代理室',1,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'管理第二課',1,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'研推センター',1,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'センター長室',1,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'過労死等防止調査研究センター',1,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'図書室',1,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'106-1',2,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'106-2',2,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'108-2',2,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'110',2,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'112',2,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'114',2,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'116',2,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'118国際センター',2,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'121',2,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'204',2,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'206-1',2,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'208-2',2,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'210',2,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'214',2,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'216',2,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'218',2,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'304-1',2,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'304-2',2,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'306-1',2,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'306-2',2,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'320',2,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'322',2,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'323',2,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'324',2,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'404',2,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'408',2,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'418-1',2,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'418-2',2,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'420-2',2,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'501サーバー室',2,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'505-1',2,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'510/511',2,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'516',2,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'518',2,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'522-1',2,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'B44E',6,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)


SELECT	*
FROM	[dbo].[T_部屋]
*/


