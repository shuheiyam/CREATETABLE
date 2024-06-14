DROP TABLE	[dbo].[T_部局]

CREATE TABLE	[dbo].[T_部局]
(
		 [部局ID]			int IDENTITY(1,1)	NOT	NULL
        ,[親部局ID]         int                     NULL
		,[部局]			    NVARCHAR(128)		NOT NULL
		,[表示順]			int 					NULL
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

CREATE	NONCLUSTERED	INDEX	IX_部局ID_部局	ON [dbo].[T_部局]([部局ID],[部局])

/* */ 
TRUNCATE TABLE [dbo].[T_部局]

INSERT INTO [dbo].[T_部局]
(
		 [親部局ID]
		,[部局]
		,[表示順]
		,[登録日時]
		,[登録者ID]
		,[更新日時]
		,[更新者ID]
)
VALUES
 (NULL,N'幹部',1,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186,NULL,NULL)
,(NULL,N'管理部',2,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186,NULL,NULL)
,(2,N'管理第二課',3,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186,NULL,NULL)
,(3,N'管理係',4,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186,NULL,NULL)
,(3,N'契約係',5,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186,NULL,NULL)
,(3,N'支援係',6,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186,NULL,NULL)
,(NULL,N'総括',7,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186,NULL,NULL)
,(NULL,N'研究推進・国際センター',8,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186,NULL,NULL)
,(8,N'研究推進部門',9,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186,NULL,NULL)
,(8,N'国際センター',10,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186,NULL,NULL)
,(8,N'システム担当',11,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186,NULL,NULL)
,(8,N'図書',12,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186,NULL,NULL)
,(NULL,N'労働災害調査分析センター',13,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186,NULL,NULL)
,(NULL,N'化学物質情報管理研究センター',14,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186,NULL,NULL)
,(14,N'化学物質情報管理部',15,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186,NULL,NULL)
,(14,N'はく露評価研究部',16,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186,NULL,NULL)
,(14,N'有害性評価研究部',17,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186,NULL,NULL)
,(14,N'疫学研究部',18,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186,NULL,NULL)
,(14,N'生体防御評価研究室',19,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186,NULL,NULL)
,(14,N'実験動物管理室',20,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186,NULL,NULL)
,(NULL,N'過労死等防止調査研究センター',21,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186,NULL,NULL)
,(NULL,N'労働者放射線障害防止研究センター',22,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186,NULL,NULL)
,(NULL,N'安全研究領域',23,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186,NULL,NULL)
,(23,N'機械システム安全研究グループ',24,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186,NULL,NULL)
,(23,N'建設安全研究グループ',25,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186,NULL,NULL)
,(23,N'化学安全研究グループ',26,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186,NULL,NULL)
,(23,N'電気安全研究グループ',27,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186,NULL,NULL)
,(23,N'リスク管理研究グループ',28,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186,NULL,NULL)
,(23,N'新技術安全研究グループ',29,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186,NULL,NULL)
,(NULL,N'健康研究領域',30,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186,NULL,NULL)
,(30,N'産業保健研究グループ',31,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186,NULL,NULL)
,(30,N'環境計測研究グループ',32,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186,NULL,NULL)
,(30,N'人間工学研究グループ',33,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186,NULL,NULL)
,(30,N'社会労働衛生研究グループ',34,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186,NULL,NULL)
,(NULL,N'有害性試験研究領域',35,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186,NULL,NULL)
,(35,N'試験グループ',36,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186,NULL,NULL)
,(35,N'開発グループ',37,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186,NULL,NULL)
,(35,N'病理グループ',38,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186,NULL,NULL)
,(36,N'登戸分室',39,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186,NULL,NULL)
,(NULL,N'査察室',40,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186,NULL,NULL)
,(NULL,N'設備',41,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186,NULL,NULL)
,(NULL,N'警備',42,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186,NULL,NULL)
,(NULL,N'監査室',43,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186,NULL,NULL)
,(NULL,N'清掃',44,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186,NULL,NULL)
,(NULL,N'受付',45,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186,NULL,NULL)


SELECT  *
FROM    dbo.T_部局

-- 検証
WITH 元部局(部局ID, 親部局ID, layerLevel, 部局) AS (
  SELECT    部局ID      AS 部局ID
           ,親部局ID
           ,1 AS layer_level
           ,CAST(部局 AS nvarchar(MAX)) AS 部局
  FROM      dbo.T_部局
  WHERE     親部局ID IS NULL

  UNION ALL

  SELECT     a.部局ID   AS 部局ID
            ,a.親部局ID AS oya_id
            ,b.layerLevel + 1 AS layerLevel
            ,b.部局 + ' / ' + a.部局 AS 部局
  FROM       T_部局 a
            JOIN 元部局 b
            ON      a.親部局ID = b.部局ID
)
SELECT      *
FROM        元部局
ORDER BY	部局ID;
GO

*/

