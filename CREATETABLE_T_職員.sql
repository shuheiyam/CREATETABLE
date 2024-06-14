DROP TABLE	[dbo].[T_職員]

CREATE TABLE	[dbo].[T_職員]
(
		 [職員ID]				INT	IDENTITY(1,1)		NOT NULL
		,[拠点ID]				NCHAR(1)					NULL
		,[SyncUser]				BIT						NOT NULL
		,[有効]					bit						NOT NULL
		,[姓]					nvarchar(64)				NULL	-- 姓
		,[名]					nvarchar(64)				NULL	-- 名
		,[姓カナ]				nvarchar(64)				NULL	-- 姓カナ
		,[名カナ]				nvarchar(64)				NULL	-- 名カナ
		,[Surname]				nvarchar(64)				NULL	-- Family Name
		,[GivenName]			nvarchar(64)				NULL	-- First Name
		,[表示名]				NVARCHAR(128)				NULL
		,[固定電話内線]			nchar(3)					NULL
		,[PHS]					nchar(4)					NULL
		,[UserPrincipalName]	nvarchar(128)				NULL
		,[Email]				nvarchar(128)				NULL
		,[雇用状態ID]			int							NULL
		,[建物ID]				int 						NULL
		,[部屋ID]				int							NULL
		,[組織ID]				INT							NULL
		,[着任日]				date						NULL
		,[適用日]				date						NULL
		,[登録日時]				datetime					NULL
		,[登録者ID]				int							NULL
		,[更新日時]				datetime					NULL
		,[更新者ID]				int							NULL
		,[備考]					NVARCHAR(max)				NULL
		 CONSTRAINT [PK_T_職員] PRIMARY KEY CLUSTERED 
		 (
			 [職員ID] ASC
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


CREATE					INDEX [IX_表示名]			ON [dbo].[T_職員]([表示名])
CREATE	NONCLUSTERED	INDEX [IX_姓名]				ON [dbo].[T_職員]([姓],[名]) 
CREATE	NONCLUSTERED	INDEX [IX_姓名カナ]			ON [dbo].[T_職員]([姓カナ],[名カナ]) 
CREATE	NONCLUSTERED	INDEX [IX_FullName]			ON [dbo].[T_職員]([Surname],[GivenName])

/*
-- 0 から登録
TRUNCATE TABLE [dbo].[T_職員]

INSERT [dbo].[T_職員]
(
	     [拠点ID]
		,[SyncUser]
		,[有効]
		,[姓]
		,[名]
		,[姓カナ]
		,[名カナ]
		,[Surname]
		,[GivenName]
		,[表示名]
		,[固定電話内線]
		,[PHS]
		,[UserPrincipalName]
		,[Email]
		,[雇用状態ID]
		,[建物ID]
		,[部屋ID]
		,[組織ID]
		,[登録日時]
		,[登録者ID]
)
SELECT	 [拠点ID]
		,[SyncUser]
		,[有効]
		,[姓]
		,[名]
		,[姓カナ]
		,[名カナ]
		,a.Surname
		,a.GIvenName
		,[姓] + ' ' + [名] + ' / ' + [SurName] + ' ' + [GivenName]    AS 表示名
		,a.固定電話内線
		,a.[PHS]
		,a.[UPN]
		,a.[EMail]
		,c.[雇用状態ID]
		,e.[建物ID]
		,f.部屋ID
		,g.[組織ID]
		,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time'
		,186
FROM	 [dbo].TEMP_ExportedAllUsers AS a 
		 LEFT JOIN [dbo].[T_雇用状態] AS c	ON c.雇用状態名称 = a.雇用状態
		 LEFT JOIN [dbo].T_建物 AS e 		ON e.建物名称 = a.建物
		 LEFT JOIN [dbo].T_部屋 AS f		ON f.部屋名称 = a.部屋
		 LEFT JOIN [dbo].T_組織 AS g		ON g.組織名称 = a.組織
ORDER BY 姓カナ,名カナ

-- 研推首席は不要
DELETE
FROM 		dbo.T_職員
WHERE 		職員ID = 58
*/


/*  結合例 
WITH Syozoku AS
(
	SELECT	 a.職員ID
			,b.職名ID
			,b.部局ID
			,c.部局
			,b.部局設定日
	FROM 		dbo.T_職員 AS a 
				LEFT JOIN dbo.T_職員_部局_職名 AS b 
				ON		b.職員ID = a.職員ID
					And b.併任 = 0
				LEFT JOIN viewer.部局ID_部局 AS c 
				ON 		c.部局ID = b.部局ID
)
SELECT	 a.[職員ID]
		,b.拠点名称		AS 拠点
		,a.SyncUser
		,a.有効
		,a.姓
		,a.名
		,a.姓カナ
		,a.名カナ
		,a.Surname
		,a.GivenName
		,a.表示名
		,a.固定電話内線
		,a.PHS
		,a.UserPrincipalName	AS UPN
		,a.Email
		,f.組織名称
		,c.雇用状態名称			AS 雇用状態
		,g.部局
		,h.職名
		,g.部局設定日
		,d.建物名称				AS 建物
		,e.部屋名称				AS 部屋			
		,a.着任日
		,a.適用日
		,a.登録日時
		,a.登録者ID
		,a.更新日時
		,a.更新者ID
		,a.備考
FROM	 dbo.T_職員 AS a
		 	  JOIN dbo.T_拠点 b 		ON b.拠点ID = a.拠点ID 
		 LEFT JOIN dbo.T_雇用状態 c 	ON c.雇用状態ID = a.雇用状態ID
		 LEFT JOIN dbo.T_建物 d 		ON d.建物ID = a.建物ID
		 LEFT JOIN dbo.T_部屋 e 		ON e.部屋ID = a.部屋ID
		 LEFT JOIN dbo.T_組織 f 		ON f.組織ID = a.組織ID
		 LEFT JOIN Syozoku g			ON g.職員ID = a.職員ID
		 LEFT JOIN dbo.T_職名 h 		ON h.職名ID = g.職名ID
-- WHERE 	a.職員ID = 40
ORDER BY	g.部局ID, CASE WHEN h.建制順 IS NULL THEN 100 ELSE h.建制順 END, CASE WHEN c.建制順 IS NULL THEN 100 ELSE c.建制順 END, a.姓カナ,a.名カナ
*/

/*   
	登録手順
	1) dbo.T_職員に INSERT
	2) dbo.T_職員_所属 に INSERT

[ユーザ登録例]
INSERT [dbo].[T_職員]
(
		 [SyncUser]
		,[有効]
		,[姓]
		,[名]
		,[姓カナ]
		,[名カナ]
		,[Surname]
		,[GivenName]
		,[表示名]
		,[固定電話内線]
		,[PHS]
		,[UserPrincipalName]
		,[Email]
		,[雇用状態ID]
		-- ,[職名ID]
		,[建物ID]
		,[居室ID]
		,[組織ID]
		,[着任日]
		,[適用日]
		,[登録日時]
		,[登録者ID]
		,[更新日時]
		,[更新者ID]
		,[備考]
)
VALUES
(
	 1
	,1
	,N'五十嵐'
	,N'久美子'
	,N'イガラシ'
	,N'クミコ'
	,N'IGARASHI'
	,N'Kumiko'
	,N'五十嵐 久美子 / IGARASHI Kumiko'
	,NULL
	,NULL
	,N'igarashi-kumiko@h.jniosh.johas.go.jp'
	,N'igarashi-kumiko@h.jniosh.johas.go.jp'
	,10
	-- ,NULL
	,2
	,214
	,8
	,'2024-07-01'
	,'2024-06-06'
	,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time'
	,160
	,NULL
	,NULL
	,N'2024/6/6 加島さんから依頼を受けて先んじて登録'
)


-- [所属 INSERT 例]
INSERT INTO [dbo].[T_職員_部局_職名]
(
		 [職員ID]
		,[部局ID]
		,[併任]
		,[所属設定日]
		-- ,[所属終了日]
		,[登録日時]
		,[登録者ID]
		-- ,[更新日時]
		-- ,[更新者ID]
)
VALUES
(
		 198
		,30
		,0
		,'2024-07-01'
		-- ,[所属終了日]
		,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time'
		,160
)
*/

