DROP TABLE	[dbo].[T_職員_所属]

CREATE TABLE	[dbo].[T_職員_所属]
(
		 [AutoNumberID]		int IDENTITY(1,1)	NOT NULL
		,[職員ID]			int					NOT NULL
		,[部局ID]			int					NOT	NULL
		,[部課ID]			int						NULL
		,[主所属]			bit					NOT NULL
		,[所属設定日]		date					NULL
		,[所属終了日]		date					NULL
		,[登録日時]			datetime				NULL
		,[登録者ID]			nvarchar(128)			NULL
		,[更新日時]			datetime				NULL
		,[更新者ID]			nvarchar(128)			NULL
		 CONSTRAINT [PK_T_職員_所属] PRIMARY KEY CLUSTERED 
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

CREATE	NONCLUSTERED INDEX IX_所属ID_部課ID ON [dbo].[T_職員_所属]([部局ID],[部課ID])

/*
TRUNCATE TABLE [dbo].[T_職員_所属]

INSERT INTO [dbo].[T_職員_所属]
(
		 [職員ID]
		,[部局ID]
		,[部課ID]
		,[主所属]
		,[登録日時]
		,[登録者ID]
)
SELECT	 a.[職員ID]
		,a.[所属CD]
		,a.[部課CD]
		,a.[主所属]
		,a.[登録日時]
		,160
FROM	 [dbo].TEMP_USR_所属 AS a

*/
