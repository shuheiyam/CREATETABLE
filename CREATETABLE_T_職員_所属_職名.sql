/*
	職員ID から 所属（部局）と職名（職位）を管理
	主キー: AutoNumberID
*/

DROP TABLE	[dbo].[T_職員_所属_職名]

CREATE TABLE	[dbo].[T_職員_所属_職名]
(
		 [AutoNumberID]     int IDENTITY(1,1)	NOT	NULL
		,[職員ID]	        INT                 NOT NULL
		,[併任]				BIT 				NOT NULL
        ,[所属ID]           INT                     NULL
		,[職名ID]		    INT         		    NULL
		,[所属設定日]		DATE					NULL
		,[所属終了日]		DATE					NULL
		,[登録日時]		    DATETIME			    NULL
		,[登録者ID]		    INT 				    NULL
		,[更新日時]		    DATETIME			    NULL
		,[更新者ID]		    INT 				    NULL
		 CONSTRAINT [PK_T_職員_所属_職名] PRIMARY KEY CLUSTERED 
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

/*  ゼロから登録 
TRUNCATE TABLE [dbo].[T_職員_所属_職名]

INSERT INTO dbo.T_職員_所属_職名
(
		 [職員ID]
		,[併任]
        ,[所属ID]
		,[職名ID]
		-- ,[所属設定日]
		-- ,[所属終了日]
		,[登録日時]
		,[登録者ID]
		-- ,[更新日時]
		-- ,[更新者ID]
)
SELECT      a.職員ID
		   ,0				AS 併任		-- とりあえずすべて「主たる所属」として登録
		   ,d.部局ID		AS 所属ID
           ,c.職名ID
		   ,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time'		AS 登録日時
		   ,160																	AS 登録者ID
FROM        dbo.T_職員 AS a 
            LEFT JOIN dbo.TEMP_ExportedAllUsers AS b 
            ON      b.UPN = a.UserPrincipalName
			LEFT JOIN dbo.T_職名 AS c 
            ON     c.職名 = b.職位
			LEFT JOIN viewer.部局ID_部局 AS d 
			ON 		d.部局 = b.部局
*/

/* 検証 (全体) 
SELECT	    b.AutoNumberID
		   ,a.職員ID
		   ,a.表示名
		   ,b.所属ID
		   ,c.部局			AS 所属
		   ,b.職名ID
		   ,d.職名
FROM 		dbo.T_職員 AS a 
			LEFT JOIN 	dbo.T_職員_所属_職名 AS b 
			ON 	b.職員ID = a.職員ID
			LEFT JOIN viewer.部局ID_部局 AS c 
			ON 	c.部局ID = b.所属ID
			LEFT JOIN dbo.T_職名 d 
			ON 	d.職名ID = b.職名ID
WHERE 		b.併任 = 1
ORDER BY	a.姓カナ,a.名カナ
*/

/* 検証 (名指し)
SELECT	    b.AutoNumberID
		   ,a.職員ID
		   ,a.表示名
		   ,e.雇用状態名称
		   ,CASE WHEN b.併任 = 1 THEN N'○' ELSE NULL END 	AS 併任
		   ,b.所属ID
		   ,c.部局			AS 所属
		   ,b.職名ID
		   ,d.職名
		   ,b.所属設定日
		   ,b.更新日時
		   ,b.更新者ID
FROM 		dbo.T_職員 AS a 
			LEFT JOIN 	dbo.T_職員_所属_職名 AS b 
			ON 	b.職員ID = a.職員ID
			LEFT JOIN viewer.部局ID_部局 AS c 
			ON 	c.部局ID = b.所属ID
			LEFT JOIN dbo.T_職名 d 
			ON 	d.職名ID = b.職名ID
			LEFT JOIN dbo.T_雇用状態 e 
			ON  e.雇用状態ID = a.雇用状態ID
WHERE 		a.職員ID = 92
*/

/* 登録例 
INSERT INTO dbo.T_職員_所属_職名
(
	 [職員ID]
	,[併任]
	,[所属ID]
	,[職名ID]
	,[所属設定日]
	-- ,[所属終了日]
	,[登録日時]
	,[登録者ID]
	-- ,[更新日時]
	-- ,[更新者ID]
)
VALUES
 (101,1,3,NULL,N'2024-04-01',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
*/

/* 
	更新手順（所属変更、職名(職位)変更）
	1) [T_職員_所属_職名]テーブルの、当該職員IDの行を[T_職員_所属_職名_履歴]テーブルに INSERT
	2) [T_職員_所属_職名]テーブルを UPDATE

[更新例]
UPDATE		dbo.T_職員_所属_職名
SET 		併任 = 0										-- 併任の場合は 1
		   ,所属ID = 5										-- viewer.部局ID_部局 の[部局ID]値
		   ,職名ID = 26										-- dbo.T_職名 の[職名ID]値
		   ,所属設定日 = N'2024-04-01'						-- 辞令交付日
		   ,所属終了日 = DATEADD(day, -1, '2024-04-01')		-- 機械的にやるならば
		   ,更新日時 = GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time'
		   ,更新者ID = 160
WHERE 		AutoNumberID = 50

*/
