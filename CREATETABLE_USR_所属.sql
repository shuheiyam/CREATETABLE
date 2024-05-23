SELECT      *
INTO		[dbo].[TEMP_USR_所属]
FROM        [dbo].[USR_所属]


DROP TABLE	[dbo].[USR_所属]

CREATE TABLE	[dbo].[USR_所属]
(
		 [AutoNumberID]		int IDENTITY(1,1)	NOT NULL
		,[職員ID]			int					NOT NULL
		,[所属CD]			nchar(2)			NOT	NULL
		,[部課CD]			NCHAR(2)				NULL
		,[主所属]			bit					NOT NULL
		,[所属設定日]		date					NULL
		,[所属終了日]		date					NULL
		,[登録日時]			datetime				NULL
		,[登録者]			nvarchar(128)			NULL
		,[更新日時]			datetime				NULL
		,[更新者]			nvarchar(128)			NULL
		 CONSTRAINT [PK_USR_所属] PRIMARY KEY CLUSTERED 
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

CREATE	NONCLUSTERED INDEX IX_所属CD_部課CD ON [dbo].[USR_所属]([所属CD],[部課CD])


TRUNCATE TABLE [dbo].[USR_所属]

INSERT INTO [dbo].[USR_所属]
(
		 [職員ID]
		,[所属CD]
		,[部課CD]
		,[主所属]
		,[登録日時]
		,[登録者]
)
SELECT	 [職員ID]
		,[所属CD]
		,[部課CD]
		,[主所属]
		,[所属設定日]
		,[所属終了日]
		,[登録日時]
		,[登録者]
		,[更新日時]
		,[更新者]
FROM	 [dbo].[TEMP_USR_所属]