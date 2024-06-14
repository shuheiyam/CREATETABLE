DROP TABLE	[dbo].[T_組織]

CREATE TABLE	[dbo].[T_組織]
(
		 [組織ID]			int IDENTITY(1,1)	NOT	NULL
		,[組織名称]			NVARCHAR(128)		NOT NULL
		,[登録日時]			datetime				NULL
		,[登録者ID]			int         			NULL
		,[更新日時]			datetime				NULL
		,[更新者ID]			int         			NULL
		 CONSTRAINT [PK_T_組織] PRIMARY KEY CLUSTERED 
		 (
			 [組織ID] ASC
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

CREATE	NONCLUSTERED	INDEX	IX_組織ID_組織名称	ON [dbo].[T_組織]([組織ID],[組織名称])

/*
TRUNCATE TABLE [dbo].[T_組織]

INSERT INTO [dbo].[T_組織]
(
         [組織名称]
		,[登録日時]
		,[登録者ID]  
)
VALUES
　(N'労働安全衛生総合研究所',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'労働者健康安全機構',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'厚生労働省',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'一般財団法人日本規格協会',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'株式会社ＪＰキャリアコンサルティング',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'ＷＤＢ株式会社',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'株式会社アニマルケア',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'株式会社エルコーエイ',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'株式会社スタッフサービス',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'パーソルテンプスタッフ株式会社',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)
,(N'株式会社ハーフタイム',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',186)

SELECT	*
FROM	[dbo].[T_組織]
*/

