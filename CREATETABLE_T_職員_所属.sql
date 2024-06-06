DROP TABLE	[dbo].[T_職員_所属]

CREATE TABLE	[dbo].[T_職員_所属]
(
		 [AutoNumberID]		int IDENTITY(1,1)	NOT NULL
		,[職員ID]			int					NOT NULL
		,[所属ID]			int						NULL
		,[所属設定日]		date					NULL
		,[所属終了日]		date					NULL
		,[登録日時]			datetime				NULL
		,[登録者ID]			nvarchar(128)			NULL
		,[更新日時]			datetime				NULL
		,[更新者ID]			nvarchar(128)			NULL
		 CONSTRAINT [PK_T_職員_所属] PRIMARY KEY CLUSTERED 
		 (
			 [AutoNumberID] ASC
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


TRUNCATE TABLE [dbo].[T_職員_所属]

/* 部局のみのアカウント */
INSERT INTO [dbo].[T_職員_所属]
(
		 [職員ID]
		,[所属ID]
		-- ,[所属設定日]
		-- ,[所属終了日]
		,[登録日時]
		,[登録者ID]
		-- ,[更新日時]
		-- ,[更新者ID]
)
SELECT	 b.[職員ID]
		,a.部局ID		AS 所属ID
		-- ,[所属設定日]
		-- ,[所属終了日]
		,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time'
		,160
		-- ,[更新日時]
		-- ,[更新者ID]
FROM 	dbo.T_部局 AS a 
		JOIN dbo.TEMP_ExportedAllUsers AS b
		ON 	b.部局 = a.部局名称


/* 部課ありアカウント */
UPDATE [dbo].[T_職員_所属]
SET 	所属ID = c.部局ID
	   ,登録日時 = GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time'
FROM 	dbo.T_職員_所属 AS a 
		JOIN dbo.TEMP_ExportedAllUsers AS b
		ON 		b.職員ID = a.職員ID
		JOIN dbo.T_部局 AS c 
		ON 		c.部局名称 = b.部課


/* 補正（なぜか漏れた） */
UPDATE [dbo].[T_職員_所属]
SET 	所属ID = 26
	   ,登録日時 = GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time'
WHERE 	職員ID IN (118,119)

/* 検証 */
SELECT	    b.AutoNumberID
		   ,a.職員ID
		   ,a.表示名
		   ,b.所属ID
		   ,c.部局			AS 所属
FROM 		dbo.T_職員 AS a 
			LEFT JOIN 	dbo.T_職員_所属 AS b 
			ON 	b.職員ID = a.職員ID
			LEFT JOIN viewer.部局ID_部局 AS c 
			ON 	c.部局ID = b.所属ID
ORDER BY	a.職員ID




