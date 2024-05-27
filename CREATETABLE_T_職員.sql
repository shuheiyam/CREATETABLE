DROP TABLE	[dbo].[T_職員]

CREATE TABLE	[dbo].[T_職員]
(
		 [職員ID]				INT	IDENTITY(1,1)		NOT NULL
		,[SyncUser]				BIT						NOT NULL
		,[有効]					bit						NOT NULL
		,[姓]					nvarchar(64)				NULL	-- 姓
		,[名]					nvarchar(64)				NULL	-- 名
		,[姓カナ]				nvarchar(64)				NULL	-- 姓カナ
		,[名カナ]				nvarchar(64)				NULL	-- 名カナ
		,[FamilyName]			nvarchar(64)				NULL	-- Family Name
		,[FirstName]			nvarchar(64)				NULL	-- First Name
		,[表示名]				NVARCHAR(128)				NULL
		,[固定電話内線ID]		INT							NULL
		,[PHS]					nchar(4)					NULL
		,[UserPrincipalName]	nvarchar(128)				NULL
		,[Email]				nvarchar(128)				NULL	
		,[雇用タイプID]			int							NULL
		,[職位ID]				int							NULL
		,[建物ID]				int 						NULL
		,[居室ID]				int							NULL
		,[組織ID]				INT							NULL
		,[着任日]				date						NULL
		,[退職日]				date						NULL
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


CREATE					INDEX [IX_表示名]				ON [dbo].[T_職員]([表示名])
CREATE	NONCLUSTERED	INDEX [IX_姓名]					ON [dbo].[T_職員]([姓],[名]) 
CREATE	NONCLUSTERED	INDEX [IX_姓名カナ]				ON [dbo].[T_職員]([姓カナ],[名カナ]) 
CREATE	NONCLUSTERED	INDEX [IX_FullName]				ON [dbo].[T_職員]([FamilyName],[FirstName])

/*
TRUNCATE TABLE [dbo].[T_職員]

INSERT [dbo].[T_職員]
(
		 [SyncUser]
		,[有効]
		,[姓]
		,[名]
		,[姓カナ]
		,[名カナ]
		,[FamilyName]
		,[FirstName]
		,[表示名]
		,[固定電話内線ID]
		,[PHS]
		,[UserPrincipalName]
		,[Email]
		,[雇用タイプID]
		,[職位ID]
		,[建物ID]
		,[居室ID]
		,[組織ID]
		-- ,[着任日]
		-- ,[退職日]
		,[登録日時]
		,[登録者ID]
		,[更新日時]
		,[更新者ID]
		-- ,[備考]
)
SELECT	 [SyncUser]
		,[有効]
		,[姓]
		,[名]
		,[姓カナ]
		,[名カナ]
		,[FamilyName]
		,[FirstName]
		,[表示名]
		,b.[固定電話内線ID]
		,[PHS]
		,[UserPrincipalName]
		,[Email]
		,c.[雇用タイプID]
		,d.[職位ID]
		,e.[建物ID]
		,f.部屋ID
		,g.[組織ID]
		-- ,[着任日]
		-- ,[退職日]
		,a.[登録日時]
		,160
		,a.[更新日時]
		,CASE
			WHEN a.[更新者] IS NOT NULL THEN 160
			ELSE NULL
		 END				AS 更新者ID
		-- ,[備考]
FROM	 [dbo].[TEMP_USR_職員] AS a
		 LEFT JOIN [dbo].[T_固定電話内線] b 	ON b.固定電話内線番号 = a.固定電話内線
		 LEFT JOIN [dbo].[T_雇用タイプ] AS c	ON	c.雇用タイプ名称 = a.雇用タイプ
		 LEFT JOIN [dbo].[T_職位] AS d			ON	d.職位名称 = a.職位
		 LEFT JOIN [dbo].T_建物 AS e 			ON	e.建物名 = a.建物
		 LEFT JOIN [dbo].T_部屋 f 				ON	f.部屋名 = a.居室
		 LEFT JOIN [dbo].T_組織 g 				ON g.組織名称 = a.組織

-- 結合例

WITH Syozoku AS
(
	SELECT		a.[職員ID]
			   ,b.[部局名]
			   ,c.[部課名]
	FROM		[dbo].[T_職員_所属] AS a
				JOIN [dbo].[T_部局] AS b
				ON		b.[部局ID] = a.[部局ID]
				LEFT JOIN [dbo].[T_部課] AS c
				ON		c.[部課ID] = a.[部課ID]
	WHERE		a.[主所属] = 1
)
SELECT	 [SyncUser]
		,[有効]
		,[姓]
		,[名]
		,[姓カナ]
		,[名カナ]
		,[FamilyName]
		,[FirstName]
		,[表示名]
		,b.固定電話内線番号
		,[PHS]
		,[UserPrincipalName]
		,[Email]
		,c.雇用タイプ名称
		,d.職位名称
		,e.建物名
		,f.部屋ID
		,g.組織名称
		,[着任日]
		,[退職日]
		,a.[登録日時]
		,a.登録者ID
		,a.[更新日時]
		,a.更新者ID
		-- ,[備考]
FROM		 [dbo].[T_職員] AS a
			 LEFT JOIN dbo.T_固定電話内線 b 	ON b.固定電話内線ID = a.固定電話内線ID
			 LEFT JOIN dbo.T_雇用タイプ c 		ON c.雇用タイプID = a.雇用タイプID
			 LEFT JOIN dbo.T_職位 d 			ON d.職位ID = a.職位ID
			 LEFT JOIN dbo.T_建物 e 			ON e.建物ID = a.建物ID
			 LEFT JOIN dbo.T_部屋 f 			ON f.部屋ID = a.居室ID
			 LEFT JOIN dbo.T_組織 g 			ON g.組織ID = a.組織ID
ORDER BY	a.[職員ID]


SELECT		*
FROM		[dbo].[T_職員] AS a

*/


SELECT		*
FROM 		dbo.TEMP_USR_職員