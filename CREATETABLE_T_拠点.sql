DROP TABLE	[dbo].[T_拠点]

CREATE TABLE	[dbo].[T_拠点]
(
		 [拠点ID]		tinyint IDENTITY(1,1)	NOT	NULL
		,[拠点名称]		NVARCHAR(64)			NOT NULL
		,[登録日時]		datetime					NULL
		,[登録者ID]		int 						NULL
		,[更新日時]		datetime					NULL
		,[更新者ID]		int 						NULL
		 CONSTRAINT [PK_T_拠点] PRIMARY KEY CLUSTERED 
		 (
			 [拠点ID] ASC
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

CREATE	NONCLUSTERED	INDEX	IX_拠点ID_拠点名	ON [dbo].[T_拠点]([拠点ID],[拠点名称])

/*
TRUNCATE TABLE [dbo].[T_拠点]

INSERT INTO [dbo].[T_拠点]
(
         [拠点名称]
		,[登録日時]
		,[登録者ID]  
)
VALUES
 (N'清瀬',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'登戸',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)
,(N'湘南',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',160)

SELECT	*
FROM	[dbo].[T_拠点]
*/
