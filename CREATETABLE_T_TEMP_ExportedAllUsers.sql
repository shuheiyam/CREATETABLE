/****** Object:  Table [dbo].[TEMP_AllUsers]    Script Date: 2024/06/05 9:08:59 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

DROP TABLE	[dbo].[TEMP_ExportedAllUsers]

CREATE TABLE	[dbo].[TEMP_ExportedAllUsers]
(
		 [職員ID]		int IDENTITY(1,1)	NOT NULL
		,[拠点ID]		char(1)					NULL
		,[SyncUser]		bit					NOT NULL
		,[有効]			bit						NULL
		,[姓]			[nvarchar](128)			NULL
		,[名]			[nvarchar](128)			NULL
		,[姓カナ]		[nvarchar](128)			NULL
		,[名カナ]		[nvarchar](128)			NULL
		,[Surname]		[nvarchar](128)			NULL
		,[GivenName]	[nvarchar](128)			NULL
		-- ,[表示名]		[nvarchar](128)			NULL
		,[固定電話内線] [nchar](3)				NULL
		,[PHS]			[nchar](4)				NULL
		,[UPN]			[nvarchar](255)			NULL
		,[EMail]		[nvarchar](255)			NULL
		,[雇用状態]		[nvarchar](128)			NULL
		,[部局]			[nvarchar](128)			NULL
		,[部課]			[nvarchar](128)			NULL
		,[職名]			[nvarchar](128)			NULL
		,[組織]			[nvarchar](128)			NULL
		,[建物]			[nvarchar](128)			NULL
		,[部屋]			[nvarchar](32)			NULL
		 CONSTRAINT [PK_TEMP_ExportedAllUsers] PRIMARY KEY CLUSTERED 
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

TRUNCATE TABLE [dbo].[TEMP_ExportedAllUsers]

INSERT INTO [dbo].[TEMP_ExportedAllUsers]
(
		 [拠点ID]
		,[SyncUser]
		,[有効]
		,[姓]
		,[名]
		,[名カナ]
		,[姓カナ]
		,[Surname]
		,[GivenName]
		-- ,[表示名]
		,[雇用状態]
		,[職名]
		,[部局]
		,[部課]
		,[UPN]
		,[EMail]
		,[組織]
		,[PHS]
		,[固定電話内線]
		,[建物]
		,[部屋]
)
VALUES
 (2,1,1,N'木内',N'敬太',N'ケイタ',N'キウチ',N'KIUCHI',N'Keita',N'任期付研究員',NULL,N'産業保健研究グループ',NULL,N'kiuchi@h.jniosh.johas.go.jp',N'kiuchi@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8133',NULL,N'研究本館',N'204')
,(2,1,1,N'高橋',N'幸雄',N'ユキオ',N'タカハシ',N'TAKAHASHI',N'Yukio',N'研究職員',N'部長',N'環境計測研究グループ',NULL,N'takahay@h.jniosh.johas.go.jp',N'takahay@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8268',NULL,N'研究本館',N'108-2')
,(2,1,1,N'小嶋',N'純',N'ジュン',N'オジマ',N'OJIMA',N'Jun',N'研究職員',N'統括研究員',N'環境計測研究グループ',NULL,N'ojima@h.jniosh.johas.go.jp',N'ojima@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8151',NULL,N'研究本館',N'304-2')
,(2,1,1,N'安彦',N'泰進',N'ヒロノブ',N'アビコ',N'ABIKO',N'Hironobu',N'研究職員',N'上席研究員',N'環境計測研究グループ',NULL,N'abiko@h.jniosh.johas.go.jp',N'abiko@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8118',NULL,N'研究本館',N'106-2')
,(2,1,1,N'井上',N'直子',N'ナオコ',N'イノウエ',N'INOUE',N'Naoko',N'研究職員',N'主任研究員',N'環境計測研究グループ',NULL,N'inoue@h.jniosh.johas.go.jp',N'inoue@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8211',NULL,N'研究本館',N'324')
,(2,1,1,N'高谷',N'一成',N'カズナリ',N'タカヤ',N'TAKAYA',N'Kazunari',N'研究職員',N'研究員',N'環境計測研究グループ',NULL,N'takaya-k@h.jniosh.johas.go.jp',N'takaya-k@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8217',NULL,N'研究本館',N'322')
,(2,1,1,N'岩切',N'一幸',N'カズユキ',N'イワキリ',N'IWAKIRI',N'Kazuyuki',N'研究職員',N'部長',N'人間工学研究グループ',NULL,N'iwakiri@h.jniosh.johas.go.jp',N'iwakiri@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8127',NULL,N'研究本館',N'116')
,(2,1,1,N'劉',N'欣欣',N'シンシン',N'リュウ',N'LIU',N'Xinxin',N'研究職員',N'上席研究員',N'人間工学研究グループ',NULL,N'liu@h.jniosh.johas.go.jp',N'liu@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8340',NULL,N'研究本館',N'108-2')
,(2,1,1,N'松尾',N'知明',N'トモアキ',N'マツオ',N'MATSUO',N'Tomoaki',N'研究職員',N'上席研究員',N'人間工学研究グループ',NULL,N'matsuo@h.jniosh.johas.go.jp',N'matsuo@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8286',NULL,N'研究本館',N'322')
,(2,1,1,N'時澤',N'健',N'ケン',N'トキザワ',N'TOKIZAWA',N'Ken',N'研究職員',N'上席研究員',N'人間工学研究グループ',NULL,N'tokizawa@h.jniosh.johas.go.jp',N'tokizawa@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8169',NULL,N'研究本館',N'518')
,(2,1,1,N'池田',N'大樹',N'ヒロキ',N'イケダ',N'IKEDA',N'Hiroki',N'研究職員',N'主任研究員',N'人間工学研究グループ',NULL,N'ikedah@h.jniosh.johas.go.jp',N'ikedah@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8358',NULL,N'研究本館',N'216')
,(2,1,1,N'蘇',N'リナ',N'リナ',N'ソ',N'SO',N'Rina',N'研究職員',N'主任研究員',N'人間工学研究グループ',NULL,N'sorina@h.jniosh.johas.go.jp',N'sorina@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8409',NULL,N'研究本館',N'216')
,(2,1,1,N'小山',N'冬樹',N'フユキ',N'オヤマ',N'OYAMA',N'Fuyuki',N'研究職員',N'研究員',N'人間工学研究グループ',NULL,N'oyama@h.jniosh.johas.go.jp',N'oyama@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8343',NULL,N'研究本館',N'522-1')
,(2,1,1,N'杜',N'唐慧子',N'トウケイコ',N'トウ',N'DU',N'Tanghuizi',N'研究職員',N'研究員',N'人間工学研究グループ',NULL,N'du@h.jniosh.johas.go.jp',N'du@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8289',NULL,N'研究本館',N'322')
,(2,1,1,N'加島',N'遼平',N'リョウヘイ',N'カシマ',N'KASHIMA',N'Ryohei',N'任期付研究員',NULL,N'社会労働衛生研究グループ',NULL,N'kashima-r@h.jniosh.johas.go.jp',N'kashima-r@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8157',NULL,N'研究本館',N'214')
,(2,1,1,N'王',N'薈琳',N'カイリン',N'オウ',N'WANG',N'Huilin',N'特定業務嘱託職員',NULL,N'社会労働衛生研究グループ',NULL,N'wang-huilin@h.jniosh.johas.go.jp',N'wang-huilin@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8541',NULL,N'研究本館',N'214')
,(2,1,0,N'五味',N'美遊',N'ミユ',N'ゴミ',N'GOMI',N'Miyu',N'派遣社員',NULL,N'研究推進・国際センター',NULL,N'gomi-miyu@h.jniosh.johas.go.jp',N'gomi-miyu@h.jniosh.johas.go.jp',N'株式会社エルコーエイ',N'8181',NULL,N'管理棟',N'図書室')
,(2,1,1,N'山崎',N'夏子',N'ナツコ',N'ヤマサキ',N'YAMASAKI',N'Natsuko',N'派遣社員',NULL,N'研究推進・国際センター',N'図書',N'yamasaki-natsuko@h.jniosh.johas.go.jp',N'yamasaki-natsuko@h.jniosh.johas.go.jp',N'株式会社ハーフタイム',NULL,NULL,N'管理棟',N'図書室')
,(2,1,1,N'発表者',N'用',N'ヨウ',N'ハッピョウシャ',NULL,NULL,N'研究職員',NULL,N'研究推進・国際センター',N'研究推進部門',N'tmuser@h.jniosh.johas.go.jp',N'tmuser@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',NULL,NULL,NULL,NULL)
,(2,1,1,N'研推',N'首席',N'シュセキ',N'ケンスイ',N'KENSUI',N'Shuseki',N'研究職員',N'首席研究員',N'研究推進・国際センター',N'研究推進部門',N'kenki-shuseki@h.jniosh.johas.go.jp',N'kenki-shuseki@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',NULL,NULL,N'管理棟',N'研推センター')
,(2,1,1,N'本多',N'久美',N'クミ',N'ホンダ',N'HONDA',N'Kumi',N'特定業務嘱託職員',NULL,N'研究推進・国際センター',N'研究推進部門',N'honda@h.jniosh.johas.go.jp',N'honda@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',NULL,NULL,N'管理棟',N'研推センター')
,(2,1,0,N'三浦',N'比奈',N'ヒナ',N'ミウラ',N'MIURA',N'Hina',N'非常勤職員',NULL,N'研究推進・国際センター',NULL,N'tomizawa@h.jniosh.johas.go.jp',N'tomizawa@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',NULL,NULL,N'研究本館',N'501サーバー')
,(2,1,1,N'角田',N'博代',N'ヒロヨ',N'ツノダ',N'TSUNODA',N'Hiroyo',N'特定業務嘱託職員',NULL,N'化学物質情報管理研究センター',N'化学物質情報管理部',N'tsunoda@h.jniosh.johas.go.jp',N'tsunoda@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',NULL,NULL,N'研究本館',N'408')
,(2,1,1,N'曽原',N'博司',N'ヒロシ',N'ソハラ',N'SOHARA',N'Hiroshi',N'特定業務嘱託職員',NULL,N'化学物質情報管理研究センター',N'化学物質情報管理部',N'sohara@h.jniosh.johas.go.jp',N'sohara@h.jniosh.johas.go.jp',N'一般財団法人日本規格協会',NULL,NULL,N'研究本館',N'408')
,(2,1,1,N'小西',N'満貴',N'マキ',N'コニシ',N'KONISHI',N'Maki',N'特定業務嘱託職員',NULL,N'労働者放射線障害防止研究センター',NULL,N'konishi-m@h.jniosh.johas.go.jp',N'konishi-m@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',NULL,NULL,N'研究本館',N'510/511')
,(2,1,0,N'藤澤',N'浩人',N'ヒロト',N'フジサワ',N'FUJISAWA',N'Hiroto',N'特定業務嘱託職員',NULL,N'労働者放射線障害防止研究センター',NULL,N'fujisawa-h@h.jniosh.johas.go.jp',N'fujisawa-h@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',NULL,NULL,N'研究本館',N'510/511')
,(2,1,1,N'菊地',N'芳典',N'ヨシノリ',N'キクチ',N'KIKUCHI',N'Yoshinori',N'職員',N'技術専門役',N'試験グループ',NULL,N'kikuchi-yoshinori@h.jniosh.johas.go.jp',N'kikuchi-yoshinori@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',NULL,NULL,N'管理棟',N'研推センター')
,(2,1,1,N'米山',N'賢吾',N'ケンゴ',N'ヨネヤマ',N'YONEYAMA',N'Kengo',N'職員',N'技術専門役',N'試験グループ',NULL,N'yoneyama-kengo@h.jniosh.johas.go.jp',N'yoneyama-kengo@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',NULL,NULL,N'管理棟',N'研推センター')
,(2,1,1,N'小森',N'純代',N'イトヨ',N'コモリ',N'KOMORI',N'Itoyo',N'派遣社員',NULL,N'人間工学研究グループ',NULL,N'komori-itoyo@h.jniosh.johas.go.jp',N'komori-itoyo@h.jniosh.johas.go.jp',N'株式会社エルコーエイ',NULL,NULL,NULL,NULL)
,(2,1,1,N'井上',N'眞記',N'マキ',N'イノウエ',N'INOUE',N'Maki',N'派遣社員',NULL,N'人間工学研究グループ',NULL,N'inoue-maki@h.jniosh.johas.go.jp',N'inoue-maki@h.jniosh.johas.go.jp',N'株式会社エルコーエイ',NULL,NULL,NULL,NULL)
,(2,1,1,N'中山',N'裕通',N'ヒロミチ',N'ナカヤマ',N'NAKAYAMA',N'Hiromichi',N'機構職員',NULL,N'管理部',N'管理第二課',N'nakayama-hiromichi@h.jniosh.johas.go.jp',N'nakayama-hiromichi@h.jniosh.johas.go.jp',N'労働者健康安全機構',NULL,NULL,N'管理棟',N'管理第二課')
,(2,1,1,N'山口',N'修平',N'シュウヘイ',N'ヤマグチ',N'YAMAGUCHI',N'Shuhei',N'特定業務嘱託職員',NULL,N'研究推進・国際センター',NULL,N'yamaguchi-shuhei@h.jniosh.johas.go.jp',N'yamaguchi-shuhei@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',NULL,NULL,NULL,NULL)
,(2,1,1,N'林',N'奉権',N'トモノリ',N'ハヤシ',N'HAYASHI',N'Tomonori',N'特定業務嘱託職員',NULL,N'労働者放射線障害防止研究センター',NULL,N'hayashi-tomonori@h.jniosh.johas.go.jp',N'hayashi-tomonori@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',NULL,NULL,NULL,NULL)
,(2,1,1,N'張',N'セン',N'セン',N'チョウ',N'ZHANG',N'Xuan',N'任期付研究員',NULL,N'化学物質情報管理研究センター',N'ばく露評価研究部',N'zhang-xuan@h.jniosh.johas.go.jp',N'zhang-xuan@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',NULL,NULL,NULL,NULL)
,(2,1,1,N'高田',N'琢弘',N'タクヒロ',N'タカダ',N'TAKADA',N'Takuhiro',N'任期付研究員',NULL,N'社会労働衛生研究グループ',NULL,N'takada-takuhiro@h.jniosh.johas.go.jp',N'takada-takuhiro@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',NULL,NULL,NULL,NULL)
,(2,1,1,N'本間',N'静香',N'シズカ',N'ホンマ',N'HONMA',N'Shizuka',N'派遣社員',NULL,N'化学物質情報管理研究センター',NULL,N'honma-shizuka@h.jniosh.johas.go.jp',N'honma-shizuka@h.jniosh.johas.go.jp',N'株式会社スタッフサービス',N'8379',NULL,NULL,NULL)
,(2,1,1,N'植田',N'絵美',N'エミ',N'ウエダ',N'UEDA',N'Emi',N'派遣社員',NULL,N'化学物質情報管理研究センター',NULL,N'ueda-emi@h.jniosh.johas.go.jp',N'ueda-emi@h.jniosh.johas.go.jp',N'パーソルテンプスタッフ株式会社',N'8448',NULL,NULL,NULL)
,(2,1,0,N'田中',N'良子',N'ヨシコ',N'タナカ',N'TANAKA',N'Yoshiko',N'派遣社員',NULL,N'化学物質情報管理研究センター',NULL,N'tanaka-yoshiko@h.jniosh.johas.go.jp',N'tanaka-yoshiko@h.jniosh.johas.go.jp',N'株式会社ハーフタイム',N'8400',NULL,NULL,NULL)
,(2,1,0,N'佐藤',N'裕子',N'ユウコ',N'サトウ',N'SATO',N'Yuko',N'派遣社員',NULL,N'化学物質情報管理研究センター',N'有害性評価研究部',N'sato-yuko@h.jniosh.johas.go.jp',N'sato-yuko@h.jniosh.johas.go.jp',N'WDB株式会社',N'8184',NULL,NULL,NULL)
,(2,1,0,N'藤本',N'直樹',N'ナオキ',N'フジモト',N'FUJIMOTO',N'Naoki',N'派遣社員',NULL,N'化学物質情報管理研究センター',NULL,N'fujimoto-naoki@h.jniosh.johas.go.jp',N'fujimoto-naoki@h.jniosh.johas.go.jp',N'WDB株式会社',N'8274',NULL,NULL,NULL)
,(2,1,1,N'竹村',N'真帆',N'マホ',N'タケムラ',N'TAKEMURA',N'Maho',N'派遣社員',NULL,N'人間工学研究グループ',NULL,NULL,NULL,N'株式会社エルコーエイ',N'8199',NULL,NULL,NULL)
,(2,1,0,N'日下',N'惠美',N'エミ',N'クサカ',N'KUSAKA',N'Emi',N'派遣社員',NULL,N'管理部',N'管理第二課',N'kusaka-emi@h.jniosh.johas.go.jp',N'kusaka-emi@h.jniosh.johas.go.jp',N'株式会社スタッフサービス',N'8463',NULL,NULL,NULL)
,(2,1,1,N'川村',N'三香',N'ミカ',N'カワムラ',N'KAWAMURA',N'Mika',N'委託職員',NULL,N'化学物質情報管理研究センター',N'実験動物管理室',N'shiikukanri@h.jniosh.johas.go.jp',N'shiikukanri@h.jniosh.johas.go.jp',N'株式会社アニマルケア',N'8364',NULL,NULL,NULL)
,(2,1,1,N'青木',N'保雅',N'ヤスマサ',N'アオキ',N'AOKI',N'Yasumasa',N'委託職員',NULL,N'設備',NULL,N'kanshi@h.jniosh.johas.go.jp',N'kanshi@h.jniosh.johas.go.jp',NULL,N'8112',NULL,NULL,NULL)
,(2,1,1,N'藤田',N'純子',N'ジュンコ',N'フジタ',N'FUJITA',N'Junko',N'派遣社員',NULL,N'人間工学研究グループ',NULL,N'fujita-junko@h.jniosh.johas.go.jp',N'fujita-junko@h.jniosh.johas.go.jp',N'株式会社エルコーエイ',NULL,NULL,NULL,NULL)
,(2,1,1,N'槇野',N'一美',N'カズミ',N'マキノ',N'MAKINO',N'kazumi',N'派遣社員',NULL,N'管理部',NULL,N'makino-kazumi@h.jniosh.johas.go.jp',N'makino-kazumi@h.jniosh.johas.go.jp',N'株式会社ＪＰキャリアコンサルティング',NULL,NULL,N'管理棟',N'管理第二課')
,(2,1,1,N'桑原',N'淳子',N'ジュンコ',N'クワハラ',N'KUWAHARA',N'Junko',N'派遣社員',NULL,N'化学物質情報管理研究センター',NULL,N'kuwahara-junko@h.jniosh.johas.go.jp',N'kuwahara-junko@h.jniosh.johas.go.jp',N'ＷＤＢ株式会社',NULL,NULL,NULL,NULL)
,(2,1,1,N'五十嵐',N'久美子',N'クミコ',N'イガラシ',N'IGARASHI',N'Kumiko',N'派遣社員',NULL,N'社会労働衛生研究グループ',NULL,N'igarashi-kumiko@h.jniosh.johas.go.jp',N'igarashi-kumiko@h.jniosh.johas.go.jp',N'株式会社エルコーエイ',NULL,NULL,NULL,NULL)
,(2,1,1,N'鷹屋',N'光俊',N'ミツトシ',N'タカヤ',N'TAKAYA',N'Mitsutoshi',N'研究職員',N'所長',N'幹部',NULL,N'takaya@h.jniosh.johas.go.jp',N'takaya@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8271',NULL,N'管理棟',N'所長室')
,(2,1,1,N'柴田',N'延幸',N'ノブユキ',N'シバタ',N'SHIBATA',N'Nobuyuki',N'研究職員',N'首席研究員',N'幹部',NULL,N'shibata@h.jniosh.johas.go.jp',N'shibata@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8223',NULL,N'管理棟',N'研推センター')
,(2,1,1,N'安江',N'睦',N'ムツミ',N'ヤスエ',N'YASUE',N'Mutsumi',N'本省職員',N'管理第二課長',N'管理部',N'管理第二課',N'yasue-mutsumi@h.jniosh.johas.go.jp',N'yasue-mutsumi@h.jniosh.johas.go.jp',N'厚生労働省',N'8520',NULL,N'管理棟',N'管理第二課')
,(2,1,1,N'池田',N'成平',N'ナリヒラ',N'イケダ',N'IKEDA',N'Narihira',N'機構職員',N'係長',N'管理部',N'管理第二課',N'ikeda-n@h.jniosh.johas.go.jp',N'ikeda-n@h.jniosh.johas.go.jp',N'労働者健康安全機構',N'8244',NULL,N'管理棟',N'管理第二課')
,(2,1,1,N'藤代',N'丈弘',N'トモヒロ',N'フジシロ',N'FUJISHIRO',N'Tomohiro',N'本省職員',N'契約係長',N'管理部',N'管理第二課',N'fujisiro@h.jniosh.johas.go.jp',N'fujisiro@h.jniosh.johas.go.jp',N'厚生労働省',N'8316',NULL,N'管理棟',N'管理第二課')
,(2,1,1,N'植草',N'剛',N'ツヨシ',N'ウエクサ',N'UEKUSA',N'Tsuyoshi',N'本省職員',N'管理係主任',N'管理部',N'管理第二課',N'uekusa@h.jniosh.johas.go.jp',N'uekusa@h.jniosh.johas.go.jp',N'厚生労働省',N'8499',NULL,N'管理棟',N'管理第二課')
,(2,1,1,N'岩本',N'奈々子',N'ナナコ',N'イワモト',N'IWAMOTO',N'Nanako',N'機構職員',N'契約係員',N'管理部',N'管理第二課',N'iwamoto-nanako@h.jniosh.johas.go.jp',N'iwamoto-nanako@h.jniosh.johas.go.jp',N'労働者健康安全機構',N'8193',NULL,N'管理棟',N'管理第二課')
,(2,1,1,N'中溝',N'絵里',N'エリ',N'ナカミゾ',N'NAKAMIZO',N'Eri',N'機構職員',N'管理係員',N'管理部',N'管理第二課',N'nakamizo@h.jniosh.johas.go.jp',N'nakamizo@h.jniosh.johas.go.jp',N'労働者健康安全機構',N'8454',NULL,N'管理棟',N'管理第二課')
,(2,1,1,N'関口',N'幸子',N'サチコ',N'セキグチ',N'SEKIGUCHI',N'Sachiko',N'非常勤職員',NULL,N'管理部',N'管理第二課',N'sekiguchi@h.jniosh.johas.go.jp',N'sekiguchi@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8334',NULL,N'管理棟',N'管理第二課')
,(2,1,1,N'見延',N'三枝',N'ミエ',N'ミノベ',N'MINOBE',N'Mie',N'非常勤職員',NULL,N'管理部',N'管理第二課',N'minobe@h.jniosh.johas.go.jp',N'minobe@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8331',NULL,N'管理棟',N'管理第二課')
,(2,1,1,N'鈴木',N'良子',N'ヨシコ',N'スズキ',N'SUZUKI',N'Yoshiko',N'非常勤職員',NULL,N'管理部',N'管理第二課',N'suzuki-yoshiko@h.jniosh.johas.go.jp',N'suzuki-yoshiko@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8466',NULL,N'管理棟',N'管理第二課')
,(2,1,1,N'三木',N'圭一',N'ケイイチ',N'ミキ',N'MIKI',N'Keiichi',N'研究職員',N'上席研究員',N'研究推進・国際センター',N'研究推進部門',N'miki@h.jniosh.johas.go.jp',N'miki@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8328',NULL,N'研究本館',N'418-1')
,(2,1,1,N'古瀬',N'三也',N'ミツヤ',N'フルセ',N'FURUSE',N'Mitsuya',N'研究職員',N'研究員',N'研究推進・国際センター',N'研究推進部門',N'furuse@h.jniosh.johas.go.jp',N'furuse@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8313',NULL,N'研究本館',N'518')
,(2,1,1,N'須田',N'恵',N'メグミ',N'スダ',N'SUDA',N'Megumi',N'再雇用職員',N'特任研究員　',N'研究推進・国際センター',N'研究推進部門',N'suda@h.jniosh.johas.go.jp',N'suda@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8241',NULL,N'研究本館',N'320')
,(2,1,1,N'大谷',N'勝己',N'カツミ',N'オオタニ',N'OHTANI',N'Katsumi',N'再雇用職員',N'特任研究員　',N'研究推進・国際センター',N'研究推進部門',N'ohtanik@h.jniosh.johas.go.jp',N'ohtanik@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8139',NULL,N'研究本館',N'320')
,(2,1,0,N'鈴木',N'薫',N'カオル',N'スズキ',N'SUZUKI',N'Kaoru',N'非常勤職員',NULL,N'研究推進・国際センター',N'研究推進部門',N'suzukik@h.jniosh.johas.go.jp',N'suzukik@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8232',NULL,N'管理棟',N'研推センター')
,(2,1,1,N'秋庭',N'祥子',N'ショウコ',N'アキバ',N'AKIBA',N'Shoko',N'非常勤職員',NULL,N'研究推進・国際センター',N'研究推進部門',N'akibas@h.jniosh.johas.go.jp',N'akibas@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8307',NULL,N'管理棟',N'研推センター')
,(2,1,1,N'宮内',N'七恵',N'ナナエ',N'ミヤウチ',N'MIYAUCHI',N'Nanae',N'非常勤職員',NULL,N'研究推進・国際センター',N'研究推進部門',N'miyauchin@h.jniosh.johas.go.jp',N'miyauchin@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8361',NULL,N'管理棟',N'研推センター')
,(2,1,1,N'小倉',N'由紀子',N'ユキコ',N'オグラ',N'OGURA',N'Yukiko',N'非常勤職員',NULL,N'研究推進・国際センター',N'研究推進部門',N'oguray@h.jniosh.johas.go.jp',N'oguray@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8388',NULL,N'管理棟',N'研推センター')
,(2,1,1,N'坪田',N'陽子',N'ヨウコ',N'ツボタ',N'TSUBOTA',N'Yoko',N'非常勤職員',NULL,N'研究推進・国際センター',N'国際センター',N'tsubotay@h.jniosh.johas.go.jp',N'tsubotay@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8382',NULL,N'研究本館',N'118国際センター')
,(2,1,1,N'兒島',N'眞由美',N'マユミ',N'コジマ',N'KOJIMA',N'Mayumi',N'非常勤職員',NULL,N'研究推進・国際センター',N'国際センター',N'kojima@h.jniosh.johas.go.jp',N'kojima@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8508',NULL,N'研究本館',N'118国際センター')
,(2,1,1,N'佐々木',N'大幸',N'ヒロユキ',N'ササキ',N'SASAKI',N'Hiroyuki',N'非常勤職員',NULL,N'研究推進・国際センター',N'研究推進部門',N'sasaki-hiroyuki@h.jniosh.johas.go.jp',N'sasaki-hiroyuki@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8121',NULL,N'管理棟',N'研推センター')
,(2,1,1,N'榊原',N'智之',N'トモユキ',N'サカキバラ',N'SAKAKIBARA',N'Tomoyuki',N'任期付研究員',NULL,N'研究推進・国際センター',NULL,N'sakakibara@h.jniosh.johas.go.jp',N'sakakibara@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8154',NULL,N'管理棟',N'研推センター')
,(2,1,1,N'大木',N'裕二',N'ユウジ',N'オオキ',N'OHKI',N'Yuji',N'特定業務嘱託職員',NULL,N'研究推進・国際センター',N'システム担当',N'ohki@h.jniosh.johas.go.jp',N'ohki@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8511',NULL,N'研究本館',N'501サーバー')
,(2,1,1,N'山口',N'聖美',N'キヨミ',N'ヤマグチ',N'YAMAGUCHI',N'Kiyomi',N'特定業務嘱託職員',NULL,N'研究推進・国際センター',N'システム担当',N'yamaguchi-k@h.jniosh.johas.go.jp',N'yamaguchi-k@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8514',NULL,N'研究本館',N'501サーバー')
,(2,1,1,N'森',N'賢一郎',N'ケンイチロウ',N'モリ',N'MORI',N'Kenichiro',N'特定業務嘱託職員',NULL,N'研究推進・国際センター',N'研究推進部門',N'mori@h.jniosh.johas.go.jp',N'mori@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8529',NULL,N'管理棟',N'研推センター')
,(2,1,1,N'城内',N'博',N'ヒロシ',N'ジョウナイ',N'JONAI',N'Hiroshi',N'特定業務嘱託職員',N'センター長',N'化学物質情報管理研究センター',NULL,N'jonai@h.jniosh.johas.go.jp',N'jonai@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8124',NULL,N'研究本館',N'408/センター長')
,(2,1,1,N'伊藤',N'昭好',N'アキヨシ',N'イトウ',N'ITO',N'Akiyoshi',N'特定業務嘱託職員',N'センター長代理',N'化学物質情報管理研究センター',NULL,N'itoa@h.jniosh.johas.go.jp',N'itoa@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8220',NULL,N'研究本館',N'112')
,(2,1,1,N'矢吹',N'陽子',N'ヨウコ',N'ヤブキ',N'YABUKI',N'Yoko',N'本省職員',N'調査役',N'化学物質情報管理研究センター',NULL,N'yabuki-yoko@h.jniosh.johas.go.jp',N'yabuki-yoko@h.jniosh.johas.go.jp',N'厚生労働省',N'8319',NULL,N'研究本館',N'408')
,(2,1,1,N'山本',N'健也',N'ケンヤ',N'ヤマモト',N'YAMAMOTO',N'Kenya',N'任期付研究員',N'部長',N'化学物質情報管理研究センター',N'化学物質情報管理部',N'yamamotok@h.jniosh.johas.go.jp',N'yamamotok@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8130',NULL,N'研究本館',N'306-1')
,(2,1,1,N'中原',N'浩彦',N'ヒロヒコ',N'ナカハラ',N'NAKAHARA',N'Hirohiko',N'特定業務嘱託職員',NULL,N'化学物質情報管理研究センター',N'化学物質情報管理部',N'nakahara@h.jniosh.johas.go.jp',N'nakahara@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8433',NULL,N'研究本館',N'112')
,(2,1,1,N'緒方',N'裕子',N'ユウコ',N'オガタ',N'OGATA',N'Yuko',N'任期付研究員',NULL,N'化学物質情報管理研究センター',N'化学物質情報管理部',N'ogata-yuko@h.jniosh.johas.go.jp',N'ogata-yuko@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8544',NULL,N'研究本館',N'408')
,(2,1,1,N'奈良',N'志ほり',N'シホリ',N'ナラ',N'NARA',N'Shihori',N'任期付研究員',NULL,N'化学物質情報管理研究センター',N'化学物質情報管理部',N'nara-shihori@h.jniosh.johas.go.jp',N'nara-shihori@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8493',NULL,N'研究本館',N'408')
,(2,1,1,N'重田',N'善之',N'ヨシユキ',N'シゲタ',N'SHIGETA',N'Yoshiyuki',N'任期付研究員',NULL,N'化学物質情報管理研究センター',N'化学物質情報管理部',N'shigeta-yoshiyuki@h.jniosh.johas.go.jp',N'shigeta-yoshiyuki@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8490',NULL,N'研究本館',N'408')
,(2,1,1,N'小野',N'真理子',N'マリコ',N'オノ',N'ONO-OGASAWARA',N'Mariko',N'特定有期雇用職員',N'特任研究員',N'化学物質情報管理研究センター',N'化学物質情報管理部',N'ono@h.jniosh.johas.go.jp',N'ono@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8517',NULL,N'研究本館',N'408')
,(2,1,1,N'梅邑',N'幸弘',N'ユキヒロ',N'ウメムラ',N'UMEMURA',N'Yukihiro',N'非常勤職員',NULL,N'化学物質情報管理研究センター',N'化学物質情報管理部',N'umemura@h.jniosh.johas.go.jp',N'umemura@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8472',NULL,N'研究本館',N'516')
,(2,1,1,N'丸野',N'裕子',N'ヒロコ',N'マルノ',N'MARUNO',N'Hiroko',N'非常勤職員',NULL,N'化学物質情報管理研究センター',N'化学物質情報管理部',N'maruno@h.jniosh.johas.go.jp',N'maruno@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8406',NULL,N'研究本館',N'516')
,(2,1,1,N'齊藤',N'宏之',N'ヒロユキ',N'サイトウ',N'SAITO',N'Hiroyuki',N'研究職員',N'部長',N'化学物質情報管理研究センター',N'ばく露評価研究部',N'saitoh@h.jniosh.johas.go.jp',N'saitoh@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8202',NULL,N'研究本館',N'306-2')
,(2,1,1,N'山田',N'丸',N'マロム',N'ヤマダ',N'YAMADA',N'Maromu',N'研究職員',N'部長代理',N'化学物質情報管理研究センター',N'ばく露評価研究部',N'yamadam@h.jniosh.johas.go.jp',N'yamadam@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8160',NULL,N'研究本館',N'206-1')
,(2,1,1,N'萩原',N'正義',N'マサヨシ',N'ハギワラ',N'HAGIWARA',N'Masayoshi',N'研究職員',N'主任研究員',N'化学物質情報管理研究センター',N'ばく露評価研究部',N'hagiwara@h.jniosh.johas.go.jp',N'hagiwara@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8295',NULL,N'研究本館',N'306-2')
,(2,1,1,N'中村',N'憲司',N'ケンジ',N'ナカムラ',N'NAKAMURA',N'Kenji',N'研究職員',N'主任研究員',N'化学物質情報管理研究センター',N'ばく露評価研究部',N'nakamuk@h.jniosh.johas.go.jp',N'nakamuk@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8115',NULL,N'研究本館',N'324')
,(2,1,1,N'緒方',N'裕子',N'ヒロコ',N'オガタ',N'OGATA',N'Hiroko',N'任期付研究員',NULL,N'化学物質情報管理研究センター',N'ばく露評価研究部',N'ogata@h.jniosh.johas.go.jp',N'ogata@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8535',NULL,N'研究本館',N'408')
,(2,1,1,N'金子',N'剛大',N'タケヒロ',N'カネコ',N'KANEKO',N'Takehiro',N'任期付研究員',NULL,N'化学物質情報管理研究センター',N'ばく露評価研究部',N'kaneko-takehiro@h.jniosh.johas.go.jp',N'kaneko-takehiro@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8580',NULL,N'研究本館',N'408')
,(2,1,1,N'日達',N'清',N'キヨシ',N'ヒタチ',N'HITACHI',N'Kiyoshi',N'特定業務嘱託職員',NULL,N'化学物質情報管理研究センター',N'ばく露評価研究部',N'hitachi@h.jniosh.johas.go.jp',N'hitachi@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8451',NULL,N'研究本館',N'408')
,(2,1,1,N'村瀬',N'めぐみ',N'メグミ',N'ムラセ',N'MURASE',N'Megumi',N'特定業務嘱託職員',NULL,N'化学物質情報管理研究センター',N'ばく露評価研究部',N'murasem@h.jniosh.johas.go.jp',N'murasem@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8418',NULL,N'研究本館',N'408')
,(2,1,1,N'豊岡',N'達士',N'タツシ',N'トヨオカ',N'TOYOOKA',N'Tatsushi',N'研究職員',N'部長代理',N'化学物質情報管理研究センター',N'有害性評価研究部',N'toyooka@h.jniosh.johas.go.jp',N'toyooka@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8190',NULL,N'研究本館',N'106-1')
,(2,1,1,N'小林',N'健一',N'ケンイチ',N'コバヤシ',N'KOBAYASHI',N'Kenichi',N'研究職員',N'上席研究員',N'化学物質情報管理研究センター',N'有害性評価研究部',N'kobayasi@h.jniosh.johas.go.jp',N'kobayasi@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8196',NULL,N'研究本館',N'208-2')
,(2,1,1,N'天本',N'宇紀',N'タカキ',N'アマモト',N'AMAMOTO',N'Takaki',N'研究職員',N'研究員',N'化学物質情報管理研究センター',N'有害性評価研究部',N'amamoto@h.jniosh.johas.go.jp',N'amamoto@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8349',NULL,N'研究本館',N'324')
,(2,1,1,N'富岡',N'征大',N'マサヒロ',N'トミオカ',N'TOMIOKA',N'Masahiro',N'任期付研究員',NULL,N'化学物質情報管理研究センター',N'有害性評価研究部',N'tomioka-masahiro@h.jniosh.johas.go.jp',N'tomioka-masahiro@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8562',NULL,N'研究本館',N'408')
,(2,1,1,N'王',N'瑞生',N'ズイセイ',N'オウ',N'WANG',N'Ruisheng',N'特定有期雇用職員',N'特任研究員',N'化学物質情報管理研究センター',N'有害性評価研究部',N'wang@h.jniosh.johas.go.jp',N'wang@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8136',NULL,N'研究本館',N'320')
,(2,1,1,N'小野',N'恵美',N'メグミ',N'オノ',N'ONO',N'Megumi',N'特定業務嘱託職員',NULL,N'化学物質情報管理研究センター',N'有害性評価研究部',N'megumi_ono@h.jniosh.johas.go.jp',N'megumi_ono@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8412',NULL,N'研究本館',N'304-1')
,(2,1,1,N'中野',N'真規子',N'マキコ',N'ナカノ',N'NAKANO',N'Makiko',N'任期付研究員',N'部長',N'化学物質情報管理研究センター',N'疫学研究部',N'nakano-makiko@h.jniosh.johas.go.jp',N'nakano-makiko@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8553',NULL,N'研究本館',N'323')
,(2,1,1,N'小林',N'澄貴',N'スミタカ',N'コバヤシ',N'KOBAYASHI',N'Sumitaka',N'任期付研究員',NULL,N'化学物質情報管理研究センター',N'疫学研究部',N'kobayashi-sumitaka@h.jniosh.johas.go.jp',N'kobayashi-sumitaka@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8574',NULL,N'研究本館',N'323')
,(2,1,1,N'柳場',N'由絵',N'ユキエ',N'ヤナギバ',N'YANAGIBA',N'Yukie',N'研究職員',N'室長',N'化学物質情報管理研究センター',N'生体防御評価研究室',N'yanagiba@h.jniosh.johas.go.jp',N'yanagiba@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8301',NULL,N'研究本館',N'304-1')
,(2,1,1,N'王',N'斉',N'チー',N'ワン',N'WANG',N'Qi',N'任期付研究員',NULL,N'化学物質情報管理研究センター',N'生体防御評価研究室',N'qi-wang@h.jniosh.johas.go.jp',N'qi-wang@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8556',NULL,N'研究本館',N'408')
,(2,1,1,N'岩瀬',N'真喜子',N'マキコ',N'イワセ',N'IWASE',N'Makiko',N'任期付研究員',NULL,N'化学物質情報管理研究センター',N'生体防御評価研究室',N'iwase-makiko@h.jniosh.johas.go.jp',N'iwase-makiko@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8565',NULL,N'研究本館',N'408')
,(2,1,1,N'高橋',N'正也',N'マサヤ',N'タカハシ',N'TAKAHASHI',N'Masaya',N'研究職員',N'センター長',N'過労死等防止調査研究センター',NULL,N'takaham@h.jniosh.johas.go.jp',N'takaham@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8265',NULL,N'研究本館',N'110')
,(2,1,1,N'吉川',N'徹',N'トオル',N'ヨシカワ',N'YOSHIKAWA',N'Toru',N'研究職員',N'センター長代理',N'過労死等防止調査研究センター',NULL,N'yoshikawa@h.jniosh.johas.go.jp',N'yoshikawa@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8283',NULL,N'管理棟',N'過労死等防止調査研究センター')
,(2,1,1,N'鈴木',N'一弥',N'カズヤ',N'スズキ',N'SUZUKI',N'Kazuya',N'特定有期雇用職員',N'特任研究員',N'過労死等防止調査研究センター',NULL,N'suzukikz@h.jniosh.johas.go.jp',N'suzukikz@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8142',NULL,N'研究本館',N'418-2')
,(2,1,1,N'茂木',N'伸之',N'ノブユキ',N'モテギ',N'MOTEGI',N'Nobuyuki',N'特定有期雇用職員',N'特任研究員',N'過労死等防止調査研究センター',NULL,N'motegi@h.jniosh.johas.go.jp',N'motegi@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8172',NULL,N'研究本館',N'204')
,(2,1,1,N'古屋',N'隆',N'タカシ',N'フルヤ',N'FURUYA',N'Takashi',N'特定業務嘱託職員',NULL,N'過労死等防止調査研究センター',NULL,N'furuya-takashi@h.jniosh.johas.go.jp',N'furuya-takashi@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8187',NULL,N'管理棟',N'過労死等防止調査研究センター')
,(2,1,1,N'村井',N'史子',N'フミコ',N'ムライ',N'MURAI',N'Fumiko',N'特定業務嘱託職員',NULL,N'過労死等防止調査研究センター',NULL,N'murai-f@h.jniosh.johas.go.jp',N'murai-f@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8394',NULL,N'研究本館',N'218')
,(2,1,1,N'中村',N'有里',N'アリ',N'ナカムラ',N'NAKAMURA',N'Ari',N'特定業務嘱託職員',NULL,N'過労死等防止調査研究センター',NULL,N'nakamura-a@h.jniosh.johas.go.jp',N'nakamura-a@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8532',NULL,N'研究本館',N'218')
,(2,1,1,N'藤井',N'雅子',N'マサコ',N'フジイ',N'FUJII',N'Masako',N'非常勤職員',NULL,N'過労死等防止調査研究センター',NULL,N'fujii@h.jniosh.johas.go.jp',N'fujii@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8304',NULL,N'管理棟',N'過労死等防止調査研究センター')
,(2,1,1,N'布谷',N'祐子',N'ユウコ',N'ヌノヤ',N'NUNOYA',N'Yuko',N'非常勤職員',NULL,N'過労死等防止調査研究センター',NULL,N'nunoya@h.jniosh.johas.go.jp',N'nunoya@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8259',NULL,N'研究本館',N'214')
,(2,1,1,N'内山',N'幸恵',N'ユキエ',N'ウチヤマ',N'UCHIYAMA',N'Yukie',N'非常勤職員',NULL,N'過労死等防止調査研究センター',NULL,N'uchiyama@h.jniosh.johas.go.jp',N'uchiyama@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8310',NULL,N'管理棟',N'過労死等防止調査研究センター')
,(2,1,1,N'吉田',N'かずほ',N'カズホ',N'ヨシダ',N'YOSHIDA',N'Kazuho',N'非常勤職員',NULL,N'過労死等防止調査研究センター',NULL,N'yoshidak@h.jniosh.johas.go.jp',N'yoshidak@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8322',NULL,N'管理棟',N'過労死等防止調査研究センター')
,(2,1,1,N'玉置',N'敦子',N'アツコ',N'タマオキ',N'TAMAOKI',N'Atsuko',N'非常勤職員',NULL,N'過労死等防止調査研究センター',NULL,N'tamaoki@h.jniosh.johas.go.jp',N'tamaoki@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8292',NULL,N'研究本館',N'505-1')
,(2,1,1,N'櫻井',N'裕子',N'ユウコ',N'サクライ',N'SAKURAI',N'Yuko',N'非常勤職員',NULL,N'過労死等防止調査研究センター',NULL,N'sakurai@h.jniosh.johas.go.jp',N'sakurai@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8475',NULL,N'管理棟',N'過労死等防止調査研究センター')
,(2,1,1,N'吉田',N'朋子',N'トモコ',N'ヨシダ',N'YOSHIDA',N'Tomoko',N'非常勤職員',NULL,N'過労死等防止調査研究センター',NULL,N'yoshida-tomoko@h.jniosh.johas.go.jp',N'yoshida-tomoko@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8376',NULL,N'管理棟',N'管理第二課')
,(2,1,1,N'近藤',N'はな恵',N'ハナエ',N'コンドウ',N'KONDO',N'Hanae',N'非常勤職員',NULL,N'過労死等防止調査研究センター',NULL,N'kondou-h@h.jniosh.johas.go.jp',N'kondou-h@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8385',NULL,N'研究本館',N'204')
,(2,1,1,N'米岡',N'京子',N'キョウコ',N'ヨネオカ',N'YONEOKA',N'Kyoko',N'非常勤職員',NULL,N'過労死等防止調査研究センター',NULL,N'yoneoka@h.jniosh.johas.go.jp',N'yoneoka@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8250',NULL,N'研究本館',N'204')
,(2,1,1,N'大久保',N'利晃',N'トシテル',N'オオクボ',N'OHKUBO',N'Toshiteru',N'任期付研究員',N'センター長',N'労働者放射線障害防止研究センター',NULL,N'ohkubo-t@h.jniosh.johas.go.jp',N'ohkubo-t@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8298',NULL,N'研究本館',N'510/511')
,(2,1,1,N'溝上',N'哲也',N'テツヤ',N'ミゾウエ',N'MIZOUE',N'Tetsuya',N'特定業務嘱託職員',N'センター長代理',N'労働者放射線障害防止研究センター',NULL,N'mizoue-t@h.jniosh.johas.go.jp',N'mizoue-t@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8262',NULL,N'研究本館',N'510/511')
,(2,1,1,N'石邉',N'綾子',N'アヤコ',N'イシベ',N'ISHIBE',N'Ayako',N'特定業務嘱託職員',NULL,N'労働者放射線障害防止研究センター',NULL,N'ishibe-a@h.jniosh.johas.go.jp',N'ishibe-a@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8166',NULL,N'研究本館',N'510/511')
,(2,1,1,N'堀向',N'玲子',N'レイコ',N'ホリムカイ',N'HORIMUKAI',N'Reiko',N'特定業務嘱託職員',NULL,N'労働者放射線障害防止研究センター',NULL,N'horimukai-reiko@h.jniosh.johas.go.jp',N'horimukai-reiko@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8480',NULL,N'研究本館',N'510/511')
,(2,1,1,N'土永',N'章代',N'アキヨ',N'ツチナガ',N'TSUCHINAGA',N'Akiyo',N'特定業務嘱託職員',NULL,N'労働者放射線障害防止研究センター',NULL,N'tsutinaga-a@h.jniosh.johas.go.jp',N'tsutinaga-a@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8403',NULL,N'研究本館',N'510/511')
,(2,1,1,N'胡',N'歓',N'ファン',N'フ',N'HU',N'Huan',N'特定業務嘱託職員',NULL,N'労働者放射線障害防止研究センター',NULL,N'huhuan@h.jniosh.johas.go.jp',N'huhuan@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8538',NULL,N'研究本館',N'510/511')
,(2,1,1,N'種田',N'栄子',N'エイコ',N'タネダ',N'TANEDA',N'Eiko',N'特定業務嘱託職員',NULL,N'労働者放射線障害防止研究センター',NULL,N'taneda-eiko@h.jniosh.johas.go.jp',N'taneda-eiko@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8523',NULL,N'研究本館',N'510/511')
,(2,1,1,N'東',N'佳奈',N'カナ',N'アズマ',N'AZUMA',N'Kana',N'特定業務嘱託職員',NULL,N'労働者放射線障害防止研究センター',NULL,N'azuma-kana@h.jniosh.johas.go.jp',N'azuma-kana@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8547',NULL,N'研究本館',N'510/511')
,(2,1,1,N'鈴木',N'伸太郎',N'シンタロウ',N'スズキ',N'SUZUKI',N'Shintaro',N'特定業務嘱託職員',NULL,N'労働者放射線障害防止研究センター',NULL,N'suzuki-shintarou@h.jniosh.johas.go.jp',N'suzuki-shintarou@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8526',NULL,N'研究本館',N'510/511')
,(2,1,1,N'栗田',N'沙織',N'サオリ',N'クリタ',N'KURITA',N'Saori',N'非常勤職員',NULL,N'労働者放射線障害防止研究センター',NULL,N'kurita-saori@h.jniosh.johas.go.jp',N'kurita-saori@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8415',NULL,N'研究本館',N'510/511')
,(2,1,1,N'荒川',N'貴子',N'タカコ',N'アラカワ',N'ARAKAWA',N'Takako',N'非常勤職員',NULL,N'労働者放射線障害防止研究センター',NULL,N'arakawa-takako@h.jniosh.johas.go.jp',N'arakawa-takako@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8502',NULL,N'研究本館',N'510/511')
,(2,1,1,N'佐藤',N'あけみ',N'アケミ',N'サトウ',N'SATO',N'Akemi',N'特定業務嘱託職員',NULL,N'労働者放射線障害防止研究センター',NULL,N'sato-akemi@h.jniosh.johas.go.jp',N'sato-akemi@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8457',NULL,N'研究本館',N'510/511')
,(2,1,0,N'小林',N'拓司',N'タクジ',N'コバヤシ',N'KOBAYASHI',N'Takuji',N'特定業務嘱託職員',NULL,N'労働者放射線障害防止研究センター',NULL,N'kobayashi-t@h.jniosh.johas.go.jp',N'kobayashi-t@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8505',NULL,N'研究本館',N'510/511')
,(2,1,1,N'小野寺',N'梨恵',N'リエ',N'オノデラ',N'ONODERA',N'Rie',N'特定業務嘱託職員',NULL,N'労働者放射線障害防止研究センター',NULL,N'onodera-r@h.jniosh.johas.go.jp',N'onodera-r@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8226',NULL,N'研究本館',N'510/511')
,(2,1,0,N'宮田',N'奈々',N'ナナ',N'ミヤタ',N'MIYATA',N'Nana',N'特定業務嘱託職員',NULL,N'労働者放射線障害防止研究センター',NULL,N'miyata-nana@h.jniosh.johas.go.jp',N'miyata-nana@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8370',NULL,N'研究本館',N'510/511')
,(2,1,0,N'近藤',N'里紗',N'リサ',N'コンドウ',N'KONDO',N'Risa',N'非常勤職員',NULL,N'労働者放射線障害防止研究センター',NULL,N'kondou-risa@h.jniosh.johas.go.jp',N'kondou-risa@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8163',NULL,N'研究本館',N'510/511')
,(2,1,1,N'佐々木',N'毅',N'タケシ',N'ササキ',N'SASAKI',N'Takeshi',N'研究職員',N'部長',N'産業保健研究グループ',NULL,N'sasakit@h.jniosh.johas.go.jp',N'sasakit@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8208',NULL,N'研究本館',N'210')
,(2,1,1,N'久保',N'智英',N'トモヒデ',N'クボ',N'KUBO',N'Tomohide',N'研究職員',N'上席研究員',N'産業保健研究グループ',NULL,N'kubo@h.jniosh.johas.go.jp',N'kubo@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8256',NULL,N'研究本館',N'505-1')
,(2,1,1,N'井澤',N'修平',N'シュウヘイ',N'イザワ',N'IZAWA',N'Shuhei',N'研究職員',N'上席研究員',N'産業保健研究グループ',NULL,N'izawa@h.jniosh.johas.go.jp',N'izawa@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8352',NULL,N'研究本館',N'420-2')
,(2,1,1,N'松元',N'俊',N'シュン',N'マツモト',N'MATSUMOTO',N'Shun',N'研究職員',N'研究員',N'産業保健研究グループ',NULL,N'matsumoto@h.jniosh.johas.go.jp',N'matsumoto@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8277',NULL,N'研究本館',N'216')
,(2,1,1,N'西村',N'悠貴',N'ユウキ',N'ニシムラ',N'NISHIMURA',N'Yuki',N'研究職員',N'研究員',N'産業保健研究グループ',NULL,N'nishimura@h.jniosh.johas.go.jp',N'nishimura@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8285',NULL,N'研究本館',N'204')
,(2,1,1,N'佐藤',N'ゆき',N'ユキ',N'サトウ',N'SATO',N'Yuki',N'研究職員',N'研究員',N'産業保健研究グループ',NULL,N'sato-y@h.jniosh.johas.go.jp',N'sato-y@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8214',NULL,N'研究本館',N'204')
,(2,1,1,N'菅谷',N'渚',N'ナギサ',N'スガヤ',N'SUGAYA',N'Nagisa',N'任期付研究員',NULL,N'産業保健研究グループ',NULL,N'sugaya-nagisa@h.jniosh.johas.go.jp',N'sugaya-nagisa@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',N'8568',NULL,N'研究本館',N'322')
,(3,1,1,N'鈴木',N'正明',N'マサアキ',N'スズキ',N'SUZUKI',N'Masaaki',N'常勤嘱託',N'グループ長',N'試験グループ',NULL,N'suzuki-masaaki@h.jniosh.johas.go.jp',N'suzuki-masaaki@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',NULL,NULL,N'湘南アイパーク',N'B44E')
,(3,1,1,N'三角',N'恭兵',N'キョウヘイ',N'ミスミ',N'MISUMI',N'Kyohei',N'職員',N'主任試験研究員',N'試験グループ',NULL,N'misumi-kyohei@h.jniosh.johas.go.jp',N'misumi-kyohei@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',NULL,NULL,N'湘南アイパーク',N'B44E')
,(3,1,1,N'古川',N'佑介',N'ユウスケ',N'フルカワ',N'FURUKAWA',N'Yusuke',N'職員',N'主任試験研究員',N'試験グループ',NULL,N'furukawa-yusuke@h.jniosh.johas.go.jp',N'furukawa-yusuke@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',NULL,NULL,N'湘南アイパーク',N'B44E')
,(3,1,1,N'平井',N'繁行',N'シゲユキ',N'ヒライ',N'HIRAI',N'Shigeyuki',N'職員',N'技術専門役',N'試験グループ',NULL,N'hirai-shigeyuki@h.jniosh.johas.go.jp',N'hirai-shigeyuki@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',NULL,NULL,N'湘南アイパーク',N'B44E')
,(3,1,1,N'舟木',N'貞裕',N'サダヒロ',N'フナキ',N'FUNAKI',N'Sadahiro',N'本省職員',NULL,N'試験グループ',NULL,N'funaki-sadahiro@h.jniosh.johas.go.jp',N'funaki-sadahiro@h.jniosh.johas.go.jp',N'厚生労働省',NULL,NULL,N'湘南アイパーク',N'B44E')
,(3,1,1,N'加納',N'浩和',N'ヒロカズ',N'カノウ',N'KANO',N'Hirokazu',N'常勤嘱託',N'室長',N'試験グループ',N'登戸分室',N'kano-hirokazu@h.jniosh.johas.go.jp',N'kano-hirokazu@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',NULL,NULL,N'研究本館',N'121')
,(3,1,1,N'竹内',N'哲也',N'テツヤ',N'タケウチ',N'TAKEUCHI',N'Tetsuya',N'職員',N'技術専門役',N'試験グループ',N'登戸分室',N'takeuchi-tetsuya@h.jniosh.johas.go.jp',N'takeuchi-tetsuya@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',NULL,NULL,N'研究本館',N'121')
,(3,1,1,N'笠井',N'辰也',N'タツヤ',N'カサイ',N'KASAI',N'Tatsuya',N'常勤嘱託',N'専門役',N'試験グループ',N'登戸分室',N'kasai-tatsuya@h.jniosh.johas.go.jp',N'kasai-tatsuya@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',NULL,NULL,N'研究本館',N'121')
,(3,1,1,N'佐々木',N'俊明',N'トシアキ',N'ササキ',N'SASAKI',N'Toshiaki',N'職員',N'技術専門役',N'開発グループ',NULL,N'sasaki-toshiaki@h.jniosh.johas.go.jp',N'sasaki-toshiaki@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',NULL,NULL,N'湘南アイパーク',N'B44E')
,(3,1,1,N'馬場本',N'絵未',N'エミ',N'ババモト',N'BABAMOTO',N'Emi',N'職員',N'上席試験研究員',N'開発グループ',NULL,N'babamoto-emi@h.jniosh.johas.go.jp',N'babamoto-emi@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',NULL,NULL,N'湘南アイパーク',N'B44E')
,(3,1,1,N'武田',N'知起',N'トモキ',N'タケダ',N'TAKEDA',N'Tomoki',N'職員',N'上席試験研究員',N'開発グループ',NULL,N'takeda-tomoki@h.jniosh.johas.go.jp',N'takeda-tomoki@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',NULL,NULL,N'湘南アイパーク',N'B44E')
,(3,1,1,N'梅田',N'ゆみ',N'ユミ',N'ウメダ',N'UMEDA',N'Yumi',N'職員',N'グループ長',N'病理グループ',NULL,N'umeda-yumi@h.jniosh.johas.go.jp',N'umeda-yumi@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',NULL,NULL,N'湘南アイパーク',N'B44E')
,(3,1,1,N'山野',N'荘太郎',N'ショウタロウ',N'ヤマノ',N'YAMANO',N'Shotaro',N'職員',N'上席試験研究員',N'病理グループ',NULL,N'yamano-shotaro@h.jniosh.johas.go.jp',N'yamano-shotaro@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',NULL,NULL,N'湘南アイパーク',N'B44E')
,(3,1,1,N'高信',N'健司',N'ケンジ',N'タカノブ',N'TAKANOBU',N'Kenji',N'常勤嘱託',N'技術専門役',N'病理グループ',NULL,N'takanobu-kenji@h.jniosh.johas.go.jp',N'takanobu-kenji@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',NULL,NULL,N'湘南アイパーク',N'B44E')
,(3,1,1,N'妹尾',N'英樹',N'ヒデキ',N'セノウ',N'SENO',N'Hideki',N'常勤嘱託',N'専門役',N'病理グループ',NULL,N'seno-hideki@h.jniosh.johas.go.jp',N'seno-hideki@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',NULL,NULL,N'湘南アイパーク',N'B44E')
,(3,1,1,N'齋藤',N'美佐江',N'ミサエ',N'サイトウ',N'SAITO',N'Misae',N'常勤嘱託',N'専門役',N'病理グループ',NULL,N'saito-misae@h.jniosh.johas.go.jp',N'saito-misae@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',NULL,NULL,N'湘南アイパーク',N'B44E')
,(3,1,1,N'中里',N'拓也',N'タクヤ',N'ナカザト',N'NAKAZATO',N'Takuya',N'機構職員',N'係長',N'管理部',N'支援係',N'nakazato-takuya@h.jniosh.johas.go.jp',N'nakazato-takuya@h.jniosh.johas.go.jp',N'労働者健康安全機構',NULL,NULL,N'湘南アイパーク',N'B44E')
,(3,1,1,N'山口',N'裕子',N'ユウコ',N'ヤマグチ',N'YAMAGUCHI',N'Yuko',N'常勤嘱託',N'専門役',N'管理部',N'支援係',N'yamaguchi-yuko@h.jniosh.johas.go.jp',N'yamaguchi-yuko@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',NULL,NULL,N'湘南アイパーク',N'B44E')
,(3,1,1,N'武',N'信',N'マコト',N'タケ',N'TAKE',N'Makoto',N'職員',N'室長',N'監査室',NULL,N'take-makoto@h.jniosh.johas.go.jp',N'take-makoto@h.jniosh.johas.go.jp',N'労働安全衛生総合研究所',NULL,NULL,N'研究本館',N'121')
,(2,0,1,N'日下部',N'夏海',N'ナツミ',N'クサカベ',N'KUSAKABE',N'Natsumi',N'委託職員',NULL,N'労働者放射線障害防止研究センター',NULL,NULL,NULL,NULL,NULL,NULL,N'研究本館',N'510/511')
,(2,0,1,N'西村',N'太一',N'タイチ',N'ニシムラ',N'NISHIMURA',N'Taichi',N'委託職員',NULL,N'労働者放射線障害防止研究センター',NULL,NULL,NULL,NULL,NULL,NULL,N'研究本館',N'510/511')
,(2,0,1,N'山内',N'貴史',N'タカシ',N'ヤマウチ',N'YAMAUCHI',N'Takashi',N'特定業務嘱託職員',NULL,N'過労死等防止調査研究センター',NULL,NULL,NULL,N'労働安全衛生総合研究所',NULL,NULL,NULL,NULL)
,(2,0,1,N'佐々木',N'司',N'ツカサ',N'ササキ',N'SASAKI',N'Tsukasa',N'特定業務嘱託職員',NULL,N'過労死等防止調査研究センター',NULL,NULL,NULL,N'労働安全衛生総合研究所',NULL,NULL,NULL,NULL)
,(2,0,1,N'守田',N'祐作',N'ユウサク',N'モリタ',N'MORITA',N'Yusaku',N'特定業務嘱託職員',NULL,N'過労死等防止調査研究センター',NULL,NULL,NULL,N'労働安全衛生総合研究所',NULL,NULL,NULL,NULL)
,(2,0,1,N'北島',N'洋樹',N'ヒロキ',N'キタジマ',N'KITAJIMA',N'Hiroki',N'特定業務嘱託職員',NULL,N'過労死等防止調査研究センター',NULL,NULL,NULL,N'労働安全衛生総合研究所',NULL,NULL,NULL,NULL)
,(2,0,1,N'中辻',N'めぐみ',N'メグミ',N'ナカツジ',N'NAKATSUJI',N'Megumi',N'特定業務嘱託職員',NULL,N'過労死等防止調査研究センター',NULL,NULL,NULL,N'労働安全衛生総合研究所',NULL,NULL,NULL,NULL)
,(2,0,1,N'石井',N'賢治',N'ケンジ',N'イシイ',N'ISHII',N'Kenji',N'特定業務嘱託職員',NULL,N'過労死等防止調査研究センター',NULL,NULL,NULL,N'労働安全衛生総合研究所',NULL,NULL,NULL,NULL)
,(2,0,1,N'髙橋',N'有記',N'ユウキ',N'タカハシ',N'TAKAHASHI',N'Yuki',N'特定業務嘱託職員',NULL,N'過労死等防止調査研究センター',NULL,NULL,NULL,N'労働安全衛生総合研究所',NULL,NULL,NULL,NULL)
,(2,0,1,N'田原',N'裕之',N'ヒロユキ',N'タハラ',N'TAHARA',N'Hiroyuki',N'特定業務嘱託職員',NULL,N'過労死等防止調査研究センター',NULL,NULL,NULL,N'労働安全衛生総合研究所',NULL,NULL,NULL,NULL)
,(2,0,1,N'高見澤',N'颯',N'ハヤト',N'タカミザワ',N'TAKAMIZAWA',N'Hayato',N'委託職員',NULL,N'化学物質情報管理研究センター',N'実験動物管理室',NULL,NULL,N'株式会社アニマルケア',NULL,NULL,NULL,NULL)
,(2,0,1,N'柏原',N'さち子',N'サチコ',N'カシワバラ',N'KASHIWABARA',N'Sachiko',N'委託職員',NULL,N'清掃',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL)
,(2,0,1,N'林',N'礼子',N'レイコ',N'ハヤシ',N'HAYASHI',N'Reiko',N'委託職員',NULL,N'清掃',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL)
,(2,0,1,N'小野寺',N'君子',N'キミコ',N'オノデラ',N'ONODERA',N'Kimiko',N'委託職員',NULL,N'清掃',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL)
,(2,0,1,N'新宮',N'愛祈',N'アキ',N'シングウ',N'SHINGU',N'Aki',N'派遣社員',NULL,N'産業保健研究グループ',NULL,NULL,NULL,N'パーソルテンプスタッフ株式会社',N'8373',NULL,NULL,NULL)
,(2,0,1,N'村瀬',N'正',N'タダシ',N'ムラセ',N'MURASE',N'Tadashi',N'委託職員',NULL,N'化学物質情報管理研究センター',N'実験動物管理室',NULL,NULL,N'株式会社アニマルケア',NULL,NULL,NULL,NULL)
,(2,0,1,N'三野',N'明水',N'アキミ',N'ミノ',N'MINO',N'Akimi',N'委託職員',NULL,N'化学物質情報管理研究センター',N'実験動物管理室',NULL,NULL,N'株式会社アニマルケア',NULL,NULL,NULL,NULL)
,(2,0,1,N'冨沢',N'冬喜子',N'トキコ',N'トミザワ',N'TOMIZAWA',N'Tokiko',N'委託職員',NULL,N'化学物質情報管理研究センター',N'実験動物管理室',NULL,NULL,N'株式会社アニマルケア',NULL,NULL,NULL,NULL)
,(2,0,1,N'田中',N'まさ子',N'マサコ',N'タナカ',N'TANAKA',N'Masako',N'委託職員',NULL,N'化学物質情報管理研究センター',N'実験動物管理室',NULL,NULL,N'株式会社アニマルケア',NULL,NULL,NULL,NULL)
,(2,0,1,N'堀越',N'円',N'マル',N'ホリコシ',N'HORIKOSHI',N'Maru',N'委託職員',NULL,N'化学物質情報管理研究センター',N'実験動物管理室',NULL,NULL,N'株式会社アニマルケア',NULL,NULL,NULL,NULL)
,(2,0,1,N'藤村',N'恵美',N'エミ',N'フジムラ',N'FUJIMURA',N'Emi',N'委託職員',NULL,N'受付',NULL,NULL,NULL,NULL,N'8442',NULL,NULL,NULL)
,(2,0,1,N'掛川',N'真理',N'マリ',N'カケガワ',N'KAKEGAWA',N'Mari',N'委託職員',NULL,N'受付',NULL,NULL,NULL,NULL,N'8442',NULL,NULL,NULL)
,(2,0,1,N'清水',N'明',N'アキラ',N'シミズ',N'SHIMIZU',N'Akira',N'委託職員',NULL,N'警備',NULL,NULL,NULL,NULL,N'8436',NULL,NULL,NULL)
,(2,0,1,N'櫻谷',N'健司',N'タケシ',N'サクラヤ',N'SAKURAYA',N'Takeshi',N'委託職員',NULL,N'警備',NULL,NULL,NULL,NULL,N'8436',NULL,NULL,NULL)
,(2,0,1,N'明田川',N'修',N'オサム',N'アケタガワ',N'AKETAGAWA',N'Osamu',N'委託職員',NULL,N'警備',NULL,NULL,NULL,NULL,N'8337',NULL,NULL,NULL)
,(2,0,1,N'新垣',N'弘',N'ヒロシ',N'アラガキ',N'ARAGAKI',N'Hiroshi',N'委託職員',NULL,N'設備',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL)
,(2,0,1,N'古川',N'信三',N'シンゾウ',N'フルカワ',N'FURUKAWA',N'Shinzo',N'委託職員',NULL,N'設備',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL)
,(2,0,1,N'雫',N'昌弘',N'マサヒロ',N'シズク',N'SHIZUKU',N'Masahiro',N'委託職員',NULL,N'設備',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL)
,(2,0,1,N'荒谷',N'和幸',N'カズユキ',N'アラヤ',N'ARAYA',N'Kazuyuki',N'委託職員',NULL,N'設備',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL)
,(2,0,1,N'竹下',N'宣晃',N'ノブアキ',N'タケシタ',N'TAKESHITA',N'Nobuaki',N'委託職員',NULL,N'設備',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL)
,(2,0,1,N'小川',N'稔',N'ミノル',N'オガワ',N'OGAWA',N'Minoru',N'委託職員',NULL,N'設備',NULL,NULL,NULL,NULL,N'8469',NULL,NULL,NULL)
,(2,0,1,N'安永',N'正明',N'マサアキ',N'ヤスナガ',N'YASUNAGA',N'Masaaki',N'委託職員',NULL,N'設備',NULL,NULL,NULL,NULL,N'8427',NULL,NULL,NULL)
,(2,0,1,N'佐々木',N'健二',N'ケンジ',N'ササキ',N'SASAKI',N'Kenji',N'委託職員',NULL,N'警備',NULL,NULL,NULL,NULL,N'8436',NULL,NULL,NULL)
,(2,0,1,N'小池',N'光博',N'ミツヒロ',N'コイケ',N'KOIKE',N'Mitsuhiro',N'委託職員',NULL,N'化学物質情報管理研究センター',N'実験動物管理室',NULL,NULL,N'株式会社アニマルケア',N'8229',NULL,NULL,NULL)
,(1,0,1,N'大幢',N'勝利',N'カツトシ',N'オオドウ',N'OHDO',N'Katsutoshi',N'研究職員',N'所長代理',N'幹部',NULL,NULL,NULL,N'労働安全衛生総合研究所',NULL,NULL,N'管理棟',N'所長代理室')
,(1,0,0,N'笹川',N'康成',N'ヤスナリ',N'ササガワ',N'SASAGAWA',N'Yasunari',N'本省職員',N'管理部長',N'管理部',NULL,NULL,NULL,N'厚生労働省',NULL,NULL,N'管理棟',N'管理第二課')


UPDATE		dbo.TEMP_ExportedAllUsers
SET 		TEMP_ExportedAllUsers.PHS = o.PHS
		   ,TEMP_ExportedAllUsers.固定電話内線 = o.固定電話内線
FROM
(
	SELECT	 a.姓カナ
			,a.名カナ
			,a.固定電話内線
			,a.PHS
	FROM 	 dbo.TEMP_USR_職員 AS a 
) AS o 
JOIN TEMP_ExportedAllUsers AS p 
ON		 p.姓カナ = o.姓カナ
	And  p.名カナ = o.名カナ

UPDATE	dbo.TEMP_ExportedAllUsers
SET 	部課 = N'管理第二課'
	   ,職名 = N'課長'
WHERE 	姓カナ = N'ヤスエ'
	And 名カナ = N'ムツミ'

UPDATE	dbo.TEMP_ExportedAllUsers
SET 	部課 = N'管理係'
	   ,職名 = N'係長'
WHERE 	姓カナ = N'イケダ'
	And 名カナ = N'ナリヒラ'

UPDATE	dbo.TEMP_ExportedAllUsers
SET 	部課 = N'管理係'
	   ,職名 = N'主任'
WHERE 	姓カナ = N'ウエクサ'
	And 名カナ = N'ツヨシ'

UPDATE	dbo.TEMP_ExportedAllUsers
SET 	部課 = N'契約係'
	   ,職名 = N'係長'
WHERE 	姓カナ = N'フジシロ'
	And 名カナ = N'トモヒロ'

UPDATE	dbo.TEMP_ExportedAllUsers
SET 	部課 = N'支援係'
	   ,職名 = N'専門役'
WHERE 	姓カナ = N'ヤマグチ'
	And 名カナ = N'ユウコ'

UPDATE	dbo.TEMP_ExportedAllUsers
SET 	部課 = N'管理係'
	   ,職名 = NULL
WHERE 	職員ID IN (56, 57, 70)

UPDATE	dbo.TEMP_ExportedAllUsers
SET 	部課 = N'契約係'
	   ,職名 = NULL
WHERE 	職員ID IN (55, 58, 59, 46, 42)

UPDATE	dbo.TEMP_ExportedAllUsers
SET 	部課 = N'支援係'
	   ,職名 = NULL
WHERE 	職員ID IN (31, 148)

SELECT		a.*
FROM 		dbo.TEMP_ExportedAllUsers AS a 
ORDER BY 	a.姓カナ, a.名カナ
