DROP TABLE	[dbo].[T_職員_所属_職名_履歴]

CREATE TABLE	[dbo].[T_職員_所属_職名_履歴]
(
		 [AutoNumberID]     int IDENTITY(1,1)	NOT	NULL
		,[職員ID]	        INT                 NOT NULL
		,[併任]				bit 				NOT NULL
        ,[所属ID]           INT                     NULL
		,[職名ID]		    INT         		    NULL
		,[所属設定日]		date					NULL
		,[所属終了日]		date					NULL
		,[履歴作成日時]	    datetime			    NULL
		,[履歴作成者ID]	    int 				    NULL
		 CONSTRAINT [PK_T_職員_所属_職名_履歴] PRIMARY KEY CLUSTERED 
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


INSERT INTO dbo.T_職員_所属_職名_履歴
(
		 [職員ID]
		,[併任]
        ,[所属ID]
		,[職名ID]
		,[所属設定日]
		,[所属終了日]
		,[履歴作成日時]
		,[履歴作成者ID]
)
SELECT	 [職員ID]
		,[併任]
        ,[所属ID]
		,[職名ID]
		,[所属設定日]
		,[所属終了日]
        ,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time'
        ,160
FROM        dbo.T_職員_所属_職名
WHERE       職員ID = 92


SELECT      *
FROM        dbo.T_職員_所属_職名_履歴
