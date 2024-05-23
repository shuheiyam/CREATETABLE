SELECT	*
INTO	[dbo].[TEMP_USR_職員]
FROM	[dbo].[USR_職員]


DROP TABLE	[dbo].[T_ユーザ]

CREATE TABLE	[dbo].[T_ユーザ]
(
		 [ユーザID]				INT	IDENTITY(1,1)		NOT NULL
		,[SyncUser]				BIT						NOT NULL
		,[有効]					bit						NOT NULL
		,[姓]					nvarchar(64)				NULL	-- 姓
		,[名]					nvarchar(64)				NULL	-- 名
		,[姓カナ]				nvarchar(64)				NULL	-- 姓カナ
		,[名カナ]				nvarchar(64)				NULL	-- 名カナ
		,[FamilyName]			nvarchar(64)				NULL	-- Family Name
		,[FirstName]			nvarchar(64)				NULL	-- First Name
		,[表示名]				NVARCHAR(128)				NULL
		,[固定電話内線]			nchar(3)					NULL
		,[PHS]					nchar(4)					NULL
		,[UserPrincipalName]	nvarchar(128)				NULL
		,[Email]				nvarchar(128)				NULL	
		,[雇用タイプ]			nvarchar(64)				NULL
		,[職位]					nvarchar(64)				NULL
		,[組織]					NVARCHAR(128)				NULL
		,[着任日]				date						NULL
		,[退職日]				date						NULL
		,[登録日時]				datetime					NULL
		,[登録者]				nvarchar(128)				NULL
		,[更新日時]				datetime					NULL
		,[更新者]				nvarchar(128)				NULL
		,[備考]					NVARCHAR(max)				NULL
		 CONSTRAINT [PK_T_ユーザ] PRIMARY KEY CLUSTERED 
		 (
			 [ユーザID] ASC
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


CREATE					INDEX [IX_表示名]		ON [dbo].[T_ユーザ]([表示名])
CREATE	NONCLUSTERED	INDEX [IX_姓名]			ON [dbo].[T_ユーザ]([姓],[名]) 
CREATE	NONCLUSTERED	INDEX [IX_姓名カナ]		ON [dbo].[T_ユーザ]([姓カナ],[名カナ]) 
CREATE	NONCLUSTERED	INDEX [IX_FullName]		ON [dbo].[T_ユーザ]([FamilyName],[FirstName])

/*
TRUNCATE TABLE [dbo].[T_ユーザ]

INSERT [dbo].[T_ユーザ]
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
		,[固定電話内線]
		,[PHS]
		,[UserPrincipalName]
		,[Email]
		,[雇用タイプ]
		,[職位]
		,[組織]
		-- ,[着任日]
		-- ,[退職日]
		,[登録日時]
		,[登録者]
		,[更新日時]
		,[更新者]
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
		,[固定電話内線]
		,[PHS]
		,[UserPrincipalName]
		,[Email]
		,[雇用タイプ]
		,[職位]
		,[組織]
		,[登録日時]
		,[登録者]
		,[更新日時]
		,[更新者]
FROM	 [dbo].[TEMP_USR_職員]

SELECT		*
FROM		[dbo].[T_ユーザ]


-- 結合例

WITH Kyositu AS
(
	SELECT	 a.[ユーザID]
			,b.[建物名]
			,c.[部屋名]
	FROM	 [dbo].[T_居室] a
			 JOIN [dbo].[T_建物] b
			 ON		b.[建物ID] = a.[建物ID]
			 LEFT JOIN [dbo].[T_部屋] c 
			 ON		c.[部屋ID] = a.[居室ID]
)
SELECT		 a.[ユーザID]
			,a.[SyncUser]
			,a.[有効]
			,a.[姓]
			,a.[名]
			,a.[姓カナ]
			,a.[名カナ]
			,a.[FamilyName]
			,a.[FirstName]
			,a.[表示名]
			,a.[雇用タイプ]
			,a.[職位]
			,a.[組織]
			,c.[部局名]			AS 所属名
			,d.[部課名]
			,a.[固定電話内線]
			,a.[PHS]
			,a.[UserPrincipalName]
			,a.[Email]
			,e.[建物名]
			,e.[部屋名]			AS 居室名
			,a.[着任日]
			,a.[退職日]
			,a.[登録日時]
			,a.[登録者]
			,a.[更新日時]
			,a.[更新者]
			,a.[備考]
FROM		 [dbo].[T_ユーザ] AS a
			 INNER JOIN [dbo].[T_所属] AS b		 	ON b.[ユーザID] = a.[ユーザID]
			 INNER JOIN [dbo].[T_部局] AS c			ON c.[部局ID] = b.[部局ID]
			 LEFT OUTER JOIN [dbo].[T_部課] AS d	ON d.[部課ID] = b.[部課ID]
			 LEFT OUTER JOIN kyositu e 				ON e.[ユーザID] = a.[ユーザID]
WHERE		b.[主所属] = 1
		-- And a.[組織] <> N'労働安全衛生総合研究所'
		-- And a.[雇用タイプ] <> N'派遣社員'
ORDER BY	a.[ユーザID]
-- ORDER BY	[姓カナ],[名カナ]

*/