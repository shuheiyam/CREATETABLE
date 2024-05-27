DROP TABLE	[dbo].[T_職員_所属_履歴]

CREATE TABLE	[dbo].[T_職員_所属_履歴]
(
         [AutoNumberID]     INT IDENTITY(1,1)   NOT NULL
		,[職員ID]			int			        NOT NULL
		,[所属ID]			nchar(2)			NOT	NULL
		,[部課ID]			NCHAR(2)				NULL
		,[主所属]			bit					NOT NULL
		,[所属設定日]		date					NULL
		,[所属終了日]		date					NULL
		,[登録日時]			datetime				NULL
		,[登録者ID]			int 					NULL
		,[更新日時]			datetime				NULL
		,[更新者ID]			int						NULL
		 CONSTRAINT [PK_T_職員_所属_履歴] PRIMARY KEY CLUSTERED 
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

/*
SELECT      *
FROM        [dbo].[T_職員_所属_履歴]
*/

