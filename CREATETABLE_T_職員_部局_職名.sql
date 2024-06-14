/*
	職員ID から 部局 と 職名（職位）を管理
	主キー: AutoNumberID
*/

DROP TABLE	[dbo].[T_職員_部局_職名]

CREATE TABLE	[dbo].[T_職員_部局_職名]
(
		--  [AutoNumberID]     int IDENTITY(1,1)	NOT	NULL
		 [職員ID]	        INT                 NOT NULL
		,[併任]				BIT 				NOT NULL
        ,[部局ID]           INT                 NOT NULL
		,[職名ID]		    INT         		    NULL
		,[部局設定日]		DATE					NULL
		,[部局終了日]		DATE					NULL
		,[登録日時]		    DATETIME			    NULL
		,[登録者ID]		    INT 				    NULL
		,[更新日時]		    DATETIME			    NULL
		,[更新者ID]		    INT 				    NULL
		 CONSTRAINT [PK_T_職員_部局_職名] PRIMARY KEY CLUSTERED 
		 (
			 [職員ID] ASC
			,[併任] 
			,[部局ID]
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
TRUNCATE TABLE [dbo].[T_職員_部局_職名]

--[部局]
INSERT INTO dbo.T_職員_部局_職名
(
		 [職員ID]
		,[併任]
        ,[部局ID]
		,[職名ID]
		-- ,[部局設定日]
		-- ,[部局終了日]
		,[登録日時]
		,[登録者ID]
		-- ,[更新日時]
		-- ,[更新者ID]
)
SELECT      a.職員ID
		   ,0				AS 併任		-- とりあえずすべて「主たる部局」として登録
		   ,c.部局ID
           ,d.職名ID
		   ,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time'		AS 登録日時
		   ,160																	AS 登録者ID
FROM        dbo.T_職員 AS a 
            JOIN
			(
				SELECT		姓カナ
						   ,名カナ
						   ,CASE
						   		WHEN 部課 IS NULL THEN 部局
								ELSE 部課
							END			AS 部局
						   ,職名
				FROM 		dbo.TEMP_ExportedAllUsers
			) AS b
			ON 		b.姓カナ = a.姓カナ
				And b.名カナ = a.名カナ
			LEFT JOIN dbo.T_部局 AS c
			ON 		c.部局 = b.部局
			LEFT JOIN dbo.T_職名 AS d 
            ON     d.職名 = b.職名
*/

/* 検証 (全体) 
SELECT	    a.職員ID
		   ,a.表示名
		   ,b.部局ID
		   ,c.部局
		   ,b.職名ID
		   ,d.職名
FROM 		dbo.T_職員 AS a 
			LEFT JOIN dbo.T_職員_部局_職名 AS b		ON b.職員ID = a.職員ID
			LEFT JOIN viewer.部局ID_部局 AS c 		ON c.部局ID = b.部局ID
			LEFT JOIN dbo.T_職名 AS d 				ON d.職名ID = b.職名ID
			LEFT JOIN dbo.T_雇用状態 AS e 			ON e.雇用状態ID = a.雇用状態ID
WHERE 		b.併任 = 0
ORDER BY	c.部局ID, CASE WHEN d.建制順 IS NULL THEN 10000 ELSE d.建制順 END, CASE WHEN e.建制順 IS NULL THEN 1000 ELSE e.建制順 END, a.姓カナ,a.名カナ
*/


/* R6の辞令を基に修正 */
-- スズキ マサアキ		試験グループ部長(常勤嘱託)
UPDATE	dbo.T_職員_部局_職名
SET		 [部局ID] = 36
		,[職名ID] = 7
		,[部局設定日] = N'2024-04-01'
		,[登録日時] = GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time'
		,[登録者ID] = 186
WHERE 	 職員ID = 93
	 And 併任 = 0

-- カノウ ヒロカズ		(併)査察室
INSERT INTO dbo.T_職員_部局_職名
(
		 [職員ID]
		,[併任]
        ,[部局ID]
		,[職名ID]
		,[部局設定日]
		,[登録日時]
		,[登録者ID]
)
VALUES
 (48,1,40,NULL,N'2024-04-01',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)

-- ウメダ　ユミ		病理グループ 部長
UPDATE	dbo.T_職員_部局_職名
SET		 [部局ID] = 38
		,[職名ID] = 7
		,[部局設定日] = N'2024-04-01'
		,[登録日時] = GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time'
		,[登録者ID] = 186
WHERE 	 職員ID = 25
	 And 併任 = 0

-- タケ  マコト		査察室 室長
UPDATE	dbo.T_職員_部局_職名
SET		 [部局ID] = 40
		,[職名ID] = 10
		,[部局設定日] = N'2024-04-01'
		,[登録日時] = GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time'
		,[登録者ID] = 186
WHERE 	 職員ID = 108
	 And 併任 = 0

-- ヒライ シゲユキ		試験グループ 技術専門役
UPDATE	dbo.T_職員_部局_職名
SET		 [部局ID] = 36
		,[職名ID] = 18
		,[部局設定日] = N'2024-04-01'
		,[登録日時] = GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time'
		,[登録者ID] = 186
WHERE 	 職員ID = 145
	 And 併任 = 0

-- キクチ ヨシノリ		試験グループ 技術専門役 / (併)研究推進・国際センター
UPDATE	dbo.T_職員_部局_職名
SET		 [部局ID] = 36
		,[職名ID] = 18
		,[部局設定日] = N'2024-04-01'
		,[登録日時] = GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time'
		,[登録者ID] = 186
WHERE 	 職員ID = 51
	 And 併任 = 0

INSERT INTO dbo.T_職員_部局_職名
(
		 [職員ID]
		,[併任]
        ,[部局ID]
		,[職名ID]
		,[部局設定日]
		,[登録日時]
		,[登録者ID]
)
VALUES
 (51,1,8,NULL,N'2024-04-01',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)


-- ヨネヤマ  ケンゴ		試験グループ 技術専門役 / (併)研究推進・国際センター
UPDATE	dbo.T_職員_部局_職名
SET		 [部局ID] = 36
		,[職名ID] = 18
		,[部局設定日] = N'2024-04-01'
		,[登録日時] = GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time'
		,[登録者ID] = 186
WHERE 	 職員ID = 196
	 And 併任 = 0

INSERT INTO dbo.T_職員_部局_職名
(
		 [職員ID]
		,[併任]
        ,[部局ID]
		,[職名ID]
		,[部局設定日]
		,[登録日時]
		,[登録者ID]
)
VALUES
 (196,1,8,NULL,N'2024-04-01',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)

-- フナキ サダヒロ		試験グループ 技術専門役 / 併)管理部管理第二課支援係
UPDATE	dbo.T_職員_部局_職名
SET		 [部局ID] = 36
		,[職名ID] = 18
		,[部局設定日] = N'2024-04-01'
		,[登録日時] = GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time'
		,[登録者ID] = 186
WHERE 	 職員ID = 153
	 And 併任 = 0

INSERT INTO dbo.T_職員_部局_職名
(
		 [職員ID]
		,[併任]
        ,[部局ID]
		,[職名ID]
		,[部局設定日]
		,[登録日時]
		,[登録者ID]
)
VALUES
 (153,1,6,NULL,N'2024-04-01',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)

-- タケウチ テツヤ		試験グループ 登戸分室 技術専門役
UPDATE	dbo.T_職員_部局_職名
SET		 [部局ID] = 39
		,[職名ID] = 18
		,[部局設定日] = N'2024-04-01'
		,[登録日時] = GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time'
		,[登録者ID] = 186
WHERE 	 職員ID = 109
	 And 併任 = 0

/*	シバタ ノブユキ	併任発令
研究推進・国際センター首席研究員
(併)総括領域長
(併)健康研究領域長
(併)有害性試験研究領域長
(併)開発グループ部長
*/
INSERT INTO dbo.T_職員_部局_職名
(
		 [職員ID]
		,[併任]
        ,[部局ID]
		,[職名ID]
		,[部局設定日]
		,[登録日時]
		,[登録者ID]
)
VALUES
 (85,1,7,6,N'2024-04-01',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(85,1,30,6,N'2024-04-01',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(85,1,35,6,N'2024-04-01',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(85,1,37,7,N'2024-04-01',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)


/*	ヤナギバ  ユキエ
配置換 / 併任発令 / 併任解除 / 所長命
化学物質情報管理研究センター 有害性評価研究部 上席研究員
(併)生体防御評価研究 室長
(命)有害性評価研究 部長代理
*/
UPDATE	dbo.T_職員_部局_職名
SET		 [部局ID] = 17
		,[職名ID] = 13
		,[部局設定日] = N'2024-04-01'
		,[登録日時] = GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time'
		,[登録者ID] = 186
WHERE 	 職員ID = 182
	 And 併任 = 0

INSERT INTO dbo.T_職員_部局_職名
(
		 [職員ID]
		,[併任]
        ,[部局ID]
		,[職名ID]
		,[部局設定日]
		,[登録日時]
		,[登録者ID]
)
VALUES
 (182,1,19,10,N'2024-04-01',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(182,1,17,8,N'2024-04-01',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)

/*	トヨオカ   タツシ
配置換 / 所長命 / 所長免
開発グループ 上席研究員
(命)開発グループ部長代理
*/
UPDATE	dbo.T_職員_部局_職名
SET		 [部局ID] = 37
		,[職名ID] = 13
		,[部局設定日] = N'2024-04-01'
		,[登録日時] = GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time'
		,[登録者ID] = 186
WHERE 	 職員ID = 126
	 And 併任 = 0

INSERT INTO dbo.T_職員_部局_職名
(
		 [職員ID]
		,[併任]
        ,[部局ID]
		,[職名ID]
		,[部局設定日]
		,[登録日時]
		,[登録者ID]
)
VALUES
 (126,1,37,8,N'2024-04-01',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)

/*	コバヤシ  ケンイチ 62
昇格 / 配置換 / 併任発令 / 所長命
試験グループ 統括研究員
(併)有害性評価研究部
(併)実験動物管理 室長
(命)試験グループ 部長代理
*/
UPDATE	dbo.T_職員_部局_職名
SET		 [部局ID] = 36
		,[職名ID] = 12
		,[部局設定日] = N'2024-04-01'
		,[登録日時] = GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time'
		,[登録者ID] = 186
WHERE 	 職員ID = 62
	 And 併任 = 0

INSERT INTO dbo.T_職員_部局_職名
( [職員ID],[併任],[部局ID],[職名ID],[部局設定日],[登録日時],[登録者ID] )
VALUES
 (62,1,17,NULL,N'2024-04-01',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(62,1,36,8,N'2024-04-01',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(62,1,20,10,N'2024-04-01',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)


/* ハギワラ  マサヨシ 139
併任発令
化学物質情報管理研究センター ばく露評価研究部 上席研究員
(併)労働災害調査分析センター */
UPDATE	dbo.T_職員_部局_職名
SET		 [部局ID] = 16
		,[職名ID] = 13
		,[部局設定日] = N'2024-04-01'
		,[登録日時] = GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time'
		,[登録者ID] = 186
WHERE 	 職員ID = 139
	 And 併任 = 0

INSERT INTO dbo.T_職員_部局_職名
( [職員ID],[併任],[部局ID],[職名ID],[部局設定日],[登録日時],[登録者ID] )
VALUES
 (139,1,13,NULL,N'2024-04-01',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)

/* イノウエ ナオコ
昇格 / 併任解除
環境計測研究グループ 上席研究員
*/
UPDATE	dbo.T_職員_部局_職名
SET		 [部局ID] = 32
		,[職名ID] = 13
		,[部局設定日] = N'2024-04-01'
		,[登録日時] = GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time'
		,[登録者ID] = 186
WHERE 	 職員ID = 17
	 And 併任 = 0

/*  アマモト   タカキ 6
配置換 / 併任発令
開発グループ 研究員 / (併)有害性評価研究部
*/
UPDATE	dbo.T_職員_部局_職名
SET		 [部局ID] = 37
		,[職名ID] = 17
		,[部局設定日] = N'2024-04-01'
		,[登録日時] = GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time'
		,[登録者ID] = 186
WHERE 	 職員ID = 6
	 And 併任 = 0

INSERT INTO dbo.T_職員_部局_職名
( [職員ID],[併任],[部局ID],[職名ID],[部局設定日],[登録日時],[登録者ID] )
VALUES
 (6,1,17,NULL,N'2024-04-01',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)


/* マツモト   シュン 164
昇格	産業保健研究グループ  主任研究員 / (併)過労死等防止調査研究センター"
*/
UPDATE	dbo.T_職員_部局_職名
SET		 [部局ID] = 31
		,[職名ID] = 15
		,[部局設定日] = N'2024-04-01'
		,[登録日時] = GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time'
		,[登録者ID] = 186
WHERE 	 職員ID = 164
	 And 併任 = 0

INSERT INTO dbo.T_職員_部局_職名
( [職員ID],[併任],[部局ID],[職名ID],[部局設定日],[登録日時],[登録者ID] )
VALUES
 (164,1,21,NULL,N'2024-04-01',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)

/* タカヤ   カズナリ 106
昇格 / 併任発令
環境計測研究グループ 主任研究員 / (併)研究推進・国際センター */
UPDATE	dbo.T_職員_部局_職名
SET		 [部局ID] = 32
		,[職名ID] = 15
		,[部局設定日] = N'2024-04-01'
		,[登録日時] = GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time'
		,[登録者ID] = 186
WHERE 	 職員ID = 106
	 And 併任 = 0

INSERT INTO dbo.T_職員_部局_職名
( [職員ID],[併任],[部局ID],[職名ID],[部局設定日],[登録日時],[登録者ID] )
VALUES (106,1,8,NULL,N'2024-04-01',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)

/* ミキ ケイイチ  167
再雇用	
研究推進・国際センター短時間勤務職員 / (併)産業保健研究グループ */
UPDATE	dbo.T_職員_部局_職名
SET		 [部局ID] = 8
		,[職名ID] = NULL
		,[部局設定日] = N'2024-04-01'
		,[登録日時] = GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time'
		,[登録者ID] = 186
WHERE 	 職員ID = 167
	 And 併任 = 0

INSERT INTO dbo.T_職員_部局_職名
( [職員ID],[併任],[部局ID],[職名ID],[部局設定日],[登録日時],[登録者ID] )
VALUES (167,1,31,NULL,N'2024-04-01',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)

/* フルセ ミツヤ  156
再雇用	研究推進・国際センター短時間勤務職員 */
UPDATE	dbo.T_職員_部局_職名
SET		 [部局ID] = 8
		,[職名ID] = NULL
		,[部局設定日] = N'2024-04-01'
		,[登録日時] = GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time'
		,[登録者ID] = 186
WHERE 	 職員ID = 156
	 And 併任 = 0

/* オノ マリコ  38
特定研究	化学物質情報管理研究センター センター長代理 */
UPDATE	dbo.T_職員_部局_職名
SET		 [部局ID] = 14
		,[職名ID] = 5
		,[部局設定日] = N'2024-04-01'
		,[登録日時] = GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time'
		,[登録者ID] = 186
WHERE 	 職員ID = 38
	 And 併任 = 0

/* スズキ カズヤ  91
過労死等防止調査研究センター / 特定研究業務嘱託職員 */
UPDATE	dbo.T_職員_部局_職名
SET		 [部局ID] = 21
		,[職名ID] = NULL
		,[部局設定日] = N'2024-04-01'
		,[登録日時] = GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time'
		,[登録者ID] = 186
WHERE 	 職員ID = 91
	 And 併任 = 0

UPDATE	 [dbo].[T_職員]
SET 	 [雇用状態ID] = 10
		,[更新日時] = GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time'
		,[更新者ID] = 186
WHERE 	 [職員ID] = 91

/* イトウ アキヨシ  16
特定研究 / 配置換
化学物質情報管理研究センター 化学物質情報管理部 特定研究業務嘱託職員 */
UPDATE	dbo.T_職員_部局_職名
SET		 [部局ID] = 15
		,[職名ID] = NULL
		,[部局設定日] = N'2024-04-01'
		,[登録日時] = GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time'
		,[登録者ID] = 186
WHERE 	 職員ID = 16
	 And 併任 = 0

/* オノ メグミ  39
特定研究 / 配置換 	 化学物質情報管理研究センター 生体防御評価研究室 特定研究業務嘱託職員  */
UPDATE	dbo.T_職員_部局_職名
SET		 [部局ID] = 19
		,[職名ID] = NULL
		,[部局設定日] = N'2024-04-01'
		,[登録日時] = GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time'
		,[登録者ID] = 186
WHERE 	 職員ID = 39
	 And 併任 = 0


/* 確認 */
SELECT  	a.職員ID
		   ,a.表示名
		   ,CASE WHEN b.併任 = 1 THEN N'○' ELSE '' END 	AS 併任
		   ,c.部局
		   ,d.職名
		   ,e.雇用状態名称
		   ,b.登録日時
		   ,a.更新日時
FROM 		dbo.T_職員 AS a 
			 LEFT JOIN dbo.T_職員_部局_職名 AS b 
			 ON 	b.職員ID = a.職員ID
			 	  JOIN dbo.T_部局 AS c 
			 ON 	c.部局ID = b.部局ID
			 LEFT JOIN dbo.T_職名 AS d 
			 ON 	d.職名ID = b.職名ID
			 LEFT JOIN dbo.T_雇用状態 AS e 
			 ON 	e.雇用状態ID = a.雇用状態ID
WHERE 		a.職員ID IN ( 91 )
ORDER BY 	a.職員ID, c.部局ID

/* 
	更新手順（部局変更、職名(職位)変更）
	1) [T_職員_部局_職名]テーブルの、当該職員IDの行を[T_職員_部局_職名_履歴]テーブルに INSERT
	2) [T_職員_部局_職名]テーブルを UPDATE
*/