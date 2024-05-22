DROP TABLE	[dbo].[USR_職員]

CREATE TABLE	[dbo].[USR_職員]
(
		 [職員ID]				INT IDENTITY(1,1)		NOT NULL
		,[アカウントタイプ]		 nchar(2)				 NOT NULL
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
		-- ,[所属]					nvarchar(64)				NULL
		-- ,[部課]					nvarchar(64)				NULL
		,[職位]					nvarchar(64)				NULL
		,[組織]					NVARCHAR(128)				NULL
		,[建物]					NVARCHAR(64)				NULL
		,[フロア]				NVARCHAR(20)				NULL
		,[部屋]					NVARCHAR(64)				NULL
		,[着任日]				date						NULL
		,[退職日]				date						NULL
		,[登録日時]				datetime					NULL
		,[登録者]				nvarchar(128)				NULL
		,[更新日時]				datetime					NULL
		,[更新者]				nvarchar(128)				NULL
		,[備考]					NVARCHAR(max)				NULL
		 CONSTRAINT [PK_USR_職員] PRIMARY KEY CLUSTERED 
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

CREATE		  INDEX IDX_表示名		ON [dbo].[USR_職員]([表示名])


TRUNCATE TABLE [dbo].[USR_職員]

INSERT [dbo].[USR_職員]
(
		 [アカウントタイプ]
		,[SyncUser]
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
		-- ,[所属]
		-- ,[部課]
		,[職位]
		,[組織]
		,[建物]
		,[フロア]
		,[部屋]
		-- ,[着任日]
		-- ,[退職日]
		,[登録日時]
		,[登録者]
		-- ,[更新日時]
		-- ,[更新者]
)
VALUES
 (N'01',N'1',N'1',N'鷹屋',N'光俊',N'タカヤ',N'ミツトシ',N'TAKAYA',N'Mitsutoshi',N'鷹屋 光俊 / TAKAYA Mitsutoshi',N'220',N'8271',N'takaya@h.jniosh.johas.go.jp',N'takaya@h.jniosh.johas.go.jp',N'研究職員',N'所長',N'労働安全衛生総合研究所',N'管理棟',N'2階',N'所長室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'柴田',N'延幸',N'シバタ',N'ノブユキ',N'SHIBATA',N'Nobuyuki',N'柴田 延幸 / SHIBATA Nobuyuki',N'210',N'8223',N'shibata@h.jniosh.johas.go.jp',N'shibata@h.jniosh.johas.go.jp',N'研究職員',N'総括領域長',N'労働安全衛生総合研究所',N'研究本館',N'1階',N'114室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'安江',N'睦',N'ヤスエ',N'ムツミ',N'YASUE',N'Mutsumi',N'安江 睦 / YASUE Mutsumi',N'201',N'8520',N'yasue-mutsumi@h.jniosh.johas.go.jp',N'yasue-mutsumi@h.jniosh.johas.go.jp',N'本省出向',N'管理第二課長',N'厚生労働省',N'管理棟',N'1階',N'管理第二課',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'池田',N'成平',N'イケダ',N'ナリヒラ',N'IKEDA',N'Narihira',N'池田 成平 / IKEDA Narihira',N'222',N'8244',N'ikeda-n@h.jniosh.johas.go.jp',N'ikeda-n@h.jniosh.johas.go.jp',N'機構職員',N'管理係長',N'労働者健康安全機構',N'管理棟',N'1階',N'管理第二課',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'藤代',N'丈弘',N'フジシロ',N'トモヒロ',N'FUJISHIRO',N'Tomohiro',N'藤代 丈弘 / FUJISHIRO Tomohiro',N'204',N'8316',N'fujisiro@h.jniosh.johas.go.jp',N'fujisiro@h.jniosh.johas.go.jp',N'本省出向',N'契約係長',N'厚生労働省',N'管理棟',N'1階',N'管理第二課',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'植草',N'剛',N'ウエクサ',N'ツヨシ',N'UEKUSA',N'Tsuyoshi',N'植草 剛 / UEKUSA Tsuyoshi',N'298',N'8499',N'uekusa@h.jniosh.johas.go.jp',N'uekusa@h.jniosh.johas.go.jp',N'本省出向',N'管理係主任',N'厚生労働省',N'管理棟',N'1階',N'管理第二課',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'岩本',N'奈々子',N'イワモト',N'ナナコ',N'IWAMOTO',N'Nanako',N'岩本 奈々子 / IWAMOTO Nanako',N'207',N'8193',N'iwamoto-nanako@h.jniosh.johas.go.jp',N'iwamoto-nanako@h.jniosh.johas.go.jp',N'機構職員',N'契約係員',N'労働者健康安全機構',N'管理棟',N'1階',N'管理第二課',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'中溝',N'絵里',N'ナカミゾ',N'エリ',N'NAKAMIZO',N'Eri',N'中溝 絵里 / NAKAMIZO Eri',N'224',N'8454',N'nakamizo@h.jniosh.johas.go.jp',N'nakamizo@h.jniosh.johas.go.jp',N'機構職員',N'管理係員',N'労働者健康安全機構',N'管理棟',N'1階',N'管理第二課',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'関口',N'幸子',N'セキグチ',N'サチコ',N'SEKIGUCHI',N'Sachiko',N'関口 幸子 / SEKIGUCHI Sachiko',N'203',N'8334',N'sekiguchi@h.jniosh.johas.go.jp',N'sekiguchi@h.jniosh.johas.go.jp',N'非常勤職員',NULL,N'労働安全衛生総合研究所',N'管理棟',N'1階',N'管理第二課',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'見延',N'三枝',N'ミノベ',N'ミエ',N'MINOBE',N'Mie',N'見延 三枝 / MINOBE Mie',N'205',N'8331',N'minobe@h.jniosh.johas.go.jp',N'minobe@h.jniosh.johas.go.jp',N'非常勤職員',NULL,N'労働安全衛生総合研究所',N'管理棟',N'1階',N'管理第二課',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'鈴木',N'良子',N'スズキ',N'ヨシコ',N'SUZUKI',N'Yoshiko',N'鈴木 良子 / SUZUKI Yoshiko',N'296',N'8466',N'suzuki-yoshiko@h.jniosh.johas.go.jp',N'suzuki-yoshiko@h.jniosh.johas.go.jp',N'非常勤職員',NULL,N'労働安全衛生総合研究所',N'管理棟',N'1階',N'管理第二課',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'三木',N'圭一',N'ミキ',N'ケイイチ',N'MIKI',N'Keiichi',N'三木 圭一 / MIKI Keiichi',NULL,N'8328',N'miki@h.jniosh.johas.go.jp',N'miki@h.jniosh.johas.go.jp',N'研究職員',N'上席研究員',N'労働安全衛生総合研究所',N'研究本館',N'4階',N'418-1室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'古瀬',N'三也',N'フルセ',N'ミツヤ',N'FURUSE',N'Mitsuya',N'古瀬 三也 / FURUSE Mitsuya',NULL,N'8313',N'furuse@h.jniosh.johas.go.jp',N'furuse@h.jniosh.johas.go.jp',N'研究職員',N'研究員',N'労働安全衛生総合研究所',N'研究本館',N'5階',N'518室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'須田',N'恵',N'スダ',N'メグミ',N'SUDA',N'Megumi',N'須田 恵 / SUDA Megumi',N'337',N'8241',N'suda@h.jniosh.johas.go.jp',N'suda@h.jniosh.johas.go.jp',N'再雇用職員',N'特任研究員',N'労働安全衛生総合研究所',N'研究本館',N'3階',N'320室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'大谷',N'勝己',N'オオタニ',N'カツミ',N'OHTANI',N'Katsumi',N'大谷 勝己 / OHTANI Katsumi',N'337',N'8139',N'ohtanik@h.jniosh.johas.go.jp',N'ohtanik@h.jniosh.johas.go.jp',N'再雇用職員',N'特任研究員',N'労働安全衛生総合研究所',N'研究本館',N'3階',N'320室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'0',N'鈴木',N'薫',N'スズキ',N'カオル',N'SUZUKI',N'Kaoru',N'鈴木 薫 / SUZUKI Kaoru',NULL,N'8232',N'suzukik@h.jniosh.johas.go.jp',N'suzukik@h.jniosh.johas.go.jp',N'非常勤職員',NULL,N'労働安全衛生総合研究所',N'管理棟',N'1階',N'研推センター',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'秋庭',N'祥子',N'アキバ',N'ショウコ',N'AKIBA',N'Shoko',N'秋庭 祥子 / AKIBA Shoko',NULL,N'8307',N'akibas@h.jniosh.johas.go.jp',N'akibas@h.jniosh.johas.go.jp',N'非常勤職員',NULL,N'労働安全衛生総合研究所',N'管理棟',N'1階',N'研推センター',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'宮内',N'七恵',N'ミヤウチ',N'ナナエ',N'MIYAUCHI',N'Nanae',N'宮内 七恵 / MIYAUCHI Nanae',NULL,N'8361',N'miyauchin@h.jniosh.johas.go.jp',N'miyauchin@h.jniosh.johas.go.jp',N'非常勤職員',NULL,N'労働安全衛生総合研究所',N'管理棟',N'1階',N'研推センター',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'小倉',N'由紀子',N'オグラ',N'ユキコ',N'OGURA',N'Yukiko',N'小倉 由紀子 / OGURA Yukiko',NULL,N'8388',N'oguray@h.jniosh.johas.go.jp',N'oguray@h.jniosh.johas.go.jp',N'非常勤職員',NULL,N'労働安全衛生総合研究所',N'管理棟',N'1階',N'研推センター',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'坪田',N'陽子',N'ツボタ',N'ヨウコ',N'TSUBOTA',N'Yoko',N'坪田 陽子 / TSUBOTA Yoko',N'317',N'8382',N'tsubotay@h.jniosh.johas.go.jp',N'tsubotay@h.jniosh.johas.go.jp',N'非常勤職員',NULL,N'労働安全衛生総合研究所',N'研究本館',N'1階',N'118国際センター',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'兒島',N'眞由美',N'コジマ',N'マユミ',N'KOJIMA',N'Mayumi',N'兒島 眞由美 / KOJIMA Mayumi',NULL,N'8508',N'kojima@h.jniosh.johas.go.jp',N'kojima@h.jniosh.johas.go.jp',N'非常勤職員',NULL,N'労働安全衛生総合研究所',N'研究本館',N'1階',N'118国際センター',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'佐々木',N'大幸',N'ササキ',N'ヒロユキ',N'SASAKI',N'Hiroyuki',N'佐々木 大幸 / SASAKI Hiroyuki',NULL,N'8121',N'sasaki-hiroyuki@h.jniosh.johas.go.jp',N'sasaki-hiroyuki@h.jniosh.johas.go.jp',N'非常勤職員',NULL,N'労働安全衛生総合研究所',N'管理棟',N'1階',N'研推センター',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'榊原',N'智之',N'サカキバラ',N'トモユキ',N'SAKAKIBARA',N'Tomoyuki',N'榊原 智之 / SAKAKIBARA Tomoyuki',NULL,N'8154',N'sakakibara@h.jniosh.johas.go.jp',N'sakakibara@h.jniosh.johas.go.jp',N'任期付研究員',NULL,N'労働安全衛生総合研究所',N'管理棟',N'1階',N'研推センター',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'大木',N'裕二',N'オオキ',N'ユウジ',N'OHKI',N'Yuji',N'大木 裕二 / OHKI Yuji',NULL,N'8511',N'ohki@h.jniosh.johas.go.jp',N'ohki@h.jniosh.johas.go.jp',N'特定業務嘱託職員',NULL,N'労働安全衛生総合研究所',N'研究本館',N'5階',N'501サーバー室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'山口',N'聖美',N'ヤマグチ',N'キヨミ',N'YAMAGUCHI',N'Kiyomi',N'山口 聖美 / YAMAGUCHI Kiyomi',NULL,N'8514',N'yamaguchi-k@h.jniosh.johas.go.jp',N'yamaguchi-k@h.jniosh.johas.go.jp',N'特定業務嘱託職員',NULL,N'労働安全衛生総合研究所',N'研究本館',N'5階',N'501サーバー室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'森',N'賢一郎',N'モリ',N'ケンイチロウ',N'MORI',N'Kenichiro',N'森 賢一郎 / MORI Kenichiro',NULL,N'8529',N'mori@h.jniosh.johas.go.jp',N'mori@h.jniosh.johas.go.jp',N'特定業務嘱託職員',NULL,N'労働安全衛生総合研究所',N'管理棟',N'1階',N'研推センター',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'城内',N'博',N'ジョウナイ',N'ヒロシ',N'JONAI',N'Hiroshi',N'城内 博 / JONAI Hiroshi',NULL,N'8124',N'jonai@h.jniosh.johas.go.jp',N'jonai@h.jniosh.johas.go.jp',N'特定業務嘱託職員',N'センター長',N'労働安全衛生総合研究所',N'研究本館',N'4階',N'408/センター長室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'伊藤',N'昭好',N'イトウ',N'アキヨシ',N'ITO',N'Akiyoshi',N'伊藤 昭好 / ITO Akiyoshi',NULL,N'8220',N'itoa@h.jniosh.johas.go.jp',N'itoa@h.jniosh.johas.go.jp',N'特定業務嘱託職員',N'センター長代理',N'労働安全衛生総合研究所',N'研究本館',N'1階',N'112室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'矢吹',N'陽子',N'ヤブキ',N'ヨウコ',N'YABUKI',N'Yoko',N'矢吹 陽子 / YABUKI Yoko',NULL,N'8319',N'yabuki-yoko@h.jniosh.johas.go.jp',N'yabuki-yoko@h.jniosh.johas.go.jp',N'本省出向',N'調査役',N'厚生労働省',N'研究本館',N'4階',N'408室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'山本',N'健也',N'ヤマモト',N'ケンヤ',N'YAMAMOTO',N'Kenya',N'山本 健也 / YAMAMOTO Kenya',N'344',N'8130',N'yamamotok@h.jniosh.johas.go.jp',N'yamamotok@h.jniosh.johas.go.jp',N'任期付研究員',N'部長',N'労働安全衛生総合研究所',N'研究本館',N'3階',N'306-1室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'中原',N'浩彦',N'ナカハラ',N'ヒロヒコ',N'NAKAHARA',N'Hirohiko',N'中原 浩彦 / NAKAHARA Hirohiko',NULL,N'8433',N'nakahara@h.jniosh.johas.go.jp',N'nakahara@h.jniosh.johas.go.jp',N'特定業務嘱託職員',NULL,N'労働安全衛生総合研究所',N'研究本館',N'1階',N'112室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'緒方',N'裕子',N'オガタ',N'ユウコ',N'OGATA',N'Yuko',N'緒方 裕子 / OGATA Yuko',NULL,N'8544',N'ogata-yuko@h.jniosh.johas.go.jp',N'ogata-yuko@h.jniosh.johas.go.jp',N'任期付研究員',NULL,N'労働安全衛生総合研究所',N'研究本館',N'4階',N'404/408室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'奈良',N'志ほり',N'ナラ',N'シホリ',N'NARA',N'Shihori',N'奈良 志ほり / NARA Shihori',NULL,N'8493',N'nara-shihori@h.jniosh.johas.go.jp',N'nara-shihori@h.jniosh.johas.go.jp',N'任期付研究員',NULL,N'労働安全衛生総合研究所',N'研究本館',N'4階',N'408室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'重田',N'善之',N'シゲタ',N'ヨシユキ',N'SHIGETA',N'Yoshiyuki',N'重田 善之 / SHIGETA Yoshiyuki',NULL,N'8490',N'shigeta-yoshiyuki@h.jniosh.johas.go.jp',N'shigeta-yoshiyuki@h.jniosh.johas.go.jp',N'任期付研究員',NULL,N'労働安全衛生総合研究所',N'研究本館',N'4階',N'408室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'小野',N'真理子',N'オノ',N'マリコ',N'ONO',N'Mariko',N'小野 真理子 / ONO-OGASAWARA Mariko',NULL,N'8517',N'ono@h.jniosh.johas.go.jp',N'ono@h.jniosh.johas.go.jp',N'特定有期雇用職員',N'特任研究員',N'労働安全衛生総合研究所',N'研究本館',N'4階',N'408室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'梅邑',N'幸弘',N'ウメムラ',N'ユキヒロ',N'UMEMURA',N'Yukihiro',N'梅邑 幸弘 / UMEMURA Yukihiro',NULL,N'8472',N'umemura@h.jniosh.johas.go.jp',N'umemura@h.jniosh.johas.go.jp',N'非常勤職員',NULL,N'労働安全衛生総合研究所',N'研究本館',N'5階',N'516室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'丸野',N'裕子',N'マルノ',N'ヒロコ',N'MARUNO',N'Hiroko',N'丸野 裕子 / MARUNO Hiroko',NULL,N'8406',N'maruno@h.jniosh.johas.go.jp',N'maruno@h.jniosh.johas.go.jp',N'非常勤職員',NULL,N'労働安全衛生総合研究所',N'研究本館',N'5階',N'516室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'齊藤',N'宏之',N'サイトウ',N'ヒロユキ',N'SAITO',N'Hiroyuki',N'齊藤 宏之 / SAITO Hiroyuki',N'336',N'8202',N'saitoh@h.jniosh.johas.go.jp',N'saitoh@h.jniosh.johas.go.jp',N'研究職員',N'部長',N'労働安全衛生総合研究所',N'研究本館',N'3階',N'306-2室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'山田',N'丸',N'ヤマダ',N'マロム',N'YAMADA',N'Maromu',N'山田 丸 / YAMADA Maromu',N'321',N'8160',N'yamadam@h.jniosh.johas.go.jp',N'yamadam@h.jniosh.johas.go.jp',N'研究職員',N'部長代理',N'労働安全衛生総合研究所',N'研究本館',N'2階',N'206-1室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'萩原',N'正義',N'ハギワラ',N'マサヨシ',N'HAGIWARA',N'Masayoshi',N'萩原 正義 / HAGIWARA Masayoshi',N'335',N'8295',N'hagiwara@h.jniosh.johas.go.jp',N'hagiwara@h.jniosh.johas.go.jp',N'研究職員',N'主任研究員',N'労働安全衛生総合研究所',N'研究本館',N'3階',N'306-2室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'中村',N'憲司',N'ナカムラ',N'ケンジ',N'NAKAMURA',N'Kenji',N'中村 憲司 / NAKAMURA Kenji',NULL,N'8115',N'nakamuk@h.jniosh.johas.go.jp',N'nakamuk@h.jniosh.johas.go.jp',N'研究職員',N'主任研究員',N'労働安全衛生総合研究所',N'研究本館',N'3階',N'324室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'緒方',N'裕子',N'オガタ',N'ヒロコ',N'OGATA',N'Hiroko',N'緒方 裕子 / OGATA Hiroko',NULL,N'8535',N'ogata@h.jniosh.johas.go.jp',N'ogata@h.jniosh.johas.go.jp',N'任期付研究員',NULL,N'労働安全衛生総合研究所',N'研究本館',N'4階',N'408室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'金子',N'剛大',N'カネコ',N'タケヒロ',N'KANEKO',N'Takehiro',N'金子 剛大 / KANEKO Takehiro',NULL,N'8580',N'kaneko-takehiro@h.jniosh.johas.go.jp',N'kaneko-takehiro@h.jniosh.johas.go.jp',N'任期付研究員',NULL,N'労働安全衛生総合研究所',N'研究本館',N'4階',N'408室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'日達',N'清',N'ヒタチ',N'キヨシ',N'HITACHI',N'Kiyoshi',N'日達 清 / HITACHI Kiyoshi',NULL,N'8451',N'hitachi@h.jniosh.johas.go.jp',N'hitachi@h.jniosh.johas.go.jp',N'特定業務嘱託職員',NULL,N'労働安全衛生総合研究所',N'研究本館',N'4階',N'408室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'村瀬',N'めぐみ',N'ムラセ',N'メグミ',N'MURASE',N'Megumi',N'村瀬 めぐみ / MURASE Megumi',NULL,N'8418',N'murasem@h.jniosh.johas.go.jp',N'murasem@h.jniosh.johas.go.jp',N'特定業務嘱託職員',NULL,N'労働安全衛生総合研究所',N'研究本館',N'4階',N'408室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'豊岡',N'達士',N'トヨオカ',N'タツシ',N'TOYOOKA',N'Tatsushi',N'豊岡 達士 / TOYOOKA Tatsushi',N'311',N'8190',N'toyooka@h.jniosh.johas.go.jp',N'toyooka@h.jniosh.johas.go.jp',N'研究職員',N'部長代理',N'労働安全衛生総合研究所',N'研究本館',N'1階',N'106-1室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'小林',N'健一',N'コバヤシ',N'ケンイチ',N'KOBAYASHI',N'Kenichi',N'小林 健一 / KOBAYASHI Kenichi',N'324',N'8196',N'kobayasi@h.jniosh.johas.go.jp',N'kobayasi@h.jniosh.johas.go.jp',N'研究職員',N'上席研究員',N'労働安全衛生総合研究所',N'研究本館',N'2階',N'208-2室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'天本',N'宇紀',N'アマモト',N'タカキ',N'AMAMOTO',N'Takaki',N'天本 宇紀 / AMAMOTO Takaki',NULL,N'8349',N'amamoto@h.jniosh.johas.go.jp',N'amamoto@h.jniosh.johas.go.jp',N'研究職員',N'研究員',N'労働安全衛生総合研究所',N'研究本館',N'3階',N'324室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'富岡',N'征大',N'トミオカ',N'マサヒロ',N'TOMIOKA',N'Masahiro',N'富岡 征大 / TOMIOKA Masahiro',NULL,N'8562',N'tomioka-masahiro@h.jniosh.johas.go.jp',N'tomioka-masahiro@h.jniosh.johas.go.jp',N'任期付研究員',NULL,N'労働安全衛生総合研究所',N'研究本館',N'4階',N'408室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'王',N'瑞生',N'オウ',N'ズイセイ',N'WANG',N'Ruisheng',N'王 瑞生 / WANG Ruisheng',NULL,N'8136',N'wang@h.jniosh.johas.go.jp',N'wang@h.jniosh.johas.go.jp',N'特定有期雇用職員',N'特任研究員',N'労働安全衛生総合研究所',N'研究本館',N'3階',N'320室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'小野',N'恵美',N'オノ',N'メグミ',N'ONO',N'Megumi',N'小野 恵美 / ONO Megumi',NULL,N'8412',N'megumi_ono@h.jniosh.johas.go.jp',N'megumi_ono@h.jniosh.johas.go.jp',N'特定業務嘱託職員',NULL,N'労働安全衛生総合研究所',N'研究本館',N'3階',N'304-1',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'中野',N'真規子',N'ナカノ',N'マキコ',N'NAKANO',N'Makiko',N'中野 真規子 / NAKANO Makiko',NULL,N'8553',N'nakano-makiko@h.jniosh.johas.go.jp',N'nakano-makiko@h.jniosh.johas.go.jp',N'任期付研究員',N'部長',N'労働安全衛生総合研究所',N'研究本館',N'3階',N'323室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'小林',N'澄貴',N'コバヤシ',N'スミタカ',N'KOBAYASHI',N'Sumitaka',N'小林 澄貴 / KOBAYASHI Sumitaka',NULL,N'8574',N'kobayashi-sumitaka@h.jniosh.johas.go.jp',N'kobayashi-sumitaka@h.jniosh.johas.go.jp',N'任期付研究員',NULL,N'労働安全衛生総合研究所',N'研究本館',N'3階',N'323室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'柳場',N'由絵',N'ヤナギバ',N'ユキエ',N'YANAGIBA',N'Yukie',N'柳場 由絵 / YANAGIBA Yukie',N'332',N'8301',N'yanagiba@h.jniosh.johas.go.jp',N'yanagiba@h.jniosh.johas.go.jp',N'研究職員',N'室長',N'労働安全衛生総合研究所',N'研究本館',N'3階',N'304-1室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'王',N'斉',N'ワン',N'チー',N'WANG',N'Qi',N'王 斉 / WANG Qi',NULL,N'8556',N'qi-wang@h.jniosh.johas.go.jp',N'qi-wang@h.jniosh.johas.go.jp',N'任期付研究員',NULL,N'労働安全衛生総合研究所',N'研究本館',N'4階',N'408室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'岩瀬',N'真喜子',N'イワセ',N'マキコ',N'IWASE',N'Makiko',N'岩瀬 真喜子 / IWASE Makiko',NULL,N'8565',N'iwase-makiko@h.jniosh.johas.go.jp',N'iwase-makiko@h.jniosh.johas.go.jp',N'任期付研究員',NULL,N'労働安全衛生総合研究所',N'研究本館',N'4階',N'408室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'高橋',N'正也',N'タカハシ',N'マサヤ',N'TAKAHASHI',N'Masaya',N'高橋 正也 / TAKAHASHI Masaya',N'315',N'8265',N'takaham@h.jniosh.johas.go.jp',N'takaham@h.jniosh.johas.go.jp',N'研究職員',N'センター長',N'労働安全衛生総合研究所',N'研究本館',N'1階',N'110室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'吉川',N'徹',N'ヨシカワ',N'トオル',N'YOSHIKAWA',N'Toru',N'吉川 徹 / YOSHIKAWA Toru',N'237',N'8283',N'yoshikawa@h.jniosh.johas.go.jp',N'yoshikawa@h.jniosh.johas.go.jp',N'研究職員',N'センター長代理',N'労働安全衛生総合研究所',N'管理棟',N'2階',N'過労死等防止調査研究センター',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'鈴木',N'一弥',N'スズキ',N'カズヤ',N'SUZUKI',N'Kazuya',N'鈴木 一弥 / SUZUKI Kazuya',N'328',N'8142',N'suzukikz@h.jniosh.johas.go.jp',N'suzukikz@h.jniosh.johas.go.jp',N'特定有期雇用職員',N'特任研究員',N'労働安全衛生総合研究所',N'研究本館',N'4階',N'418-2室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'茂木',N'伸之',N'モテギ',N'ノブユキ',N'MOTEGI',N'Nobuyuki',N'茂木 伸之 / MOTEGI Nobuyuki',NULL,N'8172',N'motegi@h.jniosh.johas.go.jp',N'motegi@h.jniosh.johas.go.jp',N'特定有期雇用職員',N'特任研究員',N'労働安全衛生総合研究所',N'研究本館',N'2階',N'204室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'古屋',N'隆',N'フルヤ',N'タカシ',N'FURUYA',N'Takashi',N'古屋 隆 / FURUYA Takashi',N'238',N'8187',N'furuya-takashi@h.jniosh.johas.go.jp',N'furuya-takashi@h.jniosh.johas.go.jp',N'特定業務嘱託職員',NULL,N'労働安全衛生総合研究所',N'管理棟',N'2階',N'過労死等防止調査研究センター',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'村井',N'史子',N'ムライ',N'フミコ',N'MURAI',N'Fumiko',N'村井 史子 / MURAI Fumiko',N'338',N'8394',N'murai-f@h.jniosh.johas.go.jp',N'murai-f@h.jniosh.johas.go.jp',N'特定業務嘱託職員',NULL,N'労働安全衛生総合研究所',N'研究本館',N'2階',N'218室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'中村',N'有里',N'ナカムラ',N'アリ',N'NAKAMURA',N'Ari',N'中村 有里 / NAKAMURA Ari',NULL,N'8532',N'nakamura-a@h.jniosh.johas.go.jp',N'nakamura-a@h.jniosh.johas.go.jp',N'特定業務嘱託職員',NULL,N'労働安全衛生総合研究所',N'研究本館',N'2階',N'218室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'藤井',N'雅子',N'フジイ',N'マサコ',N'FUJII',N'Masako',N'藤井 雅子 / FUJII Masako',N'239',N'8304',N'fujii@h.jniosh.johas.go.jp',N'fujii@h.jniosh.johas.go.jp',N'非常勤職員',NULL,N'労働安全衛生総合研究所',N'管理棟',N'2階',N'過労死等防止調査研究センター',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'布谷',N'祐子',N'ヌノヤ',N'ユウコ',N'NUNOYA',N'Yuko',N'布谷 祐子 / NUNOYA Yuko',NULL,N'8259',N'nunoya@h.jniosh.johas.go.jp',N'nunoya@h.jniosh.johas.go.jp',N'非常勤職員',NULL,N'労働安全衛生総合研究所',N'研究本館',N'2階',N'214室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'内山',N'幸恵',N'ウチヤマ',N'ユキエ',N'UCHIYAMA',N'Yukie',N'内山 幸恵 / UCHIYAMA Yukie',N'241',N'8310',N'uchiyama@h.jniosh.johas.go.jp',N'uchiyama@h.jniosh.johas.go.jp',N'非常勤職員',NULL,N'労働安全衛生総合研究所',N'管理棟',N'2階',N'過労死等防止調査研究センター',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'吉田',N'かずほ',N'ヨシダ',N'カズホ',N'YOSHIDA',N'Kazuho',N'吉田 かずほ / YOSHIDA Kazuho',N'240',N'8322',N'yoshidak@h.jniosh.johas.go.jp',N'yoshidak@h.jniosh.johas.go.jp',N'非常勤職員',NULL,N'労働安全衛生総合研究所',N'管理棟',N'2階',N'過労死等防止調査研究センター',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'玉置',N'敦子',N'タマオキ',N'アツコ',N'TAMAOKI',N'Atsuko',N'玉置 敦子 / TAMAOKI Atsuko',NULL,N'8292',N'tamaoki@h.jniosh.johas.go.jp',N'tamaoki@h.jniosh.johas.go.jp',N'非常勤職員',NULL,N'労働安全衛生総合研究所',N'研究本館',N'5階',N'505-1室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'櫻井',N'裕子',N'サクライ',N'ユウコ',N'SAKURAI',N'Yuko',N'櫻井 裕子 / SAKURAI Yuko',NULL,N'8475',N'sakurai@h.jniosh.johas.go.jp',N'sakurai@h.jniosh.johas.go.jp',N'非常勤職員',NULL,N'労働安全衛生総合研究所',N'管理棟',N'2階',N'過労死等防止調査研究センター',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'吉田',N'朋子',N'ヨシダ',N'トモコ',N'YOSHIDA',N'Tomoko',N'吉田 朋子 / YOSHIDA Tomoko',N'295',N'8376',N'yoshida-tomoko@h.jniosh.johas.go.jp',N'yoshida-tomoko@h.jniosh.johas.go.jp',N'非常勤職員',NULL,N'労働安全衛生総合研究所',N'管理棟',N'1階',N'管理第二課',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'近藤',N'はな恵',N'コンドウ',N'ハナエ',N'KONDO',N'Hanae',N'近藤 はな恵 / KONDO Hanae',NULL,N'8385',N'kondou-h@h.jniosh.johas.go.jp',N'kondou-h@h.jniosh.johas.go.jp',N'非常勤職員',NULL,N'労働安全衛生総合研究所',N'研究本館',N'2階',N'204室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'米岡',N'京子',N'ヨネオカ',N'キョウコ',N'YONEOKA',N'Kyoko',N'米岡 京子 / YONEOKA Kyoko',NULL,N'8250',N'yoneoka@h.jniosh.johas.go.jp',N'yoneoka@h.jniosh.johas.go.jp',N'非常勤職員',NULL,N'労働安全衛生総合研究所',N'研究本館',N'2階',N'204室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'大久保',N'利晃',N'オオクボ',N'トシテル',N'OHKUBO',N'Toshiteru',N'大久保 利晃 / OHKUBO Toshiteru',N'245',N'8298',N'ohkubo-t@h.jniosh.johas.go.jp',N'ohkubo-t@h.jniosh.johas.go.jp',N'任期付研究員',N'センター長',N'労働安全衛生総合研究所',N'研究本館',N'5階',N'510/511室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'溝上',N'哲也',N'ミゾウエ',N'テツヤ',N'MIZOUE',N'Tetsuya',N'溝上 哲也 / MIZOUE Tetsuya',NULL,N'8262',N'mizoue-t@h.jniosh.johas.go.jp',N'mizoue-t@h.jniosh.johas.go.jp',N'特定業務嘱託職員',N'センター長代理',N'労働安全衛生総合研究所',N'研究本館',N'5階',N'510/511室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'石邉',N'綾子',N'イシベ',N'アヤコ',N'ISHIBE',N'Ayako',N'石邉 綾子 / ISHIBE Ayako',NULL,N'8166',N'ishibe-a@h.jniosh.johas.go.jp',N'ishibe-a@h.jniosh.johas.go.jp',N'特定業務嘱託職員',NULL,N'労働安全衛生総合研究所',N'研究本館',N'5階',N'510/511室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'堀向',N'玲子',N'ホリムカイ',N'レイコ',N'HORIMUKAI',N'Reiko',N'堀向 玲子 / HORIMUKAI Reiko',NULL,N'8480',N'horimukai-reiko@h.jniosh.johas.go.jp',N'horimukai-reiko@h.jniosh.johas.go.jp',N'特定業務嘱託職員',NULL,N'労働安全衛生総合研究所',N'研究本館',N'5階',N'510/511室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'土永',N'章代',N'ツチナガ',N'アキヨ',N'TSUCHINAGA',N'Akiyo',N'土永 章代 / TSUCHINAGA Akiyo',NULL,N'8403',N'tsutinaga-a@h.jniosh.johas.go.jp',N'tsutinaga-a@h.jniosh.johas.go.jp',N'特定業務嘱託職員',NULL,N'労働安全衛生総合研究所',N'研究本館',N'5階',N'510/511室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'胡',N'歓',N'フ',N'ファン',N'HU',N'Huan',N'胡 歓 / HU Huan',NULL,N'8538',N'huhuan@h.jniosh.johas.go.jp',N'huhuan@h.jniosh.johas.go.jp',N'特定業務嘱託職員',NULL,N'労働安全衛生総合研究所',N'研究本館',N'5階',N'510/511室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'種田',N'栄子',N'タネダ',N'エイコ',N'TANEDA',N'Eiko',N'種田 栄子 / TANEDA Eiko',N'247',N'8523',N'taneda-eiko@h.jniosh.johas.go.jp',N'taneda-eiko@h.jniosh.johas.go.jp',N'特定業務嘱託職員',NULL,N'労働安全衛生総合研究所',N'研究本館',N'5階',N'510/511室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'東',N'佳奈',N'アズマ',N'カナ',N'AZUMA',N'Kana',N'東 佳奈 / AZUMA Kana',NULL,N'8547',N'azuma-kana@h.jniosh.johas.go.jp',N'azuma-kana@h.jniosh.johas.go.jp',N'特定業務嘱託職員',NULL,N'労働安全衛生総合研究所',N'研究本館',N'5階',N'510/511室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'鈴木',N'伸太郎',N'スズキ',N'シンタロウ',N'SUZUKI',N'Shintaro',N'鈴木 伸太郎 / SUZUKI Shintaro',NULL,N'8526',N'suzuki-shintarou@h.jniosh.johas.go.jp',N'suzuki-shintarou@h.jniosh.johas.go.jp',N'特定業務嘱託職員',NULL,N'労働安全衛生総合研究所',N'研究本館',N'5階',N'510/511室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'栗田',N'沙織',N'クリタ',N'サオリ',N'KURITA',N'Saori',N'栗田 沙織 / KURITA Saori',NULL,N'8415',N'kurita-saori@h.jniosh.johas.go.jp',N'kurita-saori@h.jniosh.johas.go.jp',N'非常勤職員',NULL,N'労働安全衛生総合研究所',N'研究本館',N'5階',N'510/511室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'荒川',N'貴子',N'アラカワ',N'タカコ',N'ARAKAWA',N'Takako',N'荒川 貴子 / ARAKAWA Takako',NULL,N'8502',N'arakawa-takako@h.jniosh.johas.go.jp',N'arakawa-takako@h.jniosh.johas.go.jp',N'非常勤職員',NULL,N'労働安全衛生総合研究所',N'研究本館',N'5階',N'510/511室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'佐藤',N'あけみ',N'サトウ',N'アケミ',N'SATO',N'Akemi',N'佐藤 あけみ / SATO Akemi',NULL,N'8457',N'sato-akemi@h.jniosh.johas.go.jp',N'sato-akemi@h.jniosh.johas.go.jp',N'特定業務嘱託職員',NULL,N'労働安全衛生総合研究所',N'研究本館',N'5階',N'510/511室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'0',N'小林',N'拓司',N'コバヤシ',N'タクジ',N'KOBAYASHI',N'Takuji',N'小林 拓司 / KOBAYASHI Takuji',NULL,N'8505',N'kobayashi-t@h.jniosh.johas.go.jp',N'kobayashi-t@h.jniosh.johas.go.jp',N'特定業務嘱託職員',NULL,N'労働安全衛生総合研究所',N'研究本館',N'5階',N'510/511室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'小野寺',N'梨恵',N'オノデラ',N'リエ',N'ONODERA',N'Rie',N'小野寺 梨恵 / ONODERA Rie',N'248',N'8226',N'onodera-r@h.jniosh.johas.go.jp',N'onodera-r@h.jniosh.johas.go.jp',N'特定業務嘱託職員',NULL,N'労働安全衛生総合研究所',N'研究本館',N'5階',N'510/511室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'0',N'宮田',N'奈々',N'ミヤタ',N'ナナ',N'MIYATA',N'Nana',N'宮田 奈々 / MIYATA Nana',N'249',N'8370',N'miyata-nana@h.jniosh.johas.go.jp',N'miyata-nana@h.jniosh.johas.go.jp',N'特定業務嘱託職員',NULL,N'労働安全衛生総合研究所',N'研究本館',N'5階',N'510/511室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'0',N'近藤',N'里紗',N'コンドウ',N'リサ',N'KONDO',N'Risa',N'近藤 里紗 / KONDO Risa',NULL,N'8163',N'kondou-risa@h.jniosh.johas.go.jp',N'kondou-risa@h.jniosh.johas.go.jp',N'非常勤職員',NULL,N'労働安全衛生総合研究所',N'研究本館',N'5階',N'510/511室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'佐々木',N'毅',N'ササキ',N'タケシ',N'SASAKI',N'Takeshi',N'佐々木 毅 / SASAKI Takeshi',N'325',N'8208',N'sasakit@h.jniosh.johas.go.jp',N'sasakit@h.jniosh.johas.go.jp',N'研究職員',N'部長',N'労働安全衛生総合研究所',N'研究本館',N'2階',N'210室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'久保',N'智英',N'クボ',N'トモヒデ',N'KUBO',N'Tomohide',N'久保 智英 / KUBO Tomohide',N'334',N'8256',N'kubo@h.jniosh.johas.go.jp',N'kubo@h.jniosh.johas.go.jp',N'研究職員',N'上席研究員',N'労働安全衛生総合研究所',N'研究本館',N'5階',N'505-1室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'井澤',N'修平',N'イザワ',N'シュウヘイ',N'IZAWA',N'Shuhei',N'井澤 修平 / IZAWA Shuhei',N'349',N'8352',N'izawa@h.jniosh.johas.go.jp',N'izawa@h.jniosh.johas.go.jp',N'研究職員',N'上席研究員',N'労働安全衛生総合研究所',N'研究本館',N'4階',N'420-2室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'松元',N'俊',N'マツモト',N'シュン',N'MATSUMOTO',N'Shun',N'松元 俊 / MATSUMOTO Shun',N'328',N'8277',N'matsumoto@h.jniosh.johas.go.jp',N'matsumoto@h.jniosh.johas.go.jp',N'研究職員',N'研究員',N'労働安全衛生総合研究所',N'研究本館',N'2階',N'216室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'西村',N'悠貴',N'ニシムラ',N'ユウキ',N'NISHIMURA',N'Yuki',N'西村 悠貴 / NISHIMURA Yuki',NULL,N'8285',N'nishimura@h.jniosh.johas.go.jp',N'nishimura@h.jniosh.johas.go.jp',N'研究職員',N'研究員',N'労働安全衛生総合研究所',N'研究本館',N'2階',N'204室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'佐藤',N'ゆき',N'サトウ',N'ユキ',N'SATO',N'Yuki',N'佐藤 ゆき / SATO Yuki',NULL,N'8214',N'sato-y@h.jniosh.johas.go.jp',N'sato-y@h.jniosh.johas.go.jp',N'研究職員',N'研究員',N'労働安全衛生総合研究所',N'研究本館',N'2階',N'204室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'菅谷',N'渚',N'スガヤ',N'ナギサ',N'SUGAYA',N'Nagisa',N'菅谷 渚 / SUGAYA Nagisa',NULL,N'8568',N'sugaya-nagisa@h.jniosh.johas.go.jp',N'sugaya-nagisa@h.jniosh.johas.go.jp',N'任期付研究員',NULL,N'労働安全衛生総合研究所',N'研究本館',N'3階',N'322室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'木内',N'敬太',N'キウチ',N'ケイタ',N'KIUCHI',N'Keita',N'木内 敬太 / KIUCHI Keita',NULL,N'8133',N'kiuchi@h.jniosh.johas.go.jp',N'kiuchi@h.jniosh.johas.go.jp',N'任期付研究員',NULL,N'労働安全衛生総合研究所',N'研究本館',N'2階',N'204室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'高橋',N'幸雄',N'タカハシ',N'ユキオ',N'TAKAHASHI',N'Yukio',N'高橋 幸雄 / TAKAHASHI Yukio',N'345',N'8268',N'takahay@h.jniosh.johas.go.jp',N'takahay@h.jniosh.johas.go.jp',N'研究職員',N'部長',N'労働安全衛生総合研究所',N'研究本館',N'1階',N'108-2室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'小嶋',N'純',N'オジマ',N'ジュン',N'OJIMA',N'Jun',N'小嶋 純 / OJIMA Jun',N'333',N'8151',N'ojima@h.jniosh.johas.go.jp',N'ojima@h.jniosh.johas.go.jp',N'研究職員',N'統括研究員',N'労働安全衛生総合研究所',N'研究本館',N'3階',N'304-2室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'安彦',N'泰進',N'アビコ',N'ヒロノブ',N'ABIKO',N'Hironobu',N'安彦 泰進 / ABIKO Hironobu',N'312',N'8118',N'abiko@h.jniosh.johas.go.jp',N'abiko@h.jniosh.johas.go.jp',N'研究職員',N'上席研究員',N'労働安全衛生総合研究所',N'研究本館',N'1階',N'106-2室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'井上',N'直子',N'イノウエ',N'ナオコ',N'INOUE',N'Naoko',N'井上 直子 / INOUE Naoko',N'339',N'8211',N'inoue@h.jniosh.johas.go.jp',N'inoue@h.jniosh.johas.go.jp',N'研究職員',N'主任研究員',N'労働安全衛生総合研究所',N'研究本館',N'3階',N'324室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'高谷',N'一成',N'タカヤ',N'カズナリ',N'TAKAYA',N'Kazunari',N'高谷 一成 / TAKAYA Kazunari',N'338',N'8217',N'takaya-k@h.jniosh.johas.go.jp',N'takaya-k@h.jniosh.johas.go.jp',N'研究職員',N'研究員',N'労働安全衛生総合研究所',N'研究本館',N'3階',N'322室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'岩切',N'一幸',N'イワキリ',N'カズユキ',N'IWAKIRI',N'Kazuyuki',N'岩切 一幸 / IWAKIRI Kazuyuki',N'316',N'8127',N'iwakiri@h.jniosh.johas.go.jp',N'iwakiri@h.jniosh.johas.go.jp',N'研究職員',N'部長',N'労働安全衛生総合研究所',N'研究本館',N'1階',N'116室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'劉',N'欣欣',N'リュウ',N'シンシン',N'LIU',N'Xinxin',N'劉 欣欣 / LIU Xinxin',N'314',N'8340',N'liu@h.jniosh.johas.go.jp',N'liu@h.jniosh.johas.go.jp',N'研究職員',N'上席研究員',N'労働安全衛生総合研究所',N'研究本館',N'1階',N'108-2室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'松尾',N'知明',N'マツオ',N'トモアキ',N'MATSUO',N'Tomoaki',N'松尾 知明 / MATSUO Tomoaki',N'348',N'8286',N'matsuo@h.jniosh.johas.go.jp',N'matsuo@h.jniosh.johas.go.jp',N'研究職員',N'上席研究員',N'労働安全衛生総合研究所',N'研究本館',N'3階',N'322室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'時澤',N'健',N'トキザワ',N'ケン',N'TOKIZAWA',N'Ken',N'時澤 健 / TOKIZAWA Ken',N'352',N'8169',N'tokizawa@h.jniosh.johas.go.jp',N'tokizawa@h.jniosh.johas.go.jp',N'研究職員',N'上席研究員',N'労働安全衛生総合研究所',N'研究本館',N'5階',N'518室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'池田',N'大樹',N'イケダ',N'ヒロキ',N'IKEDA',N'Hiroki',N'池田 大樹 / IKEDA Hiroki',N'328',N'8358',N'ikedah@h.jniosh.johas.go.jp',N'ikedah@h.jniosh.johas.go.jp',N'研究職員',N'主任研究員',N'労働安全衛生総合研究所',N'研究本館',N'2階',N'216室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'蘇',N'リナ',N'ソ',N'リナ',N'SO',N'Rina',N'蘇 リナ / SO Rina',N'328',N'8409',N'sorina@h.jniosh.johas.go.jp',N'sorina@h.jniosh.johas.go.jp',N'研究職員',N'主任研究員',N'労働安全衛生総合研究所',N'研究本館',N'2階',N'216室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'小山',N'冬樹',N'オヤマ',N'フユキ',N'OYAMA',N'Fuyuki',N'小山 冬樹 / OYAMA Fuyuki',NULL,N'8343',N'oyama@h.jniosh.johas.go.jp',N'oyama@h.jniosh.johas.go.jp',N'研究職員',N'研究員',N'労働安全衛生総合研究所',N'研究本館',N'5階',N'522-1室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'杜',N'唐慧子',N'トウ',N'トウケイコ',N'DU',N'Tanghuizi',N'杜 唐慧子 / DU Tanghuizi',N'338',N'8289',N'du@h.jniosh.johas.go.jp',N'du@h.jniosh.johas.go.jp',N'研究職員',N'研究員',N'労働安全衛生総合研究所',N'研究本館',N'3階',N'322室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'加島',N'遼平',N'カシマ',N'リョウヘイ',N'KASHIMA',N'Ryohei',N'加島 遼平 / KASHIMA Ryohei',NULL,N'8157',N'kashima-r@h.jniosh.johas.go.jp',N'kashima-r@h.jniosh.johas.go.jp',N'任期付研究員',NULL,N'労働安全衛生総合研究所',N'研究本館',N'2階',N'214室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'王',N'薈琳',N'オウ',N'カイリン',N'WANG',N'Huilin',N'王 薈琳 / WANG Huilin',NULL,N'8541',N'wang-huilin@h.jniosh.johas.go.jp',N'wang-huilin@h.jniosh.johas.go.jp',N'特定業務嘱託職員',NULL,N'労働安全衛生総合研究所',N'研究本館',N'2階',N'214室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'0',N'五味',N'美遊',N'ゴミ',N'ミユ',N'GOMI',N'Miyu',N'五味 美遊 / GOMI Miyu',NULL,NULL,N'gomi-miyu@h.jniosh.johas.go.jp',N'gomi-miyu@h.jniosh.johas.go.jp',N'派遣社員',NULL,N'エルコーエイ',N'管理棟',N'2階',N'図書室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'0',N'1',N'大幢',N'勝利',N'オオドウ',N'カツトシ',N'OHDO',N'Katsutoshi',N'大幢 勝利 / OHDO Katsutoshi',NULL,NULL,NULL,NULL,N'研究職員',N'所長代理',N'労働安全衛生総合研究所',N'管理棟',N'2階',N'所長代理室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'0',N'1',N'笹川',N'康成',N'ササガワ',N'ヤスナリ',N'SASAGAWA',N'Yasunari',N'笹川 康成 / SASAGAWA Yasunari',NULL,NULL,NULL,NULL,N'本省出向',N'管理部長',N'厚生労働省',N'管理棟',N'1階',N'管理第二課',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'研推',N'首席',N'ケンスイ',N'シュセキ',N'KENSUI',N'Shuseki',N'研推 首席 / KENSUI Shuseki',NULL,NULL,N'kenki-shuseki@h.jniosh.johas.go.jp',N'kenki-shuseki@h.jniosh.johas.go.jp',N'研究職員',N'首席研究員',N'労働安全衛生総合研究所',N'管理棟',N'1階',N'研推センター',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'本多',N'久美',N'ホンダ',N'クミ',N'HONDA',N'Kumi',N'本多 久美 / HONDA Kumi',NULL,NULL,N'honda@h.jniosh.johas.go.jp',N'honda@h.jniosh.johas.go.jp',N'特定業務嘱託職員',NULL,N'労働安全衛生総合研究所',N'管理棟',N'1階',N'研推センター',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'三浦',N'比奈',N'ミウラ',N'ヒナ',N'MIURA',N'Hina',N'三浦 比奈 / MIURA Hina',NULL,NULL,N'tomizawa@h.jniosh.johas.go.jp',N'tomizawa@h.jniosh.johas.go.jp',N'非常勤職員',NULL,N'労働安全衛生総合研究所',N'研究本館',N'5階',N'501サーバー室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'角田',N'博代',N'ツノダ',N'ヒロヨ',N'TSUNODA',N'Hiroyo',N'角田 博代 / TSUNODA Hiroyo',N'342',NULL,N'tsunoda@h.jniosh.johas.go.jp',N'tsunoda@h.jniosh.johas.go.jp',N'特定業務嘱託職員',NULL,N'労働安全衛生総合研究所',N'研究本館',N'4階',N'408室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'曽原',N'博司',N'ソハラ',N'ヒロシ',N'SOHARA',N'Hiroshi',N'曽原 博司 / SOHARA Hiroshi',NULL,NULL,N'sohara@h.jniosh.johas.go.jp',N'sohara@h.jniosh.johas.go.jp',N'特定業務嘱託職員',NULL,N'日本規格協会',N'研究本館',N'4階',N'408室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'小西',N'満貴',N'コニシ',N'マキ',N'KONISHI',N'Maki',N'小西 満貴 / KONISHI Maki',NULL,NULL,N'konishi-m@h.jniosh.johas.go.jp',N'konishi-m@h.jniosh.johas.go.jp',N'特定業務嘱託職員',NULL,N'労働安全衛生総合研究所',N'研究本館',N'5階',N'510/511室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'0',N'藤澤',N'浩人',N'フジサワ',N'ヒロト',N'FUJISAWA',N'Hiroto',N'藤澤 浩人 / FUJISAWA Hiroto',NULL,NULL,N'fujisawa-h@h.jniosh.johas.go.jp',N'fujisawa-h@h.jniosh.johas.go.jp',N'特定業務嘱託職員',NULL,N'労働安全衛生総合研究所',N'研究本館',N'5階',N'510/511室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'0',N'1',N'日下部',N'夏海',N'クサカベ',N'ナツミ',N'KUSAKABE',N'Natsumi',N'日下部 夏海 / KUSAKABE Natsumi',NULL,NULL,NULL,NULL,N'委託職員',NULL,NULL,N'研究本館',N'5階',N'510/511室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'0',N'1',N'西村',N'太一',N'ニシムラ',N'タイチ',N'NISHIMURA',N'Taichi',N'西村 太一 / NISHIMURA Taichi',NULL,NULL,NULL,NULL,N'委託職員',NULL,NULL,N'研究本館',N'5階',N'510/511室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'鈴木',N'正明',N'スズキ',N'マサアキ',N'SUZUKI',N'Masaaki',N'鈴木 正明 / SUZUKI Masaaki',NULL,NULL,N'suzuki-masaaki@h.jniosh.johas.go.jp',N'suzuki-masaaki@h.jniosh.johas.go.jp',N'常勤嘱託',N'グループ長',N'労働安全衛生総合研究所',N'湘南アイパーク',N'B44E',NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'三角',N'恭兵',N'ミスミ',N'キョウヘイ',N'MISUMI',N'Kyohei',N'三角 恭兵 / MISUMI Kyohei',NULL,NULL,N'misumi-kyohei@h.jniosh.johas.go.jp',N'misumi-kyohei@h.jniosh.johas.go.jp',N'職員',N'主任試験研究員',N'労働安全衛生総合研究所',N'湘南アイパーク',N'B44E',NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'古川',N'佑介',N'フルカワ',N'ユウスケ',N'FURUKAWA',N'Yusuke',N'古川 佑介 / FURUKAWA Yusuke',NULL,NULL,N'furukawa-yusuke@h.jniosh.johas.go.jp',N'furukawa-yusuke@h.jniosh.johas.go.jp',N'職員',N'主任試験研究員',N'労働安全衛生総合研究所',N'湘南アイパーク',N'B44E',NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'平井',N'繁行',N'ヒライ',N'シゲユキ',N'HIRAI',N'Shigeyuki',N'平井 繁行 / HIRAI Shigeyuki',NULL,NULL,N'hirai-shigeyuki@h.jniosh.johas.go.jp',N'hirai-shigeyuki@h.jniosh.johas.go.jp',N'職員',N'技術専門役',N'労働安全衛生総合研究所',N'湘南アイパーク',N'B44E',NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'菊地',N'芳典',N'キクチ',N'ヨシノリ',N'KIKUCHI',N'Yoshinori',N'菊地 芳典 / KIKUCHI Yoshinori',NULL,NULL,N'kikuchi-yoshinori@h.jniosh.johas.go.jp',N'kikuchi-yoshinori@h.jniosh.johas.go.jp',N'職員',N'技術専門役',N'労働安全衛生総合研究所',N'管理棟',N'1階',N'研推センター',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'米山',N'賢吾',N'ヨネヤマ',N'ケンゴ',N'YONEYAMA',N'Kengo',N'米山 賢吾 / YONEYAMA Kengo',NULL,NULL,N'yoneyama-kengo@h.jniosh.johas.go.jp',N'yoneyama-kengo@h.jniosh.johas.go.jp',N'職員',N'技術専門役',N'労働安全衛生総合研究所',N'管理棟',N'1階',N'研推センター',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'舟木',N'貞裕',N'フナキ',N'サダヒロ',N'FUNAKI',N'Sadahiro',N'舟木 貞裕 / FUNAKI Sadahiro',NULL,NULL,N'funaki-sadahiro@h.jniosh.johas.go.jp',N'funaki-sadahiro@h.jniosh.johas.go.jp',N'本省出向',NULL,N'厚生労働省',N'湘南アイパー',N'クB44E',NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'加納',N'浩和',N'カノウ',N'ヒロカズ',N'KANO',N'Hirokazu',N'加納 浩和 / KANO Hirokazu',NULL,NULL,N'kano-hirokazu@h.jniosh.johas.go.jp',N'kano-hirokazu@h.jniosh.johas.go.jp',N'常勤嘱託',N'室長',N'労働安全衛生総合研究所',N'研究本館',NULL,N'121室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'竹内',N'哲也',N'タケウチ',N'テツヤ',N'TAKEUCHI',N'Tetsuya',N'竹内 哲也 / TAKEUCHI Tetsuya',NULL,NULL,N'takeuchi-tetsuya@h.jniosh.johas.go.jp',N'takeuchi-tetsuya@h.jniosh.johas.go.jp',N'職員',N'技術専門役',N'労働安全衛生総合研究所',N'研究本館',NULL,N'121室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'笠井',N'辰也',N'カサイ',N'タツヤ',N'KASAI',N'Tatsuya',N'笠井 辰也 / KASAI Tatsuya',NULL,NULL,N'kasai-tatsuya@h.jniosh.johas.go.jp',N'kasai-tatsuya@h.jniosh.johas.go.jp',N'常勤嘱託',N'専門役',N'労働安全衛生総合研究所',N'研究本館',NULL,N'121室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'佐々木',N'俊明',N'ササキ',N'トシアキ',N'SASAKI',N'Toshiaki',N'佐々木 俊明 / SASAKI Toshiaki',NULL,NULL,N'sasaki-toshiaki@h.jniosh.johas.go.jp',N'sasaki-toshiaki@h.jniosh.johas.go.jp',N'職員',N'技術専門役',N'労働安全衛生総合研究所',N'湘南アイパーク',N'B44E',NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'馬場本',N'絵未',N'ババモト',N'エミ',N'BABAMOTO',N'Emi',N'馬場本 絵未 / BABAMOTO Emi',NULL,NULL,N'babamoto-emi@h.jniosh.johas.go.jp',N'babamoto-emi@h.jniosh.johas.go.jp',N'職員',N'上席試験研究員',N'労働安全衛生総合研究所',N'湘南アイパーク',N'B44E',NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'武田',N'知起',N'タケダ',N'トモキ',N'TAKEDA',N'Tomoki',N'武田 知起 / TAKEDA Tomoki',NULL,NULL,N'takeda-tomoki@h.jniosh.johas.go.jp',N'takeda-tomoki@h.jniosh.johas.go.jp',N'職員',N'上席試験研究員',N'労働安全衛生総合研究所',N'湘南アイパーク',N'B44E',NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'梅田',N'ゆみ',N'ウメダ',N'ユミ',N'UMEDA',N'Yumi',N'梅田 ゆみ / UMEDA Yumi',NULL,NULL,N'umeda-yumi@h.jniosh.johas.go.jp',N'umeda-yumi@h.jniosh.johas.go.jp',N'職員',N'グループ長',N'労働安全衛生総合研究所',N'湘南アイパーク',N'B44E',NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'山野',N'荘太郎',N'ヤマノ',N'ショウタロウ',N'YAMANO',N'Shotaro',N'山野 荘太郎 / YAMANO Shotaro',NULL,NULL,N'yamano-shotaro@h.jniosh.johas.go.jp',N'yamano-shotaro@h.jniosh.johas.go.jp',N'職員',N'上席試験研究員',N'労働安全衛生総合研究所',N'湘南アイパーク',N'B44E',NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'高信',N'健司',N'タカノブ',N'ケンジ',N'TAKANOBU',N'Kenji',N'高信 健司 / TAKANOBU Kenji',NULL,NULL,N'takanobu-kenji@h.jniosh.johas.go.jp',N'takanobu-kenji@h.jniosh.johas.go.jp',N'常勤嘱託',N'技術専門役',N'労働安全衛生総合研究所',N'湘南アイパーク',N'B44E',NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'妹尾',N'英樹',N'セノウ',N'ヒデキ',N'SENO',N'Hideki',N'妹尾 英樹 / SENO Hideki',NULL,NULL,N'seno-hideki@h.jniosh.johas.go.jp',N'seno-hideki@h.jniosh.johas.go.jp',N'常勤嘱託',N'専門役',N'労働安全衛生総合研究所',N'湘南アイパーク',N'B44E',NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'齋藤',N'美佐江',N'サイトウ',N'ミサエ',N'SAITO',N'Misae',N'齋藤 美佐江 / SAITO Misae',NULL,NULL,N'saito-misae@h.jniosh.johas.go.jp',N'saito-misae@h.jniosh.johas.go.jp',N'常勤嘱託',N'専門役',N'労働安全衛生総合研究所',N'湘南アイパーク',N'B44E',NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'中里',N'拓也',N'ナカザト',N'タクヤ',N'NAKAZATO',N'Takuya',N'中里 拓也 / NAKAZATO Takuya',NULL,NULL,N'nakazato-takuya@h.jniosh.johas.go.jp',N'nakazato-takuya@h.jniosh.johas.go.jp',N'機構職員',N'係長',N'労働者健康安全機構',N'湘南アイパーク',N'B44E',NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'山口',N'裕子',N'ヤマグチ',N'ユウコ',N'YAMAGUCHI',N'Yuko',N'山口 裕子 / YAMAGUCHI Yuko',NULL,NULL,N'yamaguchi-yuko@h.jniosh.johas.go.jp',N'yamaguchi-yuko@h.jniosh.johas.go.jp',N'常勤嘱託',N'専門役',N'労働安全衛生総合研究所',N'湘南アイパーク',N'B44E',NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'武',N'信',N'タケ',N'マコト',N'TAKE',N'Makoto',N'武 信 / TAKE Makoto',NULL,NULL,N'take-makoto@h.jniosh.johas.go.jp',N'take-makoto@h.jniosh.johas.go.jp',N'職員',N'室長',N'労働安全衛生総合研究所',N'研究本館',NULL,N'121室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'0',N'1',N'山内',N'貴史',N'ヤマウチ',N'タカシ',N'YAMAUCHI',N'Takashi',N'山内 貴史 / YAMAUCHI Takashi',NULL,NULL,NULL,NULL,N'特定業務嘱託職員',NULL,N'労働安全衛生総合研究所',NULL,NULL,NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'0',N'1',N'佐々木',N'司',N'ササキ',N'ツカサ',N'SASAKI',N'Tsukasa',N'佐々木 司 / SASAKI Tsukasa',NULL,NULL,NULL,NULL,N'特定業務嘱託職員',NULL,N'労働安全衛生総合研究所',NULL,NULL,NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'0',N'1',N'守田',N'祐作',N'モリタ',N'ユウサク',N'MORITA',N'Yusaku',N'守田 祐作 / MORITA Yusaku',NULL,NULL,NULL,NULL,N'特定業務嘱託職員',NULL,N'労働安全衛生総合研究所',NULL,NULL,NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'0',N'1',N'北島',N'洋樹',N'キタジマ',N'ヒロキ',N'KITAJIMA',N'Hiroki',N'北島 洋樹 / KITAJIMA Hiroki',NULL,NULL,NULL,NULL,N'特定業務嘱託職員',NULL,N'労働安全衛生総合研究所',NULL,NULL,NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'0',N'1',N'中辻',N'めぐみ',N'ナカツジ',N'メグミ',N'NAKATSUJI',N'Megumi',N'中辻 めぐみ / NAKATSUJI Megumi',NULL,NULL,NULL,NULL,N'特定業務嘱託職員',NULL,N'労働安全衛生総合研究所',NULL,NULL,NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'0',N'1',N'石井',N'賢治',N'イシイ',N'ケンジ',N'ISHII',N'Kenji',N'石井 賢治 / ISHII Kenji',NULL,NULL,NULL,NULL,N'特定業務嘱託職員',NULL,N'労働安全衛生総合研究所',NULL,NULL,NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'0',N'1',N'髙橋',N'有記',N'タカハシ',N'ユウキ',N'TAKAHASHI',N'Yuki',N'髙橋 有記 / TAKAHASHI Yuki',NULL,NULL,NULL,NULL,N'特定業務嘱託職員',NULL,N'労働安全衛生総合研究所',NULL,NULL,NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'0',N'1',N'田原',N'裕之',N'タハラ',N'ヒロユキ',N'TAHARA',N'Hiroyuki',N'田原 裕之 / TAHARA Hiroyuki',NULL,NULL,NULL,NULL,N'特定業務嘱託職員',NULL,N'労働安全衛生総合研究所',NULL,NULL,NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'小森',N'純代',N'コモリ',N'イトヨ',N'KOMORI',N'Itoyo',N'小森 純代 / KOMORI Itoyo',NULL,NULL,N'komori-itoyo@h.jniosh.johas.go.jp',N'komori-itoyo@h.jniosh.johas.go.jp',N'派遣社員',NULL,N'エルコーエイ',NULL,NULL,NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'井上',N'眞記',N'イノウエ',N'マキ',N'INOUE',N'Maki',N'井上 眞記 / INOUE Maki',NULL,NULL,N'inoue-maki@h.jniosh.johas.go.jp',N'inoue-maki@h.jniosh.johas.go.jp',N'派遣社員',NULL,N'エルコーエイ',NULL,NULL,NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'0',N'1',N'高見澤',N'颯',N'タカミザワ',N'ハヤト',N'TAKAMIZAWA',N'Hayato',N'高見澤 颯 / TAKAMIZAWA Hayato',NULL,NULL,NULL,NULL,N'委託職員',NULL,N'アニマルケア',NULL,NULL,NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'0',N'1',N'柏原',N'さち子',N'カシワバラ',N'サチコ',N'KASHIWABARA',N'Sachiko',N'柏原 さち子 / KASHIWABARA Sachiko',NULL,NULL,NULL,NULL,N'委託職員',NULL,NULL,NULL,NULL,NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'0',N'1',N'林',N'礼子',N'ハヤシ',N'レイコ',N'HAYASHI',N'Reiko',N'林 礼子 / HAYASHI Reiko',NULL,NULL,NULL,NULL,N'委託職員',NULL,NULL,NULL,NULL,NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'0',N'1',N'小野寺',N'君子',N'オノデラ',N'キミコ',N'ONODERA',N'Kimiko',N'小野寺 君子 / ONODERA Kimiko',NULL,NULL,NULL,NULL,N'委託職員',NULL,NULL,NULL,NULL,NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'中山',N'裕通',N'ナカヤマ',N'ヒロミチ',N'NAKAYAMA',N'Hiromichi',N'中山 裕通 / NAKAYAMA Hiromichi',NULL,NULL,N'nakayama-hiromichi@h.jniosh.johas.go.jp',N'nakayama-hiromichi@h.jniosh.johas.go.jp',N'機構職員',NULL,N'労働者健康安全機構',NULL,NULL,NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'山口',N'修平',N'ヤマグチ',N'シュウヘイ',N'YAMAGUCHI',N'Shuhei',N'山口 修平 / YAMAGUCHI Shuhei',NULL,NULL,N'yamaguchi-shuhei@h.jniosh.johas.go.jp',N'yamaguchi-shuhei@h.jniosh.johas.go.jp',N'特定業務嘱託職員',NULL,N'労働安全衛生総合研究所',NULL,NULL,NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'林',N'奉権',N'ハヤシ',N'トモノリ',N'HAYASHI',N'Tomonori',N'林 奉権 / HAYASHI Tomonori',NULL,NULL,N'hayashi-tomonori@h.jniosh.johas.go.jp',N'hayashi-tomonori@h.jniosh.johas.go.jp',N'特定業務嘱託職員',NULL,N'労働安全衛生総合研究所',NULL,NULL,NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'張',N'セン',N'チョウ',N'セン',N'ZHANG',N'Xuan',N'張 セン / ZHANG Xuan',NULL,NULL,N'zhang-xuan@h.jniosh.johas.go.jp',N'zhang-xuan@h.jniosh.johas.go.jp',N'任期付研究員',NULL,N'労働安全衛生総合研究所',NULL,NULL,NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'高田',N'琢弘',N'タカダ',N'タクヒロ',N'TAKADA',N'Takuhiro',N'高田 琢弘 / TAKADA Takuhiro',NULL,NULL,N'takada-takuhiro@h.jniosh.johas.go.jp',N'takada-takuhiro@h.jniosh.johas.go.jp',N'任期付研究員',NULL,N'労働安全衛生総合研究所',NULL,NULL,NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'0',N'1',N'新宮',N'愛祈',N'シングウ',N'アキ',N'SHINGU',N'Aki',N'新宮 愛祈 / SHINGU Aki',NULL,N'8373',NULL,NULL,N'派遣社員',NULL,N'パーソルテンプスタッフ株式会社',NULL,NULL,NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'本間',N'静香',N'ホンマ',N'シズカ',N'HONMA',N'Shizuka',N'本間 静香 / HONMA Shizuka',NULL,N'8379',N'honma-shizuka@h.jniosh.johas.go.jp',N'honma-shizuka@h.jniosh.johas.go.jp',N'派遣社員',NULL,N'スタッフサービス',NULL,NULL,NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'植田',N'絵美',N'ウエダ',N'エミ',N'UEDA',N'Emi',N'植田 絵美 / UEDA Emi',NULL,N'8448',N'ueda-emi@h.jniosh.johas.go.jp',N'ueda-emi@h.jniosh.johas.go.jp',N'派遣社員',NULL,N'パーソルテンプスタッフ株式会社',NULL,NULL,NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'0',N'田中',N'良子',N'タナカ',N'ヨシコ',N'TANAKA',N'Yoshiko',N'田中 良子 / TANAKA Yoshiko',NULL,N'8400',N'tanaka-yoshiko@h.jniosh.johas.go.jp',N'tanaka-yoshiko@h.jniosh.johas.go.jp',N'派遣社員',NULL,N'株式会社ハーフタイム',NULL,NULL,NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'0',N'佐藤',N'裕子',N'サトウ',N'ユウコ',N'SATO',N'Yuko',N'佐藤 裕子 / SATO Yuko',NULL,N'8184',N'sato-yuko@h.jniosh.johas.go.jp',N'sato-yuko@h.jniosh.johas.go.jp',N'派遣社員',NULL,N'ＷＤＢ株式会社',NULL,NULL,NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'0',N'藤本',N'直樹',N'フジモト',N'ナオキ',N'FUJIMOTO',N'Naoki',N'藤本 直樹 / FUJIMOTO Naoki',NULL,N'8274',N'fujimoto-naoki@h.jniosh.johas.go.jp',N'fujimoto-naoki@h.jniosh.johas.go.jp',N'派遣社員',NULL,N'ＷＤＢ株式会社',NULL,NULL,NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'0',N'1',N'竹村',N'真帆',N'タケムラ',N'マホ',N'TAKEMURA',N'Maho',N'竹村 真帆 / TAKEMURA Maho',NULL,N'8199',NULL,NULL,N'派遣社員',NULL,N'エルコーエイ',NULL,NULL,NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'0',N'日下',N'惠美',N'クサカ',N'エミ',N'KUSAKA',N'Emi',N'日下 惠美 / KUSAKA Emi',N'297',N'8463',N'kusaka-emi@h.jniosh.johas.go.jp',N'kusaka-emi@h.jniosh.johas.go.jp',N'派遣社員',NULL,N'スタッフサービス',NULL,NULL,NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'川村',N'三香',N'カワムラ',N'ミカ',N'KAWAMURA',N'Mika',N'川村 三香 / KAWAMURA Mika',N'401',N'8364',N'shiikukanri@h.jniosh.johas.go.jp',N'shiikukanri@h.jniosh.johas.go.jp',N'委託職員',NULL,N'アニマルケア',NULL,NULL,NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'0',N'1',N'村瀬',N'正',N'ムラセ',N'タダシ',N'MURASE',N'Tadashi',N'村瀬 正 / MURASE Tadashi',N'401',NULL,NULL,NULL,N'委託職員',NULL,N'アニマルケア',NULL,NULL,NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'0',N'1',N'三野',N'明水',N'ミノ',N'アキミ',N'MINO',N'Akimi',N'三野 明水 / MINO Akimi',N'401',NULL,NULL,NULL,N'委託職員',NULL,N'アニマルケア',NULL,NULL,NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'0',N'1',N'冨沢',N'冬喜子',N'トミザワ',N'トキコ',N'TOMIZAWA',N'Tokiko',N'冨沢 冬喜子 / TOMIZAWA Tokiko',N'401',NULL,NULL,NULL,N'委託職員',NULL,N'アニマルケア',NULL,NULL,NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'0',N'1',N'田中',N'まさ子',N'タナカ',N'マサコ',N'TANAKA',N'Masako',N'田中 まさ子 / TANAKA Masako',N'401',NULL,NULL,NULL,N'委託職員',NULL,N'アニマルケア',NULL,NULL,NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'0',N'1',N'堀越',N'円',N'ホリコシ',N'マル',N'HORIKOSHI',N'Maru',N'堀越 円 / HORIKOSHI Maru',N'401',NULL,NULL,NULL,N'委託職員',NULL,N'アニマルケア',NULL,NULL,NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'0',N'1',N'藤村',N'恵美',N'フジムラ',N'エミ',N'FUJIMURA',N'Emi',N'藤村 恵美 / FUJIMURA Emi',N'217',N'8442',NULL,NULL,N'委託職員',NULL,NULL,NULL,NULL,NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'0',N'1',N'掛川',N'真理',N'カケガワ',N'マリ',N'KAKEGAWA',N'Mari',N'掛川 真理 / KAKEGAWA Mari',N'217',N'8442',NULL,NULL,N'委託職員',NULL,NULL,NULL,NULL,NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'0',N'1',N'清水',N'明',N'シミズ',N'アキラ',N'SHIMIZU',N'Akira',N'清水 明 / SHIMIZU Akira',N'214',N'8436',NULL,NULL,N'委託職員',NULL,NULL,NULL,NULL,NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'0',N'1',N'櫻谷',N'健司',N'サクラヤ',N'タケシ',N'SAKURAYA',N'Takeshi',N'櫻谷 健司 / SAKURAYA Takeshi',N'214',N'8437',NULL,NULL,N'委託職員',NULL,NULL,NULL,NULL,NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'0',N'1',N'明田川',N'修',N'アケタガワ',N'オサム',N'AKETAGAWA',N'Osamu',N'明田川 修 / AKETAGAWA Osamu',NULL,N'8337',NULL,NULL,N'委託職員',NULL,NULL,NULL,NULL,NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'0',N'1',N'新垣',N'弘',N'アラガキ',N'ヒロシ',N'ARAGAKI',N'Hiroshi',N'新垣 弘 / ARAGAKI Hiroshi',N'303',NULL,NULL,NULL,N'委託職員',NULL,NULL,NULL,NULL,NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'0',N'1',N'古川',N'信三',N'フルカワ',N'シンゾウ',N'FURUKAWA',N'Shinzo',N'古川 信三 / FURUKAWA Shinzo',N'303',NULL,NULL,NULL,N'委託職員',NULL,NULL,NULL,NULL,NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'0',N'1',N'雫',N'昌弘',N'シズク',N'マサヒロ',N'SHIZUKU',N'Masahiro',N'雫 昌弘 / SHIZUKU Masahiro',N'303',NULL,NULL,NULL,N'委託職員',NULL,NULL,NULL,NULL,NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'0',N'1',N'荒谷',N'和幸',N'アラヤ',N'カズユキ',N'ARAYA',N'Kazuyuki',N'荒谷 和幸 / ARAYA Kazuyuki',N'303',NULL,NULL,NULL,N'委託職員',NULL,NULL,NULL,NULL,NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'0',N'1',N'竹下',N'宣晃',N'タケシタ',N'ノブアキ',N'TAKESHITA',N'Nobuaki',N'竹下 宣晃 / TAKESHITA Nobuaki',N'303',NULL,NULL,NULL,N'委託職員',NULL,NULL,NULL,NULL,NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'0',N'1',N'小川',N'稔',N'オガワ',N'ミノル',N'OGAWA',N'Minoru',N'小川 稔 / OGAWA Minoru',N'303',N'8469',NULL,NULL,N'委託職員',NULL,NULL,NULL,NULL,NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'青木',N'保雅',N'アオキ',N'ヤスマサ',N'AOKI',N'Yasumasa',N'青木 保雅 / AOKI Yasumasa',N'303',N'8112',N'kanshi@h.jniosh.johas.go.jp',N'kanshi@h.jniosh.johas.go.jp',N'委託職員',NULL,NULL,NULL,NULL,NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'0',N'1',N'安永',N'正明',N'ヤスナガ',N'マサアキ',N'YASUNAGA',N'Masaaki',N'安永 正明 / YASUNAGA Masaaki',N'303',N'8427',NULL,NULL,N'委託職員',NULL,NULL,NULL,NULL,NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'0',N'1',N'佐々木',N'健二',N'ササキ',N'ケンジ',N'SASAKI',N'Kenji',N'佐々木 健二 / SASAKI Kenji',N'214',N'8436',NULL,NULL,N'委託職員',NULL,NULL,NULL,NULL,NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'0',N'1',N'小池',N'光博',N'コイケ',N'ミツヒロ',N'KOIKE',N'Mitsuhiro',N'小池 光博 / KOIKE Mitsuhiro',N'401',N'8229',NULL,NULL,N'委託職員',NULL,N'アニマルケア',NULL,NULL,NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'山崎',N'夏子',N'ヤマサキ',N'ナツコ',N'YAMASAKI',N'Natsuko',N'山崎 夏子 / YAMASAKI Natsuko',N'317',N'8181',N'yamasaki-natsuko@h.jniosh.johas.go.jp',N'yamasaki-natsuko@h.jniosh.johas.go.jp',N'派遣社員',NULL,N'株式会社ハーフタイム',N'管理棟',N'2階',N'図書室',GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'発表者',N'用',N'ハッピョウシャ',N'ヨウ',NULL,NULL,N'発表者用',NULL,NULL,N'tmuser@h.jniosh.johas.go.jp',N'tmuser@h.jniosh.johas.go.jp',N'研究職員',NULL,N'労働安全衛生総合研究所',NULL,NULL,NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'藤田',N'純子',N'フジタ',N'ジュンコ',N'FUJITA',N'Junko',N'藤田 純子 / FUJITA Junko',NULL,NULL,N'fujita-junko@h.jniosh.johas.go.jp',N'fujita-junko@h.jniosh.johas.go.jp',N'派遣社員',NULL,N'エルコーエイ',NULL,NULL,NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'槇野',N'一美',N'マキノ',N'カズミ',N'MAKINO',N'kazumi',N'槇野 一美 / MAKINO kazumi',NULL,NULL,N'makino-kazumi@h.jniosh.johas.go.jp',N'makino-kazumi@h.jniosh.johas.go.jp',N'派遣社員',NULL,N'ＪＰキャリアコンサルティング',NULL,NULL,NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')
,(N'01',N'1',N'1',N'桑原',N'淳子',N'クワハラ',N'ジュンコ',N'KUWAHARA',N'Junko',N'桑原 淳子 / KUWAHARA Junko',NULL,NULL,N'kuwahara-junko@h.jniosh.johas.go.jp',N'kuwahara-junko@h.jniosh.johas.go.jp',N'派遣社員',NULL,N'ＷＤＢ株式会社',NULL,NULL,NULL,GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time',N'山口（修）')


SELECT		*
FROM		[dbo].[USR_職員]


UPDATE [dbo].[USR_職員]
SET		[固定電話内線] = '297'
	   ,[更新日時] = GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time'
	   ,[更新者] = N'山口（修）'
WHERE	[UserPrincipalName] = N'makino-kazumi@h.jniosh.johas.go.jp'


UPDATE [dbo].[USR_職員]
SET		[建物] = N'湘南アイパーク'
	   ,[フロア] = N'B44E'
	   ,[更新日時] = GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time'
	   ,[更新者] = N'山口（修）'
WHERE	[UserPrincipalName] = N'funaki-sadahiro@h.jniosh.johas.go.jp'


UPDATE [dbo].[USR_職員]
SET		[部屋] = N'B44E'
	   ,[フロア] = NULL
	   ,[更新日時] = GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'Tokyo Standard Time'
	   ,[更新者] = N'山口（修）'
WHERE	[建物] = N'湘南アイパーク'
	And [フロア] = N'B44E' 


SELECT		 a.[職員ID]
			,a.[アカウントタイプ]
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
			,c.[所属名]
			,d.[部課名]
			,a.[固定電話内線]
			,a.[PHS]
			,a.[UserPrincipalName]
			,a.[Email]
			,a.[建物]
			,a.[フロア]
			,a.[部屋]
			,a.[着任日]
			,a.[退職日]
			,a.[登録日時]
			,a.[登録者]
			,a.[更新日時]
			,a.[更新者]
			,a.[備考]
FROM		 [dbo].[USR_職員] AS a
			 INNER JOIN [dbo].[USR_所属] AS b		 	ON b.[職員ID] = a.[職員ID]
			 INNER JOIN [dbo].[MST_所属] AS c			ON c.[所属CD] = b.[所属CD]
			 LEFT OUTER JOIN [dbo].[MST_部課] AS d		ON d.[部課CD] = b.[部課CD]
WHERE		b.[主所属] = 1
		And a.[組織] <> N'労働安全衛生総合研究所'
		And a.[雇用タイプ] <> N'派遣社員'
ORDER BY	a.[職員ID]
-- ORDER BY	[姓カナ],[名カナ]

