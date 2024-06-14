DROP TABLE	[dbo].[T_職員_部局_職名_履歴]

CREATE TABLE	[dbo].[T_職員_部局_職名_履歴]
(
		 [AutoNumberID]     int IDENTITY(1,1)	NOT	NULL
		,[職員ID]	        INT                 NOT NULL
		,[併任]				bit 				NOT NULL
        ,[部局ID]           INT                     NULL
		,[職名ID]		    INT         		    NULL
		,[部局設定日]		date					NULL
		,[部局終了日]		date					NULL
		,[履歴作成日時]	    datetime			    NULL
		,[履歴作成者ID]	    int 				    NULL
		 CONSTRAINT [PK_T_職員_部局_職名_履歴] PRIMARY KEY CLUSTERED 
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

/*
SELECT		a.職員ID
FROM 		dbo.T_職員 AS a 
WHERE		(a.姓カナ = N'スズキ'	And a.名カナ = N'マサアキ') 
		Or  (a.姓カナ = N'カノウ' 	And a.名カナ = N'ヒロカズ') 
		Or	(a.姓カナ = N'ウメダ'	And a.名カナ = N'ユミ') 
		Or	(a.姓カナ = N'タケ'		And a.名カナ = N'マコト') 
		Or 	(a.姓カナ = N'ヒライ'	And a.名カナ = N'シゲユキ') 
		Or	(a.姓カナ = N'キクチ'	And a.名カナ = N'ヨシノリ') 
		Or	(a.姓カナ = N'ヨネヤマ'	And a.名カナ = N'ケンゴ') 
		Or	(a.姓カナ = N'フナキ'	And a.名カナ = N'サダヒロ') 
		Or	(a.姓カナ = N'タケウチ'	And a.名カナ = N'テツヤ') 
		Or	(a.姓カナ = N'ササキ'	And a.名カナ = N'トシアキ') 
		Or	(a.姓カナ = N'タカノブ'	And a.名カナ = N'ケンジ') 
		Or	(a.姓カナ = N'ババモト'	And a.名カナ = N'エミ') 
		Or	(a.姓カナ = N'ヤマノ'	And a.名カナ = N'ショウタロウ') 
		Or	(a.姓カナ = N'フルカワ'	And a.名カナ = N'ユウスケ') 
		Or	(a.姓カナ = N'ミスミ'	And a.名カナ = N'キョウヘイ') 
		Or	(a.姓カナ = N'カサイ'	And a.名カナ = N'タツヤ') 
		Or	(a.姓カナ = N'セノオ'	And a.名カナ = N'ヒデキ') 
		Or	(a.姓カナ = N'サイトウ'	And a.名カナ = N'ミサエ') 
		Or	(a.姓カナ = N'ヤマグチ' And a.名カナ = N'ユウコ') 
		Or  (a.姓カナ = N'シマダ'	And a.名カナ = N'ユキヤス')
		Or  (a.姓カナ = N'シバタ'	And a.名カナ = N'ノブユキ')
		Or  (a.姓カナ = N'タマテ'	And a.名カナ = N'サトシ')
		Or  (a.姓カナ = N'ヒノ'	And a.名カナ = N'ヤスミチ')
		Or  (a.姓カナ = N'キッカワ'	And a.名カナ = N'ナオタカ')
		Or  (a.姓カナ = N'サトウ'	And a.名カナ = N'ヨシヒコ')
		Or  (a.姓カナ = N'オオニシ'	And a.名カナ = N'アキヒロ')
		Or  (a.姓カナ = N'ヤナギバ'	And a.名カナ = N'ユキエ')
		Or  (a.姓カナ = N'トヨオカ'	And a.名カナ = N'タツシ')
		Or  (a.姓カナ = N'コバヤシ'	And a.名カナ = N'ケンイチ')
		Or  (a.姓カナ = N'ハギワラ'	And a.名カナ = N'マサヨシ')
		Or  (a.姓カナ = N'ミズタニ'	And a.名カナ = N'タカアキ')
		Or  (a.姓カナ = N'イノウエ'	And a.名カナ = N'ナオコ')
		Or  (a.姓カナ = N'ソ'	And a.名カナ = N'リナ')
		Or  (a.姓カナ = N'オガタ'	And a.名カナ = N'マサトシ')
		Or  (a.姓カナ = N'アマモト'	And a.名カナ = N'タカキ')
		Or  (a.姓カナ = N'マツモト'	And a.名カナ = N'シュン')
		Or  (a.姓カナ = N'タカヤ'	And a.名カナ = N'カズナリ')
		Or  (a.姓カナ = N'ショウヤマ'	And a.名カナ = N'ミズキ')
		Or  (a.姓カナ = N'シバタ'	And a.名カナ = N'ケイ')
		Or  (a.姓カナ = N'ヒラナイ'	And a.名カナ = N'カズキ')
		Or  (a.姓カナ = N'カズ'	And a.名カナ = N'チョウ')
		Or  (a.姓カナ = N'ヤベ'	And a.名カナ = N'ヨシコ')
		Or  (a.姓カナ = N'チョウ'	And a.名カナ = N'セン')
		Or  (a.姓カナ = N'タカダ'	And a.名カナ = N'タクヒロ')
		Or  (a.姓カナ = N'ハシモト'	And a.名カナ = N'ヒロユキ')
		Or  (a.姓カナ = N'マツダイラ'	And a.名カナ = N'アツシ')
		Or  (a.姓カナ = N'ミワ'	And a.名カナ = N'トシノブ')
		Or  (a.姓カナ = N'ナカヤマ'	And a.名カナ = N'ヒロミチ')
		Or  (a.姓カナ = N'タクラ'	And a.名カナ = N'サトシ')
		Or  (a.姓カナ = N'スズキ'	And a.名カナ = N'タカユキ')
		Or  (a.姓カナ = N'ミキ'	And a.名カナ = N'ケイイチ')
		Or  (a.姓カナ = N'フルセ'	And a.名カナ = N'ミツヤ')
		Or  (a.姓カナ = N'オオクボ'	And a.名カナ = N'トシテル')
		Or  (a.姓カナ = N'オノ'	And a.名カナ = N'マリコ')
		Or  (a.姓カナ = N'セオ'	And a.名カナ = N'アキヒコ')
		Or  (a.姓カナ = N'ヤマグチ'	And a.名カナ = N'シュウヘイ')
		Or  (a.姓カナ = N'スズキ'	And a.名カナ = N'カズヤ')
		Or  (a.姓カナ = N'ハヤシ'	And a.名カナ = N'トモノリ')
		Or  (a.姓カナ = N'イトウ'	And a.名カナ = N'アキヨシ')
		Or  (a.姓カナ = N'ミゾウエ'	And a.名カナ = N'テツヤ')
		Or  (a.姓カナ = N'オノ'	And a.名カナ = N'メグミ')

TRUNCATE TABLE [T_職員_部局_職名_履歴]

INSERT INTO dbo.T_職員_部局_職名_履歴
(
			 [職員ID]
			,[併任]
			,[部局ID]
			,[職名ID]
			,[部局設定日]
			,[部局終了日]
			,[履歴作成日時]
			,[履歴作成者ID]
)
SELECT		 a.職員ID
		    ,a.併任
			,a.部局ID
			,a.職名ID
			,a.部局設定日
			,a.部局終了日
			,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time'
			,186
FROM 		dbo.T_職員_部局_職名 AS a 
WHERE 		a.職員ID IN ( 6, 16, 17, 25, 30, 38, 39, 44, 48, 51, 62, 70, 78, 85, 91, 93, 98, 100, 101, 106, 108, 109, 118, 126, 134, 139, 141, 142, 145, 153, 155, 156, 164, 167, 168, 169, 182, 186, 187, 190, 196 )

SELECT      *
FROM        dbo.T_職員_部局_職名_履歴

*/


