DROP TABLE	[dbo].[T_職員_履歴]

CREATE TABLE	[dbo].[T_職員_履歴]
(
         [AutoNumberID]         int IDENTITY(1,1)       NOT NULL
		,[職員ID]				INT	                	NOT NULL
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
		,[Email]				nvarchar(128)				NULL	
		,[雇用状態ID]			int							NULL
		,[建物ID]				int 						NULL
		,[居室ID]				int							NULL
		,[組織ID]				INT							NULL
		,[履歴作成日時]				datetime					NULL
		,[履歴作成者ID]				int							NULL
		,[備考]					NVARCHAR(max)				NULL
		 CONSTRAINT [PK_T_職員_履歴] PRIMARY KEY CLUSTERED 
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


CREATE					INDEX [IX_表示名]			ON [dbo].[T_職員_履歴]([表示名])
CREATE	NONCLUSTERED	INDEX [IX_姓名]				ON [dbo].[T_職員_履歴]([姓],[名]) 
CREATE	NONCLUSTERED	INDEX [IX_姓名カナ]			ON [dbo].[T_職員_履歴]([姓カナ],[名カナ]) 
CREATE	NONCLUSTERED	INDEX [IX_FullName]			ON [dbo].[T_職員_履歴]([Surname],[GivenName])

/*
[登録例]
INSERT INTO dbo.T_職員_履歴
(
		 [職員ID]
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
		,[Email]
		,[雇用状態ID]
		,[建物ID]
		,[居室ID]
		,[組織ID]
		,[履歴作成日時]
		,[履歴作成者ID]
		,[備考]
)
SELECT	 [職員ID]
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
		,[Email]
		,[雇用状態ID]
		,[建物ID]
		,[居室ID]
		,[組織ID]
		,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time'
		,160
		,N'R6年4月1日辞令より'
FROM	 dbo.T_職員
WHERE 	 職員ID = 40


SELECT		*
FROM 		dbo.T_職員_履歴

*/