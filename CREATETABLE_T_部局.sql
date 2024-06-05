DROP TABLE	[dbo].[T_部局]

CREATE TABLE	[dbo].[T_部局]
(
		 [部局ID]			int IDENTITY(1,1)	NOT	NULL
        ,[親部局ID]         int                     NULL
		,[部局名称]			NVARCHAR(128)		NOT NULL
		,[登録日時]			datetime				NULL
		,[登録者ID]			int 					NULL
		,[更新日時]			datetime				NULL
		,[更新者ID]			int 					NULL
		 CONSTRAINT [PK_T_部局] PRIMARY KEY CLUSTERED 
		 (
			 [部局ID] ASC
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

CREATE	NONCLUSTERED	INDEX	IX_部局ID_部局名称	ON [dbo].[T_部局]([部局ID],[部局名称])

/*
TRUNCATE TABLE [dbo].[T_部局]

INSERT INTO [dbo].[T_部局]
(
		 [部局名称]
        ,[親部局ID]
		,[登録日時]
		,[登録者ID]  
)
VALUES
 (N'幹部',NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)                         --1
,(N'管理部',NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)                       --2
,(N'研究推進国際センター',NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)          --3
,(N'監査室',NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)                       --4
,(N'開発グループ',NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)                 --5
,(N'支援係',NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)                       --6
,(N'化学物質情報管理研究センター',NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)     --7
,(N'産業保健研究グループ',NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)             --8
,(N'病理グループ',NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)                     --9
,(N'過労死等防止調査研究センター',NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)         --10
,(N'労働者放射線障害防止研究センター',NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)     --11
,(N'環境計測研究グループ',NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)             --12
,(N'人間工学研究グループ',NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)             --13
,(N'社会労働衛生研究グループ',NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)         --14
,(N'試験グループ',NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)                     --15
,(N'受付',NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)                             --16
,(N'清掃',NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)                             --17
,(N'設備',NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)                             --18
,(N'警備',NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)                             --19
-- 以下部課
,(N'研究推進部門',3,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'管理第二課',2,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'国際センター',3,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'システム担当',3,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'はく露評価研究部',7,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'疫字研究部',7,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'化字物質情報管理部',7,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'生体防御評価研究室',7,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'有害性評価研究部',7,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'登戸分室',15,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'動物管理室',7,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'図書',3,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)

SELECT	*
FROM	[dbo].[T_部局]
*/
WITH 部局階層 AS (
    -- ベースケース: 親カテゴリーがNULLの、つまり最上位のカテゴリーを選択
    SELECT	 部局ID
            ,部局名称
            ,親部局ID
            ,CAST(部局名称 AS NVARCHAR(MAX)) AS 部局
    FROM	 T_部局
    WHERE	 親部局ID IS NULL

    UNION ALL

    -- 再帰的ケース: 上で選択したカテゴリーを親とするサブカテゴリーを選択し、パスに追加
    SELECT	 c.部局ID
            ,c.部局名称
            ,c.親部局ID
            ,CAST(p.部局 + ' / ' + c.部局名称 AS NVARCHAR(MAX)) AS 部局
    FROM	 T_部局 c
    		 JOIN 部局階層 p
		 ON	 c.親部局ID = p.部局ID
)
SELECT		 *
FROM		 部局階層

