.section .text
.syntax unified

.include "include/gba.inc"

@ 0x34 is actually 4 but byte escape characters suck ass
/* 08058f58 */
.asciz "\x04\x31\x34."
.balign 4, 0

@ Perfect
/* 08058f60 */
.asciz "パーフェクト"
.balign 4, 0

@ Superb
/* 08058f70 */
.asciz "ハイレベル"
.balign 4, 0

@ OK
/* 08058f7c */
.asciz "平凡"
.balign 4, 0

@ Try Again
/* 08058f84 */
.asciz "やりなおし"
.balign 4, 0

@ Cafe
/* 08058f90 */
.asciz "喫茶カウンセル"
.balign 4, 0

@ Game Select 2
/* 08058fa0 */
.asciz "ゲームセレクト２"
.balign 4, 0

@ Credits
/* 08058fb4 */
.asciz "スタッフクレジット"
.balign 4, 0

@ Introduction
/* 08058fc8 */
.asciz "オープニング"
.balign 4, 0

@ E-Mail
/* 08058fd8 */
.asciz "リズム資料室"
.balign 4, 0

@ Game Select
/* 08058fe8 */
.asciz "ゲームセレクト"
.balign 4, 0

@ Menu
/* 08058ff8 */
.asciz "メニュー"
.balign 4, 0

@ Title
/* 08059004 */
.asciz "タイトル"
.balign 4, 0

@ Remix 6
/* 08059010 */
.asciz "リミックス６"
.balign 4, 0

@ Remix 8
/* 08059020 */
.asciz "リミックス８"
.balign 4, 0

@ Remix 7
/* 08059030 */
.asciz "リミックス７"
.balign 4, 0

@ Fireworks
/* 08059040 */
.asciz "花火"
.balign 4, 0

@ Toss Boys
/* 08059048 */
.asciz "トスボーイズ"
.balign 4, 0

@ Bouncy Road
/* 08059058 */
.asciz "ホッピングロード"
.balign 4, 0

@ Polyrhythm
/* 0805906c */
.asciz "ポリリズム"
.balign 4, 0

@ Power Calligraphy
/* 08059078 */
.asciz "リズムお習字"
.balign 4, 0

@ Quiz Show
/* 08059088 */
.asciz "クイズ"
.balign 4, 0

@ Tram & Pauline
/* 08059090 */
.asciz "トランとポリン"
.balign 4, 0

@ Bunny Hop
/* 080590a0 */
.asciz "ウサギとび"
.balign 4, 0

@ Showtime
/* 080590ac */
.asciz "ショータイム"
.balign 4, 0

@ Sick Beats
/* 080590bc */
.asciz "バイキンはかせ"
.balign 4, 0

@ Rat Race
/* 080590cc */
.asciz "こっそりラット"
.balign 4, 0

@ Samurai Slice
/* 080590dc */
.asciz "ゐあひ斬り"
.balign 4, 0

@ Sneaky Spirits
/* 080590e8 */
.asciz "しろいおばけ"
.balign 4, 0

@ Spaceball
/* 080590f8 */
.asciz "エアーバッター"
.balign 4, 0

@ Marching Orders
/* 08059108 */
.asciz "マーチャ"
.balign 4, 0

@ Wizard's Waltz
/* 08059114 */
.asciz "まほうつかい"
.balign 4, 0

@ Turbo Tap Trial
/* 08059124 */
.asciz "スーパータップ"
.balign 4, 0

@ The Snappy Trio
/* 08059134 */
.asciz "バリバリ三人衆"
.balign 4, 0

@ Rhythm Tweezers
/* 08059144 */
.asciz "リズム脱毛"
.balign 4, 0

@ Cosmic Dance
/* 08059150 */
.asciz "コスモダンス"
.balign 4, 0

@ The☆Bon Dance
/* 08059160 */
.asciz "ボンダンス"
.balign 4, 0

@ The☆Bon-Odori
/* 0805916c */
.asciz "ザ☆ぼんおどり"
.balign 4, 0

@ Night Walk
/* 0805917c */
.asciz "ナイトウォーク"
.balign 4, 0

@ WISH Can't Wait...
/* 0805918c */
.asciz "WISH 君を待て…"
.balign 4, 0

@ WISH Can't Wait For You
/* 0805919c */
.asciz "WISH 君を待てなくて"
.balign 4, 0

@ Love's Honey Swe...
/* 080591b0 */
.asciz "恋のハニースイ～…"
.balign 4, 0

@ Love's Honey Sweet Angel
/* 080591c4 */
.asciz "恋のハニースイ～トエンジェル"
.balign 4, 0

@ Space Dance
/* 080591e4 */
.asciz "スペースダンス"
.balign 4, 0

@ Tap Trial
/* 080591f4 */
.asciz "タップダンズ"
.balign 4, 0

@ The Clappy Trio
/* 08059204 */
.asciz "パチパチ三人衆"
.balign 4, 0

@ Karate Man
/* 08059214 */
.asciz "カラテ家"
.balign 4, 0

@ Silence
/* 08059220 */
.asciz "サイレント"
.balign 4, 0

@ Samurai Drum
/* 0805922c */
.asciz "さむらいドラム"
.balign 4, 0

@ Air-Cutter Drum
/* 0805923c */
.asciz "風切るドラム"
.balign 4, 0

@ Tap Drum
/* 0805924c */
.asciz "タップなドラム"
.balign 4, 0

@ Sound Effects Drum
/* 0805925c */
.asciz "音効なドラム"
.balign 4, 0

@ Heel Tech Drum 2
/* 0805926c */
.asciz "カカトテクなドラム ２"
.balign 4, 0

@ Heel Tech Drum 1
/* 08059284 */
.asciz "カカトテクなドラム １"
.balign 4, 0

@ Hi-hat Drum
/* 0805929c */
.asciz "ハットテクなドラム"
.balign 4, 0

@ Heavy Drum
/* 080592b0 */
.asciz "ハードなドラム"
.balign 4, 0

@ Light Drum
/* 080592c0 */
.asciz "ライトなドラム"
.balign 4, 0

@ Asian Drum
/* 080592d0 */
.asciz "アジアなドラム"
.balign 4, 0

@ Matte Drum
/* 080592e0 */
.asciz "マットなドラム"
.balign 4, 0

@ Techno Drum
/* 080592f0 */
.asciz "テクノなドラム"
.balign 4, 0

@ Power Drum
/* 08059300 */
.asciz "パワーなドラム"
.balign 4, 0

@ Dry Drum
/* 08059310 */
.asciz "ドライなドラム"
.balign 4, 0

@ Regular Drum
/* 08059320 */
.asciz "フツーなドラム"
.balign 4, 0

/* 08059330 */
.asciz ""
.balign 4, 0

/* 08059334 */
.asciz "\x04\x38."
.balign 4, 0

@ ???
/* 08059338 */
.asciz "？？？"
.balign 4, 0

@ There's not much memory left.
@ Perform anyway?
/* 08059340 */
.asciz "メモリが少なくなってきてます。
このまま演奏する？"
.balign 4, 0

@ You can only save 10 recitals.
@ Perform without saving?
/* 08059374 */
.asciz "演奏データは10コしか残せません。
データは残らないけど演奏する？"
.balign 4, 0

@ You can't save any more data.
@ Perform without saving?
/* 080593b4 */
.asciz "メモリがいっぱいです。
データは残らないけど演奏する？"
.balign 4, 0

@ Mark
/* 080593ec */
.asciz "チェック"
.balign 4, 0

@ Sort
/* 080593f8 */
.asciz "ならびかえ"
.balign 4, 0

@ Drum
/* 08059404 */
.asciz "ドラミング"
.balign 4, 0

@ Listen
/* 08059410 */
.asciz "リスニング"
.balign 4, 0

@ Erase Data
/* 0805941c */
.asciz "データ消去"
.balign 4, 0

/* 08059428 */
.asciz ""
.balign 4, 0

@ Not even one song has
@ a check mark on it.
/* 0805942c */
.asciz "チェックのついている曲が、
ひとつもありません。"
.balign 4, 0

@ In listening mode, only the songs
@ with a check mark will be played.
/* 0805945c */
.asciz "リスニングではチェックのある曲だけ再生します。　よろしいですか～？"
.balign 4, 0

@ You'll erase this performance
@ data! Is that really OK?
/* 080594a0 */
.asciz "この演奏データを削除するヨ！
ホントにOK？"
.balign 4, 0

@ Beat Box
/* 080594cc */
.asciz "ラップ マシーン"
.balign 4, 0

@ Love Machine
/* 080594dc */
.asciz "告白 マシーン"
.balign 4, 0

@ Mechanical Horse
/* 080594ec */
.asciz "うま マシーン"
.balign 4, 0

@ Meow Mixer
/* 080594fc */
.asciz "ネコ マシーン"
.balign 4, 0

@ Head Spinner
/* 0805950c */
.asciz "マネキン工場"
.balign 4, 0

@ Quiz Show EX
/* 0805951c */
.asciz "クイズ　スペシャル"
.balign 4, 0

@ Sick Beats EX
/* 08059530 */
.asciz "バイキンはかせＳＰ"
.balign 4, 0

@ Mr. Upbeat
/* 08059544 */
.asciz "ウラおとこ"
.balign 4, 0

@ Expert 2
/* 08059550 */
.asciz "ハイテク　２"
.balign 4, 0

@ Expert 1
/* 08059560 */
.asciz "ハイテク　１"
.balign 4, 0

@ Long 6
/* 08059570 */
.asciz "ロング　６"
.balign 4, 0

@ Long 5
/* 0805957c */
.asciz "ロング　５"
.balign 4, 0

@ Long 4
/* 08059588 */
.asciz "ロング　４"
.balign 4, 0

@ Long 3
/* 08059594 */
.asciz "ロング　３"
.balign 4, 0

@ Long 2
/* 080595a0 */
.asciz "ロング　２"
.balign 4, 0

@ Long 1
/* 080595ac */
.asciz "ロング　１"
.balign 4, 0

@ Short 9
/* 080595b8 */
.asciz "ショート　９"
.balign 4, 0

@ Short 8
/* 080595c8 */
.asciz "ショート　８"
.balign 4, 0

@ Short 7
/* 080595d8 */
.asciz "ショート　７"
.balign 4, 0

@ Short 6
/* 080595e8 */
.asciz "ショート　６"
.balign 4, 0

@ Short 5
/* 080595f8 */
.asciz "ショート　５"
.balign 4, 0

@ Short 4
/* 08059608 */
.asciz "ショート　４"
.balign 4, 0

@ Short 3
/* 08059618 */
.asciz "ショート　３"
.balign 4, 0

@ Short 2
/* 08059628 */
.asciz "ショート　２"
.balign 4, 0

@ Short 1
/* 08059638 */
.asciz "ショート　１"
.balign 4, 0

@ Basic 2
/* 08059648 */
.asciz "ベーシック　２"
.balign 4, 0

@ Basic 1
/* 08059658 */
.asciz "ベーシック　１"
.balign 4, 0

/* 08059668 */
.asciz "＿"
.balign 4, 0

@ (Lots of stuff from here on isnt translated, but is mostly game names anyway)
/* 0805966c */
.asciz "シーケンス　テスト"
.balign 4, 0

/* 08059680 */
.asciz "＊"
.balign 4, 0

/* 08059684 */
.asciz "１／１"
.balign 4, 0

@ Data Clear
/* 0805968c */
.asciz "データクリア"
.balign 4, 0

/* 0805969c */
.asciz "エンディング（おまけから）"
.balign 4, 0

/* 080596b8 */
.asciz "エンディング（クリアご）"
.balign 4, 0

/* 080596d4 */
.asciz "Ｒ－ＩＱ　（おもちゃ）"
.balign 4, 0

/* 080596ec */
.asciz "Ｒ－ＩＱ　（ドラムレッスン）"
.balign 4, 0

/* 0805970c */
.asciz "Ｒ－ＩＱ　（ミニゲーム）"
.balign 4, 0

/* 08059728 */
.asciz "Ｒ－ＩＱ　（カウンセラー）"
.balign 4, 0

/* 08059744 */
.asciz "Ｒ－ＩＱ　（パーフェクト）"
.balign 4, 0

/* 08059760 */
.asciz "Ｒ－ＩＱ　（にゅうか）"
.balign 4, 0

/* 08059778 */
.asciz "Ｒ－ＩＱ　（リザルト４）"
.balign 4, 0

/* 08059794 */
.asciz "Ｒ－ＩＱ　（リザルト３）"
.balign 4, 0

/* 080597b0 */
.asciz "Ｒ－ＩＱ　（リザルト２）"
.balign 4, 0

/* 080597cc */
.asciz "Ｒ－ＩＱ　（リザルト）"
.balign 4, 0

/* 080597e4 */
.asciz "Ｒ－ＩＱ　（オプション）"
.balign 4, 0

/* 08059800 */
.asciz "Ｒ－ＩＱ　（スタジオ）"
.balign 4, 0

/* 08059818 */
.asciz "Ｒ－ＩＱ　（しりょうしつ）"
.balign 4, 0

/* 08059834 */
.asciz "Ｒ－ＩＱ　（ゲーム）"
.balign 4, 0

/* 0805984c */
.asciz "Ｒ－ＩＱ　（メニュー）"
.balign 4, 0

/* 08059864 */
.asciz "Ｒ－ＩＱ　（タイトル）"
.balign 4, 0

@ Karate Man 2
/* 0805987c */
.asciz "カラテカ　２"
.balign 4, 0

@ Karate Man
/* 0805988c */
.asciz "カラテカ"
.balign 4, 0

@ The Snappy Trio
/* 08059898 */
.asciz "バリバリ３にんしゅう"
.balign 4, 0

@ The Clappy Trio
/* 080598b0 */
.asciz "パチパチ３にんしゅう"
.balign 4, 0

/* 080598c8 */
.asciz "ポリリズム　２"
.balign 4, 0

/* 080598d8 */
.asciz "ポリリズム"
.balign 4, 0

/* 080598e4 */
.asciz "ナイト　ウォーク　２"
.balign 4, 0

/* 080598fc */
.asciz "ナイト　ウォーク"
.balign 4, 0

/* 08059910 */
.asciz "リズムだつもう　２"
.balign 4, 0

/* 08059924 */
.asciz "リズムだつもう"
.balign 4, 0

/* 08059934 */
.asciz "バイキン　はかせ"
.balign 4, 0

/* 08059948 */
.asciz "ホッピングロード　２"
.balign 4, 0

/* 08059960 */
.asciz "ホッピングロード"
.balign 4, 0

/* 08059974 */
.asciz "ニンジャ　２"
.balign 4, 0

/* 08059984 */
.asciz "ニンジャ"
.balign 4, 0

/* 08059990 */
.asciz "しろいおばけ　２"
.balign 4, 0

/* 080599a4 */
.asciz "しろいおばけ"
.balign 4, 0

/* 080599b4 */
.asciz "エアーバッター２"
.balign 4, 0

/* 080599c8 */
.asciz "エアーバッター"
.balign 4, 0

/* 080599d8 */
.asciz "いあいぎり"
.balign 4, 0

/* 080599e4 */
.asciz "スーパータップ"
.balign 4, 0

/* 080599f4 */
.asciz "タップダンズ"
.balign 4, 0

/* 08059a04 */
.asciz "うま（スピード）"
.balign 4, 0

/* 08059a18 */
.asciz "マーチャ　２"
.balign 4, 0

/* 08059a28 */
.asciz "マーチャ"
.balign 4, 0

/* 08059a34 */
.asciz "まほうつかい"
.balign 4, 0

/* 08059a44 */
.asciz "ダンスレッスン　１"
.balign 4, 0

/* 08059a58 */
.asciz "ウサギとび"
.balign 4, 0

/* 08059a64 */
.asciz "メトロノーム"
.balign 4, 0

/* 08059a74 */
.asciz "ハナビ"
.balign 4, 0

/* 08059a7c */
.asciz "フラッシュメモリテスト"
.balign 4, 0

/* 08059a94 */
.asciz "こっそりラット"
.balign 4, 0

/* 08059aa4 */
.asciz "リズム　おしゅうじ"
.balign 4, 0

/* 08059ab8 */
.asciz "ドラムガールズ"
.balign 4, 0

/* 08059ac8 */
.asciz "トスボーイズ　２"
.balign 4, 0

/* 08059adc */
.asciz "トスボーイズ"
.balign 4, 0

@ Tram and Pauline
/* 08059aec */
.asciz "トランとポリン"
.balign 4, 0

@ Opening (A Type)
/* 08059afc */
.asciz "オープニング　（Ａ　Ｔｙｐｅ）"
.balign 4, 0

@ @ Opening (B Type)
/* 08059b1c */
.asciz "オープニング　（Ｂ　Ｔｙｐｅ）"
.balign 4, 0

/* 08059b3c */
.asciz "ＲＩＱデータチェック"
.balign 4, 0

@ Showtime
/* 08059b54 */
.asciz "ショータイム"
.balign 4, 0

/* 08059b64 */
.asciz "コスモダンス"
.balign 4, 0

/* 08059b74 */
.asciz "スペースダンス"
.balign 4, 0

/* 08059b84 */
.asciz "ラップ　ウィメン（ｂｙ　ＫＡＺＵ）"
.balign 4, 0

/* 08059ba8 */
.asciz "ラップ　ウィメン（ｂｙ　ＹＯＮＥ）"
.balign 4, 0

@ Rap Men
/* 08059bcc */
.asciz "ラップメン"
.balign 4, 0

@ Quiz Show
/* 08059bd8 */
.asciz "クイズ"
.balign 4, 0

@ Text
/* 08059be0 */
.asciz "テキスト"
.balign 4, 0

@ Check Machine (Total)
/* 08059bec */
.asciz "チェックマシン　（トータル）"
.balign 4, 0

/* 08059c0c */
.asciz "チェックマシン　（トリッキー）"
.balign 4, 0

/* 08059c2c */
.asciz "チェックマシン　（キューフ）"
.balign 4, 0

@ Check Machine (Click)
/* 08059c4c */
.asciz "チェックマシン　（クリック）"
.balign 4, 0

/* 08059c6c */
.asciz "スタジオドラマー"
.balign 4, 0

/* 08059c80 */
.asciz "レッスン（じっせん８）"
.balign 4, 0

/* 08059c98 */
.asciz "レッスン（じっせん７）"
.balign 4, 0

/* 08059cb0 */
.asciz "レッスン（じっせん６）"
.balign 4, 0

/* 08059cc8 */
.asciz "レッスン（じっせん５）"
.balign 4, 0

/* 08059ce0 */
.asciz "レッスン（じっせん４）"
.balign 4, 0

/* 08059cf8 */
.asciz "レッスン（じっせん３）"
.balign 4, 0

/* 08059d10 */
.asciz "レッスン（じっせん２）"
.balign 4, 0

/* 08059d28 */
.asciz "レッスン（じっせん１）"
.balign 4, 0

/* 08059d40 */
.asciz "レッスン（スネアテクニック）"
.balign 4, 0

/* 08059d60 */
.asciz "レッスン（はやい８ビート）"
.balign 4, 0

/* 08059d7c */
.asciz "レッスン（バスとスネア）"
.balign 4, 0

/* 08059d98 */
.asciz "レッスン（スネア）"
.balign 4, 0

/* 08059dac */
.asciz "レッスン（ボッサ）"
.balign 4, 0

/* 08059dc0 */
.asciz "レッスン（デスコビート）"
.balign 4, 0

/* 08059ddc */
.asciz "レッスン（キメパターン２）"
.balign 4, 0

/* 08059df8 */
.asciz "レッスン（キメパターン１）"
.balign 4, 0

/* 08059e14 */
.asciz "レッスン（ハード２）"
.balign 4, 0

/* 08059e2c */
.asciz "レッスン（ハード１）"
.balign 4, 0

/* 08059e44 */
.asciz "レッスン（イージー）"
.balign 4, 0

/* 08059e5c */
.asciz "こえマシン（ラップ）"
.balign 4, 0

/* 08059e74 */
.asciz "こえマシン（ラブ）"
.balign 4, 0

/* 08059e88 */
.asciz "こえマシン（ネコ）"
.balign 4, 0

/* 08059e9c */
.asciz "ボンダンス"
.balign 4, 0

/* 08059ea8 */
.asciz "ぼんおどり"
.balign 4, 0

/* 08059eb4 */
.asciz "リミックス　１"
.balign 4, 0

/* 08059ec4 */
.asciz "リミックス　２"
.balign 4, 0

/* 08059ed4 */
.asciz "リミックス　３"
.balign 4, 0

/* 08059ee4 */
.asciz "リミックス　４"
.balign 4, 0

/* 08059ef4 */
.asciz "リミックス　５"
.balign 4, 0

/* 08059f04 */
.asciz "リミックス　６"
.balign 4, 0

/* 08059f14 */
.asciz "リミックス　７"
.balign 4, 0

/* 08059f24 */
.asciz "リミックス　８"
.balign 4, 0

/* 08059f34 */
.asciz "ウラおとこ"
.balign 4, 0

/* 08059f40 */
.asciz "マネキンこうじょう"
.balign 4, 0

/* 08059f54 */
.asciz "クイズ（スペシャル）"
.balign 4, 0

/* 08059f6c */
.asciz "バイキン　はかせ　ＳＰ"
.balign 4, 0

/* 08059f84 */
.asciz "ライブ"
.balign 4, 0

/* 08059f8c */
.asciz "／"
.balign 4, 0

/* 08059f90 */
.asciz ""
.balign 4, 0

/* 08059f94 */
.asciz ""
.balign 4, 0

/* 08059f98 */
.asciz ""
.balign 4, 0

/* 08059f9c */
.asciz "\nスタートだけに集中！"
.balign 4, 0

/* 08059fb4 */
.asciz "\nちゃんと　アタマを狙おう。"
.balign 4, 0

/* 08059fd0 */
.asciz "\nボーッと　しないで！"
.balign 4, 0

/* 08059fe8 */
.asciz "\nＡボタンもしっかり押そう。"
.balign 4, 0

/* 0805a004 */
.asciz "\nＲボタンもしっかり押そう。"
.balign 4, 0

/* 0805a020 */
.asciz "\n同時に押してないです。"
.balign 4, 0

/* 0805a038 */
.asciz "\n前のめりです。"
.balign 4, 0

/* 0805a048 */
.asciz "\n遅れてます。"
.balign 4, 0

/* 0805a058 */
.asciz "\nベリー　グッド！！"
.balign 4, 0

/* 0805a06c */
.asciz "\nグー！"
.balign 4, 0

/* 0805a074 */
.asciz "\nカンペキッス！！"
.balign 4, 0

/* 0805a088 */
.asciz "\nバッチグー！！"
.balign 4, 0

/* 0805a098 */
.asciz "\nなかなかいいヨ！"
.balign 4, 0

/* 0805a0ac */
.asciz "\nまずまずだネ！"
.balign 4, 0

/* 0805a0bc */
.asciz "\n"
.balign 4, 0

/* 0805a0c0 */
.asciz "\n評価 "
.balign 4, 0

/* 0805a0c8 */
.asciz "."
.balign 4, 0

/* 0805a0cc */
.asciz " 点"
.balign 4, 0

/* 0805a0d0 */ .word 0x08c71ed4
/* 0805a0d4 */ .word 0x06008000
/* 0805a0d8 */ .word 0xffffffff
/* 0805a0dc */ .word 0x08c762e8
/* 0805a0e0 */ .word 0x0600f000
/* 0805a0e4 */ .word 0xffffffff
/* 0805a0e8 */ .word 0x08c76300
/* 0805a0ec */ .word 0x0600f800
/* 0805a0f0 */ .word 0xffffffff
/* 0805a0f4 */ .word 0x00000000
/* 0805a0f8 */ .word 0x00000000
/* 0805a0fc */ .word 0x00000000

/* 0805a100 */ .word 0x08c71340
/* 0805a104 */ .word 0x06008000
/* 0805a108 */ .word 0xffffffff
/* 0805a10c */ .word 0x08c745e0
/* 0805a110 */ .word 0x0600f000
/* 0805a114 */ .word 0xffffffff
/* 0805a118 */ .word 0x08c74754
/* 0805a11c */ .word 0x0600f800
/* 0805a120 */ .word 0xffffffff
/* 0805a124 */ .word 0x00000000
/* 0805a128 */ .word 0x00000000
/* 0805a12c */ .word 0x00000000

/* 0805a130 */ .word 0x08c7069c
/* 0805a134 */ .word 0x06008000
/* 0805a138 */ .word 0xffffffff
/* 0805a13c */ .word 0x08c737a4
/* 0805a140 */ .word 0x0600f000
/* 0805a144 */ .word 0xffffffff
/* 0805a148 */ .word 0x08c73978
/* 0805a14c */ .word 0x0600f800
/* 0805a150 */ .word 0xffffffff
/* 0805a154 */ .word 0x00000000
/* 0805a158 */ .word 0x00000000
/* 0805a15c */ .word 0x00000000

/* 0805a160 */ .word 0x08c71908
/* 0805a164 */ .word 0x06008000
/* 0805a168 */ .word 0xffffffff
/* 0805a16c */ .word 0x08c74ef8
/* 0805a170 */ .word 0x0600f000
/* 0805a174 */ .word 0xffffffff
/* 0805a178 */ .word 0x08c75100
/* 0805a17c */ .word 0x0600f800
/* 0805a180 */ .word 0xffffffff
/* 0805a184 */ .word 0x00000000
/* 0805a188 */ .word 0x00000000
/* 0805a18c */ .word 0x00000000

/* 0805a190 */ .word 0x08c71c8c
/* 0805a194 */ .word 0x06008000
/* 0805a198 */ .word 0xffffffff
/* 0805a19c */ .word 0x08c756bc
/* 0805a1a0 */ .word 0x0600f000
/* 0805a1a4 */ .word 0xffffffff
/* 0805a1a8 */ .word 0x08c758bc
/* 0805a1ac */ .word 0x0600f800
/* 0805a1b0 */ .word 0xffffffff
/* 0805a1b4 */ .word 0x00000000
/* 0805a1b8 */ .word 0x00000000
/* 0805a1bc */ .word 0x00000000

/* 0805a1c0 */ .word 0x08c70b4c
/* 0805a1c4 */ .word 0x06008000
/* 0805a1c8 */ .word 0xffffffff
/* 0805a1cc */ .word 0x08c73ea4
/* 0805a1d0 */ .word 0x0600f000
/* 0805a1d4 */ .word 0xffffffff
/* 0805a1d8 */ .word 0x08c7408c
/* 0805a1dc */ .word 0x0600f800
/* 0805a1e0 */ .word 0xffffffff
/* 0805a1e4 */ .word 0x00000000
/* 0805a1e8 */ .word 0x00000000
/* 0805a1ec */ .word 0x00000000

/* 0805a1f0 */ .word 0x08c71b6c
/* 0805a1f4 */ .word 0x06008000
/* 0805a1f8 */ .word 0xffffffff
/* 0805a1fc */ .word 0x08c7534c
/* 0805a200 */ .word 0x0600f000
/* 0805a204 */ .word 0xffffffff
/* 0805a208 */ .word 0x08c75478
/* 0805a20c */ .word 0x0600f800
/* 0805a210 */ .word 0xffffffff
/* 0805a214 */ .word 0x00000000
/* 0805a218 */ .word 0x00000000
/* 0805a21c */ .word 0x00000000

/* 0805a220 */ .word 0x08c71658
/* 0805a224 */ .word 0x06008000
/* 0805a228 */ .word 0xffffffff
/* 0805a22c */ .word 0x08c749d4
/* 0805a230 */ .word 0x0600f000
/* 0805a234 */ .word 0xffffffff
/* 0805a238 */ .word 0x08c74bb0
/* 0805a23c */ .word 0x0600f800
/* 0805a240 */ .word 0xffffffff
/* 0805a244 */ .word 0x00000000
/* 0805a248 */ .word 0x00000000
/* 0805a24c */ .word 0x00000000

/* 0805a250 */ .word 0x08c710e8
/* 0805a254 */ .word 0x06008000
/* 0805a258 */ .word 0xffffffff
/* 0805a25c */ .word 0x08c74210
/* 0805a260 */ .word 0x0600f000
/* 0805a264 */ .word 0xffffffff
/* 0805a268 */ .word 0x08c74404
/* 0805a26c */ .word 0x0600f800
/* 0805a270 */ .word 0xffffffff
/* 0805a274 */ .word 0x00000000
/* 0805a278 */ .word 0x00000000
/* 0805a27c */ .word 0x00000000

/* 0805a280 */ .word 0x08c71e64
/* 0805a284 */ .word 0x06008000
/* 0805a288 */ .word 0xffffffff
/* 0805a28c */ .word 0x08c759cc
/* 0805a290 */ .word 0x0600f000
/* 0805a294 */ .word 0xffffffff
/* 0805a298 */ .word 0x08c75ad0
/* 0805a29c */ .word 0x0600f800
/* 0805a2a0 */ .word 0xffffffff
/* 0805a2a4 */ .word 0x00000000
/* 0805a2a8 */ .word 0x00000000
/* 0805a2ac */ .word 0x00000000

/* 0805a2b0 */ .word 0x08c709a8
/* 0805a2b4 */ .word 0x06008000
/* 0805a2b8 */ .word 0xffffffff
/* 0805a2bc */ .word 0x08c73b6c
/* 0805a2c0 */ .word 0x0600f000
/* 0805a2c4 */ .word 0xffffffff
/* 0805a2c8 */ .word 0x08c73cf8
/* 0805a2cc */ .word 0x0600f800
/* 0805a2d0 */ .word 0xffffffff
/* 0805a2d4 */ .word 0x00000000
/* 0805a2d8 */ .word 0x00000000
/* 0805a2dc */ .word 0x00000000

/* 0805a2e0 */ .word 0x08c70580
/* 0805a2e4 */ .word 0x06008000
/* 0805a2e8 */ .word 0xffffffff
/* 0805a2ec */ .word 0x08c73544
/* 0805a2f0 */ .word 0x0600f000
/* 0805a2f4 */ .word 0xffffffff
/* 0805a2f8 */ .word 0x08c73618
/* 0805a2fc */ .word 0x0600f800
/* 0805a300 */ .word 0xffffffff
/* 0805a304 */ .word 0x00000000
/* 0805a308 */ .word 0x00000000
/* 0805a30c */ .word 0x00000000

/* 0805a310 */ .word 0x08c70490
/* 0805a314 */ .word 0x06008000
/* 0805a318 */ .word 0xffffffff
/* 0805a31c */ .word 0x08c72518
/* 0805a320 */ .word 0x0600f000
/* 0805a324 */ .word 0xffffffff
/* 0805a328 */ .word 0x08c72634
/* 0805a32c */ .word 0x0600f800
/* 0805a330 */ .word 0xffffffff
/* 0805a334 */ .word 0x00000000
/* 0805a338 */ .word 0x00000000
/* 0805a33c */ .word 0x00000000

/* 0805a340 */ .word 0x08c704e8
/* 0805a344 */ .word 0x06008000
/* 0805a348 */ .word 0xffffffff
/* 0805a34c */ .word 0x08c72e4c
/* 0805a350 */ .word 0x0600f000
/* 0805a354 */ .word 0xffffffff
/* 0805a358 */ .word 0x08c7346c
/* 0805a35c */ .word 0x0600f800
/* 0805a360 */ .word 0xffffffff
/* 0805a364 */ .word 0x00000000
/* 0805a368 */ .word 0x00000000
/* 0805a36c */ .word 0x00000000

/* 0805a370 */ .word 0x08c703a8
/* 0805a374 */ .word 0x06008000
/* 0805a378 */ .word 0xffffffff
/* 0805a37c */ .word 0x08c720a0
/* 0805a380 */ .word 0x0600f000
/* 0805a384 */ .word 0xffffffff
/* 0805a388 */ .word 0x08c72400
/* 0805a38c */ .word 0x0600f800
/* 0805a390 */ .word 0xffffffff
/* 0805a394 */ .word 0x00000000
/* 0805a398 */ .word 0x00000000
/* 0805a39c */ .word 0x00000000


/* 0805a3a0 */
.asciz "今の演奏データですが、\nセーブしときますか？"
.balign 4, 0

/* 0805a3cc */ .word 0x0
/* 0805a3d0 */ .word 0x0
/* 0805a3d4 */ .word 0x0
/* 0805a3d8 */ .word 0x1
/* 0805a3dc */ .word 0x2
/* 0805a3e0 */ .word 0x0
/* 0805a3e4 */ .word 0x2
/* 0805a3e8 */ .word 0x1
/* 0805a3ec */ .word 0x1
/* 0805a3f0 */ .word 0x0
/* 0805a3f4 */ .word 0x2
/* 0805a3f8 */ .word 0x1
/* 0805a3fc */ .word 0x2
/* 0805a400 */ .word 0x0
/* 0805a404 */ .word 0x2
/* 0805a408 */ .word 0x0
/* 0805a40c */ .word 0x1
/* 0805a410 */ .word 0x2
/* 0805a414 */ .word 0x1
/* 0805a418 */ .word 0x0
/* 0805a41c */ .word 0x8
/* 0805a420 */ .word 0x10
/* 0805a424 */ .word 0x8
/* 0805a428 */ .word 0x18
/* 0805a42c */ .word 0x0
/* 0805a430 */ .word 0x0
/* 0805a434 */ .word 0xe0
/* 0805a438 */ .word 0x40
/* 0805a43c */ .word 0xe0
/* 0805a440 */ .word 0x80
/* 0805a444 */ .word 0xe0
/* 0805a448 */ .word 0xc0
/* 0805a44c */ .word 0xe0
/* 0805a450 */ .word 0x100
/* 0805a454 */ .word 0xe0
/* 0805a458 */ .word 0x140
/* 0805a45c */ .word 0xe0
/* 0805a460 */ .word 0x180
/* 0805a464 */ .word 0xc0
/* 0805a468 */ .word 0x140
/* 0805a46c */ .word 0xc8
/* 0805a470 */ .word 0x150
/* 0805a474 */ .word 0xd0
/* 0805a478 */ .word 0x160
/* 0805a47c */ .word 0xd8
/* 0805a480 */ .word 0x170
/* 0805a484 */ .word 0x0
/* 0805a488 */ .word 0x140
/* 0805a48c */ .word 0xf8
/* 0805a490 */ .word 0x150
/* 0805a494 */ .word 0xf0
/* 0805a498 */ .word 0x160
/* 0805a49c */ .word 0xe8
/* 0805a4a0 */ .word 0x170
/* 0805a4a4 */ .word 0x44
/* 0805a4a8 */ .word 0xe0
/* 0805a4ac */ .word 0x46
/* 0805a4b0 */ .word 0xa0
/* 0805a4b4 */ .word 0x60
/* 0805a4b8 */ .word 0x60
/* 0805a4bc */ .word 0x7c
/* 0805a4c0 */ .word 0xa0
/* 0805a4c4 */ .word 0x80
/* 0805a4c8 */ .word 0x100
/* 0805a4cc */ .word 0x7c
/* 0805a4d0 */ .word 0x140
/* 0805a4d4 */ .word 0x78
/* 0805a4d8 */ .word 0x180
/* 0805a4dc */ .word 0x74
/* 0805a4e0 */ .word 0x1c0
/* 0805a4e4 */ .word 0x70
/* 0805a4e8 */ .word 0x200
/* 0805a4ec */ .word 0x68
/* 0805a4f0 */ .word 0x240
/* 0805a4f4 */ .word 0x60
/* 0805a4f8 */ .word 0x260
/* 0805a4fc */ .word 0x58
/* 0805a500 */ .word 0x240
/* 0805a504 */ .word 0x50
/* 0805a508 */ .word 0x200
/* 0805a50c */ .word 0x4c
/* 0805a510 */ .word 0x1c0
/* 0805a514 */ .word 0x48
/* 0805a518 */ .word 0x180
/* 0805a51c */ .word 0x44
/* 0805a520 */ .word 0x140
/* 0805a524 */ .word 0x0
/* 0805a528 */ .word 0x1
/* 0805a52c */ .word 0x2
/* 0805a530 */ .word 0x13
/* 0805a534 */ .word 0x0
/* 0805a538 */ .word 0x1
/* 0805a53c */ .word 0x2
/* 0805a540 */ .word 0x13
/* 0805a544 */ .word 0xe
/* 0805a548 */ .word 0x13
/* 0805a54c */ .word 0xf
/* 0805a550 */ .word 0x13
/* 0805a554 */ .word 0x10
/* 0805a558 */ .word 0x13
/* 0805a55c */ .word 0x0
/* 0805a560 */ .word 0x2
/* 0805a564 */ .word 0x0
/* 0805a568 */ .word 0x13
/* 0805a56c */ .word 0x2
/* 0805a570 */ .word 0x13
/* 0805a574 */ .word 0x13
/* 0805a578 */ .word 0x11
/* 0805a57c */ .word 0x13
/* 0805a580 */ .word 0xe
/* 0805a584 */ .word 0x0
/* 0805a588 */ .word 0xe
/* 0805a58c */ .word 0x2
/* 0805a590 */ .word 0xe
/* 0805a594 */ .word 0x1
/* 0805a598 */ .word 0x13
/* 0805a59c */ .word 0x0
/* 0805a5a0 */ .word 0x1
/* 0805a5a4 */ .word 0x2
/* 0805a5a8 */ .word 0x13
/* 0805a5ac */ .word 0xe
/* 0805a5b0 */ .word 0x0
/* 0805a5b4 */ .word 0xe
/* 0805a5b8 */ .word 0x2
/* 0805a5bc */ .word 0x3
/* 0805a5c0 */ .word 0x6
/* 0805a5c4 */ .word 0x0
/* 0805a5c8 */ .word 0x13
/* 0805a5cc */ .word 0x2
/* 0805a5d0 */ .word 0x0

/* 0805a5d4 */ .word 0x088ebbb4
/* 0805a5d8 */ .word 0x00000080
/* 0805a5dc */ .word 0xfffffe00
/* 0805a5e0 */ .word 0x088eba24
/* 0805a5e4 */ .word 0x00000080
/* 0805a5e8 */ .word 0xfffffd00
/* 0805a5ec */ .word 0x088eba7c
/* 0805a5f0 */ .word 0x00000080
/* 0805a5f4 */ .word 0xfffffd00
/* 0805a5f8 */ .word 0x088eba24
/* 0805a5fc */ .word 0x00000080
/* 0805a600 */ .word 0xfffffd00
/* 0805a604 */ .word 0x088ebacc
/* 0805a608 */ .word 0x00000080
/* 0805a60c */ .word 0xfffffb00
/* 0805a610 */ .word 0x088ebb3c
/* 0805a614 */ .word 0x00000080
/* 0805a618 */ .word 0xfffffd00
/* 0805a61c */ .word 0x088ebb84
/* 0805a620 */ .word 0x00000080
/* 0805a624 */ .word 0xfffffc00
/* 0805a628 */ .word 0x088ebb94
/* 0805a62c */ .word 0x00000080
/* 0805a630 */ .word 0xfffffc00
/* 0805a634 */ .word 0x088eba34
/* 0805a638 */ .word 0x00000080
/* 0805a63c */ .word 0x00000100
/* 0805a640 */ .word 0x088eba8c
/* 0805a644 */ .word 0x00000080
/* 0805a648 */ .word 0x00000100
/* 0805a64c */ .word 0x088ebadc
/* 0805a650 */ .word 0x00000080
/* 0805a654 */ .word 0x00000100
/* 0805a658 */ .word 0x088ebb4c
/* 0805a65c */ .word 0x00000080
/* 0805a660 */ .word 0x00000100
/* 0805a664 */ .word 0x088ebba4
/* 0805a668 */ .word 0x00000080
/* 0805a66c */ .word 0x00000100
/* 0805a670 */ .word 0x00000000

/* 0805a674 */
.asciz "しんきろく！"
.balign 4, 0

/* 0805a684 */
.asciz "おつかれさま"
.balign 4, 0

/* 0805a694 */
.asciz "音にあわせて、　Ａボタンを押しましょう。"
.balign 4, 0

/* 0805a6c0 */
.asciz "計測中"
.balign 4, 0

/* 0805a6c8 */
.asciz "計測おわり！ さて、 結果は…"
.balign 4, 0

@ stupid fucking hex escape sequences going to fucking stab whoever invented them
/* 0805a6e8 */
.asciz "\x03\x31\x01\x6d\x05\x30\x01\x34\x44rum Samurai's
\x03\x31\x01\x6d\x05\x30\x01\x34\x01\x52\x42\x61nd LIVE! 

\x03\x30\x01\x73\x05\x31\x01\x35\x01\x4c　　　　　　　　　　♪　コスモダンス
\x03\x30\x01\x73\x05\x31\x01\x35　　　　　　　　　　♪　バリバリ三人衆
\x03\x30\x01\x73\x05\x31\x01\x35　　　　　　　　　　♪　スーパータップ\n\n"
.balign 4, 0

/* 0805a7a8 */
.asciz "\x03\x31\x01\x6d\x05\x30\x01\x34\x44rum Boys LIVE!

\x03\x30\x01\x73\x05\x31\x01\x35　　　　♪　パチパチ三人衆
\x03\x30\x01\x73\x05\x31\x01\x35　　　　♪　タップダンズ
\x03\x30\x01\x73\x05\x31\x01\x35　　　　♪　WISH 君を待てなくて\n\n"
.balign 4, 0

/* 0805a830 */
.asciz "\x03\x31\x01\x6d\x05\x30\x01\x34\x44rum Girls LIVE!

\x03\x30\x01\x73\x05\x31\x01\x35♪　ナイトウォーク
\x03\x30\x01\x73\x05\x31\x01\x35♪　スペースダンス
\x03\x30\x01\x73\x05\x31\x01\x35♪　恋のハニースイ～トエンジェル\n\n"
.balign 4, 0

/* 0805a8ac */
.asciz ""
.balign 4, 0

/* 0805a8b0 */
.asciz ""
.balign 4, 0

/* 0805a8b4 */
.asciz ""
.balign 4, 0

/* 0805a8b8 */
.asciz ""
.balign 4, 0

/* 0805a8bc */
.asciz ""
.balign 4, 0

/* 0805a8c0 */
.asciz "ホレたー！！"
.balign 4, 0

/* 0805a8d0 */
.asciz "イカスッす！！"
.balign 4, 0

/* 0805a8e0 */
.asciz "テクニシャン！"
.balign 4, 0

/* 0805a8f0 */
.asciz "カッコイイ！！"
.balign 4, 0

/* 0805a900 */
.asciz "うまいっス！！"
.balign 4, 0

/* 0805a910 */ .word 0x00000000
/* 0805a914 */ .word 0x00000018
/* 0805a918 */ .word 0x00000018
/* 0805a91c */ .word 0x00000048
/* 0805a920 */ .word 0x00000048
/* 0805a924 */ .word 0x08d11ef4
/* 0805a928 */ .word 0x06008000
/* 0805a92c */ .word 0xffffffff
/* 0805a930 */ .word 0x08d17708
/* 0805a934 */ .word 0x0600e000
/* 0805a938 */ .word 0xffffffff
/* 0805a93c */ .word 0x00000000
/* 0805a940 */ .word 0x00000000
/* 0805a944 */ .word 0x00000000
/* 0805a948 */ .word 0x08d10b60
/* 0805a94c */ .word 0x06008000
/* 0805a950 */ .word 0xffffffff
/* 0805a954 */ .word 0x08d1737c
/* 0805a958 */ .word 0x0600e000
/* 0805a95c */ .word 0xffffffff
/* 0805a960 */ .word 0x00000000
/* 0805a964 */ .word 0x00000000
/* 0805a968 */ .word 0x00000000
/* 0805a96c */ .word 0x08d0ef74
/* 0805a970 */ .word 0x06008000
/* 0805a974 */ .word 0xffffffff
/* 0805a978 */ .word 0x08d17048
/* 0805a97c */ .word 0x0600e000
/* 0805a980 */ .word 0xffffffff
/* 0805a984 */ .word 0x00000000
/* 0805a988 */ .word 0x00000000
/* 0805a98c */ .word 0x00000000
/* 0805a990 */ .word 0x08d0c580
/* 0805a994 */ .word 0x06008000
/* 0805a998 */ .word 0xffffffff
/* 0805a99c */ .word 0x08d16c34
/* 0805a9a0 */ .word 0x0600e000
/* 0805a9a4 */ .word 0xffffffff
/* 0805a9a8 */ .word 0x00000000
/* 0805a9ac */ .word 0x00000000
/* 0805a9b0 */ .word 0x00000000
/* 0805a9b4 */ .word 0x08d0bfc8
/* 0805a9b8 */ .word 0x06008000
/* 0805a9bc */ .word 0xffffffff
/* 0805a9c0 */ .word 0x08d16998
/* 0805a9c4 */ .word 0x0600e000
/* 0805a9c8 */ .word 0xffffffff
/* 0805a9cc */ .word 0x00000000
/* 0805a9d0 */ .word 0x00000000
/* 0805a9d4 */ .word 0x00000000
/* 0805a9d8 */ .word 0x08d0af74
/* 0805a9dc */ .word 0x06008000
/* 0805a9e0 */ .word 0xffffffff
/* 0805a9e4 */ .word 0x08d16648
/* 0805a9e8 */ .word 0x0600e000
/* 0805a9ec */ .word 0xffffffff
/* 0805a9f0 */ .word 0x00000000
/* 0805a9f4 */ .word 0x00000000
/* 0805a9f8 */ .word 0x00000000
/* 0805a9fc */ .word 0x00000000
/* 0805aa00 */ .word 0x00000003
/* 0805aa04 */ .word 0x00000003
/* 0805aa08 */ .word 0x00000002
/* 0805aa0c */ .word 0x00000003
/* 0805aa10 */ .word 0x00000003
/* 0805aa14 */ .word 0x00000003
/* 0805aa18 */ .word 0x00000002
/* 0805aa1c */ .word 0x00000003
/* 0805aa20 */ .word 0x00000060
/* 0805aa24 */ .word 0x00000080
/* 0805aa28 */ .word 0x000000c0
/* 0805aa2c */ .word 0x00000100
/* 0805aa30 */ .word 0x00000200
/* 0805aa34 */ .word 0x00000400
/* 0805aa38 */ .word 0x00000600
/* 0805aa3c */ .word 0x00000800
/* 0805aa40 */ .word 0xfffffe00
/* 0805aa44 */ .word 0xfffffd80
/* 0805aa48 */ .word 0xfffffd00
/* 0805aa4c */ .word 0xfffffd00
/* 0805aa50 */ .word 0xfffffc00
/* 0805aa54 */ .word 0xfffffc80
/* 0805aa58 */ .word 0xfffffb00
/* 0805aa5c */ .word 0xfffffc00
/* 0805aa60 */ .word 0x00000010
/* 0805aa64 */ .word 0x00000020
/* 0805aa68 */ .word 0x00000010
/* 0805aa6c */ .word 0x00000020
/* 0805aa70 */ .word 0x00000018
/* 0805aa74 */ .word 0x00000018
/* 0805aa78 */ .word 0x00000018
/* 0805aa7c */ .word 0x00000018
/* 0805aa80 */ .word 0x00000018
/* 0805aa84 */ .word 0x0000000c
/* 0805aa88 */ .word 0x0000000c
/* 0805aa8c */ .word 0x00000000
/* 0805aa90 */ .word 0x00000018
/* 0805aa94 */ .word 0x0000000c
/* 0805aa98 */ .word 0x0000000c
/* 0805aa9c */ .word 0x0000000c
/* 0805aaa0 */ .word 0x0000d800
/* 0805aaa4 */ .word 0x00014000
/* 0805aaa8 */ .word 0x0001e000
/* 0805aaac */ .word 0x00028000
/* 0805aab0 */ .word 0x0000004c
/* 0805aab4 */ .word 0x0000006c
/* 0805aab8 */ .word 0x00000084
/* 0805aabc */ .word 0x000000a4
/* 0805aac0 */ .word 0x00000048
/* 0805aac4 */ .word 0x00000068
/* 0805aac8 */ .word 0x00000088
/* 0805aacc */ .word 0x000000a8
/* 0805aad0 */ .word 0x00000060
/* 0805aad4 */ .word 0x00000078
/* 0805aad8 */ .word 0x00000090
/* 0805aadc */ .word 0xffffffc0
/* 0805aae0 */ .word 0x0000005a
/* 0805aae4 */ .word 0x0000006e
/* 0805aae8 */ .word 0x00000082
/* 0805aaec */ .word 0x00000098

/* 0805aaf0 */ .word s_heat_v_anatagaMidiData
/* 0805aaf4 */ .word s_heat_v_anatataraMidiData
/* 0805aaf8 */ .word s_heat_v_kimigaMidiData
/* 0805aafc */ .word 0x00000000

/* 0805ab00 */ .word s_heat_v_jituhaneMidiData
/* 0805ab04 */ .word s_heat_v_watasineMidiData
/* 0805ab08 */ .word s_heat_v_watasitaraMidiData
/* 0805ab0c */ .word 0x00000000

/* 0805ab10 */ .word s_heat_v_okubyoMidiData
/* 0805ab14 */ .word s_heat_v_majimeMidiData
/* 0805ab18 */ .word s_heat_v_kouittaMidiData
/* 0805ab1c */ .word 0x00000000

/* 0805ab20 */ .word s_heat_v_dojiMidiData
/* 0805ab24 */ .word s_heat_v_sugoiMidiData
/* 0805ab28 */ .word s_heat_v_koumietemoMidiData
/* 0805ab2c */ .word 0x00000000

/* 0805ab30 */ .word s_heat_v_demoMidiData
/* 0805ab34 */ .word s_heat_v_yappariMidiData
/* 0805ab38 */ .word s_heat_v_dakedoMidiData
/* 0805ab3c */ .word 0x00000000

/* 0805ab40 */ .word s_heat_v_sukiMidiData
/* 0805ab44 */ .word s_heat_v_kiraiMidiData
/* 0805ab48 */ .word s_heat_v_sekiMidiData
/* 0805ab4c */ .word 0x00000000

/* 0805ab50 */ 
.asciz "きほんが　できてない。"
.balign 4, 0

/* 0805ab68 */
.asciz ""
.balign 4, 0

/* 0805ab6c */
.asciz "つづけざまは　ニガテみたいだね。"
.balign 4, 0

/* 0805ab90 */ 
.asciz "れんぞくパンチに　キレがある！"
.balign 4, 0

/* 0805abb0 */ 
.asciz "さいご キマってた！"
.balign 4, 0

/* 0805abc4 */ 
.asciz "\nノるのを　忘れずにネ！"
.balign 4, 0

/* 0805abdc */ 
.asciz "師匠のおことば"
.balign 4, 0

/* 0805abec */ 
.asciz "ようこそ！\nカラテ家のゲームへ。"
.balign 4, 0

/* 0805ac0c */ 
.asciz "このゲームは、Aボタンで「モノ」をパンチするだけだけどもタイミングが超シビアです。"
.balign 4, 0

/* 0805ac60 */ 
.asciz "まずは、とんでくる\n「モノ」を　ビシッ　と\nパンチしてみよう。"
.balign 4, 0

/* 0805aca0 */ 
.asciz "どう？\nタイミングのシビアさ、\nわかってもらえたかな？"
.balign 4, 0

/* 0805acd8 */ 
.asciz "つぎは、音楽にあわせて\nパンチしてみよう！"
.balign 4, 0

/* 0805ad04 */ 
.asciz "どうですか？\n音楽にノると、やりやすくないですか？"
.balign 4, 0

/* 0805ad38 */ 
.asciz "では、そんなカンジで\n音楽にノッて「モノ」を\nビシビシ　たたきましょう！"
.balign 4, 0

/* 0805ad80 */ 
.asciz "\n本番、スタート！！"
.balign 4, 0

/* 0805ad94 */ 
.asciz "きほんが　できてませんね。"
.balign 4, 0

/* 0805adb0 */ 
.asciz ""
.balign 4, 0

/* 0805adb4 */ 
.asciz "ウラが　苦手みたいだね。"
.balign 4, 0

/* 0805add0 */ 
.asciz "ウラが　サイコーです！"
.balign 4, 0

/* 0805ade8 */ 
.asciz "ゆったりするとこが　ヘンだ。"
.balign 4, 0

/* 0805ae08 */ 
.asciz "流れが　みえてる！"
.balign 4, 0

/* 0805ae1c */ 
.asciz "速いのが　カンペキ！"
.balign 4, 0

/* 0805ae34 */ 
.asciz "仲間のこえ"
.balign 4, 0

/* 0805ae40 */ 
.asciz "きほんが　できてないね。"
.balign 4, 0

/* 0805ae5c */ 
.asciz ""
.balign 4, 0

/* 0805ae60 */ 
.asciz "ウラが　ニガテみたいだね。"
.balign 4, 0

/* 0805ae7c */ 
.asciz "ウラが　サイコー！"
.balign 4, 0

/* 0805ae90 */ 
.asciz "ゆったりするとこが　ヘンだ。"
.balign 4, 0

/* 0805aeb0 */ 
.asciz "ながれが　見えてる！"
.balign 4, 0

/* 0805aec8 */ 
.asciz "いそがしくなると　ダメだねぇ…"
.balign 4, 0

/* 0805aee8 */ 
.asciz "いそがしいところが　カンペキ！"
.balign 4, 0

/* 0805af08 */ 
.asciz "なかまの声"
.balign 4, 0

/* 0805af14 */ 
.asciz "オレたち、パチパチ三人衆"
.balign 4, 0

/* 0805af30 */ 
.asciz "等間隔で手拍子をするヨ"
.balign 4, 0

/* 0805af48 */ 
.asciz "あなたは３つめ担当です"
.balign 4, 0

/* 0805af60 */ 
.asciz "では、練習してみましょう"
.balign 4, 0

/* 0805af7c */ 
.asciz "( Ａボタンで３つめをたたいてネ )"
.balign 4, 0

/* 0805afa0 */ 
.asciz "ＯＫ"
.balign 4, 0

/* 0805afa8 */ 
.asciz "そんなかんじ"
.balign 4, 0

/* 0805afb8 */ 
.asciz "少し、速くしてみます"
.balign 4, 0 

/* 0805afd0 */ 
.asciz "OK"
.balign 4, 0

/* 0805afd4 */ 
.asciz "それでは、本番です！"
.balign 4, 0

/* 0805afec */ 
.asciz "ちゃんと　運んでくれないとダメ。"
.balign 4, 0

/* 0805b010 */ 
.asciz ""
.balign 4, 0

/* 0805b014 */ 
.asciz "左手が　あそんでるヨ。"
.balign 4, 0

/* 0805b02c */ 
.asciz "左手が　しっかり仕事してるネ！"
.balign 4, 0

/* 0805b04c */ 
.asciz "応用力を　みにつけよう。"
.balign 4, 0

/* 0805b068 */ 
.asciz "リズミカルな　仕事ぶりだ！！"
.balign 4, 0

/* 0805b088 */ 
.asciz "工場長から"
.balign 4, 0

/* 0805b094 */ 
.asciz "きほんが　できてないね。"
.balign 4, 0

/* 0805b0b0 */ 
.asciz ""
.balign 4, 0

/* 0805b0b4 */ 
.asciz "ウラが　パッと　してない。"
.balign 4, 0

/* 0805b0d0 */ 
.asciz "ウラが　バッチリだ！"
.balign 4, 0

/* 0805b0e8 */ 
.asciz "ちょっと　ややこしくなると　ダメね。"
.balign 4, 0

/* 0805b110 */ 
.asciz "左右の手が　独立してないヨ。"
.balign 4, 0

/* 0805b130 */ 
.asciz "左右の手が　独立している！"
.balign 4, 0

/* 0805b14c */ 
.asciz "工場長から"
.balign 4, 0

/* 0805b158 */ 
.asciz "おっこちちゃったね．．．"
.balign 4, 0

/* 0805b174 */ 
.asciz "ゴール　おめでとう！！"
.balign 4, 0

/* 0805b18c */ 
.asciz "ノリが　ガタガタです…"
.balign 4, 0

/* 0805b1a4 */ 
.asciz "キープ　できてます！"
.balign 4, 0

/* 0805b1bc */ 
.asciz "わりと　キメを　はずしたよね。"
.balign 4, 0

/* 0805b1dc */ 
.asciz "キメが　バッチシだ！"
.balign 4, 0

/* 0805b1f4 */ 
.asciz "星の声"
.balign 4, 0

/* 0805b1fc */ 
.asciz "\x05\x31\x01\x35音楽にノって　ジャンプしてネ！"
.balign 4, 0

/* 0805b220 */ 
.asciz "\x05\x31\x01\x35音楽が おわる前に 星でいっぱいにしてネ！"
.balign 4, 0

/* 0805b250 */ 
.asciz "\x05\x31\x01\x35もうすぐ　おわりだヨ！"
.balign 4, 0

/* 0805b26c */ 
.asciz "おっこちちゃったね．．．"
.balign 4, 0

/* 0805b288 */ 
.asciz "ゴール　おめでとう！！"
.balign 4, 0

/* 0805b2a0 */ 
.asciz "ノリが　ガタガタです…"
.balign 4, 0

/* 0805b2b8 */ 
.asciz "キープ　できてます！"
.balign 4, 0

/* 0805b2d0 */ 
.asciz "わりと　キメを　はずしたよね。"
.balign 4, 0

/* 0805b2f0 */ 
.asciz "キメが　バッチシだ！"
.balign 4, 0

/* 0805b308 */ 
.asciz "星の声"
.balign 4, 0

/* 0805b310 */ 
.asciz "\x05\x31\x01\x35音楽にノって　ジャンプしてネ！"
.balign 4, 0

/* 0805b334 */ 
.asciz "\x05\x31\x01\x35ビリビリウオに　当たらないでネ！"
.balign 4, 0

/* 0805b35c */ 
.asciz "\x05\x31\x01\x35音楽が おわる前に 星でいっぱいにしてネ！"
.balign 4, 0

/* 0805b38c */ 
.asciz "\x05\x31\x01\x35もうすぐ　おわりだヨ！"
.balign 4, 0

/* 0805b3a8 */ 
.asciz "きほんが　できてませんね。"
.balign 4, 0

/* 0805b3c4 */ 
.asciz ""
.balign 4, 0

/* 0805b3c8 */ 
.asciz "速いのに　ついていけてないな。"
.balign 4, 0

/* 0805b3e8 */ 
.asciz "速いのは　バッチシだね！"
.balign 4, 0

/* 0805b404 */ 
.asciz "スローで　乱れてるね。"
.balign 4, 0 

/* 0805b41c */ 
.asciz "スローのとき　おちついている！"
.balign 4, 0 

/* 0805b43c */ 
.asciz "あそこは　おさえてほしかった．．．"
.balign 4, 0

/* 0805b460 */ 
.asciz "超スローでも　どうじてない！"
.balign 4, 0

/* 0805b480 */ 
.asciz "師匠のおことば"
.balign 4, 0

/* 0805b490 */ 
.asciz "しっかり　ぬいてください。"
.balign 4, 0

/* 0805b4ac */ 
.asciz ""
.balign 4, 0

/* 0805b4b0 */ 
.asciz "ながい毛が　処理できてません。"
.balign 4, 0

/* 0805b4d0 */ 
.asciz "ながい毛が　すっきりです！"
.balign 4, 0

/* 0805b4ec */ 
.asciz "多いところが　ぬきのこしすぎです。"
.balign 4, 0

/* 0805b510 */ 
.asciz "多かったところ、ツルツルです！"
.balign 4, 0

/* 0805b530 */ 
.asciz "ムダ毛　チェック"
.balign 4, 0

/* 0805b544 */ 
.asciz "ようこそ。"
.balign 4, 0

/* 0805b550 */ 
.asciz "Ａボタン、または\x8f\x5c字ボタンで　毛をぬいてネ！" 
.balign 4, 0

/* 0805b580 */ 
.asciz "\x05\x30\x01\x34\x03\x31\x01\x6dＯＫ"
.balign 4, 0

/* 0805b590 */ 
.asciz "\x05\x34\x01\x38\x03\x30\x01\x73まきヒゲは　ボタンを長く押して引っぱってネ。"
.balign 4, 0

/* 0805b5c8 */ 
.asciz "\x05\x34\x01\x38\x03\x30\x01\x73多いときは、両手でするとラクだヨ。"
.balign 4, 0

/* 0805b5f4 */ 
.asciz "\x05\x34\x01\x38\x03\x30\x01\x73では、ほんばんです。"
.balign 4, 0

/* 0805b614 */ 
.asciz "しっかり　ぬいてください。"
.balign 4, 0

/* 0805b630 */ 
.asciz ""
.balign 4, 0

/* 0805b634 */ 
.asciz "ながい毛が　処理できてません。"
.balign 4, 0

/* 0805b654 */ 
.asciz "ながい毛が　すっきりです！"
.balign 4, 0

/* 0805b670 */ 
.asciz "多いところが　ぬきのこしすぎです。"
.balign 4, 0

/* 0805b694 */ 
.asciz "多かったところ、　ツルツルです！"
.balign 4, 0

/* 0805b6b8 */ 
.asciz "超すばやい　ぬきっぷりです！　エライ！！"
.balign 4, 0

/* 0805b6e4 */ 
.asciz "ムダ毛　チェック"
.balign 4, 0

/* 0805b6f8 */ 
.asciz "当たりそこねが　多かったですね。"
.balign 4, 0

/* 0805b71c */ 
.asciz "とても　あざやかな退治でした！"
.balign 4, 0

/* 0805b73c */ 
.asciz "けっこう　にがしちゃいましたねぇ…"
.balign 4, 0

/* 0805b760 */ 
.asciz ""
.balign 4, 0

/* 0805b764 */ 
.asciz "助手から　ひとこと"
.balign 4, 0

/* 0805b778 */ 
.asciz "風のウワサ"
.balign 4, 0

/* 0805b784 */ 
.asciz "きほんが　できてないよね。"
.balign 4, 0

/* 0805b7a0 */ 
.asciz ""
.balign 4, 0

/* 0805b7a4 */ 
.asciz "連続ジャンプで　ミスが目立ちすぎよね。"
.balign 4, 0

/* 0805b7cc */ 
.asciz "連続ジャンプが　ファンタスティックだわ！"
.balign 4, 0

/* 0805b7f8 */ 
.asciz "いい判断だったよね！"
.balign 4, 0

/* 0805b810 */ 
.asciz "かぜのウワサ"
.balign 4, 0

/* 0805b820 */ 
.asciz "きほんが　できてないよね。"
.balign 4, 0

/* 0805b83c */ 
.asciz ""
.balign 4, 0

/* 0805b840 */ 
.asciz "連続ジャンプで　ミスが目立ちすぎよね。"
.balign 4, 0

/* 0805b868 */ 
.asciz "連続ジャンプが　ファンタスティックだわ！"
.balign 4, 0

/* 0805b894 */ 
.asciz "おちついて判断しないとダメだよね。"
.balign 4, 0

/* 0805b8b8 */ 
.asciz "いい判断だったよね！"
.balign 4, 0

/* 0805b8d0 */ 
.asciz "かぜのウワサ"
.balign 4, 0

/* 0805b8e0 */ 
.asciz "ちゃんと　守ってよネ…"
.balign 4, 0

/* 0805b8f8 */ 
.asciz ""
.balign 4, 0

/* 0805b8fc */ 
.asciz "すばやい　剣さばきが　みじゅくである。"
.balign 4, 0

/* 0805b924 */ 
.asciz "すばやい　剣さばきであった！"
.balign 4, 0

/* 0805b944 */ 
.asciz "「四連矢」　に　コテンパンである。"
.balign 4, 0

/* 0805b968 */ 
.asciz "「四連矢返し」　が　おみごと！"
.balign 4, 0

/* 0805b988 */ 
.asciz "トノから　ひとこと"
.balign 4, 0

/* 0805b99c */ 
.asciz "ちゃんと　守ってよネ…"
.balign 4, 0

/* 0805b9b4 */ 
.asciz ""
.balign 4, 0

/* 0805b9b8 */ 
.asciz "すばやい　棒さばきが　みじゅくね。"
.balign 4, 0

/* 0805b9dc */ 
.asciz "すばやい　棒さばきだったわ！"
.balign 4, 0

/* 0805b9fc */ 
.asciz "「五連石」　に　コテンパンね。"
.balign 4, 0

/* 0805ba1c */ 
.asciz "「五連石返し」　が　おみごとよ！"
.balign 4, 0

/* 0805ba40 */ 
.asciz "すごい！　いっしゅんで２コの石を！！"
.balign 4, 0

/* 0805ba68 */ 
.asciz "カノジョの　ひとこと"
.balign 4, 0

/* 0805ba80 */ 
.asciz "きほんが　できてませんね。"
.balign 4, 0

/* 0805ba9c */ 
.asciz ""
.balign 4, 0

/* 0805baa0 */ 
.asciz "音が消えると　あせるみたい．．．"
.balign 4, 0

/* 0805bac4 */ 
.asciz "音が消えても　おちついている！"
.balign 4, 0

/* 0805bae4 */ 
.asciz "ちゃんと　カウント　しようね。"
.balign 4, 0

/* 0805bb04 */ 
.asciz "体内カウント　バッチシだ！"
.balign 4, 0

/* 0805bb20 */ 
.asciz "超ゆっくりでも　すばらしい！"
.balign 4, 0

/* 0805bb40 */ 
.asciz "その　しろいヤツを、"
.balign 4, 0

/* 0805bb58 */ 
.asciz "やっつけよう！"
.balign 4, 0

/* 0805bb68 */ 
.asciz "タイミングは…"
.balign 4, 0

/* 0805bb78 */ 
.asciz "　　　ココ！"
.balign 4, 0

/* 0805bb88 */ 
.asciz "よく　みててネ！"
.balign 4, 0

/* 0805bb9c */ 
.asciz "いくよ…"
.balign 4, 0

/* 0805bba8 */ 
.asciz "では　ほんばん　スタートです"
.balign 4, 0

/* 0805bbc8 */ 
.asciz "雨のささやき"
.balign 4, 0

/* 0805bbd8 */ 
.asciz "きほんが　できてませんね。"
.balign 4, 0

/* 0805bbf4 */ 
.asciz ""
.balign 4, 0

/* 0805bbf8 */ 
.asciz "音が消えると　あせるみたい．．．"
.balign 4, 0

/* 0805bc1c */ 
.asciz "音が消えても　おちついている！"
.balign 4, 0

/* 0805bc3c */ 
.asciz "ちゃんと　カウント　しようね。"
.balign 4, 0

/* 0805bc5c */ 
.asciz "体内カウント　バッチシだ！"
.balign 4, 0

/* 0805bc78 */ 
.asciz "超ゆっくりでも　すばらしい！"
.balign 4, 0

/* 0805bc98 */ 
.asciz "雨のささやき"
.balign 4, 0

/* 0805bca8 */ 
.asciz "きほんが　できてませんな。"
.balign 4, 0

/* 0805bcc4 */ 
.asciz ""
.balign 4, 0

/* 0805bcc8 */ 
.asciz "てきが見えないと　ダメっぽい．．．"
.balign 4, 0

/* 0805bcec */ 
.asciz "てきが見えなくても　イイカンジ！"
.balign 4, 0

/* 0805bd10 */ 
.asciz "速いのが　ニガテみたい．．．"
.balign 4, 0

/* 0805bd30 */ 
.asciz "速いテンポが　うまくとれてる！"
.balign 4, 0

/* 0805bd50 */ 
.asciz "スローが　おみごと！"
.balign 4, 0

/* 0805bd68 */ 
.asciz "てき　を　きれ！"
.balign 4, 0

/* 0805bd7c */ 
.asciz "ム．．．"
.balign 4, 0

/* 0805bd88 */ 
.asciz "キリ　が　でてきたな．．．"
.balign 4, 0

/* 0805bda4 */ 
.asciz "２ひき．．．！？"
.balign 4, 0

/* 0805bdb8 */ 
.asciz "見物人のはなし"
.balign 4, 0

/* 0805bdc8 */ 
.asciz "きほんが　できてません。"
.balign 4, 0

/* 0805bde4 */ 
.asciz ""
.balign 4, 0

/* 0805bde8 */ 
.asciz "タメが　かっこわるい。"
.balign 4, 0

/* 0805be00 */ 
.asciz "タメが　しっかりしている！"
.balign 4, 0

/* 0805be1c */ 
.asciz "画面を頼りすぎです。"
.balign 4, 0

/* 0805be34 */ 
.asciz "見えなくて　できている！"
.balign 4, 0

/* 0805be50 */ 
.asciz "スピードに　やられてます。"
.balign 4, 0

/* 0805be6c */ 
.asciz "速いのがカンペキ！"
.balign 4, 0

/* 0805be80 */ 
.asciz "きほんが　できてません。"
.balign 4, 0

/* 0805be9c */ 
.asciz ""
.balign 4, 0

/* 0805bea0 */ 
.asciz "タメが　かっこわるい。"
.balign 4, 0

/* 0805beb8 */ 
.asciz "タメが　しっかりしている！"
.balign 4, 0

/* 0805bed4 */ 
.asciz "画面を頼りすぎです。"
.balign 4, 0

/* 0805beec */ 
.asciz "見えなくて　できている！"
.balign 4, 0

/* 0805bf08 */ 
.asciz "スピードに　やられてます。"
.balign 4, 0

/* 0805bf24 */ 
.asciz "速いのがカンペキ！"
.balign 4, 0

/* 0805bf38 */ 
.asciz "きほんが　できてません。"
.balign 4, 0

/* 0805bf54 */ 
.asciz ""
.balign 4, 0

/* 0805bf58 */ 
.asciz "タメが　かっこわるい。"
.balign 4, 0

/* 0805bf70 */ 
.asciz "タメが　しっかりしている！"
.balign 4, 0

/* 0805bf8c */ 
.asciz "見た目に　たよりすぎです。"
.balign 4, 0

/* 0805bfa8 */ 
.asciz "見えなくても　できている！"
.balign 4, 0

/* 0805bfc4 */ 
.asciz "スピードに　やられてます。"
.balign 4, 0

/* 0805bfe0 */ 
.asciz "速いのが　カンペキ！"
.balign 4, 0

/* 0805bff8 */
.asciz "つうしんぼ"
.balign 4, 0

/* 0805c004 */ 
.asciz "きほんが　できてません。"
.balign 4, 0

/* 0805c020 */ 
.asciz "" 
.balign 4, 0

/* 0805c024 */ 
.asciz "タメが　かっこわるい。"
.balign 4, 0

/* 0805c03c */ 
.asciz "タメが　しっかりしている！"
.balign 4, 0

/* 0805c058 */ 
.asciz "見た目に　たよりすぎです。"
.balign 4, 0

/* 0805c074 */ 
.asciz "見えなくても　できている！"
.balign 4, 0

/* 0805c090 */ 
.asciz "スピードに　やられてます。"
.balign 4, 0

/* 0805c0ac */ 
.asciz "速いのが　カンペキ！"
.balign 4, 0

/* 0805c0c4 */ 
.asciz "つうしんぼ"
.balign 4, 0

/* 0805c0d0 */ 
.asciz "きほんが　できてませんね。"
.balign 4, 0

/* 0805c0ec */ 
.asciz "適応\x94\x5c力　良いです！" 
.balign 4, 0

/* 0805c104 */ 
.asciz "判断力が欠けてます。"
.balign 4, 0

/* 0805c11c */ 
.asciz "たいした判断力だ！"
.balign 4, 0

/* 0805c130 */ 
.asciz "もっと集中しよう。"
.balign 4, 0

/* 0805c144 */ 
.asciz "すごい集中力ですよ！"
.balign 4, 0

/* 0805c15c */ 
.asciz "ツメが甘いです。"
.balign 4, 0

/* 0805c170 */ 
.asciz ""
.balign 4, 0

/* 0805c174 */ 
.asciz "ほんばん　スタート！"
.balign 4, 0

/* 0805c18c */ 
.asciz "チェックしちゃうもんね。"
.balign 4, 0

/* 0805c1a8 */ 
.asciz "おつかれちゃん。"
.balign 4, 0

/* 0805c1bc */ 
.asciz "タップしましょ！"
.balign 4, 0

/* 0805c1d0 */ 
.asciz "まず、　れんしゅう。"
.balign 4, 0

/* 0805c1e8 */ 
.asciz "マネしてね。"
.balign 4, 0

/* 0805c1f8 */
.asciz "ＯＫ！　つぎでーす。"
.balign 4, 0

/* 0805c210 */ 
.asciz "ＯＫ！　まだあるヨ。"
.balign 4, 0

/* 0805c228 */ 
.asciz "ＯＫ！　ラストです。"
.balign 4, 0

/* 0805c240 */ 
.asciz "ＯＫ！"
.balign 4, 0

/* 0805c248 */ 
.asciz "きほんが　できてないかも…"
.balign 4, 0

/* 0805c264 */ 
.asciz "なじんでるネ！"
.balign 4, 0

/* 0805c274 */ 
.asciz "判断力が　たりないかも…"
.balign 4, 0

/* 0805c290 */ 
.asciz "たいした　判断力だヨ！"
.balign 4, 0

/* 0805c2a8 */ 
.asciz "もっと集中しよう。"
.balign 4, 0

/* 0805c2bc */ 
.asciz "すごい集中力だヨ\x81\x60！" 
.balign 4, 0

/* 0805c2d4 */ 
.asciz "ツメが甘いかも。"
.balign 4, 0

/* 0805c2e8 */ 
.asciz ""
.balign 4, 0

/* 0805c2ec */ 
.asciz "サルの　ひとこと"
.balign 4, 0

/* 0805c300 */ 
.asciz "ほんばん　スタート！"
.balign 4, 0

/* 0805c318 */ 
.asciz "チェックしちゃうもんね。"
.balign 4, 0

/* 0805c334 */ 
.asciz "おつかれちゃん。"
.balign 4, 0

/* 0805c348 */ 
.asciz "タップしましょ！"
.balign 4, 0

/* 0805c35c */ 
.asciz "まず、　れんしゅう。"
.balign 4, 0

/* 0805c374 */ 
.asciz "マネしてね。"
.balign 4, 0

/* 0805c384 */ 
.asciz "ＯＫ！　つぎでーす。"
.balign 4, 0

/* 0805c39c */ 
.asciz "ＯＫ！　まだあるヨ。"
.balign 4, 0

/* 0805c3b4 */ 
.asciz "ＯＫ！　ラストです。"
.balign 4, 0

/* 0805c3cc */ 
.asciz "ＯＫ！"
.balign 4, 0

/* 0805c3d4 */ 
.asciz "レッスン１が　イマイチ。"
.balign 4, 0

/* 0805c3f0 */ 
.asciz "レッスン１は　バッチリ！"
.balign 4, 0

/* 0805c40c */ 
.asciz "レッスン２が　イマイチ。"
.balign 4, 0

/* 0805c428 */ 
.asciz "レッスン２は　バッチリ！"
.balign 4, 0

/* 0805c444 */ 
.asciz "レッスン３が　イマイチ。"
.balign 4, 0

/* 0805c460 */ 
.asciz "レッスン３は　バッチリ！"
.balign 4, 0

/* 0805c47c */ 
.asciz "レッスン４が　イマイチ。"
.balign 4, 0

/* 0805c498 */ 
.asciz "レッスン４は　バッチリ！"
.balign 4, 0

/* 0805c4b4 */ 
.asciz "あしおとに　あわせて"
.balign 4, 0

/* 0805c4cc */ 
.asciz "すきなボタンを　おしてね。"
.balign 4, 0

/* 0805c4e8 */ 
.asciz "レッスン１　「ナミアシ」"
.balign 4, 0

/* 0805c504 */ 
.asciz ""
.balign 4, 0

/* 0805c508 */ 
.asciz "ＯＫ！　つぎいきます。"
.balign 4, 0

/* 0805c520 */ 
.asciz "レッスン２　「ハヤアシ」"
.balign 4, 0

/* 0805c53c */ 
.asciz "レッスン３　「カケアシ」"
.balign 4, 0

/* 0805c558 */ 
.asciz "ＯＫ！　さいごです。"
.balign 4, 0

/* 0805c570 */ 
.asciz "レッスン４　「シュウホ」"
.balign 4, 0

/* 0805c58c */ 
.asciz "ＯＫ！　おつかれさま！"
.balign 4, 0

/* 0805c5a4 */ 
.asciz "レッスン１が　イマイチ。"
.balign 4, 0

/* 0805c5c0 */ 
.asciz "レッスン１は　バッチリ！"
.balign 4, 0

/* 0805c5dc */ 
.asciz "レッスン２が　イマイチ。"
.balign 4, 0

/* 0805c5f8 */ 
.asciz "レッスン２は　バッチリ！"
.balign 4, 0

/* 0805c614 */
.asciz "レッスン３が　イマイチ。"
.balign 4, 0

/* 0805c630 */ 
.asciz "レッスン３は　バッチリ！"
.balign 4, 0

/* 0805c64c */ 
.asciz "レッスン４が　イマイチ。"
.balign 4, 0

/* 0805c668 */ 
.asciz "レッスン４は　バッチリ！"
.balign 4, 0

/* 0805c684 */ 
.asciz "あしおとに　あわせて"
.balign 4, 0

/* 0805c69c */ 
.asciz "すきなボタンを　おしてね。"
.balign 4, 0

/* 0805c6b8 */ 
.asciz "レッスン１　「ナミアシ」"
.balign 4, 0

/* 0805c6d4 */ 
.asciz ""
.balign 4, 0

/* 0805c6d8 */ 
.asciz "ＯＫ！　つぎいきます。"
.balign 4, 0

/* 0805c6f0 */ 
.asciz "レッスン２　「ハヤアシ」"
.balign 4, 0

/* 0805c70c */ 
.asciz "レッスン３　「カケアシ」"
.balign 4, 0

/* 0805c728 */ 
.asciz "ＯＫ！　さいごです。"
.balign 4, 0

/* 0805c740 */ 
.asciz "レッスン４　「シュウホ」"
.balign 4, 0

/* 0805c75c */ 
.asciz "ＯＫ！　おつかれさま！"
.balign 4, 0

/* 0805c774 */ 
.asciz "きほんが　できてないな。"
.balign 4, 0

/* 0805c790 */ 
.asciz "なかなか　よろしい！"
.balign 4, 0

/* 0805c7a8 */ 
.asciz "判断力が欠けてるぞぅ。"
.balign 4, 0

/* 0805c7c0 */ 
.asciz "すばらしい判断力だ！"
.balign 4, 0

/* 0805c7d8 */ 
.asciz "もっと　ウデを　みがこう。"
.balign 4, 0

/* 0805c7f4 */ 
.asciz "とても　テクニカルだ！"
.balign 4, 0

/* 0805c80c */ 
.asciz "隊長の判断"
.balign 4, 0

/* 0805c818 */ 
.asciz "しゅつどう！！"
.balign 4, 0

/* 0805c828 */ 
.asciz "れんしゅうを　はじめる！"
.balign 4, 0

/* 0805c844 */
.asciz "では　ほんばんだ！"
.balign 4, 0

/* 0805c858 */ 
.asciz "きほんが　できてないな。"
.balign 4, 0

/* 0805c874 */ 
.asciz "なかなか　よろしい！"
.balign 4, 0

/* 0805c88c */ 
.asciz ""
.balign 4, 0

/* 0805c890 */ 
.asciz "すばらしい判断力だ！"
.balign 4, 0

/* 0805c8a8 */ 
.asciz "隊長の判断"
.balign 4, 0

/* 0805c8b4 */ 
.asciz "しゅつどう！！"
.balign 4, 0

/* 0805c8c4 */ 
.asciz "れんしゅうを　はじめる！"
.balign 4, 0

/* 0805c8e0 */ 
.asciz "では　ほんばんだ！"
.balign 4, 0

/* 0805c8f4 */ 
.asciz "きほんが　できてなーい！"
.balign 4, 0

/* 0805c910 */ 
.asciz "なかなか　よろしいですヨ！"
.balign 4, 0

/* 0805c92c */ 
.asciz "判断力が　欠けてるぅー。"
.balign 4, 0

/* 0805c948 */ 
.asciz "すばらしい判断力だネ\x81\x60！" 
.balign 4, 0

/* 0805c964 */ 
.asciz "もっと　ウデを　みがいたら\x81\x60？" 
.balign 4, 0

/* 0805c984 */ 
.asciz "とても　テクニカルでーす！"
.balign 4, 0

/* 0805c9a0 */ 
.asciz "リーダーの感想"
.balign 4, 0

/* 0805c9b0 */ 
.asciz "修行が足りないようね。"
.balign 4, 0

/* 0805c9c8 */ 
.asciz "ワルツに　ノれているわ！"
.balign 4, 0

/* 0805c9e4 */ 
.asciz "目に　たよりすぎだね。"
.balign 4, 0

/* 0805c9fc */ 
.asciz "「間」を　ちゃんと　とれてるわ！"
.balign 4, 0

/* 0805ca20 */ 
.asciz "大魔道師の　おつげ"
.balign 4, 0

/* 0805ca34 */ 
.asciz "まだまだです。"
.balign 4, 0

/* 0805ca44 */ 
.asciz "かなり、　サイコーでーす！"
.balign 4, 0

/* 0805ca60 */ 
.asciz "はんだん　りょくが　かけてます。"
.balign 4, 0

/* 0805ca84 */ 
.asciz "すばらしい　はんだん　りょくだ！"
.balign 4, 0

/* 0805caa8 */ 
.asciz "もっと　ウデを　みがこう。"
.balign 4, 0

/* 0805cac4 */ 
.asciz "とても　テクニカルだ！"
.balign 4, 0

/* 0805cadc */ 
.asciz "なぞのリズム組織から通達"
.balign 4, 0

/* 0805caf8 */ 
.asciz "まだまだです。"
.balign 4, 0

/* 0805cb08 */ 
.asciz "かなり、　サイコーでーす！"
.balign 4, 0

/* 0805cb24 */ 
.asciz "はんだん　りょくが　かけてます。"
.balign 4, 0

/* 0805cb48 */ 
.asciz "すばらしい　はんだん　りょくだ！"
.balign 4, 0

/* 0805cb6c */ 
.asciz "もっと　ウデを　みがこう。"
.balign 4, 0

/* 0805cb88 */
.asciz "とても　テクニカルだ！"
.balign 4, 0

/* 0805cba0 */ 
.asciz "なぞのリズム組織から通達"
.balign 4, 0

/* 0805cbbc */ 
.asciz "リズムが不安定だヨ。"
.balign 4, 0

/* 0805cbd4 */ 
.asciz "リズムが安定してるネ！"
.balign 4, 0

/* 0805cbec */ 
.asciz "ながれが　わかってないみたい．．．"
.balign 4, 0

/* 0805cc10 */ 
.asciz "ながれが　わかってる！"
.balign 4, 0

/* 0805cc28 */ 
.asciz "ブレイクの　シメが　甘いかも。"
.balign 4, 0

/* 0805cc48 */ 
.asciz "ブレイクが　キマってるー！！"
.balign 4, 0

/* 0805cc68 */ 
.asciz "つぎは"
.balign 4, 0

/* 0805cc70 */ 
.asciz "２つ　やすむよ"
.balign 4, 0

/* 0805cc80 */ 
.asciz ""
.balign 4, 0

/* 0805cc84 */ 
.asciz "４つ　やすむよ"
.balign 4, 0

/* 0805cc94 */ 
.asciz "１"
.balign 4, 0

/* 0805cc98 */ 
.asciz "２"
.balign 4, 0

/* 0805cc9c */ 
.asciz "３"
.balign 4, 0

/* 0805cca0 */ 
.asciz "４"
.balign 4, 0

/* 0805cca4 */ 
.asciz "８つ　やすむよ"
.balign 4, 0

/* 0805ccb4 */ 
.asciz "海のなかまたちの声"
.balign 4, 0

/* 0805ccc8 */ 
.asciz "だいぶ、　努力が必要かも…"
.balign 4, 0

/* 0805cce4 */ 
.asciz "もう少し、　がんばりましょう。"
.balign 4, 0

/* 0805cd04 */ 
.asciz "人並みの正確さをお持ちです。"
.balign 4, 0

/* 0805cd24 */
.asciz "正確な体内時計をお持ちです！"
.balign 4, 0

/* 0805cd44 */ 
.asciz "電波時計なみの正確さ！！"
.balign 4, 0

/* 0805cd60 */ 
.asciz "もっとハデに　キメようぜ！"
.balign 4, 0

/* 0805cd7c */ 
.asciz "すばらしい　うちあげっぷりだ！！"
.balign 4, 0

/* 0805cda0 */ 
.asciz "反応が　おそいぞ！"
.balign 4, 0

/* 0805cdb4 */ 
.asciz "いい反応してるな！"
.balign 4, 0

/* 0805cdc8 */ 
.asciz "オヤカタから　ひとこと"
.balign 4, 0

/* 0805cde0 */ 
.asciz "・・・　おまつり　まえ　・・・"
.balign 4, 0

/* 0805ce00 */ 
.asciz "とっくんだ！"
.balign 4, 0

/* 0805ce10 */ 
.asciz "「ハイ！」　のあいずで　Ａボタン"
.balign 4, 0

/* 0805ce34 */ 
.asciz "まずは、　「　ふつう　の　ハナビ　」"
.balign 4, 0

/* 0805ce5c */ 
.asciz ".bいち　.bに　.bさん　　.bハイ！"
.balign 4, 0

/* 0805ce80 */
.asciz ".dいち　.bに　.bさん　　.bハイ！"
.balign 4, 0

/* 0805cea4 */ 
.asciz ".dいち　.dに　.bさん　　.bハイ！"
.balign 4, 0

/* 0805cec8 */ 
.asciz ".dいち　.dに　.dさん　　.bハイ！"
.balign 4, 0

/* 0805ceec */
.asciz "　.cいち　.cに　.cさん　.c:0ハイ！"
.balign 4, 0

/* 0805cf10 */ 
.asciz "「　きあい　の　ハナビ　」"
.balign 4, 0

/* 0805cf2c */ 
.asciz ".bぬ.bえ.bい.b！　　.bハイ！"
.balign 4, 0

/* 0805cf4c */ 
.asciz ".dぬ.bえ.bい.b！　　.bハイ！"
.balign 4, 0

/* 0805cf6c */ 
.asciz ".dぬ.dえ.bい.b！　　.bハイ！"
.balign 4, 0

/* 0805cf8c */ 
.asciz ".dぬ.dえ.dい.b！　　.bハイ！"
.balign 4, 0

/* 0805cfac */ 
.asciz ".dぬ.dえ.dい.d！　　.bハイ！"
.balign 4, 0

/* 0805cfcc */ 
.asciz "　.cぬ.cえ.cい.c！　.c:0ハイ！"
.balign 4, 0

/* 0805cfec */
.asciz "「　シメ　の　タイコボンバー　」"
.balign 4, 0

/* 0805d010 */ 
.asciz ".bた.bま.bや.b\x81\x60　　.bハイ！" 
.balign 4, 0

/* 0805d030 */ 
.asciz ".dた.bま.bや.b\x81\x60　　.bハイ！" 
.balign 4, 0

/* 0805d050 */ 
.asciz ".dた.dま.bや.b\x81\x60　　.bハイ！" 
.balign 4, 0

/* 0805d070 */ 
.asciz ".dた.dま.dや.b\x81\x60　　.bハイ！" 
.balign 4, 0

/* 0805d090 */ 
.asciz ".dた.dま.dや.d\x81\x60　　.bハイ！" 
.balign 4, 0

/* 0805d0b0 */ 
.asciz "　.cた.cま.cや.c\x81\x60　.c:0ハイ！"
.balign 4, 0

/* 0805d0d0 */ 
.asciz "さあ、　ではホンバン！"
.balign 4, 0

/* 0805d0e8 */ 
.asciz "あいずは　ナシだぜ・・・"
.balign 4, 0

/* 0805d104 */ 
.asciz "キレが　ないよ。"
.balign 4, 0

/* 0805d118 */ 
.asciz "きっちり　とまってる！"
.balign 4, 0

/* 0805d130 */ 
.asciz "でだしが　ぐだぐだ・・・"
.balign 4, 0

/* 0805d14c */ 
.asciz "でだしが　バッチリ！"
.balign 4, 0

/* 0805d164 */
.asciz "もう！　ジャマしないでよ！"
.balign 4, 0

/* 0805d180 */ 
.asciz ""
.balign 4, 0

/* 0805d184 */ 
.asciz "あいずを　したら"
.balign 4, 0

/* 0805d198 */ 
.asciz "Ａを　おしつづけて"
.balign 4, 0

/* 0805d1ac */ 
.asciz "ストップしろ！"
.balign 4, 0

/* 0805d1bc */ 
.asciz "つぎの　あいずで"
.balign 4, 0

/* 0805d1d0 */ 
.asciz "Ａを　はなして"
.balign 4, 0

/* 0805d1e0 */ 
.asciz "はしりだせ！"
.balign 4, 0

/* 0805d1f0 */ 
.asciz "んじゃ　いくぞ！"
.balign 4, 0

/* 0805d204 */ 
.asciz "もう　あいずは"
.balign 4, 0

/* 0805d214 */ 
.asciz "しないから"
.balign 4, 0

/* 0805d220 */ 
.asciz "しっかりやれよ！"
.balign 4, 0

/* 0805d234 */ 
.asciz "なかまから　ひとこと"
.balign 4, 0

/* 0805d24c */ 
.asciz "気合が足りぬ。"
.balign 4, 0

/* 0805d25c */ 
.asciz ""
.balign 4, 0

/* 0805d260 */ 
.asciz "力不足、　だな。"
.balign 4, 0

/* 0805d274 */ 
.asciz "たいへん力強い！"
.balign 4, 0

/* 0805d288 */ 
.asciz "心が　こもってない、　だな。"
.balign 4, 0

/* 0805d2a8 */ 
.asciz "心が　こもっている！"
.balign 4, 0

/* 0805d2c0 */ 
.asciz "ココ一番で　やってくれた！"
.balign 4, 0

/* 0805d2dc */ 
.asciz "いざ！　お習字！！"
.balign 4, 0

/* 0805d2f0 */ 
.asciz "先生のことば"
.balign 4, 0

/* 0805d300 */ 
.asciz "日本語を書きましょう。"
.balign 4, 0

/* 0805d318 */ 
.asciz "気合がピークの時に、　Ａボタン！！"
.balign 4, 0

/* 0805d33c */ 
.asciz "よくできました。"
.balign 4, 0

/* 0805d350 */ 
.asciz "もう　一回、　やってみましょう。"
.balign 4, 0

/* 0805d374 */ 
.asciz "ふむ。"
.balign 4, 0

/* 0805d37c */ 
.asciz "遊びは、　ここまで．．．"
.balign 4, 0

/* 0805d398 */ 
.asciz "なんか　ヨタヨタかも。"
.balign 4, 0

/* 0805d3b0 */ 
.asciz "カッコイイかも！"
.balign 4, 0

/* 0805d3c4 */ 
.asciz "なんだか　キメが　ヘンかも。"
.balign 4, 0

/* 0805d3e4 */ 
.asciz "なんとなく　キマってるかも！"
.balign 4, 0

/* 0805d404 */ 
.asciz "コケそうな　カンジかも。"
.balign 4, 0

/* 0805d420 */ 
.asciz "勢いが　あるみたい！"
.balign 4, 0

/* 0805d438 */ 
.asciz "\nあ、　どうも。\nドラム侍です。"
.balign 4, 0

/* 0805d458 */ 
.asciz "タイコは　お好きですか？\nキライじゃないですよね。\nでは、　私が　いろいろと\nお世話しますね。"
.balign 4, 0

/* 0805d4b4 */ 
.asciz "簡単なレクチャーを\nしてさしあげます。\nまぁ、　気をラクにして\nおつきあいください。"
.balign 4, 0

/* 0805d508 */ 
.asciz "さっそく　レッスン　１　です。\n私が見本をやりますから\nマネしてくださいネ。"
.balign 4, 0

/* 0805d554 */ 
.asciz "\nでは、　いきます。"
.balign 4, 0

/* 0805d568 */ 
.asciz "\nはい、　どうぞ。"
.balign 4, 0

/* 0805d57c */ 
.asciz "いまのは、　冗談です。\nごめんなさい。"
.balign 4, 0

/* 0805d5a4 */ 
.asciz "でも、　出来るように\n精一杯　お世話しますので\nがんばってみてください。"
.balign 4, 0

/* 0805d5ec */
.asciz "\nでは、　次回をお楽しみに。\nさようなら。"
.balign 4, 0

/* 0805d618 */ 
.asciz "練習の成果が　でてないな。"
.balign 4, 0

/* 0805d634 */ 
.asciz "きほんが　できている！"
.balign 4, 0

/* 0805d64c */ 
.asciz "あせってないか？"
.balign 4, 0

/* 0805d660 */ 
.asciz "かなり　おちついてる！"
.balign 4, 0

/* 0805d678 */ 
.asciz "スピードに　ついてこい。"
.balign 4, 0

/* 0805d694 */ 
.asciz "速さをモノにしている！！"
.balign 4, 0

/* 0805d6b0 */ 
.asciz "カントクのことば"
.balign 4, 0

/* 0805d6c4 */ 
.asciz "\nいきまーす！"
.balign 4, 0

/* 0805d6d4 */ 
.asciz "\nおしまい。"
.balign 4, 0

/* 0805d6e0 */ 
.asciz "練習の成果が　でてないな。"
.balign 4, 0

/* 0805d6fc */ 
.asciz "きほんが　できている！"
.balign 4, 0

/* 0805d714 */ 
.asciz "あせってないか？"
.balign 4, 0

/* 0805d728 */ 
.asciz "かなり　おちついてる！"
.balign 4, 0

/* 0805d740 */ 
.asciz "スピードに　ついてこい。"
.balign 4, 0

/* 0805d75c */ 
.asciz "速さをモノにしている！！"
.balign 4, 0

/* 0805d778 */ 
.asciz "カントクのことば"
.balign 4, 0

/* 0805d78c */ 
.asciz "\nほんばん、　いきまーす！"
.balign 4, 0

/* 0805d7a8 */ 
.asciz "\nおしまい。"
.balign 4, 0

/* 0805d7b4 */ 
.asciz "\nなかよく　れんしゅう中"
.balign 4, 0

/* 0805d7cc */ 
.asciz "ひっさつワザ　１\n\x03\x31\x01\x6d\x05\x30\x01\x34ＡＢ　トストス\x03\x30\x01\x73\x05\x34\x01\x38"
.balign 4, 0

/* 0805d7fc */ 
.asciz "\nもう　いっかい"
.balign 4, 0

/* 0805d80c */ 
.asciz "\nいいね！"
.balign 4, 0

/* 0805d818 */ 
.asciz "ひっさつワザ　２\n\x03\x31\x01\x6d\x05\x30\x01\x34セルフ　ブルー\x03\x30\x01\x73\x05\x34\x01\x38"
.balign 4, 0

/* 0805d848 */ 
.asciz "\nもう いっちょ\x81\x60" 
.balign 4, 0

/* 0805d85c */ 
.asciz "\nそうそう！！"
.balign 4, 0

/* 0805d86c */ 
.asciz "ひっさつワザ　３\n\x03\x31\x01\x6d\x05\x30\x01\x34イエロー　クイック\x03\x30\x01\x73\x05\x34\x01\x38"
.balign 4, 0

/* 0805d8a0 */ 
.asciz "\nワンス　モア"
.balign 4, 0

/* 0805d8b0 */ 
.asciz "\nオーケイ"
.balign 4, 0

/* 0805d8bc */ 
.asciz "\nだいぶ　いい感じなので、"
.balign 4, 0

/* 0805d8d8 */ 
.asciz "\nでは、　いきます。"
.balign 4, 0

/* 0805d8ec */ 
.asciz "\n次、　いきます。"
.balign 4, 0

/* 0805d900 */ 
.asciz "\n次は３拍子です。"
.balign 4, 0

/* 0805d914 */ 
.asciz "\nじゃ、　ラスト。"
.balign 4, 0

/* 0805d928 */ 
.asciz "\n以上です。"
.balign 4, 0

/* 0805d934 */ 
.asciz "スタートの練習、\nいかがでしたか？\nぜひ、　今後の参考に\nしてくださいネ！"
.balign 4, 0

/* 0805d97c */ 
.asciz "\nでは、　次回をお楽しみに。\nさようなら。"
.balign 4, 0

/* 0805d9a8 */ 
.asciz "\nあ、　どうも。\nドラム侍です。"
.balign 4, 0

/* 0805d9c8 */ 
.asciz "えっと…\n今回は２回目ですね。\n再会できてうれしいです！"
.balign 4, 0

/* 0805da00 */ 
.asciz "さて、　なにごとも最初が\n肝心な場合が多いですね？\n演奏なんかも　そうでは\nないでしょうか。"
.balign 4, 0

/* 0805da5c */ 
.asciz "レッスン２では\nスタートの練習をします。"
.balign 4, 0

/* 0805da84 */ 
.asciz "私がカウントをするので\n曲のアタマでＢボタンと\nＲボタン（肩ボタン）を\n同時に押してください。"
.balign 4, 0

/* 0805dae0 */ 
.asciz "トランくん、やりなおし。"
.balign 4, 0

/* 0805dafc */ 
.asciz "かなり　カッコよかったぞ！"
.balign 4, 0

/* 0805db18 */ 
.asciz "ポリンちゃん、やりなおし。"
.balign 4, 0

/* 0805db34 */ 
.asciz "とても　ビューティフルだった！"
.balign 4, 0

/* 0805db54 */ 
.asciz "あせったらダメ。集中してね。"
.balign 4, 0

/* 0805db74 */ 
.asciz "すごい　アクロバティックだ！"
.balign 4, 0

/* 0805db94 */ 
.asciz "団長のゲキ"
.balign 4, 0

/* 0805dba0 */ 
.asciz "トラン　と、"
.balign 4, 0

/* 0805dbb0 */ 
.asciz "ポリン　の、"
.balign 4, 0

/* 0805dbc0 */ 
.asciz "レッツ　トランポリン！"
.balign 4, 0

/* 0805dbd8 */ 
.asciz "てっぺんに　きたときに、"
.balign 4, 0

/* 0805dbf4 */ 
.asciz "ぼくは　＋ボタンで、"
.balign 4, 0

/* 0805dc0c */ 
.asciz "あたしは　Ａボタンで、"
.balign 4, 0

/* 0805dc24 */ 
.asciz "ヘンシン　するよ！"
.balign 4, 0

/* 0805dc38 */ 
.asciz "ちょっと　れんしゅう　しよう！"
.balign 4, 0

/* 0805dc58 */ 
.asciz "れんぞく　ジャンプ！"
.balign 4, 0

/* 0805dc70 */ 
.asciz "ふたり　じゅんばんに！"
.balign 4, 0

/* 0805dc88 */ 
.asciz "ふたり　どうじに！"
.balign 4, 0

/* 0805dc9c */ 
.asciz "よしっ、　ホンバンいくよ！"
.balign 4, 0

/* 0805dcb8 */ 
.asciz "ブブー！！\nゲームオーバーです！\nボクたちの勝ちでーす！"
.balign 4, 0

/* 0805dcf0 */ 
.asciz "また挑戦してネ！"
.balign 4, 0

/* 0805dd04 */ 
.asciz "まいりました！\nあなたの勝ちです！！"
.balign 4, 0

/* 0805dd28 */ 
.asciz "また、　あそんでネ！"
.balign 4, 0

/* 0805dd40 */ 
.asciz "\n\nこんにちわ！"
.balign 4, 0

/* 0805dd50 */ 
.asciz "サルとポン太です。\nドラム侍さんのご紹介で\nあそびに来ました。"
.balign 4, 0

/* 0805dd90 */ 
.asciz "今回は　ボクたちが\nレッスンしますネ！"
.balign 4, 0

/* 0805ddb8 */ 
.asciz "さっそくですが、\nＡボタンの練習です。"
.balign 4, 0

/* 0805dde0 */ 
.asciz "よく　きいて\nマネしてネ！"
.balign 4, 0

/* 0805ddfc */ 
.asciz "ポン太くんも入ります。\nポン太くんの音は\n\x8f\x5c字キーの下で鳴ります。"
.balign 4, 0

/* 0805de40 */ 
.asciz "次は、　速いやつです。\nＡボタンと\x8f\x5c字キーの右を\n交互に押すとラクだヨ。"
.balign 4, 0

/* 0805de88 */ 
.asciz "練習は　次で最後です。"
.balign 4, 0

/* 0805dea0 */ 
.asciz "むずかしいかな？\nがんばってネ！"
.balign 4, 0

/* 0805dec0 */ 
.asciz "それでは、　ボクたちと\nリズムバトルを\nしてみましょう！"
.balign 4, 0

/* 0805def8 */ 
.asciz "各パターンにつき\n３回　チャンスが\nあります。"
.balign 4, 0

/* 0805df28 */ 
.asciz "さて、　どこまで\nついてこれるかな？"
.balign 4, 0

/* 0805df4c */ 
.asciz "Welcome to\nthis funky game,\nthe RHYTHM TEN-\nGOKU world!!"
.balign 4, 0

/* 0805df88 */ 
.asciz "リズム天国へ ようこそ！\nファンキーなひとときを\n楽しんでくださいネ!"
.balign 4, 0

/* 0805dfcc */ 
.asciz "では、　またのちほど\nお会いしましょう！\nsee you!"
.balign 4, 0

/* 0805e000 */ 
.asciz "リズム感\nそれは潜在的に\nみんなが持っている\nものなんです。"
.balign 4, 0

/* 0805e03c */ 
.asciz "リズム感は\n意識していれば\nどんどん良くなります。"
.balign 4, 0

/* 0805e070 */ 
.asciz "さて、まずは\nあなたのリズム感を\nかるく見てみましょう。"
.balign 4, 0

/* 0805e0a8 */ 
.asciz "どうでしたか？\n納得のいく結果が\n出せましたか？"
.balign 4, 0

/* 0805e0d8 */ 
.asciz "潜在的なリズム感は\n訓練によって\n成長するんです。"
.balign 4, 0

/* 0805e10c */ 
.asciz "このあと出てくる\nリズミカルなゲームで\n楽しくリズム感を\nみがいてみてください。"
.balign 4, 0

/* 0805e15c */ 
.asciz "では、またあとで\nお会いしましょう。"
.balign 4, 0

/* 0805e180 */ 
.asciz "ペンギン、不満足。"
.balign 4, 0

/* 0805e194 */ 
.asciz "ペンギンも満足。"
.balign 4, 0

/* 0805e1a8 */ 
.asciz "ペンギンのようす"
.balign 4, 0

/* 0805e1bc */ 
.asciz "ほんばん　スタート！"
.balign 4, 0

/* 0805e1d4 */ 
.asciz "ペンギンと　ショーを　やります。"
.balign 4, 0

/* 0805e1f8 */ 
.asciz "あいずに　あわせて　Ａボタン！"
.balign 4, 0

/* 0805e218 */ 
.asciz ""
.balign 4, 0

/* 0805e21c */ 
.asciz "１"
.balign 4, 0

/* 0805e220 */ 
.asciz "２"
.balign 4, 0

/* 0805e224 */ 
.asciz "ハイ！"
.balign 4, 0

/* 0805e22c */ 
.asciz "そんなかんじ"
.balign 4, 0

/* 0805e23c */ 
.asciz "つぎは　でっかいペンギン"
.balign 4, 0

/* 0805e258 */ 
.asciz "イイカンジです"
.balign 4, 0

/* 0805e268 */ 
.asciz "つぎは　しろいペンギン"
.balign 4, 0

/* 0805e280 */ 
.asciz "はやいヨ！"
.balign 4, 0

/* 0805e28c */ 
.asciz "そろそろ　はじまりまーす！！"
.balign 4, 0

/* 0805e2ac */ 
.asciz "なんだか　乱れてるなぁ。"
.balign 4, 0

/* 0805e2c8 */ 
.asciz "息が　あってるじゃないか！"
.balign 4, 0

/* 0805e2e4 */ 
.asciz "ちょっと　あわててたなぁ。"
.balign 4, 0

/* 0805e300 */ 
.asciz "よい判断をしてるじゃないか！"
.balign 4, 0

/* 0805e320 */ 
.asciz "サビの手前が　ガタガタだったなぁ。"
.balign 4, 0

/* 0805e344 */ 
.asciz "サビの手前が　キマってたヨ！"
.balign 4, 0

/* 0805e364 */ 
.asciz "スペースおじさんの意見"
.balign 4, 0

/* 0805e37c */ 
.asciz "レッツゴー！"
.balign 4, 0

/* 0805e38c */ 
.asciz "みんなで　ダンスするぞ。"
.balign 4, 0

/* 0805e3a8 */ 
.asciz "まず、　３つの　アクションを　おぼえるのだ。"
.balign 4, 0

/* 0805e3d8 */ 
.asciz "では、　１つめ。"
.balign 4, 0

/* 0805e3ec */ 
.asciz "マネするのだ！"
.balign 4, 0

/* 0805e3fc */ 
.asciz "ＯＫ！"
.balign 4, 0

/* 0805e404 */ 
.asciz "つぎ"
.balign 4, 0

/* 0805e40c */ 
.asciz "ラスト"
.balign 4, 0

/* 0805e414 */ 
.asciz "では、　ほんばんだ！"
.balign 4, 0

/* 0805e42c */ 
.asciz "どうも！\nドラム侍です。"
.balign 4, 0

/* 0805e444 */ 
.asciz "お元気でしたか？"
.balign 4, 0

/* 0805e458 */ 
.asciz "今回は、　短い曲に合わせて実際に演奏してみましょう。"
.balign 4, 0

/* 0805e490 */ 
.asciz "私の演奏をよくきいて、　マネしてくださいネ。"
.balign 4, 0

/* 0805e4c0 */ 
glabel D_0805e4c0
.asciz "さっそくですが、　いきます。"
.balign 4, 0

/* 0805e4e0 */ 
glabel D_0805e4e0
.asciz "ちがう！\nよくきいてネ。"
.balign 4, 0

/* 0805e4f8 */ 
glabel D_0805e4f8
.asciz "ちがうんです！\nよく、　よ\x81\x60くきいてネ。"
.balign 4, 0

/* 0805e520 */ .word D_0805e4c0
/* 0805e524 */ .word D_0805e4e0
/* 0805e528 */ .word D_0805e4f8
/* 0805e52c */ .word 0

/* 0805e530 */ 
glabel D_0805e530
.asciz "\nあなたの番です。"
.balign 4, 0

/* 0805e544 */ 
glabel D_0805e544
.asciz "\nさあ、　いまいちど！"
.balign 4, 0

/* 0805e55c */ 
glabel D_0805e55c
.asciz "\nさあ、　こんどこそ！"
.balign 4, 0

/* 0805e574 */ .word D_0805e530
/* 0805e578 */ .word D_0805e544
/* 0805e57c */ .word D_0805e55c
/* 0805e580 */ .word 0

/* 0805e584 */ 
.asciz "\nOK!"
.balign 4, 0

/* 0805e58c */ 
glabel D_0805e58c
.asciz ""
.balign 4, 0

/* 0805e590 */ 
glabel D_0805e590
.asciz "おぉ、　すぐできましたね！"
.balign 4, 0

/* 0805e5ac */ 
glabel D_0805e5ac
.asciz "なかなか　のみこみが早いですね！"
.balign 4, 0

/* 0805e5d0 */ 
glabel D_0805e5d0
.asciz "いいかんじです。"
.balign 4, 0

/* 0805e5e4 */ .word D_0805e58c
/* 0805e5e8 */ .word D_0805e590
/* 0805e5ec */ .word D_0805e5ac
/* 0805e5f0 */ .word D_0805e5d0
/* 0805e5f4 */ .word 0

/* 0805e5f8 */ 
.asciz "次は、　曲のスタートでシンバルをたたいてみましょう。\nシンバルは、　Rボタンです。"
.balign 4, 0

/* 0805e64c */ 
.asciz "つまり、　最初だけBボタンとRボタンを同時に押すんです。"
.balign 4, 0

/* 0805e684 */ 
.asciz "曲のスタートの練習を思い出してくださいネ。"
.balign 4, 0

/* 0805e6b0 */ 
glabel D_0805e6b0
.asciz "じゃ、　いきます。"
.balign 4, 0

/* 0805e6c4 */ .word D_0805e6b0
/* 0805e6c8 */ .word D_0805e4e0
/* 0805e6cc */ .word D_0805e4f8
/* 0805e6d0 */ .word 0

/* 0805e6d4 */ 
glabel D_0805e6d4
.asciz "すばらしい！\nその調子です。"
.balign 4, 0

/* 0805e6f0 */ 
glabel D_0805e6f0
.asciz "けっこう　簡単でしたか？"
.balign 4, 0

/* 0805e70c */ 
glabel D_0805e70c
.asciz "ちょっと、　苦労しちゃいましたね。"
.balign 4, 0

/* 0805e730 */ .word D_0805e58c
/* 0805e734 */ .word D_0805e6d4
/* 0805e738 */ .word D_0805e6f0
/* 0805e73c */ .word D_0805e70c
/* 0805e740 */ .word 0

/* 0805e744 */ 
.asciz "では、　曲の終わりをかっこよくキメてみましょう。"
.balign 4, 0

/* 0805e778 */ 
glabel D_0805e778
.asciz "お手本、　いきます。"
.balign 4, 0

/* 0805e790 */ .word D_0805e778
/* 0805e794 */ .word D_0805e4e0
/* 0805e798 */ .word D_0805e4f8
/* 0805e79c */ .word 0

/* 0805e7a0 */ 
glabel D_0805e7a0
.asciz "\nがんばって！"
.balign 4, 0

/* 0805e7b0 */ .word D_0805e7a0
/* 0805e7b4 */ .word D_0805e544
/* 0805e7b8 */ .word D_0805e55c
/* 0805e7bc */ .word 0

/* 0805e7c0 */ 
glabel D_0805e7c0
.asciz "１回で 出来ちゃいましたネ！\nすごいです！"
.balign 4, 0

/* 0805e7ec */ 
glabel D_0805e7ec
.asciz "たったの２回で　できました！\nやりますネ！"
.balign 4, 0

/* 0805e818 */ 
glabel D_0805e818
.asciz "なんとか　出来ましたネ！\nイイ感じですヨ！"
.balign 4, 0

/* 0805e844 */ .word D_0805e58c
/* 0805e848 */ .word D_0805e7c0
/* 0805e84c */ .word D_0805e7ec
/* 0805e850 */ .word D_0805e818
/* 0805e854 */ .word 0

/* 0805e858 */ 
.asciz "こんなかんじで、　曲のスタート、　中間、　キメを\x95\x5c現できれば楽しく演奏できるのではないかと思います。"
.balign 4, 0

/* 0805e8c0 */ 
.asciz "あのコーナーで練習して、　ぜひ楽しくなってください。"
.balign 4, 0

/* 0805e8f8 */ 
.asciz "では、　また。\nさようなら。"
.balign 4, 0

/* 0805e914 */ 
.asciz "「ですか？」の　ノリが　あかん。"
.balign 4, 0

/* 0805e938 */ 
.asciz "「ですか？」の　ノリが　バッチリや！"
.balign 4, 0

/* 0805e960 */ 
.asciz "「かもネ」の　ノリが　キビシーッス。"
.balign 4, 0

/* 0805e988 */ 
.asciz "「かもネ」の　ノリに　シビれたで！"
.balign 4, 0

/* 0805e9ac */ 
.asciz "「サイコー！」の　ノリが　サイコーちゃう。"
.balign 4, 0

/* 0805e9d8 */ 
.asciz "「サイコー！」の　ノリが　サイコーやん！"
.balign 4, 0

/* 0805ea04 */ 
.asciz "アイツらのコメント"
.balign 4, 0

/* 0805ea18 */ 
.asciz "ほな、　ほんばん　いこか"
.balign 4, 0

/* 0805ea34 */ 
.asciz "またやろうな"
.balign 4, 0

/* 0805ea44 */ 
.asciz "チワッス"
.balign 4, 0

/* 0805ea50 */ 
.asciz "いっしょに　ノろうやないか"
.balign 4, 0

/* 0805ea6c */ 
.asciz "ノりかた、　おしえるし"
.balign 4, 0

/* 0805ea84 */ 
.asciz "「ウッ」　っていうトコで　Ａボタンや"
.balign 4, 0

/* 0805eaac */ 
.asciz "ちょっと　きいててな"
.balign 4, 0

/* 0805eac4 */ 
.asciz "わかる？"
.balign 4, 0

/* 0805ead0 */ 
.asciz "ちょっと、　やってみ"
.balign 4, 0

/* 0805eae8 */ 
.asciz "がんばってや"
.balign 4, 0

/* 0805eaf8 */ 
.asciz "「ウッ」　ってトコやで\x81\x60"
.balign 4, 0

/* 0805eb14 */
.asciz "「ウッ」　ってトコやっちゅーに"
.balign 4, 0

/* 0805eb34 */ 
.asciz "ＯＫ！"
.balign 4, 0

/* 0805eb3c */ 
.asciz "いまのは、　「.b\x81\x60ですか？.8」の　ノリやねん"
.balign 4, 0

/* 0805eb6c */ 
.asciz "こんどは、　「.9\x81\x60かもネ.8」の　ノリや"
.balign 4, 0

/* 0805eb94 */ 
.asciz "いっぺん　きいてみてな"
.balign 4, 0

/* 0805ebac */ 
.asciz "ほな、　がんばってや"
.balign 4, 0

/* 0805ebc4 */ 
.asciz "あといっこ、　「.a\x81\x60サイコー！！.8」の　ノリや"
.balign 4, 0

/* 0805ebf4 */ 
.asciz "いっぺん　きいてみてや"
.balign 4, 0

/* 0805ec0c */ 
.asciz "よしゃ、　がんばってや"
.balign 4, 0

/* 0805ec24 */ 
.asciz "ＯＫ！　ホンマ、　サイコーや"
.balign 4, 0

/* 0805ec44 */ 
.asciz "次回、がんばって下さいネ。"
.balign 4, 0

/* 0805ec60 */ 
.asciz "おしかったですね\x81\x60！"
.balign 4, 0

/* 0805ec78 */ 
.asciz ""
.balign 4, 0

/* 0805ec7c */ 
.asciz "全問正解、おめでとうございました\x81\x60！"
.balign 4, 0

/* 0805eca4 */ 
.asciz "\n残念！！"
.balign 4, 0

/* 0805ecb0 */ 
.asciz "また挑戦して下さい。\nさようなら。"
.balign 4, 0

/* 0805ecd4 */ 
.asciz "司会者の　ひとこと"
.balign 4, 0

/* 0805ece8 */ 
.asciz "\n最初の問題です"
.balign 4, 0

/* 0805ecf8 */ 
.asciz "\nでは、２問目"
.balign 4, 0

/* 0805ed08 */ 
.asciz "\n３問目です"
.balign 4, 0

/* 0805ed14 */ 
.asciz "\nさあ、４問目です！"
.balign 4, 0

/* 0805ed28 */ 
.asciz "ここからが、\n本番ですぞ！"
.balign 4, 0

/* 0805ed44 */ 
.asciz "とうとう、\n５問目です！！"
.balign 4, 0

/* 0805ed60 */ 
.asciz "\n最終問題です！！"
.balign 4, 0

/* 0805ed74 */ 
.asciz "\nどうぞ"
.balign 4, 0

/* 0805ed7c */ 
.asciz "\nそこまで！！"
.balign 4, 0

/* 0805ed8c */ 
.asciz "\nさて、正解は？"
.balign 4, 0

/* 0805ed9c */ 
.asciz "\n正解！！"
.balign 4, 0

/* 0805eda8 */ 
.asciz "すばらしい！\n全問正解！！\n賞金１００万点！！"
.balign 4, 0

/* 0805edd8 */ 
.asciz "ではまた来週、\nさようなら。"
.balign 4, 0

/* 0805edf4 */ 
.asciz "こんばんは。\nクイズナンダダ！？の時間です。"
.balign 4, 0

/* 0805ee20 */ 
.asciz "\nルールはかんたん"
.balign 4, 0

/* 0805ee34 */ 
.asciz "私がボタンをたたいた回数を当てるだけ。"
.balign 4, 0

/* 0805ee5c */ 
.asciz "「どうぞ」のあと、同じ数だけたたいて下さい。"
.balign 4, 0

/* 0805ee8c */ 
.asciz "Ａボタンと　\x8f\x5c字ボタン、どちらでもＯＫです。"
.balign 4, 0

/* 0805eebc */ 
.asciz "では、いってみましょう。"
.balign 4, 0

/* 0805eed8 */ 
.asciz "音に合わせて、Ａボタンを押してください"
.balign 4, 0

/* 0805ef00 */ 
.asciz "あと半分"
.balign 4, 0

/* 0805ef0c */ 
.asciz "3"
.balign 4, 0

/* 0805ef10 */ 
.asciz "2"
.balign 4, 0

/* 0805ef14 */ 
.asciz "1"
.balign 4, 0

/* 0805ef18 */ 
.asciz "「ゼロ」と同時に、Ａボタンを押してください"
.balign 4, 0

/* 0805ef44 */ 
.asciz "音が消えるところは、心でカウントしてください"
.balign 4, 0

/* 0805ef74 */ 
.asciz "では、測定をはじめます"
.balign 4, 0

/* 0805ef8c */ 
.asciz "音に合わせて、Ａボタンを押してください"
.balign 4, 0

/* 0805efb4 */ 
.asciz "そのまま、キープしつづけて下さい"
.balign 4, 0

/* 0805efd8 */ 
.asciz "だいぶ、努力が必要かも…"
.balign 4, 0

/* 0805eff4 */ 
.asciz "もう少し、がんばりましょう。"
.balign 4, 0

/* 0805f014 */ 
.asciz "人並みの正確さをお持ちです。"
.balign 4, 0

/* 0805f034 */ 
.asciz "正確な体内時計をお持ちです！"
.balign 4, 0

/* 0805f054 */ 
.asciz "すごい！　電波時計なみの正確さ！！"
.balign 4, 0

/* 0805f078 */ 
.asciz "あなたのリズム感をしらべましょう"
.balign 4, 0

/* 0805f09c */ 
.asciz "これから、３回のテストをします"
.balign 4, 0

/* 0805f0bc */ 
.asciz "では、１回目です"
.balign 4, 0

/* 0805f0d0 */ 
.asciz "２回目のテスト、いきます"
.balign 4, 0

/* 0805f0ec */ 
.asciz "さいごのテストです"
.balign 4, 0

/* 0805f100 */ 
.asciz "さて、結果は…？"
.balign 4, 0

/* 0805f114 */ 
.asciz "よくきいてマネしてね。\n好きなタイミングでどうぞ。\n演奏を止めると、\nお手本がきけるヨ！"
.balign 4, 0

@ Bytecode pieces (Possibly Drum Lessons)
@ TODO Properly dump using Tengokompiler 
/* 0805f16c */ .word 0x00000003
/* 0805f170 */ .word 0x080179f5
/* 0805f174 */ .word 0x00000002
/* 0805f178 */ .word 0x00000000
/* 0805f17c */ .word 0x00000000
/* 0805f180 */ .word 0x00000018
/* 0805f184 */ .word 0x00000003
/* 0805f188 */ .word 0x080179f5
/* 0805f18c */ .word 0x00000001
/* 0805f190 */ .word 0x00000000
/* 0805f194 */ .word 0x00000000
/* 0805f198 */ .word 0x00000018
/* 0805f19c */ .word 0x00000003
/* 0805f1a0 */ .word 0x080179f5
/* 0805f1a4 */ .word 0x00000002
/* 0805f1a8 */ .word 0x00000000
/* 0805f1ac */ .word 0x00000000
/* 0805f1b0 */ .word 0x00000018
/* 0805f1b4 */ .word 0x0000000e
/* 0805f1b8 */ .word 0x00000000
/* 0805f1bc */ .word 0x00000000

/* 0805f1c0 */ .word 0x00000003
/* 0805f1c4 */ .word 0x080179f5
/* 0805f1c8 */ .word 0x00000001
/* 0805f1cc */ .word 0x00000000
/* 0805f1d0 */ .word 0x00000000
/* 0805f1d4 */ .word 0x00000015
/* 0805f1d8 */ .word 0x0000000e
/* 0805f1dc */ .word 0x00000000
/* 0805f1e0 */ .word 0x00000000

/* 0805f1e4 */ 
.asciz "\n１カ所、音がふえるヨ！\nわかるかな？\n"
.balign 4, 0

@ Bytecode 
/* 0805f20c */ .word 0x00000003
/* 0805f210 */ .word 0x080179f5
/* 0805f214 */ .word 0x00000002
/* 0805f218 */ .word 0x00000000
/* 0805f21c */ .word 0x00000000
/* 0805f220 */ .word 0x00000018
/* 0805f224 */ .word 0x00000003
/* 0805f228 */ .word 0x080179f5
/* 0805f22c */ .word 0x00000001
/* 0805f230 */ .word 0x00000000
/* 0805f234 */ .word 0x00000000
/* 0805f238 */ .word 0x0000000c
/* 0805f23c */ .word 0x00000003
/* 0805f240 */ .word 0x080179f5
/* 0805f244 */ .word 0x00000001
/* 0805f248 */ .word 0x00000000
/* 0805f24c */ .word 0x00000000
/* 0805f250 */ .word 0x0000000c
/* 0805f254 */ .word 0x00000003
/* 0805f258 */ .word 0x080179f5
/* 0805f25c */ .word 0x00000002
/* 0805f260 */ .word 0x00000000
/* 0805f264 */ .word 0x00000000
/* 0805f268 */ .word 0x00000018
/* 0805f26c */ .word 0x0000000e
/* 0805f270 */ .word 0x00000000
/* 0805f274 */ .word 0x00000000

/* 0805f278 */ 
.asciz "\nさらに１カ所、\n音がふえるヨ！\nわかるかな？\n"
.balign 4, 0

@ Bytecode
/* 0805f2a8 */ .word 0x00000003
/* 0805f2ac */ .word 0x080179f5
/* 0805f2b0 */ .word 0x00000002
/* 0805f2b4 */ .word 0x00000000
/* 0805f2b8 */ .word 0x00000000
/* 0805f2bc */ .word 0x0000000c
/* 0805f2c0 */ .word 0x00000003
/* 0805f2c4 */ .word 0x080179f5
/* 0805f2c8 */ .word 0x00000002
/* 0805f2cc */ .word 0x00000000
/* 0805f2d0 */ .word 0x00000000
/* 0805f2d4 */ .word 0x0000000c
/* 0805f2d8 */ .word 0x00000003
/* 0805f2dc */ .word 0x080179f5
/* 0805f2e0 */ .word 0x00000001
/* 0805f2e4 */ .word 0x00000000
/* 0805f2e8 */ .word 0x00000000
/* 0805f2ec */ .word 0x0000000c
/* 0805f2f0 */ .word 0x00000003
/* 0805f2f4 */ .word 0x080179f5
/* 0805f2f8 */ .word 0x00000001
/* 0805f2fc */ .word 0x00000000
/* 0805f300 */ .word 0x00000000
/* 0805f304 */ .word 0x0000000c
/* 0805f308 */ .word 0x00000003
/* 0805f30c */ .word 0x080179f5
/* 0805f310 */ .word 0x00000002
/* 0805f314 */ .word 0x00000000
/* 0805f318 */ .word 0x00000000
/* 0805f31c */ .word 0x00000018
/* 0805f320 */ .word 0x0000000e
/* 0805f324 */ .word 0x00000000
/* 0805f328 */ .word 0x00000000

/* 0805f32c */ 
.asciz "\nまたまた１カ所、\n音がふえるヨ！\nわかるかな？\n"
.balign 4, 0

@ Bytecode
/* 0805f35c */ .word 0x00000003
/* 0805f360 */ .word 0x080179f5
/* 0805f364 */ .word 0x00000002
/* 0805f368 */ .word 0x00000000
/* 0805f36c */ .word 0x00000000
/* 0805f370 */ .word 0x0000000c
/* 0805f374 */ .word 0x00000003
/* 0805f378 */ .word 0x080179f5
/* 0805f37c */ .word 0x00000002
/* 0805f380 */ .word 0x00000000
/* 0805f384 */ .word 0x00000000
/* 0805f388 */ .word 0x0000000c
/* 0805f38c */ .word 0x00000003
/* 0805f390 */ .word 0x080179f5
/* 0805f394 */ .word 0x00000001
/* 0805f398 */ .word 0x00000000
/* 0805f39c */ .word 0x00000000
/* 0805f3a0 */ .word 0x0000000c
/* 0805f3a4 */ .word 0x00000003
/* 0805f3a8 */ .word 0x080179f5
/* 0805f3ac */ .word 0x00000001
/* 0805f3b0 */ .word 0x00000000
/* 0805f3b4 */ .word 0x00000000
/* 0805f3b8 */ .word 0x0000000c
/* 0805f3bc */ .word 0x00000003
/* 0805f3c0 */ .word 0x080179f5
/* 0805f3c4 */ .word 0x00000002
/* 0805f3c8 */ .word 0x00000000
/* 0805f3cc */ .word 0x00000000
/* 0805f3d0 */ .word 0x0000000c
/* 0805f3d4 */ .word 0x00000003
/* 0805f3d8 */ .word 0x080179f5
/* 0805f3dc */ .word 0x00000002
/* 0805f3e0 */ .word 0x00000000
/* 0805f3e4 */ .word 0x00000000
/* 0805f3e8 */ .word 0x0000000c
/* 0805f3ec */ .word 0x0000000e
/* 0805f3f0 */ .word 0x00000000
/* 0805f3f4 */ .word 0x00000000

/* 0805f3f8 */ 
.asciz "\nそしてまたなんと！\n１カ所、音がふえるヨ！\nわかるかな？\n"
.balign 4, 0

@ Bytecode
/* 0805f434 */ .word 0x00000003
/* 0805f438 */ .word 0x080179f5
/* 0805f43c */ .word 0x00000001
/* 0805f440 */ .word 0x00000000
/* 0805f444 */ .word 0x00000000
/* 0805f448 */ .word 0x0000000c
/* 0805f44c */ .word 0x00000003
/* 0805f450 */ .word 0x080179f5
/* 0805f454 */ .word 0x00000001
/* 0805f458 */ .word 0x00000000
/* 0805f45c */ .word 0x00000000
/* 0805f460 */ .word 0x00000009
/* 0805f464 */ .word 0x0000000e
/* 0805f468 */ .word 0x00000000
/* 0805f46c */ .word 0x00000000

/* 0805f470 */ 
.asciz "\nこれまたなんと！！\n１カ所、音がふえるヨ！\nわかるかな？\n"
.balign 4, 0

@ Bytecode
/* 0805f4ac */ .word 0x00000003
/* 0805f4b0 */ .word 0x080179f5
/* 0805f4b4 */ .word 0x00000002
/* 0805f4b8 */ .word 0x00000000
/* 0805f4bc */ .word 0x00000000
/* 0805f4c0 */ .word 0x0000000c
/* 0805f4c4 */ .word 0x00000003
/* 0805f4c8 */ .word 0x080179f5
/* 0805f4cc */ .word 0x00000002
/* 0805f4d0 */ .word 0x00000000
/* 0805f4d4 */ .word 0x00000000
/* 0805f4d8 */ .word 0x0000000c
/* 0805f4dc */ .word 0x00000003
/* 0805f4e0 */ .word 0x080179f5
/* 0805f4e4 */ .word 0x00000001
/* 0805f4e8 */ .word 0x00000000
/* 0805f4ec */ .word 0x00000000
/* 0805f4f0 */ .word 0x0000000c
/* 0805f4f4 */ .word 0x00000003
/* 0805f4f8 */ .word 0x080179f5
/* 0805f4fc */ .word 0x00000001
/* 0805f500 */ .word 0x00000000
/* 0805f504 */ .word 0x00000000
/* 0805f508 */ .word 0x0000000c
/* 0805f50c */ .word 0x00000003
/* 0805f510 */ .word 0x080179f5
/* 0805f514 */ .word 0x00000003
/* 0805f518 */ .word 0x00000000
/* 0805f51c */ .word 0x00000000
/* 0805f520 */ .word 0x00000006
/* 0805f524 */ .word 0x00000003
/* 0805f528 */ .word 0x080179f5
/* 0805f52c */ .word 0x00000002
/* 0805f530 */ .word 0x00000000
/* 0805f534 */ .word 0x00000000
/* 0805f538 */ .word 0x00000006
/* 0805f53c */ .word 0x00000003
/* 0805f540 */ .word 0x080179f5
/* 0805f544 */ .word 0x00000003
/* 0805f548 */ .word 0x00000000
/* 0805f54c */ .word 0x00000000
/* 0805f550 */ .word 0x0000000c
/* 0805f554 */ .word 0x0000000e
/* 0805f558 */ .word 0x00000000
/* 0805f55c */ .word 0x00000000

/* 0805f560 */ 
.asciz "よくきいてマネしてね。\n好きなタイミングでどうぞ。\n演奏を止めると、\nお手本がきけるヨ！"
.balign 4, 0

@ Bytecode 
/* 0805f5b8 */ .word 0x00000003
/* 0805f5bc */ .word 0x080179f5
/* 0805f5c0 */ .word 0x00000002
/* 0805f5c4 */ .word 0x00000000
/* 0805f5c8 */ .word 0x00000000
/* 0805f5cc */ .word 0x00000018
/* 0805f5d0 */ .word 0x00000003
/* 0805f5d4 */ .word 0x080179f5
/* 0805f5d8 */ .word 0x00000001
/* 0805f5dc */ .word 0x00000000
/* 0805f5e0 */ .word 0x00000000
/* 0805f5e4 */ .word 0x0000000c
/* 0805f5e8 */ .word 0x00000003
/* 0805f5ec */ .word 0x080179f5
/* 0805f5f0 */ .word 0x00000001
/* 0805f5f4 */ .word 0x00000000
/* 0805f5f8 */ .word 0x00000000
/* 0805f5fc */ .word 0x0000000c
/* 0805f600 */ .word 0x00000003
/* 0805f604 */ .word 0x080179f5
/* 0805f608 */ .word 0x00000002
/* 0805f60c */ .word 0x00000000
/* 0805f610 */ .word 0x00000000
/* 0805f614 */ .word 0x00000018
/* 0805f618 */ .word 0x0000000e
/* 0805f61c */ .word 0x00000000
/* 0805f620 */ .word 0x00000000

/* 0805f624 */ .word 0x00000003
/* 0805f628 */ .word 0x080179f5
/* 0805f62c */ .word 0x00000001
/* 0805f630 */ .word 0x00000000
/* 0805f634 */ .word 0x00000000
/* 0805f638 */ .word 0x00000015
/* 0805f63c */ .word 0x0000000e
/* 0805f640 */ .word 0x00000000
/* 0805f644 */ .word 0x00000000

/* 0805f648 */ 
.asciz "\n１カ所、音がふえるヨ！\nわかるかな？\n"
.balign 4, 0

@ Bytecode 
/* 0805f670 */ .word 0x00000003
/* 0805f674 */ .word 0x080179f5
/* 0805f678 */ .word 0x00000001
/* 0805f67c */ .word 0x00000000
/* 0805f680 */ .word 0x00000000
/* 0805f684 */ .word 0x00000012
/* 0805f688 */ .word 0x00000003
/* 0805f68c */ .word 0x080179f5
/* 0805f690 */ .word 0x00000001
/* 0805f694 */ .word 0x00000000
/* 0805f698 */ .word 0x00000000
/* 0805f69c */ .word 0x00000003
/* 0805f6a0 */ .word 0x0000000e
/* 0805f6a4 */ .word 0x00000000
/* 0805f6a8 */ .word 0x00000000

/* 0805f6ac */ 
.asciz "さらに１つ、\n音がふえるヨ！\nわかるかな？\nヒント：\x8f\x5c字ボタン上"
.balign 4, 0

@ Bytecode 
/* 0805f6ec */ .word 0x00000003
/* 0805f6f0 */ .word 0x080179f5
/* 0805f6f4 */ .word 0x00000001
/* 0805f6f8 */ .word 0x00000000
/* 0805f6fc */ .word 0x00000000
/* 0805f700 */ .word 0x0000000c
/* 0805f704 */ .word 0x00000003
/* 0805f708 */ .word 0x080179f5
/* 0805f70c */ .word 0x00000004
/* 0805f710 */ .word 0x00000000
/* 0805f714 */ .word 0x00000000
/* 0805f718 */ .word 0x00000006
/* 0805f71c */ .word 0x00000003
/* 0805f720 */ .word 0x080179f5
/* 0805f724 */ .word 0x00000001
/* 0805f728 */ .word 0x00000000
/* 0805f72c */ .word 0x00000000
/* 0805f730 */ .word 0x00000003
/* 0805f734 */ .word 0x0000000e
/* 0805f738 */ .word 0x00000000
/* 0805f73c */ .word 0x00000000

/* 0805f740 */ 
.asciz "\nまたまた１カ所、\n音がふえるヨ！\nわかるかな？\n"
.balign 4, 0

@ Bytecode 
/* 0805f770 */ .word 0x00000003
/* 0805f774 */ .word 0x080179f5
/* 0805f778 */ .word 0x00000002
/* 0805f77c */ .word 0x00000000
/* 0805f780 */ .word 0x00000000
/* 0805f784 */ .word 0x00000018
/* 0805f788 */ .word 0x00000003
/* 0805f78c */ .word 0x080179f5
/* 0805f790 */ .word 0x00000001
/* 0805f794 */ .word 0x00000000
/* 0805f798 */ .word 0x00000000
/* 0805f79c */ .word 0x00000006
/* 0805f7a0 */ .word 0x00000003
/* 0805f7a4 */ .word 0x080179f5
/* 0805f7a8 */ .word 0x00000002
/* 0805f7ac */ .word 0x00000000
/* 0805f7b0 */ .word 0x00000000
/* 0805f7b4 */ .word 0x00000006
/* 0805f7b8 */ .word 0x00000003
/* 0805f7bc */ .word 0x080179f5
/* 0805f7c0 */ .word 0x00000001
/* 0805f7c4 */ .word 0x00000000
/* 0805f7c8 */ .word 0x00000000
/* 0805f7cc */ .word 0x0000000c
/* 0805f7d0 */ .word 0x00000003
/* 0805f7d4 */ .word 0x080179f5
/* 0805f7d8 */ .word 0x00000002
/* 0805f7dc */ .word 0x00000000
/* 0805f7e0 */ .word 0x00000000
/* 0805f7e4 */ .word 0x00000018
/* 0805f7e8 */ .word 0x0000000e
/* 0805f7ec */ .word 0x00000000
/* 0805f7f0 */ .word 0x00000000

/* 0805f7f4 */ .word 0xb582bb82
/* 0805f7f8 */ .word 0xdc82c482
/* 0805f7fc */ .word 0xc882bd82
/* 0805f800 */ .word 0xc682f182
/* 0805f804 */ .word 0x820a4981
/* 0805f808 */ .word 0x8f4a8350
/* 0805f80c */ .word 0x8941818a
/* 0805f810 */ .word 0x82aa82b9
/* 0805f814 */ .word 0x82a682d3
/* 0805f818 */ .word 0x818883e9
/* 0805f81c */ .word 0xed820a49
/* 0805f820 */ .word 0xe982a982
/* 0805f824 */ .word 0xc882a982
/* 0805f828 */ .word 0x830a4881
/* 0805f82c */ .word 0x83938371
/* 0805f830 */ .word 0x8f468167
/* 0805f834 */ .word 0x839a8e5c
/* 0805f838 */ .word 0x835e837b
/* 0805f83c */ .word 0x00458993

@ Bytecode 
/* 0805f840 */ .word 0x00000003
/* 0805f844 */ .word 0x080179f5
/* 0805f848 */ .word 0x00000002
/* 0805f84c */ .word 0x00000000
/* 0805f850 */ .word 0x00000000
/* 0805f854 */ .word 0x00000018
/* 0805f858 */ .word 0x00000003
/* 0805f85c */ .word 0x080179f5
/* 0805f860 */ .word 0x00000001
/* 0805f864 */ .word 0x00000000
/* 0805f868 */ .word 0x00000000
/* 0805f86c */ .word 0x00000006
/* 0805f870 */ .word 0x00000003
/* 0805f874 */ .word 0x080179f5
/* 0805f878 */ .word 0x00000002
/* 0805f87c */ .word 0x00000000
/* 0805f880 */ .word 0x00000000
/* 0805f884 */ .word 0x00000006
/* 0805f888 */ .word 0x00000003
/* 0805f88c */ .word 0x080179f5
/* 0805f890 */ .word 0x00000001
/* 0805f894 */ .word 0x00000000
/* 0805f898 */ .word 0x00000000
/* 0805f89c */ .word 0x0000000c
/* 0805f8a0 */ .word 0x00000003
/* 0805f8a4 */ .word 0x080179f5
/* 0805f8a8 */ .word 0x00000002
/* 0805f8ac */ .word 0x00000000
/* 0805f8b0 */ .word 0x00000000
/* 0805f8b4 */ .word 0x0000000c
/* 0805f8b8 */ .word 0x00000003
/* 0805f8bc */ .word 0x080179f5
/* 0805f8c0 */ .word 0x00000005
/* 0805f8c4 */ .word 0x00000000
/* 0805f8c8 */ .word 0x00000000
/* 0805f8cc */ .word 0x0000000c
/* 0805f8d0 */ .word 0x0000000e
/* 0805f8d4 */ .word 0x00000000
/* 0805f8d8 */ .word 0x00000000

/* 0805f8dc */ .word 0x82b1820a
/* 0805f8e0 */ .word 0x82dc82ea
/* 0805f8e4 */ .word 0x82c882bd
/* 0805f8e8 */ .word 0x81c682f1
/* 0805f8ec */ .word 0x0a498149
/* 0805f8f0 */ .word 0x4a835082
/* 0805f8f4 */ .word 0x41818a8f
/* 0805f8f8 */ .word 0xaa82b989
/* 0805f8fc */ .word 0xa682d382
/* 0805f900 */ .word 0x8883e982
/* 0805f904 */ .word 0x820a4981
/* 0805f908 */ .word 0x82a982ed
/* 0805f90c */ .word 0x82a982e9
/* 0805f910 */ .word 0x0a4881c8
/* 0805f914 */ .word 0x00000000

@ Bytecode 
/* 0805f918 */ .word 0x00000003
/* 0805f91c */ .word 0x080179f5
/* 0805f920 */ .word 0x00000002
/* 0805f924 */ .word 0x00000000
/* 0805f928 */ .word 0x00000000
/* 0805f92c */ .word 0x0000000c
/* 0805f930 */ .word 0x00000003
/* 0805f934 */ .word 0x080179f5
/* 0805f938 */ .word 0x00000002
/* 0805f93c */ .word 0x00000000
/* 0805f940 */ .word 0x00000000
/* 0805f944 */ .word 0x0000000c
/* 0805f948 */ .word 0x00000003
/* 0805f94c */ .word 0x080179f5
/* 0805f950 */ .word 0x00000001
/* 0805f954 */ .word 0x00000000
/* 0805f958 */ .word 0x00000000
/* 0805f95c */ .word 0x00000006
/* 0805f960 */ .word 0x00000003
/* 0805f964 */ .word 0x080179f5
/* 0805f968 */ .word 0x00000002
/* 0805f96c */ .word 0x00000000
/* 0805f970 */ .word 0x00000000
/* 0805f974 */ .word 0x00000006
/* 0805f978 */ .word 0x00000003
/* 0805f97c */ .word 0x080179f5
/* 0805f980 */ .word 0x00000001
/* 0805f984 */ .word 0x00000000
/* 0805f988 */ .word 0x00000000
/* 0805f98c */ .word 0x0000000c
/* 0805f990 */ .word 0x00000003
/* 0805f994 */ .word 0x080179f5
/* 0805f998 */ .word 0x00000002
/* 0805f99c */ .word 0x00000000
/* 0805f9a0 */ .word 0x00000000
/* 0805f9a4 */ .word 0x0000000c
/* 0805f9a8 */ .word 0x00000003
/* 0805f9ac */ .word 0x080179f5
/* 0805f9b0 */ .word 0x00000005
/* 0805f9b4 */ .word 0x00000000
/* 0805f9b8 */ .word 0x00000000
/* 0805f9bc */ .word 0x0000000c
/* 0805f9c0 */ .word 0x0000000e
/* 0805f9c4 */ .word 0x00000000
/* 0805f9c8 */ .word 0x00000000

/* 0805f9cc */ .word 0x9a8e5c8f
/* 0805f9d0 */ .word 0x5e837b83
/* 0805f9d4 */ .word 0xcc829383
/* 0805f9d8 */ .word 0xc582e38f
/* 0805f9dc */ .word 0x82bd820a
/* 0805f9e0 */ .word 0x82a282bd
/* 0805f9e4 */ .word 0x817083bd
/* 0805f9e8 */ .word 0x8263835b
/* 0805f9ec */ .word 0x6e830acd
/* 0805f9f0 */ .word 0x6e834383
/* 0805f9f4 */ .word 0x67836283
/* 0805f9f8 */ .word 0xc482c182
/* 0805f9fc */ .word 0xa482a282
/* 0805fa00 */ .word 0x8356830a
/* 0805fa04 */ .word 0x836f8393
/* 0805fa08 */ .word 0x82c5828b
/* 0805fa0c */ .word 0x004281b7

/* 0805fa10 */ .word 0x89836883
/* 0805fa14 */ .word 0x5a838083
/* 0805fa18 */ .word 0x67836283
/* 0805fa1c */ .word 0xe682c982
/* 0805fa20 */ .word 0xc482c182
/* 0805fa24 */ .word 0x8e5c8f0a
/* 0805fa28 */ .word 0x837b839a
/* 0805fa2c */ .word 0x8293835e
/* 0805fa30 */ .word 0x82e38fcc
/* 0805fa34 */ .word 0x6e830acd
/* 0805fa38 */ .word 0x6e834383
/* 0805fa3c */ .word 0x67836283
/* 0805fa40 */ .word 0xc182be82
/* 0805fa44 */ .word 0xe882bd82
/* 0805fa48 */ .word 0x818d830a
/* 0805fa4c */ .word 0x828b835b
/* 0805fa50 */ .word 0x82c182be
/* 0805fa54 */ .word 0x82e882bd
/* 0805fa58 */ .word 0x82dc82b5
/* 0805fa5c */ .word 0x004281b7

/* 0805fa60 */ .word 0x82c5820a
/* 0805fa64 */ .word 0x824181cd
/* 0805fa68 */ .word 0x8dac82c2
/* 0805fa6c */ .word 0x82ab8273
/* 0805fa70 */ .word 0x825b81dc
/* 0805fa74 */ .word 0x004981b7

/* 0805fa78 */ .word 0xad82e682
/* 0805fa7c */ .word 0xa282ab82
/* 0805fa80 */ .word 0x7d83c482
/* 0805fa84 */ .word 0xb5826c83
/* 0805fa88 */ .word 0xcb82c482
/* 0805fa8c */ .word 0x8d0a4281
/* 0805fa90 */ .word 0x82ab8244
/* 0805fa94 */ .word 0x835e83c8
/* 0805fa98 */ .word 0x837e8343
/* 0805fa9c */ .word 0x824f8393
/* 0805faa0 */ .word 0x82c782c5
/* 0805faa4 */ .word 0x81bc82a4
/* 0805faa8 */ .word 0x89890a42
/* 0805faac */ .word 0xf0827491
/* 0805fab0 */ .word 0xdf827e8e
/* 0805fab4 */ .word 0xc682e982
/* 0805fab8 */ .word 0x820a4181
/* 0805fabc */ .word 0x96e88ea8
/* 0805fac0 */ .word 0x82aa827b
/* 0805fac4 */ .word 0x82af82ab
/* 0805fac8 */ .word 0x818883e9
/* 0805facc */ .word 0x00000049

@ Bytecode 
/* 0805fad0 */ .word 0x00000003
/* 0805fad4 */ .word 0x080179f5
/* 0805fad8 */ .word 0x00000002
/* 0805fadc */ .word 0x00000000
/* 0805fae0 */ .word 0x00000000
/* 0805fae4 */ .word 0x00000018
/* 0805fae8 */ .word 0x00000003
/* 0805faec */ .word 0x080179f5
/* 0805faf0 */ .word 0x00000001
/* 0805faf4 */ .word 0x00000000
/* 0805faf8 */ .word 0x00000000
/* 0805fafc */ .word 0x0000000c
/* 0805fb00 */ .word 0x00000003
/* 0805fb04 */ .word 0x080179f5
/* 0805fb08 */ .word 0x00000001
/* 0805fb0c */ .word 0x00000000
/* 0805fb10 */ .word 0x00000000
/* 0805fb14 */ .word 0x0000000c
/* 0805fb18 */ .word 0x00000003
/* 0805fb1c */ .word 0x080179f5
/* 0805fb20 */ .word 0x00000002
/* 0805fb24 */ .word 0x00000000
/* 0805fb28 */ .word 0x00000000
/* 0805fb2c */ .word 0x00000018
/* 0805fb30 */ .word 0x0000000e
/* 0805fb34 */ .word 0x00000000
/* 0805fb38 */ .word 0x00000000
/* 0805fb3c */ .word 0x00000003
/* 0805fb40 */ .word 0x080179f5
/* 0805fb44 */ .word 0x00000001
/* 0805fb48 */ .word 0x00000000
/* 0805fb4c */ .word 0x00000000
/* 0805fb50 */ .word 0x00000015
/* 0805fb54 */ .word 0x0000000e
/* 0805fb58 */ .word 0x00000000
/* 0805fb5c */ .word 0x00000000

/* 0805fb60 */ .word 0x8350820a
/* 0805fb64 */ .word 0x818a8f4a
/* 0805fb68 */ .word 0x82b98941
/* 0805fb6c */ .word 0x82d382aa
/* 0805fb70 */ .word 0x83e982a6
/* 0805fb74 */ .word 0x0a498188
/* 0805fb78 */ .word 0xa982ed82
/* 0805fb7c */ .word 0xa982e982
/* 0805fb80 */ .word 0x4881c882
/* 0805fb84 */ .word 0x8371830a
/* 0805fb88 */ .word 0x81678393
/* 0805fb8c */ .word 0x8ebc9746
/* 0805fb90 */ .word 0x000000e8

@ Bytecode 
/* 0805fb94 */ .word 0x00000003
/* 0805fb98 */ .word 0x080179f5
/* 0805fb9c */ .word 0x00000002
/* 0805fba0 */ .word 0x00000000
/* 0805fba4 */ .word 0x00000000
/* 0805fba8 */ .word 0x00000018
/* 0805fbac */ .word 0x00000003
/* 0805fbb0 */ .word 0x080179f5
/* 0805fbb4 */ .word 0x00000001
/* 0805fbb8 */ .word 0x00000000
/* 0805fbbc */ .word 0x00000000
/* 0805fbc0 */ .word 0x0000000c
/* 0805fbc4 */ .word 0x00000003
/* 0805fbc8 */ .word 0x080179f5
/* 0805fbcc */ .word 0x00000001
/* 0805fbd0 */ .word 0x00000000
/* 0805fbd4 */ .word 0x00000000
/* 0805fbd8 */ .word 0x0000000b
/* 0805fbdc */ .word 0x00000003
/* 0805fbe0 */ .word 0x080179f5
/* 0805fbe4 */ .word 0x00000003
/* 0805fbe8 */ .word 0x00000000
/* 0805fbec */ .word 0x00000000
/* 0805fbf0 */ .word 0x00000001
/* 0805fbf4 */ .word 0x00000000
/* 0805fbf8 */ .word 0x00000000
/* 0805fbfc */ .word 0x00000001
/* 0805fc00 */ .word 0x00000003
/* 0805fc04 */ .word 0x080179f5
/* 0805fc08 */ .word 0x00000002
/* 0805fc0c */ .word 0x00000000
/* 0805fc10 */ .word 0x00000000
/* 0805fc14 */ .word 0x00000017
/* 0805fc18 */ .word 0x0000000e
/* 0805fc1c */ .word 0x00000000
/* 0805fc20 */ .word 0x00000000

/* 0805fc24 */ .word 0x82b3820a
/* 0805fc28 */ .word 0x82c982e7
/* 0805fc2c */ .word 0x8f4a8350
/* 0805fc30 */ .word 0x0a41818a
/* 0805fc34 */ .word 0xaa82b989
/* 0805fc38 */ .word 0xa682d382
/* 0805fc3c */ .word 0x8883e982
/* 0805fc40 */ .word 0x820a4981
/* 0805fc44 */ .word 0x82a982ed
/* 0805fc48 */ .word 0x82a982e9
/* 0805fc4c */ .word 0x0a4881c8
/* 0805fc50 */ .word 0x00000000

@ Bytecode 
/* 0805fc54 */ .word 0x00000003
/* 0805fc58 */ .word 0x080179f5
/* 0805fc5c */ .word 0x00000001
/* 0805fc60 */ .word 0x00000000
/* 0805fc64 */ .word 0x00000000
/* 0805fc68 */ .word 0x0000000c
/* 0805fc6c */ .word 0x00000003
/* 0805fc70 */ .word 0x080179f5
/* 0805fc74 */ .word 0x00000001
/* 0805fc78 */ .word 0x00000000
/* 0805fc7c */ .word 0x00000000
/* 0805fc80 */ .word 0x00000009
/* 0805fc84 */ .word 0x0000000e
/* 0805fc88 */ .word 0x00000000
/* 0805fc8c */ .word 0x00000000

/* 0805fc90 */ .word 0x82dc820a
/* 0805fc94 */ .word 0x82dc82bd
/* 0805fc98 */ .word 0x835082bd
/* 0805fc9c */ .word 0x818a8f4a
/* 0805fca0 */ .word 0xb9890a41
/* 0805fca4 */ .word 0xd382aa82
/* 0805fca8 */ .word 0xe982a682
/* 0805fcac */ .word 0x49818883
/* 0805fcb0 */ .word 0x82ed820a
/* 0805fcb4 */ .word 0x82e982a9
/* 0805fcb8 */ .word 0x81c882a9
/* 0805fcbc */ .word 0x00000a48

@ Bytecode 
/* 0805fcc0 */ .word 0x00000003
/* 0805fcc4 */ .word 0x080179f5
/* 0805fcc8 */ .word 0x00000001
/* 0805fccc */ .word 0x00000000
/* 0805fcd0 */ .word 0x00000000
/* 0805fcd4 */ .word 0x0000000c
/* 0805fcd8 */ .word 0x00000003
/* 0805fcdc */ .word 0x080179f5
/* 0805fce0 */ .word 0x00000000
/* 0805fce4 */ .word 0x00000000
/* 0805fce8 */ .word 0x00000000
/* 0805fcec */ .word 0x00000006
/* 0805fcf0 */ .word 0x00000003
/* 0805fcf4 */ .word 0x080179f5
/* 0805fcf8 */ .word 0x00000001
/* 0805fcfc */ .word 0x00000000
/* 0805fd00 */ .word 0x00000000
/* 0805fd04 */ .word 0x00000003
/* 0805fd08 */ .word 0x0000000e
/* 0805fd0c */ .word 0x00000000
/* 0805fd10 */ .word 0x00000000

/* 0805fd14 */ .word 0x82bb820a
/* 0805fd18 */ .word 0x82c482b5
/* 0805fd1c */ .word 0x82bd82dc
/* 0805fd20 */ .word 0x82f182c8
/* 0805fd24 */ .word 0x0a4981c6
/* 0805fd28 */ .word 0x4a835082
/* 0805fd2c */ .word 0x41818a8f
/* 0805fd30 */ .word 0xaa82b989
/* 0805fd34 */ .word 0xa682d382
/* 0805fd38 */ .word 0x8883e982
/* 0805fd3c */ .word 0x820a4981
/* 0805fd40 */ .word 0x82a982ed
/* 0805fd44 */ .word 0x82a982e9
/* 0805fd48 */ .word 0x0a4881c8
/* 0805fd4c */ .word 0x00000000

@ Bytecode 
/* 0805fd50 */ .word 0x00000003
/* 0805fd54 */ .word 0x080179f5
/* 0805fd58 */ .word 0x00000001
/* 0805fd5c */ .word 0x00000000
/* 0805fd60 */ .word 0x00000000
/* 0805fd64 */ .word 0x0000000c
/* 0805fd68 */ .word 0x00000003
/* 0805fd6c */ .word 0x080179f5
/* 0805fd70 */ .word 0x00000001
/* 0805fd74 */ .word 0x00000000
/* 0805fd78 */ .word 0x00000000
/* 0805fd7c */ .word 0x00000004
/* 0805fd80 */ .word 0x00000003
/* 0805fd84 */ .word 0x080179f5
/* 0805fd88 */ .word 0x00000000
/* 0805fd8c */ .word 0x00000000
/* 0805fd90 */ .word 0x00000000
/* 0805fd94 */ .word 0x00000004
/* 0805fd98 */ .word 0x00000003
/* 0805fd9c */ .word 0x080179f5
/* 0805fda0 */ .word 0x00000001
/* 0805fda4 */ .word 0x00000000
/* 0805fda8 */ .word 0x00000000
/* 0805fdac */ .word 0x00000001
/* 0805fdb0 */ .word 0x0000000e
/* 0805fdb4 */ .word 0x00000000
/* 0805fdb8 */ .word 0x00000000

/* 0805fdbc */ .word 0x82b1820a
/* 0805fdc0 */ .word 0x82dc82ea
/* 0805fdc4 */ .word 0x82c882bd
/* 0805fdc8 */ .word 0x81c682f1
/* 0805fdcc */ .word 0x0a498149
/* 0805fdd0 */ .word 0x4a835082
/* 0805fdd4 */ .word 0x41818a8f
/* 0805fdd8 */ .word 0xaa82b989
/* 0805fddc */ .word 0xa682d382
/* 0805fde0 */ .word 0x8883e982
/* 0805fde4 */ .word 0x820a4981
/* 0805fde8 */ .word 0x82a982ed
/* 0805fdec */ .word 0x82a982e9
/* 0805fdf0 */ .word 0x0a4881c8
/* 0805fdf4 */ .word 0x00000000

@ Bytecode 
/* 0805fdf8 */ .word 0x00000003
/* 0805fdfc */ .word 0x080179f5
/* 0805fe00 */ .word 0x00000002
/* 0805fe04 */ .word 0x00000000
/* 0805fe08 */ .word 0x00000000
/* 0805fe0c */ .word 0x00000006
/* 0805fe10 */ .word 0x00000003
/* 0805fe14 */ .word 0x080179f5
/* 0805fe18 */ .word 0x00000001
/* 0805fe1c */ .word 0x00000000
/* 0805fe20 */ .word 0x00000000
/* 0805fe24 */ .word 0x00000012
/* 0805fe28 */ .word 0x00000003
/* 0805fe2c */ .word 0x080179f5
/* 0805fe30 */ .word 0x00000001
/* 0805fe34 */ .word 0x00000000
/* 0805fe38 */ .word 0x00000000
/* 0805fe3c */ .word 0x0000000c
/* 0805fe40 */ .word 0x00000003
/* 0805fe44 */ .word 0x080179f5
/* 0805fe48 */ .word 0x00000001
/* 0805fe4c */ .word 0x00000000
/* 0805fe50 */ .word 0x00000000
/* 0805fe54 */ .word 0x0000000b
/* 0805fe58 */ .word 0x00000003
/* 0805fe5c */ .word 0x080179f5
/* 0805fe60 */ .word 0x00000003
/* 0805fe64 */ .word 0x00000000
/* 0805fe68 */ .word 0x00000000
/* 0805fe6c */ .word 0x00000001
/* 0805fe70 */ .word 0x00000000
/* 0805fe74 */ .word 0x00000000
/* 0805fe78 */ .word 0x00000001
/* 0805fe7c */ .word 0x00000003
/* 0805fe80 */ .word 0x080179f5
/* 0805fe84 */ .word 0x00000002
/* 0805fe88 */ .word 0x00000000
/* 0805fe8c */ .word 0x00000000
/* 0805fe90 */ .word 0x00000017
/* 0805fe94 */ .word 0x0000000e
/* 0805fe98 */ .word 0x00000000
/* 0805fe9c */ .word 0x00000000

/* 0805fea0 */ .word 0xad82e682
/* 0805fea4 */ .word 0xa282ab82
/* 0805fea8 */ .word 0x7d83c482
/* 0805feac */ .word 0xb5826c83
/* 0805feb0 */ .word 0xcb82c482
/* 0805feb4 */ .word 0x8d0a4281
/* 0805feb8 */ .word 0x82ab8244
/* 0805febc */ .word 0x835e83c8
/* 0805fec0 */ .word 0x837e8343
/* 0805fec4 */ .word 0x824f8393
/* 0805fec8 */ .word 0x82c782c5
/* 0805fecc */ .word 0x81bc82a4
/* 0805fed0 */ .word 0x89890a42
/* 0805fed4 */ .word 0xf0827491
/* 0805fed8 */ .word 0xdf827e8e
/* 0805fedc */ .word 0xc682e982
/* 0805fee0 */ .word 0x820a4181
/* 0805fee4 */ .word 0x96e88ea8
/* 0805fee8 */ .word 0x82aa827b
/* 0805feec */ .word 0x82af82ab
/* 0805fef0 */ .word 0x818883e9
/* 0805fef4 */ .word 0x00000049

@ Bytecode 
/* 0805fef8 */ .word 0x00000003
/* 0805fefc */ .word 0x080179f5
/* 0805ff00 */ .word 0x00000002
/* 0805ff04 */ .word 0x00000000
/* 0805ff08 */ .word 0x00000000
/* 0805ff0c */ .word 0x00000018
/* 0805ff10 */ .word 0x00000000
/* 0805ff14 */ .word 0x00000000
/* 0805ff18 */ .word 0x0000000c
/* 0805ff1c */ .word 0x00000003
/* 0805ff20 */ .word 0x080179f5
/* 0805ff24 */ .word 0x00000001
/* 0805ff28 */ .word 0x00000000
/* 0805ff2c */ .word 0x00000000
/* 0805ff30 */ .word 0x0000000c
/* 0805ff34 */ .word 0x00000003
/* 0805ff38 */ .word 0x080179f5
/* 0805ff3c */ .word 0x00000002
/* 0805ff40 */ .word 0x00000000
/* 0805ff44 */ .word 0x00000000
/* 0805ff48 */ .word 0x00000018
/* 0805ff4c */ .word 0x0000000e
/* 0805ff50 */ .word 0x00000000
/* 0805ff54 */ .word 0x00000000
/* 0805ff58 */ .word 0x00000003
/* 0805ff5c */ .word 0x080179f5
/* 0805ff60 */ .word 0x00000001
/* 0805ff64 */ .word 0x00000000
/* 0805ff68 */ .word 0x00000000
/* 0805ff6c */ .word 0x00000015
/* 0805ff70 */ .word 0x0000000e
/* 0805ff74 */ .word 0x00000000
/* 0805ff78 */ .word 0x00000000

/* 0805ff7c */ .word 0x8350820a
/* 0805ff80 */ .word 0x818a8f4a
/* 0805ff84 */ .word 0x82b98941
/* 0805ff88 */ .word 0x82d382aa
/* 0805ff8c */ .word 0x83e982a6
/* 0805ff90 */ .word 0x0a498188
/* 0805ff94 */ .word 0xa982ed82
/* 0805ff98 */ .word 0xa982e982
/* 0805ff9c */ .word 0x4881c882
/* 0805ffa0 */ .word 0x8371830a
/* 0805ffa4 */ .word 0x81678393
/* 0805ffa8 */ .word 0x7b835246
/* 0805ffac */ .word 0x93835e83
/* 0805ffb0 */ .word 0x00000000

@ Bytecode 
/* 0805ffb4 */ .word 0x00000003
/* 0805ffb8 */ .word 0x080179f5
/* 0805ffbc */ .word 0x00000001
/* 0805ffc0 */ .word 0x00000003
/* 0805ffc4 */ .word 0x080179f5
/* 0805ffc8 */ .word 0x00000007
/* 0805ffcc */ .word 0x00000000
/* 0805ffd0 */ .word 0x00000000
/* 0805ffd4 */ .word 0x00000015
/* 0805ffd8 */ .word 0x0000000e
/* 0805ffdc */ .word 0x00000000
/* 0805ffe0 */ .word 0x00000000

/* 0805ffe4 */ .word 0x82b3820a
/* 0805ffe8 */ .word 0x82c982e7
/* 0805ffec */ .word 0x8f4a8350
/* 0805fff0 */ .word 0x0a41818a
/* 0805fff4 */ .word 0xaa82b989
/* 0805fff8 */ .word 0xa682d382
/* 0805fffc */ .word 0x8883e982
/* 08060000 */ .word 0x820a4981
/* 08060004 */ .word 0x82a982ed
/* 08060008 */ .word 0x82a982e9
/* 0806000c */ .word 0x0a4881c8
/* 08060010 */ .word 0x00000000

@ Bytecode 
/* 08060014 */ .word 0x00000003
/* 08060018 */ .word 0x080179f5
/* 0806001c */ .word 0x00000002
/* 08060020 */ .word 0x00000000
/* 08060024 */ .word 0x00000000
/* 08060028 */ .word 0x00000018
/* 0806002c */ .word 0x00000003
/* 08060030 */ .word 0x080179f5
/* 08060034 */ .word 0x00000003
/* 08060038 */ .word 0x00000000
/* 0806003c */ .word 0x00000000
/* 08060040 */ .word 0x0000000c
/* 08060044 */ .word 0x00000003
/* 08060048 */ .word 0x080179f5
/* 0806004c */ .word 0x00000001
/* 08060050 */ .word 0x00000000
/* 08060054 */ .word 0x00000000
/* 08060058 */ .word 0x0000000c
/* 0806005c */ .word 0x00000003
/* 08060060 */ .word 0x080179f5
/* 08060064 */ .word 0x00000002
/* 08060068 */ .word 0x00000000
/* 0806006c */ .word 0x00000000
/* 08060070 */ .word 0x00000018
/* 08060074 */ .word 0x0000000e
/* 08060078 */ .word 0x00000000
/* 0806007c */ .word 0x00000000

/* 08060080 */ .word 0xbd82dc82
/* 08060084 */ .word 0xbd82dc82
/* 08060088 */ .word 0x4a835082
/* 0806008c */ .word 0x41818a8f
/* 08060090 */ .word 0x82b9890a
/* 08060094 */ .word 0x82d382aa
/* 08060098 */ .word 0x83e982a6
/* 0806009c */ .word 0x0a498188
/* 080600a0 */ .word 0xa982ed82
/* 080600a4 */ .word 0xa982e982
/* 080600a8 */ .word 0x4881c882
/* 080600ac */ .word 0x8371830a
/* 080600b0 */ .word 0x81678393
/* 080600b4 */ .word 0x8e5c8f46
/* 080600b8 */ .word 0x837b839a
/* 080600bc */ .word 0x8993835e
/* 080600c0 */ .word 0x00000045

@ Bytecode 
/* 080600c4 */ .word 0x00000003
/* 080600c8 */ .word 0x080179f5
/* 080600cc */ .word 0x00000002
/* 080600d0 */ .word 0x00000000
/* 080600d4 */ .word 0x00000000
/* 080600d8 */ .word 0x00000018
/* 080600dc */ .word 0x00000003
/* 080600e0 */ .word 0x080179f5
/* 080600e4 */ .word 0x00000003
/* 080600e8 */ .word 0x00000000
/* 080600ec */ .word 0x00000000
/* 080600f0 */ .word 0x00000006
/* 080600f4 */ .word 0x00000003
/* 080600f8 */ .word 0x080179f5
/* 080600fc */ .word 0x00000005
/* 08060100 */ .word 0x00000000
/* 08060104 */ .word 0x00000000
/* 08060108 */ .word 0x00000006
/* 0806010c */ .word 0x00000003
/* 08060110 */ .word 0x080179f5
/* 08060114 */ .word 0x00000001
/* 08060118 */ .word 0x00000000
/* 0806011c */ .word 0x00000000
/* 08060120 */ .word 0x0000000c
/* 08060124 */ .word 0x00000003
/* 08060128 */ .word 0x080179f5
/* 0806012c */ .word 0x00000002
/* 08060130 */ .word 0x00000000
/* 08060134 */ .word 0x00000000
/* 08060138 */ .word 0x00000018
/* 0806013c */ .word 0x0000000e
/* 08060140 */ .word 0x00000000
/* 08060144 */ .word 0x00000000

/* 08060148 */ .word 0x82bb820a
/* 0806014c */ .word 0x82c482b5
/* 08060150 */ .word 0x82bd82dc
/* 08060154 */ .word 0x82f182c8
/* 08060158 */ .word 0x0a4981c6
/* 0806015c */ .word 0x4a835082
/* 08060160 */ .word 0x41818a8f
/* 08060164 */ .word 0xaa82b989
/* 08060168 */ .word 0xa682d382
/* 0806016c */ .word 0x8883e982
/* 08060170 */ .word 0x820a4981
/* 08060174 */ .word 0x82a982ed
/* 08060178 */ .word 0x82a982e9
/* 0806017c */ .word 0x0a4881c8
/* 08060180 */ .word 0x00000000

@ Bytecode 
/* 08060184 */ .word 0x00000003
/* 08060188 */ .word 0x080179f5
/* 0806018c */ .word 0x00000002
/* 08060190 */ .word 0x00000000
/* 08060194 */ .word 0x00000000
/* 08060198 */ .word 0x00000018
/* 0806019c */ .word 0x00000003
/* 080601a0 */ .word 0x080179f5
/* 080601a4 */ .word 0x00000003
/* 080601a8 */ .word 0x00000000
/* 080601ac */ .word 0x00000000
/* 080601b0 */ .word 0x00000006
/* 080601b4 */ .word 0x00000003
/* 080601b8 */ .word 0x080179f5
/* 080601bc */ .word 0x00000005
/* 080601c0 */ .word 0x00000000
/* 080601c4 */ .word 0x00000000
/* 080601c8 */ .word 0x00000006
/* 080601cc */ .word 0x00000003
/* 080601d0 */ .word 0x080179f5
/* 080601d4 */ .word 0x00000001
/* 080601d8 */ .word 0x00000000
/* 080601dc */ .word 0x00000000
/* 080601e0 */ .word 0x0000000c
/* 080601e4 */ .word 0x00000003
/* 080601e8 */ .word 0x080179f5
/* 080601ec */ .word 0x00000002
/* 080601f0 */ .word 0x00000000
/* 080601f4 */ .word 0x00000000
/* 080601f8 */ .word 0x0000000c
/* 080601fc */ .word 0x00000003
/* 08060200 */ .word 0x080179f5
/* 08060204 */ .word 0x00000002
/* 08060208 */ .word 0x00000000
/* 0806020c */ .word 0x00000000
/* 08060210 */ .word 0x0000000c
/* 08060214 */ .word 0x0000000e
/* 08060218 */ .word 0x00000000
/* 0806021c */ .word 0x00000000

/* 08060220 */ .word 0x82b1820a
/* 08060224 */ .word 0x82dc82ea
/* 08060228 */ .word 0x82c882bd
/* 0806022c */ .word 0x81c682f1
/* 08060230 */ .word 0x0a498149
/* 08060234 */ .word 0x4a835082
/* 08060238 */ .word 0x41818a8f
/* 0806023c */ .word 0xaa82b989
/* 08060240 */ .word 0xa682d382
/* 08060244 */ .word 0x8883e982
/* 08060248 */ .word 0x820a4981
/* 0806024c */ .word 0x82a982ed
/* 08060250 */ .word 0x82a982e9
/* 08060254 */ .word 0x0a4881c8

@ Bytecode 
/* 08060258 */ .word 0x00000000
/* 0806025c */ .word 0x00000003
/* 08060260 */ .word 0x080179f5
/* 08060264 */ .word 0x00000002
/* 08060268 */ .word 0x00000000
/* 0806026c */ .word 0x00000000
/* 08060270 */ .word 0x00000018
/* 08060274 */ .word 0x00000003
/* 08060278 */ .word 0x080179f5
/* 0806027c */ .word 0x00000003
/* 08060280 */ .word 0x00000000
/* 08060284 */ .word 0x00000000
/* 08060288 */ .word 0x00000006
/* 0806028c */ .word 0x00000003
/* 08060290 */ .word 0x080179f5
/* 08060294 */ .word 0x00000005
/* 08060298 */ .word 0x00000000
/* 0806029c */ .word 0x00000000
/* 080602a0 */ .word 0x00000006
/* 080602a4 */ .word 0x00000003
/* 080602a8 */ .word 0x080179f5
/* 080602ac */ .word 0x00000001
/* 080602b0 */ .word 0x00000000
/* 080602b4 */ .word 0x00000000
/* 080602b8 */ .word 0x0000000c
/* 080602bc */ .word 0x00000003
/* 080602c0 */ .word 0x080179f5
/* 080602c4 */ .word 0x00000002
/* 080602c8 */ .word 0x00000000
/* 080602cc */ .word 0x00000000
/* 080602d0 */ .word 0x0000000c
/* 080602d4 */ .word 0x00000003
/* 080602d8 */ .word 0x080179f5
/* 080602dc */ .word 0x00000003
/* 080602e0 */ .word 0x00000000
/* 080602e4 */ .word 0x00000000
/* 080602e8 */ .word 0x00000006
/* 080602ec */ .word 0x00000003
/* 080602f0 */ .word 0x080179f5
/* 080602f4 */ .word 0x00000002
/* 080602f8 */ .word 0x00000000
/* 080602fc */ .word 0x00000000
/* 08060300 */ .word 0x00000006
/* 08060304 */ .word 0x0000000e
/* 08060308 */ .word 0x00000000
/* 0806030c */ .word 0x00000000

/* 08060310 */ .word 0xad82e682
/* 08060314 */ .word 0xa282ab82
/* 08060318 */ .word 0x7d83c482
/* 0806031c */ .word 0xb5826c83
/* 08060320 */ .word 0xcb82c482
/* 08060324 */ .word 0x8d0a4281
/* 08060328 */ .word 0x82ab8244
/* 0806032c */ .word 0x835e83c8
/* 08060330 */ .word 0x837e8343
/* 08060334 */ .word 0x824f8393
/* 08060338 */ .word 0x82c782c5
/* 0806033c */ .word 0x81bc82a4
/* 08060340 */ .word 0x89890a42
/* 08060344 */ .word 0xf0827491
/* 08060348 */ .word 0xdf827e8e
/* 0806034c */ .word 0xc682e982
/* 08060350 */ .word 0x820a4181
/* 08060354 */ .word 0x96e88ea8
/* 08060358 */ .word 0x82aa827b
/* 0806035c */ .word 0x82af82ab
/* 08060360 */ .word 0x818883e9
/* 08060364 */ .word 0x00000049

@ Bytecode 
/* 08060368 */ .word 0x00000003
/* 0806036c */ .word 0x080179f5
/* 08060370 */ .word 0x00000002
/* 08060374 */ .word 0x00000000
/* 08060378 */ .word 0x00000000
/* 0806037c */ .word 0x00000018
/* 08060380 */ .word 0x00000000
/* 08060384 */ .word 0x00000000
/* 08060388 */ .word 0x0000000c
/* 0806038c */ .word 0x00000003
/* 08060390 */ .word 0x080179f5
/* 08060394 */ .word 0x00000001
/* 08060398 */ .word 0x00000000
/* 0806039c */ .word 0x00000000
/* 080603a0 */ .word 0x0000000c
/* 080603a4 */ .word 0x00000003
/* 080603a8 */ .word 0x080179f5
/* 080603ac */ .word 0x00000002
/* 080603b0 */ .word 0x00000000
/* 080603b4 */ .word 0x00000000
/* 080603b8 */ .word 0x00000018
/* 080603bc */ .word 0x0000000e
/* 080603c0 */ .word 0x00000000
/* 080603c4 */ .word 0x00000000
/* 080603c8 */ .word 0x00000003
/* 080603cc */ .word 0x080179f5
/* 080603d0 */ .word 0x00000001
/* 080603d4 */ .word 0x00000000
/* 080603d8 */ .word 0x00000000
/* 080603dc */ .word 0x00000015
/* 080603e0 */ .word 0x0000000e
/* 080603e4 */ .word 0x00000000
/* 080603e8 */ .word 0x00000000

/* 080603ec */ .word 0x8350820a
/* 080603f0 */ .word 0x818a8f4a
/* 080603f4 */ .word 0x82b98941
/* 080603f8 */ .word 0x82d382aa
/* 080603fc */ .word 0x83e982a6
/* 08060400 */ .word 0x0a498188
/* 08060404 */ .word 0xa982ed82
/* 08060408 */ .word 0xa982e982
/* 0806040c */ .word 0x4881c882
/* 08060410 */ .word 0x8371830a
/* 08060414 */ .word 0x81678393
/* 08060418 */ .word 0x7b835246
/* 0806041c */ .word 0x93835e83
/* 08060420 */ .word 0x00000000

@ Bytecode 
/* 08060424 */ .word 0x00000003
/* 08060428 */ .word 0x080179f5
/* 0806042c */ .word 0x00000001
/* 08060430 */ .word 0x00000003
/* 08060434 */ .word 0x080179f5
/* 08060438 */ .word 0x00000007
/* 0806043c */ .word 0x00000000
/* 08060440 */ .word 0x00000000
/* 08060444 */ .word 0x00000015
/* 08060448 */ .word 0x0000000e
/* 0806044c */ .word 0x00000000
/* 08060450 */ .word 0x00000000

/* 08060454 */ .word 0x82b3820a
/* 08060458 */ .word 0x82c982e7
/* 0806045c */ .word 0x8f4a8350
/* 08060460 */ .word 0x0a41818a
/* 08060464 */ .word 0xaa82b989
/* 08060468 */ .word 0xa682d382
/* 0806046c */ .word 0x8883e982
/* 08060470 */ .word 0x820a4981
/* 08060474 */ .word 0x82a982ed
/* 08060478 */ .word 0x82a982e9
/* 0806047c */ .word 0x0a4881c8

@ Bytecode 
/* 08060480 */ .word 0x00000000
/* 08060484 */ .word 0x00000003
/* 08060488 */ .word 0x080179f5
/* 0806048c */ .word 0x00000002
/* 08060490 */ .word 0x00000000
/* 08060494 */ .word 0x00000000
/* 08060498 */ .word 0x00000018
/* 0806049c */ .word 0x00000003
/* 080604a0 */ .word 0x080179f5
/* 080604a4 */ .word 0x00000002
/* 080604a8 */ .word 0x00000000
/* 080604ac */ .word 0x00000000
/* 080604b0 */ .word 0x0000000c
/* 080604b4 */ .word 0x00000003
/* 080604b8 */ .word 0x080179f5
/* 080604bc */ .word 0x00000001
/* 080604c0 */ .word 0x00000000
/* 080604c4 */ .word 0x00000000
/* 080604c8 */ .word 0x0000000c
/* 080604cc */ .word 0x00000003
/* 080604d0 */ .word 0x080179f5
/* 080604d4 */ .word 0x00000002
/* 080604d8 */ .word 0x00000000
/* 080604dc */ .word 0x00000000
/* 080604e0 */ .word 0x00000018
/* 080604e4 */ .word 0x0000000e
/* 080604e8 */ .word 0x00000000
/* 080604ec */ .word 0x00000000

/* 080604f0 */ .word 0x82dc820a
/* 080604f4 */ .word 0x82dc82bd
/* 080604f8 */ .word 0x835082bd
/* 080604fc */ .word 0x818a8f4a
/* 08060500 */ .word 0xb9890a41
/* 08060504 */ .word 0xd382aa82
/* 08060508 */ .word 0xe982a682
/* 0806050c */ .word 0x49818883
/* 08060510 */ .word 0x82ed820a
/* 08060514 */ .word 0x82e982a9
/* 08060518 */ .word 0x81c882a9
/* 0806051c */ .word 0x00000a48

@ Bytecode 
/* 08060520 */ .word 0x00000003
/* 08060524 */ .word 0x080179f5
/* 08060528 */ .word 0x00000001
/* 0806052c */ .word 0x00000003
/* 08060530 */ .word 0x080179f5
/* 08060534 */ .word 0x00000007
/* 08060538 */ .word 0x00000000
/* 0806053c */ .word 0x00000000
/* 08060540 */ .word 0x00000012
/* 08060544 */ .word 0x00000003
/* 08060548 */ .word 0x080179f5
/* 0806054c */ .word 0x00000001
/* 08060550 */ .word 0x00000000
/* 08060554 */ .word 0x00000000
/* 08060558 */ .word 0x00000003
/* 0806055c */ .word 0x0000000e
/* 08060560 */ .word 0x00000000
/* 08060564 */ .word 0x00000000

/* 08060568 */ .word 0x82bb820a
/* 0806056c */ .word 0x82c482b5
/* 08060570 */ .word 0x82bd82dc
/* 08060574 */ .word 0x82f182c8
/* 08060578 */ .word 0x0a4981c6
/* 0806057c */ .word 0x4a835082
/* 08060580 */ .word 0x41818a8f
/* 08060584 */ .word 0xaa82b989
/* 08060588 */ .word 0xa682d382
/* 0806058c */ .word 0x8883e982
/* 08060590 */ .word 0x820a4981
/* 08060594 */ .word 0x82a982ed
/* 08060598 */ .word 0x82a982e9
/* 0806059c */ .word 0x0a4881c8
/* 080605a0 */ .word 0x00000000

@ Bytecode 
/* 080605a4 */ .word 0x00000003
/* 080605a8 */ .word 0x080179f5
/* 080605ac */ .word 0x00000002
/* 080605b0 */ .word 0x00000000
/* 080605b4 */ .word 0x00000000
/* 080605b8 */ .word 0x00000006
/* 080605bc */ .word 0x00000003
/* 080605c0 */ .word 0x080179f5
/* 080605c4 */ .word 0x00000001
/* 080605c8 */ .word 0x00000000
/* 080605cc */ .word 0x00000000
/* 080605d0 */ .word 0x00000012
/* 080605d4 */ .word 0x00000003
/* 080605d8 */ .word 0x080179f5
/* 080605dc */ .word 0x00000002
/* 080605e0 */ .word 0x00000000
/* 080605e4 */ .word 0x00000000
/* 080605e8 */ .word 0x0000000c
/* 080605ec */ .word 0x00000003
/* 080605f0 */ .word 0x080179f5
/* 080605f4 */ .word 0x00000001
/* 080605f8 */ .word 0x00000000
/* 080605fc */ .word 0x00000000
/* 08060600 */ .word 0x0000000c
/* 08060604 */ .word 0x00000003
/* 08060608 */ .word 0x080179f5
/* 0806060c */ .word 0x00000002
/* 08060610 */ .word 0x00000000
/* 08060614 */ .word 0x00000000
/* 08060618 */ .word 0x00000018
/* 0806061c */ .word 0x0000000e
/* 08060620 */ .word 0x00000000
/* 08060624 */ .word 0x00000000

/* 08060628 */ .word 0x82b1820a
/* 0806062c */ .word 0x82dc82ea
/* 08060630 */ .word 0x82c882bd
/* 08060634 */ .word 0x81c682f1
/* 08060638 */ .word 0x0a498149
/* 0806063c */ .word 0x4a835082
/* 08060640 */ .word 0x41818a8f
/* 08060644 */ .word 0xaa82b989
/* 08060648 */ .word 0xa682d382
/* 0806064c */ .word 0x8883e982
/* 08060650 */ .word 0x820a4981
/* 08060654 */ .word 0x82a982ed
/* 08060658 */ .word 0x82a982e9
/* 0806065c */ .word 0x0a4881c8
/* 08060660 */ .word 0x00000000

@ Bytecode 
/* 08060664 */ .word 0x00000003
/* 08060668 */ .word 0x080179f5
/* 0806066c */ .word 0x00000002
/* 08060670 */ .word 0x00000000
/* 08060674 */ .word 0x00000000
/* 08060678 */ .word 0x00000006
/* 0806067c */ .word 0x00000003
/* 08060680 */ .word 0x080179f5
/* 08060684 */ .word 0x00000001
/* 08060688 */ .word 0x00000000
/* 0806068c */ .word 0x00000000
/* 08060690 */ .word 0x0000000c
/* 08060694 */ .word 0x00000003
/* 08060698 */ .word 0x080179f5
/* 0806069c */ .word 0x00000001
/* 080606a0 */ .word 0x00000000
/* 080606a4 */ .word 0x00000000
/* 080606a8 */ .word 0x00000006
/* 080606ac */ .word 0x00000003
/* 080606b0 */ .word 0x080179f5
/* 080606b4 */ .word 0x00000002
/* 080606b8 */ .word 0x00000000
/* 080606bc */ .word 0x00000000
/* 080606c0 */ .word 0x0000000c
/* 080606c4 */ .word 0x00000003
/* 080606c8 */ .word 0x080179f5
/* 080606cc */ .word 0x00000001
/* 080606d0 */ .word 0x00000000
/* 080606d4 */ .word 0x00000000
/* 080606d8 */ .word 0x0000000c
/* 080606dc */ .word 0x00000003
/* 080606e0 */ .word 0x080179f5
/* 080606e4 */ .word 0x00000002
/* 080606e8 */ .word 0x00000000
/* 080606ec */ .word 0x00000000
/* 080606f0 */ .word 0x00000018
/* 080606f4 */ .word 0x0000000e
/* 080606f8 */ .word 0x00000000
/* 080606fc */ .word 0x00000000

/* 08060700 */ .word 0x82dc820a
/* 08060704 */ .word 0x82dc82bd
/* 08060708 */ .word 0x82c882bd
/* 0806070c */ .word 0x81c682f1
/* 08060710 */ .word 0x0a498149
/* 08060714 */ .word 0x4a835082
/* 08060718 */ .word 0x41818a8f
/* 0806071c */ .word 0xaa82b989
/* 08060720 */ .word 0xa682d382
/* 08060724 */ .word 0x8883e982
/* 08060728 */ .word 0x820a4981
/* 0806072c */ .word 0x82a982ed
/* 08060730 */ .word 0x82a982e9
/* 08060734 */ .word 0x0a4881c8
/* 08060738 */ .word 0x00000000

@ Bytecode 
/* 0806073c */ .word 0x00000003
/* 08060740 */ .word 0x080179f5
/* 08060744 */ .word 0x00000002
/* 08060748 */ .word 0x00000000
/* 0806074c */ .word 0x00000000
/* 08060750 */ .word 0x00000006
/* 08060754 */ .word 0x00000003
/* 08060758 */ .word 0x080179f5
/* 0806075c */ .word 0x00000001
/* 08060760 */ .word 0x00000000
/* 08060764 */ .word 0x00000000
/* 08060768 */ .word 0x0000000c
/* 0806076c */ .word 0x00000003
/* 08060770 */ .word 0x080179f5
/* 08060774 */ .word 0x00000001
/* 08060778 */ .word 0x00000000
/* 0806077c */ .word 0x00000000
/* 08060780 */ .word 0x00000006
/* 08060784 */ .word 0x00000003
/* 08060788 */ .word 0x080179f5
/* 0806078c */ .word 0x00000002
/* 08060790 */ .word 0x00000000
/* 08060794 */ .word 0x00000000
/* 08060798 */ .word 0x00000006
/* 0806079c */ .word 0x00000003
/* 080607a0 */ .word 0x080179f5
/* 080607a4 */ .word 0x00000001
/* 080607a8 */ .word 0x00000000
/* 080607ac */ .word 0x00000000
/* 080607b0 */ .word 0x00000006
/* 080607b4 */ .word 0x00000003
/* 080607b8 */ .word 0x080179f5
/* 080607bc */ .word 0x00000000
/* 080607c0 */ .word 0x00000000
/* 080607c4 */ .word 0x00000000
/* 080607c8 */ .word 0x0000000c
/* 080607cc */ .word 0x00000003
/* 080607d0 */ .word 0x080179f5
/* 080607d4 */ .word 0x00000003
/* 080607d8 */ .word 0x00000000
/* 080607dc */ .word 0x00000000
/* 080607e0 */ .word 0x00000018
/* 080607e4 */ .word 0x0000000e
/* 080607e8 */ .word 0x00000000
/* 080607ec */ .word 0x00000000

/* 080607f0 */ .word 0xea82b182
/* 080607f4 */ .word 0xb382c582
/* 080607f8 */ .word 0xb282a282
/* 080607fc */ .word 0x49814981
/* 08060800 */ .word 0x8350820a
/* 08060804 */ .word 0x818a8f4a
/* 08060808 */ .word 0x82b98941
/* 0806080c */ .word 0x82d382aa
/* 08060810 */ .word 0x83e982a6
/* 08060814 */ .word 0x0a498188
/* 08060818 */ .word 0xa982ed82
/* 0806081c */ .word 0xa982e982
/* 08060820 */ .word 0x4881c882
/* 08060824 */ .word 0x8371830a
/* 08060828 */ .word 0x81678393
/* 0806082c */ .word 0x8ebc9746
/* 08060830 */ .word 0x000000e8

@ Bytecode 
/* 08060834 */ .word 0x00000003
/* 08060838 */ .word 0x080179f5
/* 0806083c */ .word 0x00000002
/* 08060840 */ .word 0x00000000
/* 08060844 */ .word 0x00000000
/* 08060848 */ .word 0x00000006
/* 0806084c */ .word 0x00000003
/* 08060850 */ .word 0x080179f5
/* 08060854 */ .word 0x00000001
/* 08060858 */ .word 0x00000000
/* 0806085c */ .word 0x00000000
/* 08060860 */ .word 0x0000000c
/* 08060864 */ .word 0x00000003
/* 08060868 */ .word 0x080179f5
/* 0806086c */ .word 0x00000001
/* 08060870 */ .word 0x00000000
/* 08060874 */ .word 0x00000000
/* 08060878 */ .word 0x00000006
/* 0806087c */ .word 0x00000003
/* 08060880 */ .word 0x080179f5
/* 08060884 */ .word 0x00000002
/* 08060888 */ .word 0x00000000
/* 0806088c */ .word 0x00000000
/* 08060890 */ .word 0x00000006
/* 08060894 */ .word 0x00000003
/* 08060898 */ .word 0x080179f5
/* 0806089c */ .word 0x00000001
/* 080608a0 */ .word 0x00000000
/* 080608a4 */ .word 0x00000000
/* 080608a8 */ .word 0x00000006
/* 080608ac */ .word 0x00000003
/* 080608b0 */ .word 0x080179f5
/* 080608b4 */ .word 0x00000000
/* 080608b8 */ .word 0x00000000
/* 080608bc */ .word 0x00000000
/* 080608c0 */ .word 0x0000000b
/* 080608c4 */ .word 0x00000003
/* 080608c8 */ .word 0x080179f5
/* 080608cc */ .word 0x00000003
/* 080608d0 */ .word 0x00000000
/* 080608d4 */ .word 0x00000000
/* 080608d8 */ .word 0x00000001
/* 080608dc */ .word 0x00000000
/* 080608e0 */ .word 0x00000000
/* 080608e4 */ .word 0x00000001
/* 080608e8 */ .word 0x00000003
/* 080608ec */ .word 0x080179f5
/* 080608f0 */ .word 0x00000002
/* 080608f4 */ .word 0x00000000
/* 080608f8 */ .word 0x00000000
/* 080608fc */ .word 0x00000017
/* 08060900 */ .word 0x0000000e
/* 08060904 */ .word 0x00000000
/* 08060908 */ .word 0x00000000

/* 0806090c */ .word 0xad82e682
/* 08060910 */ .word 0xa282ab82
/* 08060914 */ .word 0x7d83c482
/* 08060918 */ .word 0xb5826c83
/* 0806091c */ .word 0xcb82c482
/* 08060920 */ .word 0x8d0a4281
/* 08060924 */ .word 0x82ab8244
/* 08060928 */ .word 0x835e83c8
/* 0806092c */ .word 0x837e8343
/* 08060930 */ .word 0x824f8393
/* 08060934 */ .word 0x82c782c5
/* 08060938 */ .word 0x81bc82a4
/* 0806093c */ .word 0x89890a42
/* 08060940 */ .word 0xf0827491
/* 08060944 */ .word 0xdf827e8e
/* 08060948 */ .word 0xc682e982
/* 0806094c */ .word 0x820a4181
/* 08060950 */ .word 0x96e88ea8
/* 08060954 */ .word 0x82aa827b
/* 08060958 */ .word 0x82af82ab
/* 0806095c */ .word 0x818883e9
/* 08060960 */ .word 0x00000049

@ Bytecode 
/* 08060964 */ .word 0x00000003
/* 08060968 */ .word 0x080179f5
/* 0806096c */ .word 0x00000001
/* 08060970 */ .word 0x00000000
/* 08060974 */ .word 0x00000000
/* 08060978 */ .word 0x00000018
/* 0806097c */ .word 0x00000003
/* 08060980 */ .word 0x080179f5
/* 08060984 */ .word 0x00000001
/* 08060988 */ .word 0x00000000
/* 0806098c */ .word 0x00000000
/* 08060990 */ .word 0x00000018
/* 08060994 */ .word 0x00000003
/* 08060998 */ .word 0x080179f5
/* 0806099c */ .word 0x00000001
/* 080609a0 */ .word 0x00000000
/* 080609a4 */ .word 0x00000000
/* 080609a8 */ .word 0x00000018
/* 080609ac */ .word 0x0000000e
/* 080609b0 */ .word 0x00000000
/* 080609b4 */ .word 0x00000000
/* 080609b8 */ .word 0x00000003
/* 080609bc */ .word 0x080179f5
/* 080609c0 */ .word 0x00000001
/* 080609c4 */ .word 0x00000000
/* 080609c8 */ .word 0x00000000
/* 080609cc */ .word 0x00000015
/* 080609d0 */ .word 0x0000000e
/* 080609d4 */ .word 0x00000000
/* 080609d8 */ .word 0x00000000

/* 080609dc */ .word 0x834c830a
/* 080609e0 */ .word 0x824e8362
/* 080609e4 */ .word 0x895182f0
/* 080609e8 */ .word 0x82b882f1
/* 080609ec */ .word 0x83be82c2
/* 080609f0 */ .word 0x0a498188
/* 080609f4 */ .word 0xab82c582
/* 080609f8 */ .word 0xa982e982
/* 080609fc */ .word 0x4881c882
/* 08060a00 */ .word 0x837c830a
/* 08060a04 */ .word 0x83938343
/* 08060a08 */ .word 0x42468167
/* 08060a0c */ .word 0x5e837b83
/* 08060a10 */ .word 0xbe829383
/* 08060a14 */ .word 0xc582af82
/* 08060a18 */ .word 0x00000000

@ Bytecode 
/* 08060a1c */ .word 0x00000003
/* 08060a20 */ .word 0x080179f5
/* 08060a24 */ .word 0x00000001
/* 08060a28 */ .word 0x00000000
/* 08060a2c */ .word 0x00000000
/* 08060a30 */ .word 0x00000012
/* 08060a34 */ .word 0x00000003
/* 08060a38 */ .word 0x080179f5
/* 08060a3c */ .word 0x00000001
/* 08060a40 */ .word 0x00000000
/* 08060a44 */ .word 0x00000000
/* 08060a48 */ .word 0x00000006
/* 08060a4c */ .word 0x00000003
/* 08060a50 */ .word 0x080179f5
/* 08060a54 */ .word 0x00000001
/* 08060a58 */ .word 0x00000000
/* 08060a5c */ .word 0x00000000
/* 08060a60 */ .word 0x00000012
/* 08060a64 */ .word 0x00000003
/* 08060a68 */ .word 0x080179f5
/* 08060a6c */ .word 0x00000001
/* 08060a70 */ .word 0x00000000
/* 08060a74 */ .word 0x00000000
/* 08060a78 */ .word 0x00000006
/* 08060a7c */ .word 0x00000003
/* 08060a80 */ .word 0x080179f5
/* 08060a84 */ .word 0x00000001
/* 08060a88 */ .word 0x00000000
/* 08060a8c */ .word 0x00000000
/* 08060a90 */ .word 0x00000012
/* 08060a94 */ .word 0x00000003
/* 08060a98 */ .word 0x080179f5
/* 08060a9c */ .word 0x00000001
/* 08060aa0 */ .word 0x00000000
/* 08060aa4 */ .word 0x00000000
/* 08060aa8 */ .word 0x00000006
/* 08060aac */ .word 0x0000000e
/* 08060ab0 */ .word 0x00000000
/* 08060ab4 */ .word 0x00000000
/* 08060ab8 */ .word 0x00000003
/* 08060abc */ .word 0x080179f5
/* 08060ac0 */ .word 0x00000001
/* 08060ac4 */ .word 0x00000000
/* 08060ac8 */ .word 0x00000000
/* 08060acc */ .word 0x00000012
/* 08060ad0 */ .word 0x00000003
/* 08060ad4 */ .word 0x080179f5
/* 08060ad8 */ .word 0x00000001
/* 08060adc */ .word 0x00000000
/* 08060ae0 */ .word 0x00000000
/* 08060ae4 */ .word 0x00000003
/* 08060ae8 */ .word 0x0000000e
/* 08060aec */ .word 0x00000000
/* 08060af0 */ .word 0x00000000

/* 08060af4 */ .word 0xe782b382
/* 08060af8 */ .word 0x5082c982
/* 08060afc */ .word 0x8a8f4a83
/* 08060b00 */ .word 0x890a4181
/* 08060b04 */ .word 0x82aa82b9
/* 08060b08 */ .word 0x82a682d3
/* 08060b0c */ .word 0x818883e9
/* 08060b10 */ .word 0xed820a49
/* 08060b14 */ .word 0xe982a982
/* 08060b18 */ .word 0xc882a982
/* 08060b1c */ .word 0x830a4881
/* 08060b20 */ .word 0x83938371
/* 08060b24 */ .word 0x83468167
/* 08060b28 */ .word 0x8362834c
/* 08060b2c */ .word 0x91cd824e
/* 08060b30 */ .word 0x93c6824f
/* 08060b34 */ .word 0x00b682af

@ Bytecode 
/* 08060b38 */ .word 0x00000003
/* 08060b3c */ .word 0x080179f5
/* 08060b40 */ .word 0x00000001
/* 08060b44 */ .word 0x00000000
/* 08060b48 */ .word 0x00000000
/* 08060b4c */ .word 0x00000012
/* 08060b50 */ .word 0x00000003
/* 08060b54 */ .word 0x080179f5
/* 08060b58 */ .word 0x00000001
/* 08060b5c */ .word 0x00000000
/* 08060b60 */ .word 0x00000000
/* 08060b64 */ .word 0x00000006
/* 08060b68 */ .word 0x00000003
/* 08060b6c */ .word 0x080179f5
/* 08060b70 */ .word 0x00000001
/* 08060b74 */ .word 0x00000000
/* 08060b78 */ .word 0x00000000
/* 08060b7c */ .word 0x00000012
/* 08060b80 */ .word 0x00000003
/* 08060b84 */ .word 0x080179f5
/* 08060b88 */ .word 0x00000001
/* 08060b8c */ .word 0x00000000
/* 08060b90 */ .word 0x00000000
/* 08060b94 */ .word 0x00000006
/* 08060b98 */ .word 0x00000003
/* 08060b9c */ .word 0x080179f5
/* 08060ba0 */ .word 0x00000001
/* 08060ba4 */ .word 0x00000003
/* 08060ba8 */ .word 0x080179f5
/* 08060bac */ .word 0x00000002
/* 08060bb0 */ .word 0x00000000
/* 08060bb4 */ .word 0x00000000
/* 08060bb8 */ .word 0x00000012
/* 08060bbc */ .word 0x00000003
/* 08060bc0 */ .word 0x080179f5
/* 08060bc4 */ .word 0x00000001
/* 08060bc8 */ .word 0x00000000
/* 08060bcc */ .word 0x00000000
/* 08060bd0 */ .word 0x00000006
/* 08060bd4 */ .word 0x0000000e
/* 08060bd8 */ .word 0x00000000
/* 08060bdc */ .word 0x00000000

/* 08060be0 */ .word 0x82dc820a
/* 08060be4 */ .word 0x82dc82bd
/* 08060be8 */ .word 0x835082bd
/* 08060bec */ .word 0x818a8f4a
/* 08060bf0 */ .word 0xb9890a41
/* 08060bf4 */ .word 0xd382aa82
/* 08060bf8 */ .word 0xe982a682
/* 08060bfc */ .word 0x49818883
/* 08060c00 */ .word 0x82ed820a
/* 08060c04 */ .word 0x82e982a9
/* 08060c08 */ .word 0x81c882a9
/* 08060c0c */ .word 0x00000a48

@ Bytecode 
/* 08060c10 */ .word 0x00000003
/* 08060c14 */ .word 0x080179f5
/* 08060c18 */ .word 0x00000001
/* 08060c1c */ .word 0x00000000
/* 08060c20 */ .word 0x00000000
/* 08060c24 */ .word 0x00000012
/* 08060c28 */ .word 0x00000003
/* 08060c2c */ .word 0x080179f5
/* 08060c30 */ .word 0x00000001
/* 08060c34 */ .word 0x00000000
/* 08060c38 */ .word 0x00000000
/* 08060c3c */ .word 0x00000006
/* 08060c40 */ .word 0x00000003
/* 08060c44 */ .word 0x080179f5
/* 08060c48 */ .word 0x00000001
/* 08060c4c */ .word 0x00000000
/* 08060c50 */ .word 0x00000000
/* 08060c54 */ .word 0x00000012
/* 08060c58 */ .word 0x00000003
/* 08060c5c */ .word 0x080179f5
/* 08060c60 */ .word 0x00000001
/* 08060c64 */ .word 0x00000000
/* 08060c68 */ .word 0x00000000
/* 08060c6c */ .word 0x00000006
/* 08060c70 */ .word 0x00000003
/* 08060c74 */ .word 0x080179f5
/* 08060c78 */ .word 0x00000001
/* 08060c7c */ .word 0x00000003
/* 08060c80 */ .word 0x080179f5
/* 08060c84 */ .word 0x00000002
/* 08060c88 */ .word 0x00000000
/* 08060c8c */ .word 0x00000000
/* 08060c90 */ .word 0x0000000c
/* 08060c94 */ .word 0x00000003
/* 08060c98 */ .word 0x080179f5
/* 08060c9c */ .word 0x00000002
/* 08060ca0 */ .word 0x00000000
/* 08060ca4 */ .word 0x00000000
/* 08060ca8 */ .word 0x00000006
/* 08060cac */ .word 0x00000003
/* 08060cb0 */ .word 0x080179f5
/* 08060cb4 */ .word 0x00000001
/* 08060cb8 */ .word 0x00000000
/* 08060cbc */ .word 0x00000000
/* 08060cc0 */ .word 0x00000006
/* 08060cc4 */ .word 0x0000000e
/* 08060cc8 */ .word 0x00000000
/* 08060ccc */ .word 0x00000000

/* 08060cd0 */ .word 0x82bb820a
/* 08060cd4 */ .word 0x82c482b5
/* 08060cd8 */ .word 0x82bd82dc
/* 08060cdc */ .word 0x82f182c8
/* 08060ce0 */ .word 0x0a4981c6
/* 08060ce4 */ .word 0x4a835082
/* 08060ce8 */ .word 0x41818a8f
/* 08060cec */ .word 0xaa82b989
/* 08060cf0 */ .word 0xa682d382
/* 08060cf4 */ .word 0x8883e982
/* 08060cf8 */ .word 0x820a4981
/* 08060cfc */ .word 0x82a982ed
/* 08060d00 */ .word 0x82a982e9
/* 08060d04 */ .word 0x0a4881c8
/* 08060d08 */ .word 0x00000000

@ Bytecode 
/* 08060d0c */ .word 0x00000003
/* 08060d10 */ .word 0x080179f5
/* 08060d14 */ .word 0x00000001
/* 08060d18 */ .word 0x00000000
/* 08060d1c */ .word 0x00000000
/* 08060d20 */ .word 0x00000012
/* 08060d24 */ .word 0x00000003
/* 08060d28 */ .word 0x080179f5
/* 08060d2c */ .word 0x00000001
/* 08060d30 */ .word 0x00000000
/* 08060d34 */ .word 0x00000000
/* 08060d38 */ .word 0x00000006
/* 08060d3c */ .word 0x00000003
/* 08060d40 */ .word 0x080179f5
/* 08060d44 */ .word 0x00000001
/* 08060d48 */ .word 0x00000000
/* 08060d4c */ .word 0x00000000
/* 08060d50 */ .word 0x00000006
/* 08060d54 */ .word 0x00000003
/* 08060d58 */ .word 0x080179f5
/* 08060d5c */ .word 0x00000002
/* 08060d60 */ .word 0x00000000
/* 08060d64 */ .word 0x00000000
/* 08060d68 */ .word 0x0000000c
/* 08060d6c */ .word 0x00000003
/* 08060d70 */ .word 0x080179f5
/* 08060d74 */ .word 0x00000001
/* 08060d78 */ .word 0x00000000
/* 08060d7c */ .word 0x00000000
/* 08060d80 */ .word 0x00000006
/* 08060d84 */ .word 0x00000003
/* 08060d88 */ .word 0x080179f5
/* 08060d8c */ .word 0x00000001
/* 08060d90 */ .word 0x00000003
/* 08060d94 */ .word 0x080179f5
/* 08060d98 */ .word 0x00000002
/* 08060d9c */ .word 0x00000000
/* 08060da0 */ .word 0x00000000
/* 08060da4 */ .word 0x0000000c
/* 08060da8 */ .word 0x00000003
/* 08060dac */ .word 0x080179f5
/* 08060db0 */ .word 0x00000002
/* 08060db4 */ .word 0x00000000
/* 08060db8 */ .word 0x00000000
/* 08060dbc */ .word 0x00000006
/* 08060dc0 */ .word 0x00000003
/* 08060dc4 */ .word 0x080179f5
/* 08060dc8 */ .word 0x00000001
/* 08060dcc */ .word 0x00000000
/* 08060dd0 */ .word 0x00000000
/* 08060dd4 */ .word 0x00000006
/* 08060dd8 */ .word 0x0000000e
/* 08060ddc */ .word 0x00000000
/* 08060de0 */ .word 0x00000000

/* 08060de4 */ .word 0x82b1820a
/* 08060de8 */ .word 0x82dc82ea
/* 08060dec */ .word 0x82c882bd
/* 08060df0 */ .word 0x81c682f1
/* 08060df4 */ .word 0x0a498149
/* 08060df8 */ .word 0x4a835082
/* 08060dfc */ .word 0x41818a8f
/* 08060e00 */ .word 0xaa82b989
/* 08060e04 */ .word 0xa682d382
/* 08060e08 */ .word 0x8883e982
/* 08060e0c */ .word 0x820a4981
/* 08060e10 */ .word 0x82a982ed
/* 08060e14 */ .word 0x82a982e9
/* 08060e18 */ .word 0x0a4881c8
/* 08060e1c */ .word 0x00000000

/* 08060e20 */ .word 0x00000003
/* 08060e24 */ .word 0x080179f5
/* 08060e28 */ .word 0x00000001
/* 08060e2c */ .word 0x00000000
/* 08060e30 */ .word 0x00000000
/* 08060e34 */ .word 0x00000006
/* 08060e38 */ .word 0x00000003
/* 08060e3c */ .word 0x080179f5
/* 08060e40 */ .word 0x00000002
/* 08060e44 */ .word 0x00000000
/* 08060e48 */ .word 0x00000000
/* 08060e4c */ .word 0x0000000c
/* 08060e50 */ .word 0x00000003
/* 08060e54 */ .word 0x080179f5
/* 08060e58 */ .word 0x00000001
/* 08060e5c */ .word 0x00000000
/* 08060e60 */ .word 0x00000000
/* 08060e64 */ .word 0x00000006
/* 08060e68 */ .word 0x00000003
/* 08060e6c */ .word 0x080179f5
/* 08060e70 */ .word 0x00000001
/* 08060e74 */ .word 0x00000000
/* 08060e78 */ .word 0x00000000
/* 08060e7c */ .word 0x00000006
/* 08060e80 */ .word 0x00000003
/* 08060e84 */ .word 0x080179f5
/* 08060e88 */ .word 0x00000002
/* 08060e8c */ .word 0x00000000
/* 08060e90 */ .word 0x00000000
/* 08060e94 */ .word 0x0000000c
/* 08060e98 */ .word 0x00000003
/* 08060e9c */ .word 0x080179f5
/* 08060ea0 */ .word 0x00000001
/* 08060ea4 */ .word 0x00000000
/* 08060ea8 */ .word 0x00000000
/* 08060eac */ .word 0x00000006
/* 08060eb0 */ .word 0x00000003
/* 08060eb4 */ .word 0x080179f5
/* 08060eb8 */ .word 0x00000001
/* 08060ebc */ .word 0x00000003
/* 08060ec0 */ .word 0x080179f5
/* 08060ec4 */ .word 0x00000002
/* 08060ec8 */ .word 0x00000000
/* 08060ecc */ .word 0x00000000
/* 08060ed0 */ .word 0x0000000c
/* 08060ed4 */ .word 0x00000003
/* 08060ed8 */ .word 0x080179f5
/* 08060edc */ .word 0x00000002
/* 08060ee0 */ .word 0x00000000
/* 08060ee4 */ .word 0x00000000
/* 08060ee8 */ .word 0x00000006
/* 08060eec */ .word 0x00000003
/* 08060ef0 */ .word 0x080179f5
/* 08060ef4 */ .word 0x00000001
/* 08060ef8 */ .word 0x00000000
/* 08060efc */ .word 0x00000000
/* 08060f00 */ .word 0x00000006
/* 08060f04 */ .word 0x0000000e
/* 08060f08 */ .word 0x00000000
/* 08060f0c */ .word 0x00000000

/* 08060f10 */ .word 0x82dc820a
/* 08060f14 */ .word 0x82dc82bd
/* 08060f18 */ .word 0x82c882bd
/* 08060f1c */ .word 0x81c682f1
/* 08060f20 */ .word 0x0a498149
/* 08060f24 */ .word 0x4a835082
/* 08060f28 */ .word 0x41818a8f
/* 08060f2c */ .word 0xaa82b989
/* 08060f30 */ .word 0xa682d382
/* 08060f34 */ .word 0x8883e982
/* 08060f38 */ .word 0x820a4981
/* 08060f3c */ .word 0x82a982ed
/* 08060f40 */ .word 0x82a982e9
/* 08060f44 */ .word 0x0a4881c8
/* 08060f48 */ .word 0x00000000

@ Bytecode 
/* 08060f4c */ .word 0x00000003
/* 08060f50 */ .word 0x080179f5
/* 08060f54 */ .word 0x00000001
/* 08060f58 */ .word 0x00000000
/* 08060f5c */ .word 0x00000000
/* 08060f60 */ .word 0x0000000c
/* 08060f64 */ .word 0x00000003
/* 08060f68 */ .word 0x080179f5
/* 08060f6c */ .word 0x00000002
/* 08060f70 */ .word 0x00000000
/* 08060f74 */ .word 0x00000000
/* 08060f78 */ .word 0x00000006
/* 08060f7c */ .word 0x00000003
/* 08060f80 */ .word 0x080179f5
/* 08060f84 */ .word 0x00000001
/* 08060f88 */ .word 0x00000000
/* 08060f8c */ .word 0x00000000
/* 08060f90 */ .word 0x00000003
/* 08060f94 */ .word 0x0000000e
/* 08060f98 */ .word 0x00000000
/* 08060f9c */ .word 0x00000000

/* 08060fa0 */ .word 0xad82e682
/* 08060fa4 */ .word 0xa282ab82
/* 08060fa8 */ .word 0x7d83c482
/* 08060fac */ .word 0xb5826c83
/* 08060fb0 */ .word 0xcb82c482
/* 08060fb4 */ .word 0x8d0a4281
/* 08060fb8 */ .word 0x82ab8244
/* 08060fbc */ .word 0x835e83c8
/* 08060fc0 */ .word 0x837e8343
/* 08060fc4 */ .word 0x824f8393
/* 08060fc8 */ .word 0x82c782c5
/* 08060fcc */ .word 0x81bc82a4
/* 08060fd0 */ .word 0x89890a42
/* 08060fd4 */ .word 0xf0827491
/* 08060fd8 */ .word 0xdf827e8e
/* 08060fdc */ .word 0xc682e982
/* 08060fe0 */ .word 0x820a4181
/* 08060fe4 */ .word 0x96e88ea8
/* 08060fe8 */ .word 0x82aa827b
/* 08060fec */ .word 0x82af82ab
/* 08060ff0 */ .word 0x818883e9
/* 08060ff4 */ .word 0x00000049

@ Bytecode 
/* 08060ff8 */ .word 0x00000003
/* 08060ffc */ .word 0x080179f5
/* 08061000 */ .word 0x00000001
/* 08061004 */ .word 0x00000000
/* 08061008 */ .word 0x00000000
/* 0806100c */ .word 0x00000018
/* 08061010 */ .word 0x00000003
/* 08061014 */ .word 0x080179f5
/* 08061018 */ .word 0x00000001
/* 0806101c */ .word 0x00000000
/* 08061020 */ .word 0x00000000
/* 08061024 */ .word 0x00000018
/* 08061028 */ .word 0x00000003
/* 0806102c */ .word 0x080179f5
/* 08061030 */ .word 0x00000001
/* 08061034 */ .word 0x00000000
/* 08061038 */ .word 0x00000000
/* 0806103c */ .word 0x00000018
/* 08061040 */ .word 0x0000000e
/* 08061044 */ .word 0x00000000
/* 08061048 */ .word 0x00000000
/* 0806104c */ .word 0x00000003
/* 08061050 */ .word 0x080179f5
/* 08061054 */ .word 0x00000001
/* 08061058 */ .word 0x00000000
/* 0806105c */ .word 0x00000000
/* 08061060 */ .word 0x00000015
/* 08061064 */ .word 0x0000000e
/* 08061068 */ .word 0x00000000
/* 0806106c */ .word 0x00000000

/* 08061070 */ .word 0x8350820a
/* 08061074 */ .word 0x818a8f4a
/* 08061078 */ .word 0x82b98941
/* 0806107c */ .word 0x82d382aa
/* 08061080 */ .word 0x83e982a6
/* 08061084 */ .word 0x0a498188
/* 08061088 */ .word 0xa982ed82
/* 0806108c */ .word 0xa982e982
/* 08061090 */ .word 0x4881c882
/* 08061094 */ .word 0x8371830a
/* 08061098 */ .word 0x81678393
/* 0806109c */ .word 0x834c8346
/* 080610a0 */ .word 0x824e8362
/* 080610a4 */ .word 0x824f91cd
/* 080610a8 */ .word 0x82af93c6
/* 080610ac */ .word 0x000000b6

@ Bytecode 
/* 080610b0 */ .word 0x00000003
/* 080610b4 */ .word 0x080179f5
/* 080610b8 */ .word 0x00000001
/* 080610bc */ .word 0x00000000
/* 080610c0 */ .word 0x00000000
/* 080610c4 */ .word 0x00000018
/* 080610c8 */ .word 0x00000003
/* 080610cc */ .word 0x080179f5
/* 080610d0 */ .word 0x00000001
/* 080610d4 */ .word 0x00000000
/* 080610d8 */ .word 0x00000000
/* 080610dc */ .word 0x00000018
/* 080610e0 */ .word 0x00000003
/* 080610e4 */ .word 0x080179f5
/* 080610e8 */ .word 0x00000002
/* 080610ec */ .word 0x00000003
/* 080610f0 */ .word 0x080179f5
/* 080610f4 */ .word 0x00000001
/* 080610f8 */ .word 0x00000000
/* 080610fc */ .word 0x00000000
/* 08061100 */ .word 0x00000018
/* 08061104 */ .word 0x0000000e
/* 08061108 */ .word 0x00000000
/* 0806110c */ .word 0x00000000

/* 08061110 */ .word 0xe782b382
/* 08061114 */ .word 0x5082c982
/* 08061118 */ .word 0x8a8f4a83
/* 0806111c */ .word 0x890a4181
/* 08061120 */ .word 0x82aa82b9
/* 08061124 */ .word 0x82a682d3
/* 08061128 */ .word 0x818883e9
/* 0806112c */ .word 0xed820a49
/* 08061130 */ .word 0xe982a982
/* 08061134 */ .word 0xc882a982
/* 08061138 */ .word 0x830a4881
/* 0806113c */ .word 0x83938371
/* 08061140 */ .word 0x83468167
/* 08061144 */ .word 0x8362834c
/* 08061148 */ .word 0x91cd824e
/* 0806114c */ .word 0x93c6824f
/* 08061150 */ .word 0x00b682af

@ Bytecode 
/* 08061154 */ .word 0x00000003
/* 08061158 */ .word 0x080179f5
/* 0806115c */ .word 0x00000002
/* 08061160 */ .word 0x00000003
/* 08061164 */ .word 0x080179f5
/* 08061168 */ .word 0x00000001
/* 0806116c */ .word 0x00000000
/* 08061170 */ .word 0x00000000
/* 08061174 */ .word 0x00000018
/* 08061178 */ .word 0x00000003
/* 0806117c */ .word 0x080179f5
/* 08061180 */ .word 0x00000001
/* 08061184 */ .word 0x00000000
/* 08061188 */ .word 0x00000000
/* 0806118c */ .word 0x00000018
/* 08061190 */ .word 0x00000003
/* 08061194 */ .word 0x080179f5
/* 08061198 */ .word 0x00000002
/* 0806119c */ .word 0x00000003
/* 080611a0 */ .word 0x080179f5
/* 080611a4 */ .word 0x00000001
/* 080611a8 */ .word 0x00000000
/* 080611ac */ .word 0x00000000
/* 080611b0 */ .word 0x00000018
/* 080611b4 */ .word 0x0000000e
/* 080611b8 */ .word 0x00000000
/* 080611bc */ .word 0x00000000

/* 080611c0 */ .word 0xbd82dc82
/* 080611c4 */ .word 0xbd82dc82
/* 080611c8 */ .word 0x4a835082
/* 080611cc */ .word 0x41818a8f
/* 080611d0 */ .word 0x82b9890a
/* 080611d4 */ .word 0x82d382aa
/* 080611d8 */ .word 0x83e982a6
/* 080611dc */ .word 0x0a498188
/* 080611e0 */ .word 0xa982ed82
/* 080611e4 */ .word 0xa982e982
/* 080611e8 */ .word 0x4881c882
/* 080611ec */ .word 0x8371830a
/* 080611f0 */ .word 0x81678393
/* 080611f4 */ .word 0x8e5c8f46
/* 080611f8 */ .word 0x837b839a
/* 080611fc */ .word 0x8f93835e
/* 08061200 */ .word 0x000000e3

@ Bytecode 
/* 08061204 */ .word 0x00000003
/* 08061208 */ .word 0x080179f5
/* 0806120c */ .word 0x00000002
/* 08061210 */ .word 0x00000003
/* 08061214 */ .word 0x080179f5
/* 08061218 */ .word 0x00000001
/* 0806121c */ .word 0x00000000
/* 08061220 */ .word 0x00000000
/* 08061224 */ .word 0x00000018
/* 08061228 */ .word 0x00000003
/* 0806122c */ .word 0x080179f5
/* 08061230 */ .word 0x00000001
/* 08061234 */ .word 0x00000000
/* 08061238 */ .word 0x00000000
/* 0806123c */ .word 0x0000000c
/* 08061240 */ .word 0x00000003
/* 08061244 */ .word 0x080179f5
/* 08061248 */ .word 0x00000004
/* 0806124c */ .word 0x00000000
/* 08061250 */ .word 0x00000000
/* 08061254 */ .word 0x0000000c
/* 08061258 */ .word 0x00000003
/* 0806125c */ .word 0x080179f5
/* 08061260 */ .word 0x00000002
/* 08061264 */ .word 0x00000003
/* 08061268 */ .word 0x080179f5
/* 0806126c */ .word 0x00000001
/* 08061270 */ .word 0x00000000
/* 08061274 */ .word 0x00000000
/* 08061278 */ .word 0x00000018
/* 0806127c */ .word 0x0000000e
/* 08061280 */ .word 0x00000000
/* 08061284 */ .word 0x00000000

/* 08061288 */ .word 0x82bb820a
/* 0806128c */ .word 0x82c482b5
/* 08061290 */ .word 0x82bd82dc
/* 08061294 */ .word 0x82f182c8
/* 08061298 */ .word 0x0a4981c6
/* 0806129c */ .word 0x4a835082
/* 080612a0 */ .word 0x41818a8f
/* 080612a4 */ .word 0xaa82b989
/* 080612a8 */ .word 0xa682d382
/* 080612ac */ .word 0x8883e982
/* 080612b0 */ .word 0x820a4981
/* 080612b4 */ .word 0x82a982ed
/* 080612b8 */ .word 0x82a982e9
/* 080612bc */ .word 0x0a4881c8
/* 080612c0 */ .word 0x00000000

@ Bytecode 
/* 080612c4 */ .word 0x00000003
/* 080612c8 */ .word 0x080179f5
/* 080612cc */ .word 0x00000001
/* 080612d0 */ .word 0x00000000
/* 080612d4 */ .word 0x00000000
/* 080612d8 */ .word 0x0000000c
/* 080612dc */ .word 0x00000003
/* 080612e0 */ .word 0x080179f5
/* 080612e4 */ .word 0x00000004
/* 080612e8 */ .word 0x00000000
/* 080612ec */ .word 0x00000000
/* 080612f0 */ .word 0x00000009
/* 080612f4 */ .word 0x0000000e
/* 080612f8 */ .word 0x00000000
/* 080612fc */ .word 0x00000000
/* 08061300 */ .word 0x82b1820a
/* 08061304 */ .word 0x82dc82ea
/* 08061308 */ .word 0x82c882bd
/* 0806130c */ .word 0x81c682f1
/* 08061310 */ .word 0x6d830a49
/* 08061314 */ .word 0x6d838a83
/* 08061318 */ .word 0xbe828a83
/* 0806131c */ .word 0x49818883
/* 08061320 */ .word 0x82c5820a
/* 08061324 */ .word 0x82e982ab
/* 08061328 */ .word 0x81c882a9
/* 0806132c */ .word 0x00000a48

@ Bytecode 
/* 08061330 */ .word 0x00000003
/* 08061334 */ .word 0x080179f5
/* 08061338 */ .word 0x00000002
/* 0806133c */ .word 0x00000003
/* 08061340 */ .word 0x080179f5
/* 08061344 */ .word 0x00000001
/* 08061348 */ .word 0x00000000
/* 0806134c */ .word 0x00000000
/* 08061350 */ .word 0x0000000c
/* 08061354 */ .word 0x00000003
/* 08061358 */ .word 0x080179f5
/* 0806135c */ .word 0x00000004
/* 08061360 */ .word 0x00000000
/* 08061364 */ .word 0x00000000
/* 08061368 */ .word 0x0000000c
/* 0806136c */ .word 0x00000003
/* 08061370 */ .word 0x080179f5
/* 08061374 */ .word 0x00000001
/* 08061378 */ .word 0x00000000
/* 0806137c */ .word 0x00000000
/* 08061380 */ .word 0x0000000c
/* 08061384 */ .word 0x00000003
/* 08061388 */ .word 0x080179f5
/* 0806138c */ .word 0x00000004
/* 08061390 */ .word 0x00000000
/* 08061394 */ .word 0x00000000
/* 08061398 */ .word 0x0000000c
/* 0806139c */ .word 0x00000003
/* 080613a0 */ .word 0x080179f5
/* 080613a4 */ .word 0x00000002
/* 080613a8 */ .word 0x00000003
/* 080613ac */ .word 0x080179f5
/* 080613b0 */ .word 0x00000001
/* 080613b4 */ .word 0x00000000
/* 080613b8 */ .word 0x00000000
/* 080613bc */ .word 0x0000000c
/* 080613c0 */ .word 0x00000003
/* 080613c4 */ .word 0x080179f5
/* 080613c8 */ .word 0x00000004
/* 080613cc */ .word 0x00000000
/* 080613d0 */ .word 0x00000000
/* 080613d4 */ .word 0x0000000c
/* 080613d8 */ .word 0x0000000e
/* 080613dc */ .word 0x00000000
/* 080613e0 */ .word 0x00000000

/* 080613e4 */ .word 0xad82e682
/* 080613e8 */ .word 0xa282ab82
/* 080613ec */ .word 0x7d83c482
/* 080613f0 */ .word 0xb5826c83
/* 080613f4 */ .word 0xcb82c482
/* 080613f8 */ .word 0x8d0a4281
/* 080613fc */ .word 0x82ab8244
/* 08061400 */ .word 0x835e83c8
/* 08061404 */ .word 0x837e8343
/* 08061408 */ .word 0x824f8393
/* 0806140c */ .word 0x82c782c5
/* 08061410 */ .word 0x81bc82a4
/* 08061414 */ .word 0x89890a42
/* 08061418 */ .word 0xf0827491
/* 0806141c */ .word 0xdf827e8e
/* 08061420 */ .word 0xc682e982
/* 08061424 */ .word 0x820a4181
/* 08061428 */ .word 0x96e88ea8
/* 0806142c */ .word 0x82aa827b
/* 08061430 */ .word 0x82af82ab
/* 08061434 */ .word 0x818883e9
/* 08061438 */ .word 0x00000049

@ Bytecode 
/* 0806143c */ .word 0x00000003
/* 08061440 */ .word 0x080179f5
/* 08061444 */ .word 0x00000003
/* 08061448 */ .word 0x00000000
/* 0806144c */ .word 0x00000000
/* 08061450 */ .word 0x00000018
/* 08061454 */ .word 0x00000003
/* 08061458 */ .word 0x080179f5
/* 0806145c */ .word 0x00000003
/* 08061460 */ .word 0x00000000
/* 08061464 */ .word 0x00000000
/* 08061468 */ .word 0x0000000c
/* 0806146c */ .word 0x00000003
/* 08061470 */ .word 0x080179f5
/* 08061474 */ .word 0x00000002
/* 08061478 */ .word 0x00000000
/* 0806147c */ .word 0x00000000
/* 08061480 */ .word 0x0000000c
/* 08061484 */ .word 0x00000003
/* 08061488 */ .word 0x080179f5
/* 0806148c */ .word 0x00000003
/* 08061490 */ .word 0x00000000
/* 08061494 */ .word 0x00000000
/* 08061498 */ .word 0x00000018
/* 0806149c */ .word 0x0000000e
/* 080614a0 */ .word 0x00000000
/* 080614a4 */ .word 0x00000000
/* 080614a8 */ .word 0x00000003
/* 080614ac */ .word 0x080179f5
/* 080614b0 */ .word 0x00000003
/* 080614b4 */ .word 0x00000000
/* 080614b8 */ .word 0x00000000
/* 080614bc */ .word 0x00000015
/* 080614c0 */ .word 0x0000000e
/* 080614c4 */ .word 0x00000000
/* 080614c8 */ .word 0x00000000

/* 080614cc */ .word 0x8350820a
/* 080614d0 */ .word 0x818a8f4a
/* 080614d4 */ .word 0x82b98941
/* 080614d8 */ .word 0x82d382aa
/* 080614dc */ .word 0x83e982a6
/* 080614e0 */ .word 0x0a498188
/* 080614e4 */ .word 0xa982ed82
/* 080614e8 */ .word 0xa982e982
/* 080614ec */ .word 0x4881c882
/* 080614f0 */ .word 0x0000000a

@ Bytecode 
/* 080614f4 */ .word 0x00000003
/* 080614f8 */ .word 0x080179f5
/* 080614fc */ .word 0x00000003
/* 08061500 */ .word 0x00000000
/* 08061504 */ .word 0x00000000
/* 08061508 */ .word 0x00000018
/* 0806150c */ .word 0x00000003
/* 08061510 */ .word 0x080179f5
/* 08061514 */ .word 0x00000003
/* 08061518 */ .word 0x00000000
/* 0806151c */ .word 0x00000000
/* 08061520 */ .word 0x0000000c
/* 08061524 */ .word 0x00000003
/* 08061528 */ .word 0x080179f5
/* 0806152c */ .word 0x00000003
/* 08061530 */ .word 0x00000000
/* 08061534 */ .word 0x00000000
/* 08061538 */ .word 0x00000006
/* 0806153c */ .word 0x00000003
/* 08061540 */ .word 0x080179f5
/* 08061544 */ .word 0x00000002
/* 08061548 */ .word 0x00000000
/* 0806154c */ .word 0x00000000
/* 08061550 */ .word 0x00000006
/* 08061554 */ .word 0x00000003
/* 08061558 */ .word 0x080179f5
/* 0806155c */ .word 0x00000003
/* 08061560 */ .word 0x00000000
/* 08061564 */ .word 0x00000000
/* 08061568 */ .word 0x00000018
/* 0806156c */ .word 0x0000000e
/* 08061570 */ .word 0x00000000
/* 08061574 */ .word 0x00000000

/* 08061578 */ .word 0x82b3820a
/* 0806157c */ .word 0x82c982e7
/* 08061580 */ .word 0x8f4a8350
/* 08061584 */ .word 0x0a41818a
/* 08061588 */ .word 0xaa82b989
/* 0806158c */ .word 0xa682d382
/* 08061590 */ .word 0x8883e982
/* 08061594 */ .word 0x820a4981
/* 08061598 */ .word 0x82a982ed
/* 0806159c */ .word 0x82a982e9
/* 080615a0 */ .word 0x0a4881c8
/* 080615a4 */ .word 0x00000000

@ Bytecode 
/* 080615a8 */ .word 0x00000003
/* 080615ac */ .word 0x080179f5
/* 080615b0 */ .word 0x00000003
/* 080615b4 */ .word 0x00000000
/* 080615b8 */ .word 0x00000000
/* 080615bc */ .word 0x0000000c
/* 080615c0 */ .word 0x00000003
/* 080615c4 */ .word 0x080179f5
/* 080615c8 */ .word 0x00000002
/* 080615cc */ .word 0x00000000
/* 080615d0 */ .word 0x00000000
/* 080615d4 */ .word 0x00000009
/* 080615d8 */ .word 0x0000000e
/* 080615dc */ .word 0x00000000
/* 080615e0 */ .word 0x00000000

/* 080615e4 */ .word 0x82dc820a
/* 080615e8 */ .word 0x82dc82bd
/* 080615ec */ .word 0x835082bd
/* 080615f0 */ .word 0x818a8f4a
/* 080615f4 */ .word 0xb9890a41
/* 080615f8 */ .word 0xd382aa82
/* 080615fc */ .word 0xe982a682
/* 08061600 */ .word 0x49818883
/* 08061604 */ .word 0x82ed820a
/* 08061608 */ .word 0x82e982a9
/* 0806160c */ .word 0x81c882a9
/* 08061610 */ .word 0x00000a48

/* 08061614 */ .word 0x00000003
/* 08061618 */ .word 0x080179f5
/* 0806161c */ .word 0x00000003
/* 08061620 */ .word 0x00000000
/* 08061624 */ .word 0x00000000
/* 08061628 */ .word 0x00000018
/* 0806162c */ .word 0x00000003
/* 08061630 */ .word 0x080179f5
/* 08061634 */ .word 0x00000003
/* 08061638 */ .word 0x00000000
/* 0806163c */ .word 0x00000000
/* 08061640 */ .word 0x0000000c
/* 08061644 */ .word 0x00000003
/* 08061648 */ .word 0x080179f5
/* 0806164c */ .word 0x00000003
/* 08061650 */ .word 0x00000000
/* 08061654 */ .word 0x00000000
/* 08061658 */ .word 0x00000006
/* 0806165c */ .word 0x00000003
/* 08061660 */ .word 0x080179f5
/* 08061664 */ .word 0x00000002
/* 08061668 */ .word 0x00000000
/* 0806166c */ .word 0x00000000
/* 08061670 */ .word 0x00000006
/* 08061674 */ .word 0x00000003
/* 08061678 */ .word 0x080179f5
/* 0806167c */ .word 0x00000003
/* 08061680 */ .word 0x00000000
/* 08061684 */ .word 0x00000000
/* 08061688 */ .word 0x0000000c
/* 0806168c */ .word 0x00000003
/* 08061690 */ .word 0x080179f5
/* 08061694 */ .word 0x00000002
/* 08061698 */ .word 0x00000000
/* 0806169c */ .word 0x00000000
/* 080616a0 */ .word 0x0000000c
/* 080616a4 */ .word 0x0000000e
/* 080616a8 */ .word 0x00000000
/* 080616ac */ .word 0x00000000
/* 080616b0 */ .word 0x00000003
/* 080616b4 */ .word 0x080179f5
/* 080616b8 */ .word 0x00000003
/* 080616bc */ .word 0x00000000
/* 080616c0 */ .word 0x00000000
/* 080616c4 */ .word 0x00000006
/* 080616c8 */ .word 0x00000003
/* 080616cc */ .word 0x080179f5
/* 080616d0 */ .word 0x00000002
/* 080616d4 */ .word 0x00000000
/* 080616d8 */ .word 0x00000000
/* 080616dc */ .word 0x00000006
/* 080616e0 */ .word 0x00000003
/* 080616e4 */ .word 0x080179f5
/* 080616e8 */ .word 0x00000003
/* 080616ec */ .word 0x00000000
/* 080616f0 */ .word 0x00000000
/* 080616f4 */ .word 0x00000009
/* 080616f8 */ .word 0x0000000e
/* 080616fc */ .word 0x00000000
/* 08061700 */ .word 0x00000000

/* 08061704 */ .word 0x89a18d0a
/* 08061708 */ .word 0x81cd82f1
/* 0806170c */ .word 0x83588341
/* 08061710 */ .word 0x8341836c
/* 08061714 */ .word 0x83898368
/* 08061718 */ .word 0x82c68280
/* 0806171c */ .word 0x0aa482a2
/* 08061720 */ .word 0x43835e83
/* 08061724 */ .word 0xf0825283
/* 08061728 */ .word 0xbd82bd82
/* 0806172c */ .word 0xc482a282
/* 08061730 */ .word 0xdc82dd82
/* 08061734 */ .word 0xe582b582
/* 08061738 */ .word 0x4281a482
/* 0806173c */ .word 0x0000000a

/* 08061740 */ .word 0x7b83410a
/* 08061744 */ .word 0x93835e83
/* 08061748 */ .word 0x5c8fc682
/* 0806174c */ .word 0x7b839a8e
/* 08061750 */ .word 0x93835e83
/* 08061754 */ .word 0xb68dcc82
/* 08061758 */ .word 0x820a4181
/* 0806175c */ .word 0x82bf82c7
/* 08061760 */ .word 0x82c582e7
/* 08061764 */ .word 0x835883e0
/* 08061768 */ .word 0x8341836c
/* 0806176c */ .word 0x83898368
/* 08061770 */ .word 0x0af08280
/* 08061774 */ .word 0xbd82bd82
/* 08061778 */ .word 0xb182ad82
/* 0806177c */ .word 0xaa82c682
/* 08061780 */ .word 0xab82c582
/* 08061784 */ .word 0x8883e982
/* 08061788 */ .word 0x00004981

/* 0806178c */ .word 0x82c5820a
/* 08061790 */ .word 0x824081cd
/* 08061794 */ .word 0x82c182b3
/* 08061798 */ .word 0x82ad82bb
/* 0806179c */ .word 0x82b782c5
/* 080617a0 */ .word 0x8c830aaa
/* 080617a4 */ .word 0x58836283
/* 080617a8 */ .word 0xf0829383
/* 080617ac */ .word 0xb682cd82
/* 080617b0 */ .word 0xdc82df82
/* 080617b4 */ .word 0xb7825b81
/* 080617b8 */ .word 0x000a4981

/* 080617bc */ .word 0x82e38f0a
/* 080617c0 */ .word 0x82f58cc5
/* 080617c4 */ .word 0x82c482c1
/* 080617c8 */ .word 0x83e982a2
/* 080617cc */ .word 0x83938389
/* 080617d0 */ .word 0x81cd8276
/* 080617d4 */ .word 0x5e830a41
/* 080617d8 */ .word 0x7e834383
/* 080617dc */ .word 0x4f839383
/* 080617e0 */ .word 0x93838983
/* 080617e4 */ .word 0xc5827683
/* 080617e8 */ .word 0x4281b782
/* 080617ec */ .word 0x00000000

/* 080617f0 */ .word 0x82dc820a
/* 080617f4 */ .word 0x828692f1
/* 080617f8 */ .word 0x837e83cc
/* 080617fc */ .word 0x828a8368
/* 08061800 */ .word 0x835783aa
/* 08061804 */ .word 0x83588383
/* 08061808 */ .word 0x0a498167
/* 0806180c */ .word 0xea82bb82
/* 08061810 */ .word 0xe882e682
/* 08061814 */ .word 0xcd82b68d
/* 08061818 */ .word 0x56836e83
/* 0806181c */ .word 0x438b8a83
/* 08061820 */ .word 0x4181a196
/* 08061824 */ .word 0x8245890a
/* 08061828 */ .word 0x838283cd
/* 0806182c */ .word 0x8b8a835e
/* 08061830 */ .word 0x82a19643
/* 08061834 */ .word 0x81b782c5
/* 08061838 */ .word 0x00000042

/* 0806183c */ .word 0x82a4820a
/* 08061840 */ .word 0x81ad82dc
/* 08061844 */ .word 0x82c58240
/* 08061848 */ .word 0x82c882ab
/* 0806184c */ .word 0x82c682a2
/* 08061850 */ .word 0x81cd82ab
/* 08061854 */ .word 0xe38f0a41
/* 08061858 */ .word 0x8983cc82
/* 0806185c */ .word 0x76839383
/* 08061860 */ .word 0xa98cf082
/* 08061864 */ .word 0x5983c482
/* 08061868 */ .word 0xf0828c83
/* 0806186c */ .word 0x8360830a
/* 08061870 */ .word 0x83628346
/* 08061874 */ .word 0x82b5824e
/* 08061878 */ .word 0x82dd82c4
/* 0806187c */ .word 0x816c83c4
/* 08061880 */ .word 0x00000049

/* 08061884 */ .word 0x82c5820a
/* 08061888 */ .word 0x824181cd
/* 0806188c */ .word 0x8dac82c2
/* 08061890 */ .word 0x82ab8273
/* 08061894 */ .word 0x825b81dc
/* 08061898 */ .word 0x004981b7

/* 0806189c */ .word 0x9189890a
/* 080618a0 */ .word 0x91aa8274
/* 080618a4 */ .word 0x82ad82ac
/* 080618a8 */ .word 0x82a28dc4
/* 080618ac */ .word 0x82bd82c1
/* 080618b0 */ .word 0x58830ae7
/* 080618b4 */ .word 0x5b815e83
/* 080618b8 */ .word 0x7b836783
/* 080618bc */ .word 0x93835e83
/* 080618c0 */ .word 0x890af082
/* 080618c4 */ .word 0x82b5829f
/* 080618c8 */ .word 0x816c83c4
/* 080618cc */ .word 0x82b78249
/* 080618d0 */ .word 0x81c682e9
/* 080618d4 */ .word 0x00000063

/* 080618d8 */ .word 0x9189890a
/* 080618dc */ .word 0x81aa8274
/* 080618e0 */ .word 0x82e48241
/* 080618e4 */ .word 0x82ad82c1
/* 080618e8 */ .word 0x0ac982e8
/* 080618ec */ .word 0xe982c882
/* 080618f0 */ .word 0xbe82f182
/* 080618f4 */ .word 0x49818883
/* 080618f8 */ .word 0x8d518e0a
/* 080618fc */ .word 0x82c9826c
/* 08061900 */ .word 0x82c482b5
/* 08061904 */ .word 0x83c482dd
/* 08061908 */ .word 0x0a42816c
/* 0806190c */ .word 0x00000000

/* 08061910 */ .word 0x82e0820a
/* 08061914 */ .word 0x83cc82c6
/* 08061918 */ .word 0x83938365
/* 0806191c */ .word 0x96c9827c
/* 08061920 */ .word 0x82e982df
/* 08061924 */ .word 0x0acd82c9
/* 08061928 */ .word 0x7893c48d
/* 0806192c */ .word 0x5e835883
/* 08061930 */ .word 0x67835b81
/* 08061934 */ .word 0x5e837b83
/* 08061938 */ .word 0xf0829383
/* 0806193c */ .word 0x829f890a
/* 08061940 */ .word 0x82ce82b9
/* 08061944 */ .word 0x826a826e
/* 08061948 */ .word 0x81b782c5
/* 0806194c */ .word 0x00000042

/* 08061950 */ .word 0x82bf820a
/* 08061954 */ .word 0x82dd82c8
/* 08061958 */ .word 0x835883c9
/* 0806195c */ .word 0x895b818d
/* 08061960 */ .word 0x92749189
/* 08061964 */ .word 0x0acd8286
/* 08061968 */ .word 0x62838c83
/* 0806196c */ .word 0x93835883
/* 08061970 */ .word 0x6990aa82
/* 08061974 */ .word 0xc882dc82
/* 08061978 */ .word 0x8883a282
/* 0806197c */ .word 0x00004281

/* 08061980 */ .word 0x82c5820a
/* 08061984 */ .word 0x8e4181cd
/* 08061988 */ .word 0x82a2829f
/* 0806198c */ .word 0x82c482c1
/* 08061990 */ .word 0x82e682dd

/* 08061994 */ .word 0x004981a4
/* 08061998 */ .word 0xad82e682
/* 0806199c */ .word 0xa282ab82
/* 080619a0 */ .word 0x7d83c482
/* 080619a4 */ .word 0xb5826c83
/* 080619a8 */ .word 0xcb82c482
/* 080619ac */ .word 0x8d0a4281
/* 080619b0 */ .word 0x82ab8244
/* 080619b4 */ .word 0x835e83c8
/* 080619b8 */ .word 0x837e8343
/* 080619bc */ .word 0x824f8393
/* 080619c0 */ .word 0x82c782c5
/* 080619c4 */ .word 0x81bc82a4
/* 080619c8 */ .word 0x89890a42
/* 080619cc */ .word 0xf0827491
/* 080619d0 */ .word 0xdf827e8e
/* 080619d4 */ .word 0xc682e982
/* 080619d8 */ .word 0x820a4181
/* 080619dc */ .word 0x96e88ea8
/* 080619e0 */ .word 0x82aa827b
/* 080619e4 */ .word 0x82af82ab
/* 080619e8 */ .word 0x818883e9
/* 080619ec */ .word 0x00000049

@ Bytecode 
/* 080619f0 */ .word 0x00000003
/* 080619f4 */ .word 0x080179f5
/* 080619f8 */ .word 0x00000001
/* 080619fc */ .word 0x00000000
/* 08061a00 */ .word 0x00000000
/* 08061a04 */ .word 0x00000018
/* 08061a08 */ .word 0x00000003
/* 08061a0c */ .word 0x080179f5
/* 08061a10 */ .word 0x00000001
/* 08061a14 */ .word 0x00000000
/* 08061a18 */ .word 0x00000000
/* 08061a1c */ .word 0x00000018
/* 08061a20 */ .word 0x00000003
/* 08061a24 */ .word 0x080179f5
/* 08061a28 */ .word 0x00000001
/* 08061a2c */ .word 0x00000000
/* 08061a30 */ .word 0x00000000
/* 08061a34 */ .word 0x00000018
/* 08061a38 */ .word 0x0000000e
/* 08061a3c */ .word 0x00000000
/* 08061a40 */ .word 0x00000000
/* 08061a44 */ .word 0x00000003
/* 08061a48 */ .word 0x080179f5
/* 08061a4c */ .word 0x00000001
/* 08061a50 */ .word 0x00000000
/* 08061a54 */ .word 0x00000000
/* 08061a58 */ .word 0x00000015
/* 08061a5c */ .word 0x0000000e
/* 08061a60 */ .word 0x00000000
/* 08061a64 */ .word 0x00000000

/* 08061a68 */ .word 0x8350820a
/* 08061a6c */ .word 0x818a8f4a
/* 08061a70 */ .word 0x82b98941
/* 08061a74 */ .word 0x82cf95aa
/* 08061a78 */ .word 0x83e982ed
/* 08061a7c */ .word 0x0a498188
/* 08061a80 */ .word 0xa982ed82
/* 08061a84 */ .word 0xa982e982
/* 08061a88 */ .word 0x4881c882
/* 08061a8c */ .word 0x00000000

@ Bytecode 
/* 08061a90 */ .word 0x00000003
/* 08061a94 */ .word 0x080179f5
/* 08061a98 */ .word 0x00000001
/* 08061a9c */ .word 0x00000000
/* 08061aa0 */ .word 0x00000000
/* 08061aa4 */ .word 0x00000018
/* 08061aa8 */ .word 0x00000003
/* 08061aac */ .word 0x080179f5
/* 08061ab0 */ .word 0x00000001
/* 08061ab4 */ .word 0x00000000
/* 08061ab8 */ .word 0x00000000
/* 08061abc */ .word 0x00000018
/* 08061ac0 */ .word 0x00000003
/* 08061ac4 */ .word 0x080179f5
/* 08061ac8 */ .word 0x00000002
/* 08061acc */ .word 0x00000000
/* 08061ad0 */ .word 0x00000000
/* 08061ad4 */ .word 0x00000018
/* 08061ad8 */ .word 0x0000000e
/* 08061adc */ .word 0x00000000
/* 08061ae0 */ .word 0x00000000

/* 08061ae4 */ .word 0x82b3820a
/* 08061ae8 */ .word 0x82c982e7
/* 08061aec */ .word 0x8f4a8350
/* 08061af0 */ .word 0x0a41818a
/* 08061af4 */ .word 0xaa82b989
/* 08061af8 */ .word 0xed82cf95
/* 08061afc */ .word 0x8883e982
/* 08061b00 */ .word 0x820a4981
/* 08061b04 */ .word 0x82a982ed
/* 08061b08 */ .word 0x82a982e9
/* 08061b0c */ .word 0x004881c8

@ Bytecode 
/* 08061b10 */ .word 0x00000003
/* 08061b14 */ .word 0x080179f5
/* 08061b18 */ .word 0x00000002
/* 08061b1c */ .word 0x00000000
/* 08061b20 */ .word 0x00000000
/* 08061b24 */ .word 0x00000018
/* 08061b28 */ .word 0x00000003
/* 08061b2c */ .word 0x080179f5
/* 08061b30 */ .word 0x00000001
/* 08061b34 */ .word 0x00000000
/* 08061b38 */ .word 0x00000000
/* 08061b3c */ .word 0x00000018
/* 08061b40 */ .word 0x00000003
/* 08061b44 */ .word 0x080179f5
/* 08061b48 */ .word 0x00000002
/* 08061b4c */ .word 0x00000000
/* 08061b50 */ .word 0x00000000
/* 08061b54 */ .word 0x00000018
/* 08061b58 */ .word 0x0000000e
/* 08061b5c */ .word 0x00000000
/* 08061b60 */ .word 0x00000000

/* 08061b64 */ .word 0x82b1820a
/* 08061b68 */ .word 0x82c782f1
/* 08061b6c */ .word 0x825082cd
/* 08061b70 */ .word 0x0a4181c2
/* 08061b74 */ .word 0xaa82b989
/* 08061b78 */ .word 0xa682d382
/* 08061b7c */ .word 0x8883e982
/* 08061b80 */ .word 0x820a4981
/* 08061b84 */ .word 0x82a982ed
/* 08061b88 */ .word 0x82a982e9
/* 08061b8c */ .word 0x0a4881c8
/* 08061b90 */ .word 0x00000000

@ Bytecode 
/* 08061b94 */ .word 0x00000003
/* 08061b98 */ .word 0x080179f5
/* 08061b9c */ .word 0x00000002
/* 08061ba0 */ .word 0x00000000
/* 08061ba4 */ .word 0x00000000
/* 08061ba8 */ .word 0x00000018
/* 08061bac */ .word 0x00000003
/* 08061bb0 */ .word 0x080179f5
/* 08061bb4 */ .word 0x00000001
/* 08061bb8 */ .word 0x00000000
/* 08061bbc */ .word 0x00000000
/* 08061bc0 */ .word 0x0000000c
/* 08061bc4 */ .word 0x00000003
/* 08061bc8 */ .word 0x080179f5
/* 08061bcc */ .word 0x00000001
/* 08061bd0 */ .word 0x00000000
/* 08061bd4 */ .word 0x00000000
/* 08061bd8 */ .word 0x0000000c
/* 08061bdc */ .word 0x00000003
/* 08061be0 */ .word 0x080179f5
/* 08061be4 */ .word 0x00000002
/* 08061be8 */ .word 0x00000000
/* 08061bec */ .word 0x00000000
/* 08061bf0 */ .word 0x00000018
/* 08061bf4 */ .word 0x0000000e
/* 08061bf8 */ .word 0x00000000
/* 08061bfc */ .word 0x00000000

/* 08061c00 */ .word 0x82b3820a
/* 08061c04 */ .word 0x82c982e7
/* 08061c08 */ .word 0x81c28250
/* 08061c0c */ .word 0xb9890a41
/* 08061c10 */ .word 0xd382aa82
/* 08061c14 */ .word 0xe982a682
/* 08061c18 */ .word 0x49818883
/* 08061c1c */ .word 0x82ed820a
/* 08061c20 */ .word 0x82e982a9
/* 08061c24 */ .word 0x81c882a9
/* 08061c28 */ .word 0x00000048

@ Bytecode 
/* 08061c2c */ .word 0x00000003
/* 08061c30 */ .word 0x080179f5
/* 08061c34 */ .word 0x00000002
/* 08061c38 */ .word 0x00000000
/* 08061c3c */ .word 0x00000000
/* 08061c40 */ .word 0x00000018
/* 08061c44 */ .word 0x00000003
/* 08061c48 */ .word 0x080179f5
/* 08061c4c */ .word 0x00000001
/* 08061c50 */ .word 0x00000000
/* 08061c54 */ .word 0x00000000
/* 08061c58 */ .word 0x00000006
/* 08061c5c */ .word 0x00000003
/* 08061c60 */ .word 0x080179f5
/* 08061c64 */ .word 0x00000000
/* 08061c68 */ .word 0x00000000
/* 08061c6c */ .word 0x00000000
/* 08061c70 */ .word 0x00000006
/* 08061c74 */ .word 0x00000003
/* 08061c78 */ .word 0x080179f5
/* 08061c7c */ .word 0x00000001
/* 08061c80 */ .word 0x00000000
/* 08061c84 */ .word 0x00000000
/* 08061c88 */ .word 0x0000000c
/* 08061c8c */ .word 0x00000003
/* 08061c90 */ .word 0x080179f5
/* 08061c94 */ .word 0x00000002
/* 08061c98 */ .word 0x00000000
/* 08061c9c */ .word 0x00000000
/* 08061ca0 */ .word 0x00000018
/* 08061ca4 */ .word 0x0000000e
/* 08061ca8 */ .word 0x00000000
/* 08061cac */ .word 0x00000000

/* 08061cb0 */ .word 0x82dc820a
/* 08061cb4 */ .word 0x82dc82bd
/* 08061cb8 */ .word 0x825082bd
/* 08061cbc */ .word 0x0a4181c2
/* 08061cc0 */ .word 0xaa82b989
/* 08061cc4 */ .word 0xa682d382
/* 08061cc8 */ .word 0x8883e982
/* 08061ccc */ .word 0x820a4981
/* 08061cd0 */ .word 0x82a982ed
/* 08061cd4 */ .word 0x82a982e9
/* 08061cd8 */ .word 0x004881c8

@ Bytecode 
/* 08061cdc */ .word 0x00000003
/* 08061ce0 */ .word 0x080179f5
/* 08061ce4 */ .word 0x00000001
/* 08061ce8 */ .word 0x00000000
/* 08061cec */ .word 0x00000000
/* 08061cf0 */ .word 0x0000000c
/* 08061cf4 */ .word 0x00000003
/* 08061cf8 */ .word 0x080179f5
/* 08061cfc */ .word 0x00000001
/* 08061d00 */ .word 0x00000000
/* 08061d04 */ .word 0x00000000
/* 08061d08 */ .word 0x00000009
/* 08061d0c */ .word 0x0000000e
/* 08061d10 */ .word 0x00000000
/* 08061d14 */ .word 0x00000000

/* 08061d18 */ .word 0xf189a18d
/* 08061d1c */ .word 0x4181cd82
/* 08061d20 */ .word 0x58836f83
/* 08061d24 */ .word 0x89836883
/* 08061d28 */ .word 0xc6828083
/* 08061d2c */ .word 0x8358830a
/* 08061d30 */ .word 0x8341836c
/* 08061d34 */ .word 0x83898368
/* 08061d38 */ .word 0x82c68280
/* 08061d3c */ .word 0x81a482a2
/* 08061d40 */ .word 0x51820a41
/* 08061d44 */ .word 0xcc82c282
/* 08061d48 */ .word 0x43835e83
/* 08061d4c */ .word 0xf0825283
/* 08061d50 */ .word 0xc182678e
/* 08061d54 */ .word 0x830ac482
/* 08061d58 */ .word 0x8362838c
/* 08061d5c */ .word 0x82938358
/* 08061d60 */ .word 0x82b582f0
/* 08061d64 */ .word 0x82b582dc
/* 08061d68 */ .word 0x81a482e5
/* 08061d6c */ .word 0x00000042

/* 08061d70 */ .word 0x7b83420a
/* 08061d74 */ .word 0x93835e83
/* 08061d78 */ .word 0x5c8fc682
/* 08061d7c */ .word 0x7b839a8e
/* 08061d80 */ .word 0x93835e83
/* 08061d84 */ .word 0xba89cc82
/* 08061d88 */ .word 0x820a4181
/* 08061d8c */ .word 0x82bf82c7
/* 08061d90 */ .word 0x82c582e7
/* 08061d94 */ .word 0x836f83e0
/* 08061d98 */ .word 0x83688358
/* 08061d9c */ .word 0x82808389
/* 08061da0 */ .word 0xbd820af0
/* 08061da4 */ .word 0xad82bd82
/* 08061da8 */ .word 0xc682b182
/* 08061dac */ .word 0xc582aa82
/* 08061db0 */ .word 0xe982ab82
/* 08061db4 */ .word 0x49818883
/* 08061db8 */ .word 0x00000000

/* 08061dbc */ .word 0x82b5820a
/* 08061dc0 */ .word 0x82c482c1
/* 08061dc4 */ .word 0x8ec682e9
/* 08061dc8 */ .word 0x82a48276
/* 08061dcc */ .word 0x0ac782af
/* 08061dd0 */ .word 0x6c835883
/* 08061dd4 */ .word 0x68834183
/* 08061dd8 */ .word 0x80838983
/* 08061ddc */ .word 0x8341cd82
/* 08061de0 */ .word 0x835e837b
/* 08061de4 */ .word 0x0ac68293
/* 08061de8 */ .word 0x9a8e5c8f
/* 08061dec */ .word 0x5e837b83
/* 08061df0 */ .word 0xcc829383
/* 08061df4 */ .word 0xbe82b68d
/* 08061df8 */ .word 0xe782a982
/* 08061dfc */ .word 0x42816c83
/* 08061e00 */ .word 0x00000000

/* 08061e04 */ .word 0x82c5820a
/* 08061e08 */ .word 0x824081cd
/* 08061e0c */ .word 0x82bf82da
/* 08061e10 */ .word 0x0abf82da
/* 08061e14 */ .word 0xb682cd82
/* 08061e18 */ .word 0xdc82df82
/* 08061e1c */ .word 0x6c83b782
/* 08061e20 */ .word 0x000a6081

/* 08061e24 */ .word 0xad82e682
/* 08061e28 */ .word 0xa282ab82
/* 08061e2c */ .word 0x7d83c482
/* 08061e30 */ .word 0xb5826c83
/* 08061e34 */ .word 0xcb82c482
/* 08061e38 */ .word 0x8d0a4281
/* 08061e3c */ .word 0x82ab8244
/* 08061e40 */ .word 0x835e83c8
/* 08061e44 */ .word 0x837e8343
/* 08061e48 */ .word 0x824f8393
/* 08061e4c */ .word 0x82c782c5
/* 08061e50 */ .word 0x81bc82a4
/* 08061e54 */ .word 0x89890a42
/* 08061e58 */ .word 0xf0827491
/* 08061e5c */ .word 0xdf827e8e
/* 08061e60 */ .word 0xc682e982
/* 08061e64 */ .word 0x820a4181
/* 08061e68 */ .word 0x96e88ea8
/* 08061e6c */ .word 0x82aa827b
/* 08061e70 */ .word 0x82af82ab
/* 08061e74 */ .word 0x818883e9
/* 08061e78 */ .word 0x00000049

@ Bytecode 
/* 08061e7c */ .word 0x00000003
/* 08061e80 */ .word 0x080179f5
/* 08061e84 */ .word 0x00000001
/* 08061e88 */ .word 0x00000000
/* 08061e8c */ .word 0x00000000
/* 08061e90 */ .word 0x00000018
/* 08061e94 */ .word 0x00000003
/* 08061e98 */ .word 0x080179f5
/* 08061e9c */ .word 0x00000001
/* 08061ea0 */ .word 0x00000000
/* 08061ea4 */ .word 0x00000000
/* 08061ea8 */ .word 0x00000018
/* 08061eac */ .word 0x00000003
/* 08061eb0 */ .word 0x080179f5
/* 08061eb4 */ .word 0x00000001
/* 08061eb8 */ .word 0x00000000
/* 08061ebc */ .word 0x00000000
/* 08061ec0 */ .word 0x00000018
/* 08061ec4 */ .word 0x0000000e
/* 08061ec8 */ .word 0x00000000
/* 08061ecc */ .word 0x00000000
/* 08061ed0 */ .word 0x00000003
/* 08061ed4 */ .word 0x080179f5
/* 08061ed8 */ .word 0x00000001
/* 08061edc */ .word 0x00000000
/* 08061ee0 */ .word 0x00000000
/* 08061ee4 */ .word 0x00000015
/* 08061ee8 */ .word 0x0000000e
/* 08061eec */ .word 0x00000000
/* 08061ef0 */ .word 0x00000000

/* 08061ef4 */ .word 0x836f830a
/* 08061ef8 */ .word 0x83c68258
/* 08061efc */ .word 0x836c8358
/* 08061f00 */ .word 0x0af08241
/* 08061f04 */ .word 0xdd8cf08c
/* 08061f08 */ .word 0xbd82c982
/* 08061f0c */ .word 0xad82bd82
/* 08061f10 */ .word 0x49818883
/* 08061f14 */ .word 0x82c5820a
/* 08061f18 */ .word 0x82e982ab
/* 08061f1c */ .word 0x81c882a9
/* 08061f20 */ .word 0x00000048

@ Bytecode 
/* 08061f24 */ .word 0x00000003
/* 08061f28 */ .word 0x080179f5
/* 08061f2c */ .word 0x00000001
/* 08061f30 */ .word 0x00000000
/* 08061f34 */ .word 0x00000000
/* 08061f38 */ .word 0x0000000c
/* 08061f3c */ .word 0x00000003
/* 08061f40 */ .word 0x080179f5
/* 08061f44 */ .word 0x00000002
/* 08061f48 */ .word 0x00000000
/* 08061f4c */ .word 0x00000000
/* 08061f50 */ .word 0x0000000c
/* 08061f54 */ .word 0x00000003
/* 08061f58 */ .word 0x080179f5
/* 08061f5c */ .word 0x00000001
/* 08061f60 */ .word 0x00000000
/* 08061f64 */ .word 0x00000000
/* 08061f68 */ .word 0x0000000c
/* 08061f6c */ .word 0x00000003
/* 08061f70 */ .word 0x080179f5
/* 08061f74 */ .word 0x00000002
/* 08061f78 */ .word 0x00000000
/* 08061f7c */ .word 0x00000000
/* 08061f80 */ .word 0x0000000c
/* 08061f84 */ .word 0x00000003
/* 08061f88 */ .word 0x080179f5
/* 08061f8c */ .word 0x00000001
/* 08061f90 */ .word 0x00000000
/* 08061f94 */ .word 0x00000000
/* 08061f98 */ .word 0x0000000c
/* 08061f9c */ .word 0x00000003
/* 08061fa0 */ .word 0x080179f5
/* 08061fa4 */ .word 0x00000002
/* 08061fa8 */ .word 0x00000000
/* 08061fac */ .word 0x00000000
/* 08061fb0 */ .word 0x0000000c
/* 08061fb4 */ .word 0x0000000e
/* 08061fb8 */ .word 0x00000000
/* 08061fbc */ .word 0x00000000
/* 08061fc0 */ .word 0x00000003
/* 08061fc4 */ .word 0x080179f5
/* 08061fc8 */ .word 0x00000001
/* 08061fcc */ .word 0x00000000
/* 08061fd0 */ .word 0x00000000
/* 08061fd4 */ .word 0x0000000c
/* 08061fd8 */ .word 0x00000003
/* 08061fdc */ .word 0x080179f5
/* 08061fe0 */ .word 0x00000002
/* 08061fe4 */ .word 0x00000000
/* 08061fe8 */ .word 0x00000000
/* 08061fec */ .word 0x00000009
/* 08061ff0 */ .word 0x0000000e
/* 08061ff4 */ .word 0x00000000
/* 08061ff8 */ .word 0x00000000

/* 08061ffc */ .word 0x836f830a
/* 08062000 */ .word 0x83688358
/* 08062004 */ .word 0x82808389
/* 08062008 */ .word 0x835e83cc
/* 0806200c */ .word 0x837e8343
/* 08062010 */ .word 0x824f8393
/* 08062014 */ .word 0x50820af0
/* 08062018 */ .word 0x8a8f4a83
/* 0806201c */ .word 0xb8824181
/* 08062020 */ .word 0xb582e782
/* 08062024 */ .word 0xdd82c482
/* 08062028 */ .word 0x8883e982
/* 0806202c */ .word 0x820a4281
/* 08062030 */ .word 0x82a982ed
/* 08062034 */ .word 0x82a982e9
/* 08062038 */ .word 0x004881c8

@ Bytecode 
/* 0806203c */ .word 0x00000003
/* 08062040 */ .word 0x080179f5
/* 08062044 */ .word 0x00000001
/* 08062048 */ .word 0x00000000
/* 0806204c */ .word 0x00000000
/* 08062050 */ .word 0x0000000c
/* 08062054 */ .word 0x00000003
/* 08062058 */ .word 0x080179f5
/* 0806205c */ .word 0x00000002
/* 08062060 */ .word 0x00000000
/* 08062064 */ .word 0x00000000
/* 08062068 */ .word 0x0000000c
/* 0806206c */ .word 0x00000003
/* 08062070 */ .word 0x080179f5
/* 08062074 */ .word 0x00000001
/* 08062078 */ .word 0x00000000
/* 0806207c */ .word 0x00000000
/* 08062080 */ .word 0x0000000c
/* 08062084 */ .word 0x00000003
/* 08062088 */ .word 0x080179f5
/* 0806208c */ .word 0x00000002
/* 08062090 */ .word 0x00000000
/* 08062094 */ .word 0x00000000
/* 08062098 */ .word 0x00000006
/* 0806209c */ .word 0x00000003
/* 080620a0 */ .word 0x080179f5
/* 080620a4 */ .word 0x00000001
/* 080620a8 */ .word 0x00000000
/* 080620ac */ .word 0x00000000
/* 080620b0 */ .word 0x00000006
/* 080620b4 */ .word 0x00000000
/* 080620b8 */ .word 0x00000000
/* 080620bc */ .word 0x0000000c
/* 080620c0 */ .word 0x00000003
/* 080620c4 */ .word 0x080179f5
/* 080620c8 */ .word 0x00000002
/* 080620cc */ .word 0x00000000
/* 080620d0 */ .word 0x00000000
/* 080620d4 */ .word 0x0000000c
/* 080620d8 */ .word 0x0000000e
/* 080620dc */ .word 0x00000000
/* 080620e0 */ .word 0x00000000

/* 080620e4 */ .word 0x82b1820a
/* 080620e8 */ .word 0x82c782f1
/* 080620ec */ .word 0x825082cd
/* 080620f0 */ .word 0x0a4181c2
/* 080620f4 */ .word 0xaa82b989
/* 080620f8 */ .word 0xa682d382
/* 080620fc */ .word 0x8883e982
/* 08062100 */ .word 0x820a4981
/* 08062104 */ .word 0x82a982ed
/* 08062108 */ .word 0x82a982e9
/* 0806210c */ .word 0x0a4881c8
/* 08062110 */ .word 0x00000000

@ Bytecode 
/* 08062114 */ .word 0x00000003
/* 08062118 */ .word 0x080179f5
/* 0806211c */ .word 0x00000001
/* 08062120 */ .word 0x00000000
/* 08062124 */ .word 0x00000000
/* 08062128 */ .word 0x0000000c
/* 0806212c */ .word 0x00000003
/* 08062130 */ .word 0x080179f5
/* 08062134 */ .word 0x00000002
/* 08062138 */ .word 0x00000000
/* 0806213c */ .word 0x00000000
/* 08062140 */ .word 0x0000000c
/* 08062144 */ .word 0x00000003
/* 08062148 */ .word 0x080179f5
/* 0806214c */ .word 0x00000001
/* 08062150 */ .word 0x00000000
/* 08062154 */ .word 0x00000000
/* 08062158 */ .word 0x0000000c
/* 0806215c */ .word 0x00000003
/* 08062160 */ .word 0x080179f5
/* 08062164 */ .word 0x00000002
/* 08062168 */ .word 0x00000000
/* 0806216c */ .word 0x00000000
/* 08062170 */ .word 0x00000006
/* 08062174 */ .word 0x00000003
/* 08062178 */ .word 0x080179f5
/* 0806217c */ .word 0x00000001
/* 08062180 */ .word 0x00000000
/* 08062184 */ .word 0x00000000
/* 08062188 */ .word 0x00000006
/* 0806218c */ .word 0x00000000
/* 08062190 */ .word 0x00000000
/* 08062194 */ .word 0x00000006
/* 08062198 */ .word 0x00000003
/* 0806219c */ .word 0x080179f5
/* 080621a0 */ .word 0x00000001
/* 080621a4 */ .word 0x00000000
/* 080621a8 */ .word 0x00000000
/* 080621ac */ .word 0x00000006
/* 080621b0 */ .word 0x00000003
/* 080621b4 */ .word 0x080179f5
/* 080621b8 */ .word 0x00000002
/* 080621bc */ .word 0x00000000
/* 080621c0 */ .word 0x00000000
/* 080621c4 */ .word 0x0000000c
/* 080621c8 */ .word 0x0000000e
/* 080621cc */ .word 0x00000000
/* 080621d0 */ .word 0x00000000

/* 080621d4 */ .word 0x82b3820a
/* 080621d8 */ .word 0x82c982e7
/* 080621dc */ .word 0x81c28250
/* 080621e0 */ .word 0xb9890a41
/* 080621e4 */ .word 0xd382aa82
/* 080621e8 */ .word 0xe982a682
/* 080621ec */ .word 0x49818883
/* 080621f0 */ .word 0x82ed820a
/* 080621f4 */ .word 0x82e982a9
/* 080621f8 */ .word 0x81c882a9
/* 080621fc */ .word 0x00000048

/* 08062200 */ .word 0x00000003
/* 08062204 */ .word 0x080179f5
/* 08062208 */ .word 0x00000001
/* 0806220c */ .word 0x00000000
/* 08062210 */ .word 0x00000000
/* 08062214 */ .word 0x00000006
/* 08062218 */ .word 0x00000003
/* 0806221c */ .word 0x080179f5
/* 08062220 */ .word 0x00000001
/* 08062224 */ .word 0x00000000
/* 08062228 */ .word 0x00000000
/* 0806222c */ .word 0x00000006
/* 08062230 */ .word 0x00000003
/* 08062234 */ .word 0x080179f5
/* 08062238 */ .word 0x00000002
/* 0806223c */ .word 0x00000000
/* 08062240 */ .word 0x00000000
/* 08062244 */ .word 0x0000000c
/* 08062248 */ .word 0x00000003
/* 0806224c */ .word 0x080179f5
/* 08062250 */ .word 0x00000001
/* 08062254 */ .word 0x00000000
/* 08062258 */ .word 0x00000000
/* 0806225c */ .word 0x0000000c
/* 08062260 */ .word 0x00000003
/* 08062264 */ .word 0x080179f5
/* 08062268 */ .word 0x00000002
/* 0806226c */ .word 0x00000000
/* 08062270 */ .word 0x00000000
/* 08062274 */ .word 0x00000006
/* 08062278 */ .word 0x00000003
/* 0806227c */ .word 0x080179f5
/* 08062280 */ .word 0x00000001
/* 08062284 */ .word 0x00000000
/* 08062288 */ .word 0x00000000
/* 0806228c */ .word 0x00000006
/* 08062290 */ .word 0x00000000
/* 08062294 */ .word 0x00000000
/* 08062298 */ .word 0x00000006
/* 0806229c */ .word 0x00000003
/* 080622a0 */ .word 0x080179f5
/* 080622a4 */ .word 0x00000001
/* 080622a8 */ .word 0x00000000
/* 080622ac */ .word 0x00000000
/* 080622b0 */ .word 0x00000006
/* 080622b4 */ .word 0x00000003
/* 080622b8 */ .word 0x080179f5
/* 080622bc */ .word 0x00000002
/* 080622c0 */ .word 0x00000000
/* 080622c4 */ .word 0x00000000
/* 080622c8 */ .word 0x0000000c
/* 080622cc */ .word 0x0000000e
/* 080622d0 */ .word 0x00000000
/* 080622d4 */ .word 0x00000000

/* 080622d8 */ .word 0xad82e682
/* 080622dc */ .word 0xa282ab82
/* 080622e0 */ .word 0x7d83c482
/* 080622e4 */ .word 0xb5826c83
/* 080622e8 */ .word 0xcb82c482
/* 080622ec */ .word 0x8d0a4281
/* 080622f0 */ .word 0x82ab8244
/* 080622f4 */ .word 0x835e83c8
/* 080622f8 */ .word 0x837e8343
/* 080622fc */ .word 0x824f8393
/* 08062300 */ .word 0x82c782c5
/* 08062304 */ .word 0x81bc82a4
/* 08062308 */ .word 0x89890a42
/* 0806230c */ .word 0xf0827491
/* 08062310 */ .word 0xdf827e8e
/* 08062314 */ .word 0xc682e982
/* 08062318 */ .word 0x820a4181
/* 0806231c */ .word 0x96e88ea8
/* 08062320 */ .word 0x82aa827b
/* 08062324 */ .word 0x82af82ab
/* 08062328 */ .word 0x818883e9
/* 0806232c */ .word 0x00000049

@ Bytecode 
/* 08062330 */ .word 0x00000003
/* 08062334 */ .word 0x080179f5
/* 08062338 */ .word 0x00000002
/* 0806233c */ .word 0x00000000
/* 08062340 */ .word 0x00000000
/* 08062344 */ .word 0x0000000c
/* 08062348 */ .word 0x00000003
/* 0806234c */ .word 0x080179f5
/* 08062350 */ .word 0x00000001
/* 08062354 */ .word 0x00000000
/* 08062358 */ .word 0x00000000
/* 0806235c */ .word 0x0000000c
/* 08062360 */ .word 0x00000003
/* 08062364 */ .word 0x080179f5
/* 08062368 */ .word 0x00000001
/* 0806236c */ .word 0x00000000
/* 08062370 */ .word 0x00000000
/* 08062374 */ .word 0x00000018
/* 08062378 */ .word 0x00000003
/* 0806237c */ .word 0x080179f5
/* 08062380 */ .word 0x00000002
/* 08062384 */ .word 0x00000000
/* 08062388 */ .word 0x00000000
/* 0806238c */ .word 0x00000018
/* 08062390 */ .word 0x0000000e
/* 08062394 */ .word 0x00000000
/* 08062398 */ .word 0x00000000
/* 0806239c */ .word 0x00000003
/* 080623a0 */ .word 0x080179f5
/* 080623a4 */ .word 0x00000001
/* 080623a8 */ .word 0x00000000
/* 080623ac */ .word 0x00000000
/* 080623b0 */ .word 0x00000015
/* 080623b4 */ .word 0x0000000e
/* 080623b8 */ .word 0x00000000
/* 080623bc */ .word 0x00000000

/* 080623c0 */ .word 0x80835e83
/* 080623c4 */ .word 0xc482c182
/* 080623c8 */ .word 0xa482a282
/* 080623cc */ .word 0xf082cc82
/* 080623d0 */ .word 0x82bd820a
/* 080623d4 */ .word 0x82a282bd
/* 080623d8 */ .word 0x82dd82c4
/* 080623dc */ .word 0x81a482e6
/* 080623e0 */ .word 0x5c8f0a49
/* 080623e4 */ .word 0x7b839a8e
/* 080623e8 */ .word 0x93835e83
/* 080623ec */ .word 0x4589cc82
/* 080623f0 */ .word 0x830ac582
/* 080623f4 */ .word 0x8280835e
/* 080623f8 */ .word 0x82bd82f0
/* 080623fc */ .word 0x83ad82bd
/* 08062400 */ .word 0x00498188

@ Bytecode 
/* 08062404 */ .word 0x00000003
/* 08062408 */ .word 0x080179f5
/* 0806240c */ .word 0x00000002
/* 08062410 */ .word 0x00000000
/* 08062414 */ .word 0x00000000
/* 08062418 */ .word 0x0000000c
/* 0806241c */ .word 0x00000003
/* 08062420 */ .word 0x080179f5
/* 08062424 */ .word 0x00000001
/* 08062428 */ .word 0x00000000
/* 0806242c */ .word 0x00000000
/* 08062430 */ .word 0x0000000c
/* 08062434 */ .word 0x00000003
/* 08062438 */ .word 0x080179f5
/* 0806243c */ .word 0x00000001
/* 08062440 */ .word 0x00000000
/* 08062444 */ .word 0x00000000
/* 08062448 */ .word 0x0000000c
/* 0806244c */ .word 0x00000003
/* 08062450 */ .word 0x080179f5
/* 08062454 */ .word 0x00000005
/* 08062458 */ .word 0x00000000
/* 0806245c */ .word 0x00000000
/* 08062460 */ .word 0x0000000c
/* 08062464 */ .word 0x00000003
/* 08062468 */ .word 0x080179f5
/* 0806246c */ .word 0x00000003
/* 08062470 */ .word 0x00000000
/* 08062474 */ .word 0x00000000
/* 08062478 */ .word 0x00000018
/* 0806247c */ .word 0x0000000e
/* 08062480 */ .word 0x00000000
/* 08062484 */ .word 0x00000000

/* 08062488 */ .word 0x80835e83
/* 0806248c */ .word 0xc182be82
/* 08062490 */ .word 0xc682bd82
/* 08062494 */ .word 0xeb82b182
/* 08062498 */ .word 0x8f0af082
/* 0806249c */ .word 0x839a8e5c
/* 080624a0 */ .word 0x835e837b
/* 080624a4 */ .word 0x8fcc8293
/* 080624a8 */ .word 0x0ac982e3
/* 080624ac */ .word 0xa682a982
/* 080624b0 */ .word 0xdd82c482
/* 080624b4 */ .word 0x8883e982
/* 080624b8 */ .word 0x280a4981
/* 080624bc */ .word 0x5b818d83
/* 080624c0 */ .word 0xc1828b83
/* 080624c4 */ .word 0xa282c482
/* 080624c8 */ .word 0xdd82a482
/* 080624cc */ .word 0xa282bd82
/* 080624d0 */ .word 0x00000029

@ Bytecode 
/* 080624d4 */ .word 0x00000003
/* 080624d8 */ .word 0x080179f5
/* 080624dc */ .word 0x00000002
/* 080624e0 */ .word 0x00000000
/* 080624e4 */ .word 0x00000000
/* 080624e8 */ .word 0x0000000c
/* 080624ec */ .word 0x00000003
/* 080624f0 */ .word 0x080179f5
/* 080624f4 */ .word 0x00000001
/* 080624f8 */ .word 0x00000000
/* 080624fc */ .word 0x00000000
/* 08062500 */ .word 0x0000000c
/* 08062504 */ .word 0x00000003
/* 08062508 */ .word 0x080179f5
/* 0806250c */ .word 0x00000001
/* 08062510 */ .word 0x00000000
/* 08062514 */ .word 0x00000000
/* 08062518 */ .word 0x0000000c
/* 0806251c */ .word 0x00000003
/* 08062520 */ .word 0x080179f5
/* 08062524 */ .word 0x00000008
/* 08062528 */ .word 0x00000000
/* 0806252c */ .word 0x00000000
/* 08062530 */ .word 0x0000000c
/* 08062534 */ .word 0x00000003
/* 08062538 */ .word 0x080179f5
/* 0806253c */ .word 0x00000003
/* 08062540 */ .word 0x00000000
/* 08062544 */ .word 0x00000000
/* 08062548 */ .word 0x00000018
/* 0806254c */ .word 0x0000000e
/* 08062550 */ .word 0x00000000
/* 08062554 */ .word 0x00000000

/* 08062558 */ .word 0x82b3820a
/* 0806255c */ .word 0x82ab82c1
/* 08062560 */ .word 0x824081c6
/* 08062564 */ .word 0x82aa82bf
/* 08062568 */ .word 0x82c682a4
/* 0806256c */ .word 0x82eb82b1
/* 08062570 */ .word 0x5e830ac9
/* 08062574 */ .word 0xf0828083
/* 08062578 */ .word 0xc2825082
/* 0806257c */ .word 0xd3824181
/* 08062580 */ .word 0xb782e282
/* 08062584 */ .word 0x49818883
/* 08062588 */ .word 0x82ed820a
/* 0806258c */ .word 0x82e982a9
/* 08062590 */ .word 0x81c882a9
/* 08062594 */ .word 0x00000a48

@ Bytecode 
/* 08062598 */ .word 0x00000003
/* 0806259c */ .word 0x080179f5
/* 080625a0 */ .word 0x00000002
/* 080625a4 */ .word 0x00000000
/* 080625a8 */ .word 0x00000000
/* 080625ac */ .word 0x0000000c
/* 080625b0 */ .word 0x00000003
/* 080625b4 */ .word 0x080179f5
/* 080625b8 */ .word 0x00000001
/* 080625bc */ .word 0x00000000
/* 080625c0 */ .word 0x00000000
/* 080625c4 */ .word 0x0000000c
/* 080625c8 */ .word 0x00000003
/* 080625cc */ .word 0x080179f5
/* 080625d0 */ .word 0x00000001
/* 080625d4 */ .word 0x00000000
/* 080625d8 */ .word 0x00000000
/* 080625dc */ .word 0x0000000c
/* 080625e0 */ .word 0x00000003
/* 080625e4 */ .word 0x080179f5
/* 080625e8 */ .word 0x00000008
/* 080625ec */ .word 0x00000000
/* 080625f0 */ .word 0x00000000
/* 080625f4 */ .word 0x0000000c
/* 080625f8 */ .word 0x00000003
/* 080625fc */ .word 0x080179f5
/* 08062600 */ .word 0x00000003
/* 08062604 */ .word 0x00000000
/* 08062608 */ .word 0x00000000
/* 0806260c */ .word 0x0000000c
/* 08062610 */ .word 0x00000003
/* 08062614 */ .word 0x080179f5
/* 08062618 */ .word 0x00000005
/* 0806261c */ .word 0x00000000
/* 08062620 */ .word 0x00000000
/* 08062624 */ .word 0x0000000c
/* 08062628 */ .word 0x0000000e
/* 0806262c */ .word 0x00000000
/* 08062630 */ .word 0x00000000

/* 08062634 */ .word 0xad82e682
/* 08062638 */ .word 0xa282ab82
/* 0806263c */ .word 0x7d83c482
/* 08062640 */ .word 0xb5826c83
/* 08062644 */ .word 0xcb82c482
/* 08062648 */ .word 0x8d0a4281
/* 0806264c */ .word 0x82ab8244
/* 08062650 */ .word 0x835e83c8
/* 08062654 */ .word 0x837e8343
/* 08062658 */ .word 0x824f8393
/* 0806265c */ .word 0x82c782c5
/* 08062660 */ .word 0x81bc82a4
/* 08062664 */ .word 0x89890a42
/* 08062668 */ .word 0xf0827491
/* 0806266c */ .word 0xdf827e8e
/* 08062670 */ .word 0xc682e982
/* 08062674 */ .word 0x820a4181
/* 08062678 */ .word 0x96e88ea8
/* 0806267c */ .word 0x82aa827b
/* 08062680 */ .word 0x82af82ab
/* 08062684 */ .word 0x818883e9
/* 08062688 */ .word 0x00000049

@ Bytecode 
/* 0806268c */ .word 0x00000003
/* 08062690 */ .word 0x080179f5
/* 08062694 */ .word 0x00000002
/* 08062698 */ .word 0x00000000
/* 0806269c */ .word 0x00000000
/* 080626a0 */ .word 0x0000000c
/* 080626a4 */ .word 0x00000003
/* 080626a8 */ .word 0x080179f5
/* 080626ac */ .word 0x00000001
/* 080626b0 */ .word 0x00000000
/* 080626b4 */ .word 0x00000000
/* 080626b8 */ .word 0x0000000c
/* 080626bc */ .word 0x00000003
/* 080626c0 */ .word 0x080179f5
/* 080626c4 */ .word 0x00000001
/* 080626c8 */ .word 0x00000000
/* 080626cc */ .word 0x00000000
/* 080626d0 */ .word 0x00000018
/* 080626d4 */ .word 0x00000003
/* 080626d8 */ .word 0x080179f5
/* 080626dc */ .word 0x00000002
/* 080626e0 */ .word 0x00000000
/* 080626e4 */ .word 0x00000000
/* 080626e8 */ .word 0x00000018
/* 080626ec */ .word 0x00000003
/* 080626f0 */ .word 0x080179f5
/* 080626f4 */ .word 0x00000001
/* 080626f8 */ .word 0x00000000
/* 080626fc */ .word 0x00000000
/* 08062700 */ .word 0x00000018
/* 08062704 */ .word 0x00000003
/* 08062708 */ .word 0x080179f5
/* 0806270c */ .word 0x00000002
/* 08062710 */ .word 0x00000000
/* 08062714 */ .word 0x00000000
/* 08062718 */ .word 0x0000000c
/* 0806271c */ .word 0x00000003
/* 08062720 */ .word 0x080179f5
/* 08062724 */ .word 0x00000001
/* 08062728 */ .word 0x00000000
/* 0806272c */ .word 0x00000000
/* 08062730 */ .word 0x0000000c
/* 08062734 */ .word 0x00000003
/* 08062738 */ .word 0x080179f5
/* 0806273c */ .word 0x00000001
/* 08062740 */ .word 0x00000000
/* 08062744 */ .word 0x00000000
/* 08062748 */ .word 0x00000018
/* 0806274c */ .word 0x00000003
/* 08062750 */ .word 0x080179f5
/* 08062754 */ .word 0x00000002
/* 08062758 */ .word 0x00000000
/* 0806275c */ .word 0x00000000
/* 08062760 */ .word 0x00000018
/* 08062764 */ .word 0x0000000e
/* 08062768 */ .word 0x00000000
/* 0806276c */ .word 0x00000000
/* 08062770 */ .word 0x00000003
/* 08062774 */ .word 0x080179f5
/* 08062778 */ .word 0x00000001
/* 0806277c */ .word 0x00000000
/* 08062780 */ .word 0x00000000
/* 08062784 */ .word 0x00000015
/* 08062788 */ .word 0x0000000e
/* 0806278c */ .word 0x00000000
/* 08062790 */ .word 0x00000000

/* 08062794 */ .word 0x8356830a
/* 08062798 */ .word 0x836f8393
/* 0806279c */ .word 0x83c6828b
/* 080627a0 */ .word 0x836c8358
/* 080627a4 */ .word 0x0ac58241
/* 080627a8 */ .word 0x81834c83
/* 080627ac */ .word 0xdd82c482
/* 080627b0 */ .word 0xa482e682
/* 080627b4 */ .word 0x820a4981
/* 080627b8 */ .word 0x82ab82c5
/* 080627bc */ .word 0x82a982e9
/* 080627c0 */ .word 0x004881c8

@ Bytecode 
/* 080627c4 */ .word 0x00000003
/* 080627c8 */ .word 0x080179f5
/* 080627cc */ .word 0x00000002
/* 080627d0 */ .word 0x00000000
/* 080627d4 */ .word 0x00000000
/* 080627d8 */ .word 0x0000000c
/* 080627dc */ .word 0x00000003
/* 080627e0 */ .word 0x080179f5
/* 080627e4 */ .word 0x00000001
/* 080627e8 */ .word 0x00000000
/* 080627ec */ .word 0x00000000
/* 080627f0 */ .word 0x0000000c
/* 080627f4 */ .word 0x00000003
/* 080627f8 */ .word 0x080179f5
/* 080627fc */ .word 0x00000001
/* 08062800 */ .word 0x00000000
/* 08062804 */ .word 0x00000000
/* 08062808 */ .word 0x00000018
/* 0806280c */ .word 0x00000003
/* 08062810 */ .word 0x080179f5
/* 08062814 */ .word 0x00000002
/* 08062818 */ .word 0x00000000
/* 0806281c */ .word 0x00000000
/* 08062820 */ .word 0x00000018
/* 08062824 */ .word 0x00000003
/* 08062828 */ .word 0x080179f5
/* 0806282c */ .word 0x00000001
/* 08062830 */ .word 0x00000000
/* 08062834 */ .word 0x00000000
/* 08062838 */ .word 0x00000018
/* 0806283c */ .word 0x00000003
/* 08062840 */ .word 0x080179f5
/* 08062844 */ .word 0x00000002
/* 08062848 */ .word 0x00000000
/* 0806284c */ .word 0x00000000
/* 08062850 */ .word 0x0000000c
/* 08062854 */ .word 0x00000003
/* 08062858 */ .word 0x080179f5
/* 0806285c */ .word 0x00000001
/* 08062860 */ .word 0x00000000
/* 08062864 */ .word 0x00000000
/* 08062868 */ .word 0x0000000c
/* 0806286c */ .word 0x00000003
/* 08062870 */ .word 0x080179f5
/* 08062874 */ .word 0x00000001
/* 08062878 */ .word 0x00000000
/* 0806287c */ .word 0x00000000
/* 08062880 */ .word 0x0000000c
/* 08062884 */ .word 0x00000003
/* 08062888 */ .word 0x080179f5
/* 0806288c */ .word 0x00000002
/* 08062890 */ .word 0x00000000
/* 08062894 */ .word 0x00000000
/* 08062898 */ .word 0x0000000c
/* 0806289c */ .word 0x00000003
/* 080628a0 */ .word 0x080179f5
/* 080628a4 */ .word 0x00000002
/* 080628a8 */ .word 0x00000000
/* 080628ac */ .word 0x00000000
/* 080628b0 */ .word 0x00000018
/* 080628b4 */ .word 0x0000000e
/* 080628b8 */ .word 0x00000000
/* 080628bc */ .word 0x00000000
/* 080628c0 */ .word 0x00000003
/* 080628c4 */ .word 0x080179f5
/* 080628c8 */ .word 0x00000001
/* 080628cc */ .word 0x00000003
/* 080628d0 */ .word 0x080179f5
/* 080628d4 */ .word 0x00000007
/* 080628d8 */ .word 0x00000000
/* 080628dc */ .word 0x00000000
/* 080628e0 */ .word 0x00000015
/* 080628e4 */ .word 0x0000000e
/* 080628e8 */ .word 0x00000000
/* 080628ec */ .word 0x00000000

/* 080628f0 */ .word 0xc182bd82
/* 080628f4 */ .word 0xcc82bd82
/* 080628f8 */ .word 0xc2825082
/* 080628fc */ .word 0xb9894181
/* 08062900 */ .word 0xd382aa82
/* 08062904 */ .word 0xe982a682
/* 08062908 */ .word 0x42818883
/* 0806290c */ .word 0x82c5820a
/* 08062910 */ .word 0x824081e0
/* 08062914 */ .word 0x82e882ed
/* 08062918 */ .word 0x834081c6
/* 0806291c */ .word 0x834e8374
/* 08062920 */ .word 0x82638355
/* 08062924 */ .word 0x4a830ac8
/* 08062928 */ .word 0x57839383
/* 0806292c */ .word 0x4081c982
/* 08062930 */ .word 0xe982c882
/* 08062934 */ .word 0xbe82f182
/* 08062938 */ .word 0x820a4981
/* 0806293c */ .word 0x82a282c2
/* 08062940 */ .word 0x82b182c4
/* 08062944 */ .word 0x82e982ea
/* 08062948 */ .word 0x81c882a9
/* 0806294c */ .word 0x00000048

/* 08062950 */ .word 0x00000003
/* 08062954 */ .word 0x080179f5
/* 08062958 */ .word 0x00000002
/* 0806295c */ .word 0x00000000
/* 08062960 */ .word 0x00000000
/* 08062964 */ .word 0x0000000c
/* 08062968 */ .word 0x00000003
/* 0806296c */ .word 0x080179f5
/* 08062970 */ .word 0x00000001
/* 08062974 */ .word 0x00000000
/* 08062978 */ .word 0x00000000
/* 0806297c */ .word 0x0000000c
/* 08062980 */ .word 0x00000003
/* 08062984 */ .word 0x080179f5
/* 08062988 */ .word 0x00000001
/* 0806298c */ .word 0x00000000
/* 08062990 */ .word 0x00000000
/* 08062994 */ .word 0x00000018
/* 08062998 */ .word 0x00000003
/* 0806299c */ .word 0x080179f5
/* 080629a0 */ .word 0x00000002
/* 080629a4 */ .word 0x00000000
/* 080629a8 */ .word 0x00000000
/* 080629ac */ .word 0x00000018
/* 080629b0 */ .word 0x00000003
/* 080629b4 */ .word 0x080179f5
/* 080629b8 */ .word 0x00000001
/* 080629bc */ .word 0x00000000
/* 080629c0 */ .word 0x00000000
/* 080629c4 */ .word 0x00000018
/* 080629c8 */ .word 0x00000003
/* 080629cc */ .word 0x080179f5
/* 080629d0 */ .word 0x00000002
/* 080629d4 */ .word 0x00000000
/* 080629d8 */ .word 0x00000000
/* 080629dc */ .word 0x0000000c
/* 080629e0 */ .word 0x00000003
/* 080629e4 */ .word 0x080179f5
/* 080629e8 */ .word 0x00000001
/* 080629ec */ .word 0x00000000
/* 080629f0 */ .word 0x00000000
/* 080629f4 */ .word 0x00000006
/* 080629f8 */ .word 0x00000003
/* 080629fc */ .word 0x080179f5
/* 08062a00 */ .word 0x00000002
/* 08062a04 */ .word 0x00000000
/* 08062a08 */ .word 0x00000000
/* 08062a0c */ .word 0x00000006
/* 08062a10 */ .word 0x00000003
/* 08062a14 */ .word 0x080179f5
/* 08062a18 */ .word 0x00000001
/* 08062a1c */ .word 0x00000000
/* 08062a20 */ .word 0x00000000
/* 08062a24 */ .word 0x0000000c
/* 08062a28 */ .word 0x00000003
/* 08062a2c */ .word 0x080179f5
/* 08062a30 */ .word 0x00000002
/* 08062a34 */ .word 0x00000000
/* 08062a38 */ .word 0x00000000
/* 08062a3c */ .word 0x0000000c
/* 08062a40 */ .word 0x00000003
/* 08062a44 */ .word 0x080179f5
/* 08062a48 */ .word 0x00000002
/* 08062a4c */ .word 0x00000000
/* 08062a50 */ .word 0x00000000
/* 08062a54 */ .word 0x00000018
/* 08062a58 */ .word 0x0000000e
/* 08062a5c */ .word 0x00000000
/* 08062a60 */ .word 0x00000000

/* 08062a64 */ .word 0x82a8820a
/* 08062a68 */ .word 0x82e882ed
/* 08062a6c */ .word 0x82c682cc
/* 08062a70 */ .word 0x82eb82b1
/* 08062a74 */ .word 0x4a830af0
/* 08062a78 */ .word 0x52836283
/* 08062a7c */ .word 0xad82e682
/* 08062a80 */ .word 0xc482b582
/* 08062a84 */ .word 0xe982dd82
/* 08062a88 */ .word 0x49816c83
/* 08062a8c */ .word 0x82aa820a
/* 08062a90 */ .word 0x82ce82f1
/* 08062a94 */ .word 0x82c482c1
/* 08062a98 */ .word 0x81c482dd
/* 08062a9c */ .word 0x00000a49

/* 08062aa0 */ .word 0x00000003
/* 08062aa4 */ .word 0x080179f5
/* 08062aa8 */ .word 0x00000002
/* 08062aac */ .word 0x00000000
/* 08062ab0 */ .word 0x00000000
/* 08062ab4 */ .word 0x0000000c
/* 08062ab8 */ .word 0x00000003
/* 08062abc */ .word 0x080179f5
/* 08062ac0 */ .word 0x00000001
/* 08062ac4 */ .word 0x00000000
/* 08062ac8 */ .word 0x00000000
/* 08062acc */ .word 0x0000000c
/* 08062ad0 */ .word 0x00000003
/* 08062ad4 */ .word 0x080179f5
/* 08062ad8 */ .word 0x00000001
/* 08062adc */ .word 0x00000000
/* 08062ae0 */ .word 0x00000000
/* 08062ae4 */ .word 0x00000018
/* 08062ae8 */ .word 0x00000003
/* 08062aec */ .word 0x080179f5
/* 08062af0 */ .word 0x00000002
/* 08062af4 */ .word 0x00000000
/* 08062af8 */ .word 0x00000000
/* 08062afc */ .word 0x00000018
/* 08062b00 */ .word 0x00000003
/* 08062b04 */ .word 0x080179f5
/* 08062b08 */ .word 0x00000001
/* 08062b0c */ .word 0x00000000
/* 08062b10 */ .word 0x00000000
/* 08062b14 */ .word 0x00000018
/* 08062b18 */ .word 0x00000003
/* 08062b1c */ .word 0x080179f5
/* 08062b20 */ .word 0x00000002
/* 08062b24 */ .word 0x00000000
/* 08062b28 */ .word 0x00000000
/* 08062b2c */ .word 0x0000000c
/* 08062b30 */ .word 0x00000003
/* 08062b34 */ .word 0x080179f5
/* 08062b38 */ .word 0x00000001
/* 08062b3c */ .word 0x00000000
/* 08062b40 */ .word 0x00000000
/* 08062b44 */ .word 0x00000006
/* 08062b48 */ .word 0x00000003
/* 08062b4c */ .word 0x080179f5
/* 08062b50 */ .word 0x00000002
/* 08062b54 */ .word 0x00000000
/* 08062b58 */ .word 0x00000000
/* 08062b5c */ .word 0x00000006
/* 08062b60 */ .word 0x00000003
/* 08062b64 */ .word 0x080179f5
/* 08062b68 */ .word 0x00000001
/* 08062b6c */ .word 0x00000000
/* 08062b70 */ .word 0x00000000
/* 08062b74 */ .word 0x0000000c
/* 08062b78 */ .word 0x00000003
/* 08062b7c */ .word 0x080179f5
/* 08062b80 */ .word 0x00000002
/* 08062b84 */ .word 0x00000000
/* 08062b88 */ .word 0x00000000
/* 08062b8c */ .word 0x0000000c
/* 08062b90 */ .word 0x00000003
/* 08062b94 */ .word 0x080179f5
/* 08062b98 */ .word 0x00000002
/* 08062b9c */ .word 0x00000000
/* 08062ba0 */ .word 0x00000000
/* 08062ba4 */ .word 0x0000000c
/* 08062ba8 */ .word 0x00000003
/* 08062bac */ .word 0x080179f5
/* 08062bb0 */ .word 0x00000003
/* 08062bb4 */ .word 0x00000000
/* 08062bb8 */ .word 0x00000000
/* 08062bbc */ .word 0x00000006
/* 08062bc0 */ .word 0x00000003
/* 08062bc4 */ .word 0x080179f5
/* 08062bc8 */ .word 0x00000002
/* 08062bcc */ .word 0x00000000
/* 08062bd0 */ .word 0x00000000
/* 08062bd4 */ .word 0x00000006
/* 08062bd8 */ .word 0x0000000e
/* 08062bdc */ .word 0x00000000
/* 08062be0 */ .word 0x00000000

/* 08062be4 */ .word 0x8341830a
/* 08062be8 */ .word 0x835a834e
/* 08062bec */ .word 0x82678393
/* 08062bf0 */ .word 0x82c282f0
/* 08062bf4 */ .word 0x83e982af
/* 08062bf8 */ .word 0x0a428188
/* 08062bfc */ .word 0xc182af82
/* 08062c00 */ .word 0xa482b182
/* 08062c04 */ .word 0x75835683
/* 08062c08 */ .word 0xa982a282
/* 08062c0c */ .word 0x6081e082
/* 08062c10 */ .word 0x820a4981
/* 08062c14 */ .word 0x82e982e2
/* 08062c18 */ .word 0x82a982b5
/* 08062c1c */ .word 0x81a282c8
/* 08062c20 */ .word 0x00498149

@ Bytecode 
/* 08062c24 */ .word 0x00000003
/* 08062c28 */ .word 0x080179f5
/* 08062c2c */ .word 0x00000002
/* 08062c30 */ .word 0x00000000
/* 08062c34 */ .word 0x00000000
/* 08062c38 */ .word 0x0000000c
/* 08062c3c */ .word 0x00000003
/* 08062c40 */ .word 0x080179f5
/* 08062c44 */ .word 0x00000001
/* 08062c48 */ .word 0x00000000
/* 08062c4c */ .word 0x00000000
/* 08062c50 */ .word 0x0000000c
/* 08062c54 */ .word 0x00000003
/* 08062c58 */ .word 0x080179f5
/* 08062c5c */ .word 0x00000001
/* 08062c60 */ .word 0x00000000
/* 08062c64 */ .word 0x00000000
/* 08062c68 */ .word 0x00000018
/* 08062c6c */ .word 0x00000003
/* 08062c70 */ .word 0x080179f5
/* 08062c74 */ .word 0x00000002
/* 08062c78 */ .word 0x00000000
/* 08062c7c */ .word 0x00000000
/* 08062c80 */ .word 0x00000006
/* 08062c84 */ .word 0x00000003
/* 08062c88 */ .word 0x080179f5
/* 08062c8c */ .word 0x00000001
/* 08062c90 */ .word 0x00000003
/* 08062c94 */ .word 0x080179f5
/* 08062c98 */ .word 0x00000007
/* 08062c9c */ .word 0x00000000
/* 08062ca0 */ .word 0x00000000
/* 08062ca4 */ .word 0x00000006
/* 08062ca8 */ .word 0x00000000
/* 08062cac */ .word 0x00000000
/* 08062cb0 */ .word 0x0000000c
/* 08062cb4 */ .word 0x00000003
/* 08062cb8 */ .word 0x080179f5
/* 08062cbc */ .word 0x00000001
/* 08062cc0 */ .word 0x00000000
/* 08062cc4 */ .word 0x00000000
/* 08062cc8 */ .word 0x00000018
/* 08062ccc */ .word 0x00000003
/* 08062cd0 */ .word 0x080179f5
/* 08062cd4 */ .word 0x00000002
/* 08062cd8 */ .word 0x00000000
/* 08062cdc */ .word 0x00000000
/* 08062ce0 */ .word 0x0000000c
/* 08062ce4 */ .word 0x00000003
/* 08062ce8 */ .word 0x080179f5
/* 08062cec */ .word 0x00000001
/* 08062cf0 */ .word 0x00000000
/* 08062cf4 */ .word 0x00000000
/* 08062cf8 */ .word 0x00000006
/* 08062cfc */ .word 0x00000003
/* 08062d00 */ .word 0x080179f5
/* 08062d04 */ .word 0x00000002
/* 08062d08 */ .word 0x00000000
/* 08062d0c */ .word 0x00000000
/* 08062d10 */ .word 0x00000006
/* 08062d14 */ .word 0x00000003
/* 08062d18 */ .word 0x080179f5
/* 08062d1c */ .word 0x00000001
/* 08062d20 */ .word 0x00000000
/* 08062d24 */ .word 0x00000000
/* 08062d28 */ .word 0x0000000c
/* 08062d2c */ .word 0x00000003
/* 08062d30 */ .word 0x080179f5
/* 08062d34 */ .word 0x00000002
/* 08062d38 */ .word 0x00000000
/* 08062d3c */ .word 0x00000000
/* 08062d40 */ .word 0x0000000c
/* 08062d44 */ .word 0x00000003
/* 08062d48 */ .word 0x080179f5
/* 08062d4c */ .word 0x00000002
/* 08062d50 */ .word 0x00000000
/* 08062d54 */ .word 0x00000000
/* 08062d58 */ .word 0x0000000c
/* 08062d5c */ .word 0x00000003
/* 08062d60 */ .word 0x080179f5
/* 08062d64 */ .word 0x00000003
/* 08062d68 */ .word 0x00000000
/* 08062d6c */ .word 0x00000000
/* 08062d70 */ .word 0x00000006
/* 08062d74 */ .word 0x00000003
/* 08062d78 */ .word 0x080179f5
/* 08062d7c */ .word 0x00000002
/* 08062d80 */ .word 0x00000000
/* 08062d84 */ .word 0x00000000
/* 08062d88 */ .word 0x00000006
/* 08062d8c */ .word 0x0000000e
/* 08062d90 */ .word 0x00000000
/* 08062d94 */ .word 0x00000000

/* 08062d98 */ .word 0xad82e682
/* 08062d9c */ .word 0xa282ab82
/* 08062da0 */ .word 0x7d83c482
/* 08062da4 */ .word 0xb5826c83
/* 08062da8 */ .word 0xcb82c482
/* 08062dac */ .word 0x8d0a4281
/* 08062db0 */ .word 0x82ab8244
/* 08062db4 */ .word 0x835e83c8
/* 08062db8 */ .word 0x837e8343
/* 08062dbc */ .word 0x824f8393
/* 08062dc0 */ .word 0x82c782c5
/* 08062dc4 */ .word 0x81bc82a4
/* 08062dc8 */ .word 0x89890a42
/* 08062dcc */ .word 0xf0827491
/* 08062dd0 */ .word 0xdf827e8e
/* 08062dd4 */ .word 0xc682e982
/* 08062dd8 */ .word 0x820a4181
/* 08062ddc */ .word 0x96e88ea8
/* 08062de0 */ .word 0x82aa827b
/* 08062de4 */ .word 0x82af82ab
/* 08062de8 */ .word 0x818883e9

@ Bytecode 
/* 08062dec */ .word 0x00000049
/* 08062df0 */ .word 0x00000003
/* 08062df4 */ .word 0x080179f5
/* 08062df8 */ .word 0x00000002
/* 08062dfc */ .word 0x00000000
/* 08062e00 */ .word 0x00000000
/* 08062e04 */ .word 0x00000018
/* 08062e08 */ .word 0x00000000
/* 08062e0c */ .word 0x00000000
/* 08062e10 */ .word 0x0000000c
/* 08062e14 */ .word 0x00000003
/* 08062e18 */ .word 0x080179f5
/* 08062e1c */ .word 0x00000001
/* 08062e20 */ .word 0x00000000
/* 08062e24 */ .word 0x00000000
/* 08062e28 */ .word 0x0000000c
/* 08062e2c */ .word 0x00000003
/* 08062e30 */ .word 0x080179f5
/* 08062e34 */ .word 0x00000002
/* 08062e38 */ .word 0x00000000
/* 08062e3c */ .word 0x00000000
/* 08062e40 */ .word 0x00000018
/* 08062e44 */ .word 0x00000003
/* 08062e48 */ .word 0x080179f5
/* 08062e4c */ .word 0x00000001
/* 08062e50 */ .word 0x00000000
/* 08062e54 */ .word 0x00000000
/* 08062e58 */ .word 0x00000018
/* 08062e5c */ .word 0x00000003
/* 08062e60 */ .word 0x080179f5
/* 08062e64 */ .word 0x00000002
/* 08062e68 */ .word 0x00000000
/* 08062e6c */ .word 0x00000000
/* 08062e70 */ .word 0x00000018
/* 08062e74 */ .word 0x00000000
/* 08062e78 */ .word 0x00000000
/* 08062e7c */ .word 0x0000000c
/* 08062e80 */ .word 0x00000003
/* 08062e84 */ .word 0x080179f5
/* 08062e88 */ .word 0x00000001
/* 08062e8c */ .word 0x00000000
/* 08062e90 */ .word 0x00000000
/* 08062e94 */ .word 0x0000000c
/* 08062e98 */ .word 0x00000003
/* 08062e9c */ .word 0x080179f5
/* 08062ea0 */ .word 0x00000002
/* 08062ea4 */ .word 0x00000000
/* 08062ea8 */ .word 0x00000000
/* 08062eac */ .word 0x00000018
/* 08062eb0 */ .word 0x0000000e
/* 08062eb4 */ .word 0x00000000
/* 08062eb8 */ .word 0x00000000
/* 08062ebc */ .word 0x00000003
/* 08062ec0 */ .word 0x080179f5
/* 08062ec4 */ .word 0x00000001
/* 08062ec8 */ .word 0x00000000
/* 08062ecc */ .word 0x00000000
/* 08062ed0 */ .word 0x00000015
/* 08062ed4 */ .word 0x0000000e
/* 08062ed8 */ .word 0x00000000
/* 08062edc */ .word 0x00000000

/* 08062ee0 */ .word 0x8356830a
/* 08062ee4 */ .word 0x836f8393
/* 08062ee8 */ .word 0x83c6828b
/* 08062eec */ .word 0x836c8358
/* 08062ef0 */ .word 0x0ac58241
/* 08062ef4 */ .word 0x81834c83
/* 08062ef8 */ .word 0xdd82c482
/* 08062efc */ .word 0xa482e682
/* 08062f00 */ .word 0x820a4981
/* 08062f04 */ .word 0x82ab82c5
/* 08062f08 */ .word 0x82a982e9
/* 08062f0c */ .word 0x004881c8

@ Bytecode 
/* 08062f10 */ .word 0x00000003
/* 08062f14 */ .word 0x080179f5
/* 08062f18 */ .word 0x00000002
/* 08062f1c */ .word 0x00000000
/* 08062f20 */ .word 0x00000000
/* 08062f24 */ .word 0x00000018
/* 08062f28 */ .word 0x00000000
/* 08062f2c */ .word 0x00000000
/* 08062f30 */ .word 0x0000000c
/* 08062f34 */ .word 0x00000003
/* 08062f38 */ .word 0x080179f5
/* 08062f3c */ .word 0x00000001
/* 08062f40 */ .word 0x00000000
/* 08062f44 */ .word 0x00000000
/* 08062f48 */ .word 0x0000000c
/* 08062f4c */ .word 0x00000003
/* 08062f50 */ .word 0x080179f5
/* 08062f54 */ .word 0x00000002
/* 08062f58 */ .word 0x00000000
/* 08062f5c */ .word 0x00000000
/* 08062f60 */ .word 0x00000018
/* 08062f64 */ .word 0x00000003
/* 08062f68 */ .word 0x080179f5
/* 08062f6c */ .word 0x00000001
/* 08062f70 */ .word 0x00000000
/* 08062f74 */ .word 0x00000000
/* 08062f78 */ .word 0x00000018
/* 08062f7c */ .word 0x00000003
/* 08062f80 */ .word 0x080179f5
/* 08062f84 */ .word 0x00000002
/* 08062f88 */ .word 0x00000000
/* 08062f8c */ .word 0x00000000
/* 08062f90 */ .word 0x00000018
/* 08062f94 */ .word 0x00000000
/* 08062f98 */ .word 0x00000000
/* 08062f9c */ .word 0x0000000c
/* 08062fa0 */ .word 0x00000003
/* 08062fa4 */ .word 0x080179f5
/* 08062fa8 */ .word 0x00000001
/* 08062fac */ .word 0x00000000
/* 08062fb0 */ .word 0x00000000
/* 08062fb4 */ .word 0x0000000c
/* 08062fb8 */ .word 0x00000003
/* 08062fbc */ .word 0x080179f5
/* 08062fc0 */ .word 0x00000002
/* 08062fc4 */ .word 0x00000000
/* 08062fc8 */ .word 0x00000000
/* 08062fcc */ .word 0x0000000c
/* 08062fd0 */ .word 0x00000003
/* 08062fd4 */ .word 0x080179f5
/* 08062fd8 */ .word 0x00000002
/* 08062fdc */ .word 0x00000000
/* 08062fe0 */ .word 0x00000000
/* 08062fe4 */ .word 0x0000000c
/* 08062fe8 */ .word 0x0000000e
/* 08062fec */ .word 0x00000000
/* 08062ff0 */ .word 0x00000000
/* 08062ff4 */ .word 0x00000003
/* 08062ff8 */ .word 0x080179f5
/* 08062ffc */ .word 0x00000001
/* 08063000 */ .word 0x00000003
/* 08063004 */ .word 0x080179f5
/* 08063008 */ .word 0x00000007
/* 0806300c */ .word 0x00000000
/* 08063010 */ .word 0x00000000
/* 08063014 */ .word 0x00000015
/* 08063018 */ .word 0x0000000e
/* 0806301c */ .word 0x00000000
/* 08063020 */ .word 0x00000000

/* 08063024 */ .word 0x836f830a
/* 08063028 */ .word 0x83688358
/* 0806302c */ .word 0x82808389
/* 08063030 */ .word 0x60830af0
/* 08063034 */ .word 0x62838783
/* 08063038 */ .word 0xa9826783
/* 0806303c */ .word 0xc482a682
/* 08063040 */ .word 0xe982dd82
/* 08063044 */ .word 0x42816c83
/* 08063048 */ .word 0x82c5820a
/* 0806304c */ .word 0x82e982ab
/* 08063050 */ .word 0x81c882a9
/* 08063054 */ .word 0x00000a48

@ Bytecode 
/* 08063058 */ .word 0x00000003
/* 0806305c */ .word 0x080179f5
/* 08063060 */ .word 0x00000002
/* 08063064 */ .word 0x00000000
/* 08063068 */ .word 0x00000000
/* 0806306c */ .word 0x0000000c
/* 08063070 */ .word 0x00000000
/* 08063074 */ .word 0x00000000
/* 08063078 */ .word 0x00000006
/* 0806307c */ .word 0x00000003
/* 08063080 */ .word 0x080179f5
/* 08063084 */ .word 0x00000001
/* 08063088 */ .word 0x00000000
/* 0806308c */ .word 0x00000000
/* 08063090 */ .word 0x00000006
/* 08063094 */ .word 0x00000000
/* 08063098 */ .word 0x00000000
/* 0806309c */ .word 0x0000000c
/* 080630a0 */ .word 0x00000003
/* 080630a4 */ .word 0x080179f5
/* 080630a8 */ .word 0x00000001
/* 080630ac */ .word 0x00000000
/* 080630b0 */ .word 0x00000000
/* 080630b4 */ .word 0x0000000c
/* 080630b8 */ .word 0x00000003
/* 080630bc */ .word 0x080179f5
/* 080630c0 */ .word 0x00000002
/* 080630c4 */ .word 0x00000000
/* 080630c8 */ .word 0x00000000
/* 080630cc */ .word 0x00000018
/* 080630d0 */ .word 0x00000003
/* 080630d4 */ .word 0x080179f5
/* 080630d8 */ .word 0x00000001
/* 080630dc */ .word 0x00000000
/* 080630e0 */ .word 0x00000000
/* 080630e4 */ .word 0x00000018
/* 080630e8 */ .word 0x00000003
/* 080630ec */ .word 0x080179f5
/* 080630f0 */ .word 0x00000002
/* 080630f4 */ .word 0x00000000
/* 080630f8 */ .word 0x00000000
/* 080630fc */ .word 0x0000000c
/* 08063100 */ .word 0x00000000
/* 08063104 */ .word 0x00000000
/* 08063108 */ .word 0x00000006
/* 0806310c */ .word 0x00000003
/* 08063110 */ .word 0x080179f5
/* 08063114 */ .word 0x00000001
/* 08063118 */ .word 0x00000000
/* 0806311c */ .word 0x00000000
/* 08063120 */ .word 0x00000006
/* 08063124 */ .word 0x00000000
/* 08063128 */ .word 0x00000000
/* 0806312c */ .word 0x0000000c
/* 08063130 */ .word 0x00000003
/* 08063134 */ .word 0x080179f5
/* 08063138 */ .word 0x00000001
/* 0806313c */ .word 0x00000000
/* 08063140 */ .word 0x00000000
/* 08063144 */ .word 0x0000000c
/* 08063148 */ .word 0x00000003
/* 0806314c */ .word 0x080179f5
/* 08063150 */ .word 0x00000002
/* 08063154 */ .word 0x00000000
/* 08063158 */ .word 0x00000000
/* 0806315c */ .word 0x0000000c
/* 08063160 */ .word 0x00000003
/* 08063164 */ .word 0x080179f5
/* 08063168 */ .word 0x00000002
/* 0806316c */ .word 0x00000000
/* 08063170 */ .word 0x00000000
/* 08063174 */ .word 0x0000000c
/* 08063178 */ .word 0x0000000e
/* 0806317c */ .word 0x00000000
/* 08063180 */ .word 0x00000000

/* 08063184 */ .word 0x58836f83
/* 08063188 */ .word 0x89836883
/* 0806318c */ .word 0xf0828083
/* 08063190 */ .word 0x82e0820a
/* 08063194 */ .word 0x836083a4
/* 08063198 */ .word 0x83628387
/* 0806319c */ .word 0x82be8267
/* 080631a0 */ .word 0xa9820aaf
/* 080631a4 */ .word 0xc482a682
/* 080631a8 */ .word 0xe982dd82
/* 080631ac */ .word 0x42816c83
/* 080631b0 */ .word 0x82aa820a
/* 080631b4 */ .word 0x82ce82f1
/* 080631b8 */ .word 0x81c482c1
/* 080631bc */ .word 0x0a498149
/* 080631c0 */ .word 0x00000000

@ Bytecode 
/* 080631c4 */ .word 0x00000003
/* 080631c8 */ .word 0x080179f5
/* 080631cc */ .word 0x00000002
/* 080631d0 */ .word 0x00000000
/* 080631d4 */ .word 0x00000000
/* 080631d8 */ .word 0x0000000c
/* 080631dc */ .word 0x00000000
/* 080631e0 */ .word 0x00000000
/* 080631e4 */ .word 0x00000006
/* 080631e8 */ .word 0x00000003
/* 080631ec */ .word 0x080179f5
/* 080631f0 */ .word 0x00000001
/* 080631f4 */ .word 0x00000000
/* 080631f8 */ .word 0x00000000
/* 080631fc */ .word 0x00000006
/* 08063200 */ .word 0x00000000
/* 08063204 */ .word 0x00000000
/* 08063208 */ .word 0x0000000c
/* 0806320c */ .word 0x00000003
/* 08063210 */ .word 0x080179f5
/* 08063214 */ .word 0x00000001
/* 08063218 */ .word 0x00000000
/* 0806321c */ .word 0x00000000
/* 08063220 */ .word 0x0000000c
/* 08063224 */ .word 0x00000003
/* 08063228 */ .word 0x080179f5
/* 0806322c */ .word 0x00000002
/* 08063230 */ .word 0x00000000
/* 08063234 */ .word 0x00000000
/* 08063238 */ .word 0x00000018
/* 0806323c */ .word 0x00000003
/* 08063240 */ .word 0x080179f5
/* 08063244 */ .word 0x00000001
/* 08063248 */ .word 0x00000000
/* 0806324c */ .word 0x00000000
/* 08063250 */ .word 0x00000018
/* 08063254 */ .word 0x00000003
/* 08063258 */ .word 0x080179f5
/* 0806325c */ .word 0x00000002
/* 08063260 */ .word 0x00000000
/* 08063264 */ .word 0x00000000
/* 08063268 */ .word 0x0000000c
/* 0806326c */ .word 0x00000000
/* 08063270 */ .word 0x00000000
/* 08063274 */ .word 0x00000006
/* 08063278 */ .word 0x00000003
/* 0806327c */ .word 0x080179f5
/* 08063280 */ .word 0x00000001
/* 08063284 */ .word 0x00000000
/* 08063288 */ .word 0x00000000
/* 0806328c */ .word 0x00000006
/* 08063290 */ .word 0x00000000
/* 08063294 */ .word 0x00000000
/* 08063298 */ .word 0x00000006
/* 0806329c */ .word 0x00000003
/* 080632a0 */ .word 0x080179f5
/* 080632a4 */ .word 0x00000001
/* 080632a8 */ .word 0x00000000
/* 080632ac */ .word 0x00000000
/* 080632b0 */ .word 0x00000006
/* 080632b4 */ .word 0x00000003
/* 080632b8 */ .word 0x080179f5
/* 080632bc */ .word 0x00000001
/* 080632c0 */ .word 0x00000000
/* 080632c4 */ .word 0x00000000
/* 080632c8 */ .word 0x0000000c
/* 080632cc */ .word 0x00000003
/* 080632d0 */ .word 0x080179f5
/* 080632d4 */ .word 0x00000002
/* 080632d8 */ .word 0x00000000
/* 080632dc */ .word 0x00000000
/* 080632e0 */ .word 0x0000000c
/* 080632e4 */ .word 0x00000003
/* 080632e8 */ .word 0x080179f5
/* 080632ec */ .word 0x00000002
/* 080632f0 */ .word 0x00000000
/* 080632f4 */ .word 0x00000000
/* 080632f8 */ .word 0x0000000c
/* 080632fc */ .word 0x0000000e
/* 08063300 */ .word 0x00000000
/* 08063304 */ .word 0x00000000

/* 08063308 */ .word 0xad82e682
/* 0806330c */ .word 0xa282ab82
/* 08063310 */ .word 0x7d83c482
/* 08063314 */ .word 0xb5826c83
/* 08063318 */ .word 0xcb82c482
/* 0806331c */ .word 0x8d0a4281
/* 08063320 */ .word 0x82ab8244
/* 08063324 */ .word 0x835e83c8
/* 08063328 */ .word 0x837e8343
/* 0806332c */ .word 0x824f8393
/* 08063330 */ .word 0x82c782c5
/* 08063334 */ .word 0x81bc82a4
/* 08063338 */ .word 0x89890a42
/* 0806333c */ .word 0xf0827491
/* 08063340 */ .word 0xdf827e8e
/* 08063344 */ .word 0xc682e982
/* 08063348 */ .word 0x820a4181
/* 0806334c */ .word 0x96e88ea8
/* 08063350 */ .word 0x82aa827b
/* 08063354 */ .word 0x82af82ab
/* 08063358 */ .word 0x818883e9
/* 0806335c */ .word 0x00000049

@ Bytecode 
/* 08063360 */ .word 0x00000003
/* 08063364 */ .word 0x080179f5
/* 08063368 */ .word 0x00000001
/* 0806336c */ .word 0x00000000
/* 08063370 */ .word 0x00000000
/* 08063374 */ .word 0x00000018
/* 08063378 */ .word 0x00000003
/* 0806337c */ .word 0x080179f5
/* 08063380 */ .word 0x00000001
/* 08063384 */ .word 0x00000000
/* 08063388 */ .word 0x00000000
/* 0806338c */ .word 0x00000018
/* 08063390 */ .word 0x00000003
/* 08063394 */ .word 0x080179f5
/* 08063398 */ .word 0x00000001
/* 0806339c */ .word 0x00000000
/* 080633a0 */ .word 0x00000000
/* 080633a4 */ .word 0x00000018
/* 080633a8 */ .word 0x00000003
/* 080633ac */ .word 0x080179f5
/* 080633b0 */ .word 0x00000001
/* 080633b4 */ .word 0x00000000
/* 080633b8 */ .word 0x00000000
/* 080633bc */ .word 0x00000018
/* 080633c0 */ .word 0x00000003
/* 080633c4 */ .word 0x080179f5
/* 080633c8 */ .word 0x00000001
/* 080633cc */ .word 0x00000000
/* 080633d0 */ .word 0x00000000
/* 080633d4 */ .word 0x00000018
/* 080633d8 */ .word 0x00000003
/* 080633dc */ .word 0x080179f5
/* 080633e0 */ .word 0x00000001
/* 080633e4 */ .word 0x00000000
/* 080633e8 */ .word 0x00000000
/* 080633ec */ .word 0x00000018
/* 080633f0 */ .word 0x00000003
/* 080633f4 */ .word 0x080179f5
/* 080633f8 */ .word 0x00000001
/* 080633fc */ .word 0x00000000
/* 08063400 */ .word 0x00000000
/* 08063404 */ .word 0x00000018
/* 08063408 */ .word 0x0000000e
/* 0806340c */ .word 0x00000000
/* 08063410 */ .word 0x00000000
/* 08063414 */ .word 0x00000003
/* 08063418 */ .word 0x080179f5
/* 0806341c */ .word 0x00000001
/* 08063420 */ .word 0x00000000
/* 08063424 */ .word 0x00000000
/* 08063428 */ .word 0x00000015
/* 0806342c */ .word 0x0000000e
/* 08063430 */ .word 0x00000000
/* 08063434 */ .word 0x00000000

/* 08063438 */ .word 0x8358830a
/* 0806343c */ .word 0x8341836c
/* 08063440 */ .word 0x83898368
/* 08063444 */ .word 0x0af08280
/* 08063448 */ .word 0xb382a982
/* 0806344c */ .word 0xc482cb82
/* 08063450 */ .word 0xe982dd82
/* 08063454 */ .word 0x49816c83
/* 08063458 */ .word 0x836d830a
/* 0806345c */ .word 0x836d838a
/* 08063460 */ .word 0x83be828a
/* 08063464 */ .word 0x00498188

@ Bytecode 
/* 08063468 */ .word 0x00000003
/* 0806346c */ .word 0x080179f5
/* 08063470 */ .word 0x00000001
/* 08063474 */ .word 0x00000003
/* 08063478 */ .word 0x080179f5
/* 0806347c */ .word 0x00000002
/* 08063480 */ .word 0x00000000
/* 08063484 */ .word 0x00000000
/* 08063488 */ .word 0x00000018
/* 0806348c */ .word 0x00000003
/* 08063490 */ .word 0x080179f5
/* 08063494 */ .word 0x00000001
/* 08063498 */ .word 0x00000000
/* 0806349c */ .word 0x00000000
/* 080634a0 */ .word 0x00000018
/* 080634a4 */ .word 0x00000003
/* 080634a8 */ .word 0x080179f5
/* 080634ac */ .word 0x00000001
/* 080634b0 */ .word 0x00000003
/* 080634b4 */ .word 0x080179f5
/* 080634b8 */ .word 0x00000002
/* 080634bc */ .word 0x00000000
/* 080634c0 */ .word 0x00000000
/* 080634c4 */ .word 0x00000018
/* 080634c8 */ .word 0x00000003
/* 080634cc */ .word 0x080179f5
/* 080634d0 */ .word 0x00000001
/* 080634d4 */ .word 0x00000000
/* 080634d8 */ .word 0x00000000
/* 080634dc */ .word 0x00000018
/* 080634e0 */ .word 0x00000003
/* 080634e4 */ .word 0x080179f5
/* 080634e8 */ .word 0x00000001
/* 080634ec */ .word 0x00000003
/* 080634f0 */ .word 0x080179f5
/* 080634f4 */ .word 0x00000002
/* 080634f8 */ .word 0x00000000
/* 080634fc */ .word 0x00000000
/* 08063500 */ .word 0x00000018
/* 08063504 */ .word 0x00000003
/* 08063508 */ .word 0x080179f5
/* 0806350c */ .word 0x00000001
/* 08063510 */ .word 0x00000000
/* 08063514 */ .word 0x00000000
/* 08063518 */ .word 0x00000018
/* 0806351c */ .word 0x00000003
/* 08063520 */ .word 0x080179f5
/* 08063524 */ .word 0x00000001
/* 08063528 */ .word 0x00000003
/* 0806352c */ .word 0x080179f5
/* 08063530 */ .word 0x00000002
/* 08063534 */ .word 0x00000000
/* 08063538 */ .word 0x00000000
/* 0806353c */ .word 0x00000018
/* 08063540 */ .word 0x0000000e
/* 08063544 */ .word 0x00000000
/* 08063548 */ .word 0x00000000

/* 0806354c */ .word 0x8356830a
/* 08063550 */ .word 0x836f8393
/* 08063554 */ .word 0x83c5828b
/* 08063558 */ .word 0x8362834c
/* 0806355c */ .word 0x828a8360
/* 08063560 */ .word 0xdc820ac6
/* 08063564 */ .word 0xdf82c682
/* 08063568 */ .word 0xa882c482
/* 0806356c */ .word 0xa482b182
/* 08063570 */ .word 0x49816c83
/* 08063574 */ .word 0x82b1820a
/* 08063578 */ .word 0x81cd82ea
/* 0806357c */ .word 0x82c58241
/* 08063580 */ .word 0x82e982ab
/* 08063584 */ .word 0x816c83e6
/* 08063588 */ .word 0x00000a48

@ Bytecode 
/* 0806358c */ .word 0x00000003
/* 08063590 */ .word 0x080179f5
/* 08063594 */ .word 0x00000001
/* 08063598 */ .word 0x00000003
/* 0806359c */ .word 0x080179f5
/* 080635a0 */ .word 0x00000007
/* 080635a4 */ .word 0x00000000
/* 080635a8 */ .word 0x00000000
/* 080635ac */ .word 0x00000015
/* 080635b0 */ .word 0x0000000e
/* 080635b4 */ .word 0x00000000
/* 080635b8 */ .word 0x00000000

/* 080635bc */ .word 0x6c835883
/* 080635c0 */ .word 0xcc824183
/* 080635c4 */ .word 0x5e837083
/* 080635c8 */ .word 0x93835b81
/* 080635cc */ .word 0x820af082
/* 080635d0 */ .word 0x82e582bf
/* 080635d4 */ .word 0x82c682c1
/* 080635d8 */ .word 0x82a682a9
/* 080635dc */ .word 0x816c83e9
/* 080635e0 */ .word 0xc5820a42
/* 080635e4 */ .word 0xe982ab82
/* 080635e8 */ .word 0x798ac682
/* 080635ec */ .word 0xa282b582
/* 080635f0 */ .word 0x49818883
/* 080635f4 */ .word 0x82ab820a
/* 080635f8 */ .word 0x81c682c1
/* 080635fc */ .word 0x00000a42

@ Bytecode 
/* 08063600 */ .word 0x00000003
/* 08063604 */ .word 0x080179f5
/* 08063608 */ .word 0x00000001
/* 0806360c */ .word 0x00000003
/* 08063610 */ .word 0x080179f5
/* 08063614 */ .word 0x00000002
/* 08063618 */ .word 0x00000000
/* 0806361c */ .word 0x00000000
/* 08063620 */ .word 0x00000018
/* 08063624 */ .word 0x00000003
/* 08063628 */ .word 0x080179f5
/* 0806362c */ .word 0x00000001
/* 08063630 */ .word 0x00000000
/* 08063634 */ .word 0x00000000
/* 08063638 */ .word 0x00000018
/* 0806363c */ .word 0x00000003
/* 08063640 */ .word 0x080179f5
/* 08063644 */ .word 0x00000001
/* 08063648 */ .word 0x00000003
/* 0806364c */ .word 0x080179f5
/* 08063650 */ .word 0x00000002
/* 08063654 */ .word 0x00000000
/* 08063658 */ .word 0x00000000
/* 0806365c */ .word 0x00000018
/* 08063660 */ .word 0x00000003
/* 08063664 */ .word 0x080179f5
/* 08063668 */ .word 0x00000001
/* 0806366c */ .word 0x00000000
/* 08063670 */ .word 0x00000000
/* 08063674 */ .word 0x00000018
/* 08063678 */ .word 0x00000003
/* 0806367c */ .word 0x080179f5
/* 08063680 */ .word 0x00000001
/* 08063684 */ .word 0x00000003
/* 08063688 */ .word 0x080179f5
/* 0806368c */ .word 0x00000002
/* 08063690 */ .word 0x00000000
/* 08063694 */ .word 0x00000000
/* 08063698 */ .word 0x00000018
/* 0806369c */ .word 0x00000003
/* 080636a0 */ .word 0x080179f5
/* 080636a4 */ .word 0x00000001
/* 080636a8 */ .word 0x00000000
/* 080636ac */ .word 0x00000000
/* 080636b0 */ .word 0x0000000c
/* 080636b4 */ .word 0x00000003
/* 080636b8 */ .word 0x080179f5
/* 080636bc */ .word 0x00000002
/* 080636c0 */ .word 0x00000000
/* 080636c4 */ .word 0x00000000
/* 080636c8 */ .word 0x0000000c
/* 080636cc */ .word 0x00000003
/* 080636d0 */ .word 0x080179f5
/* 080636d4 */ .word 0x00000001
/* 080636d8 */ .word 0x00000000
/* 080636dc */ .word 0x00000000
/* 080636e0 */ .word 0x0000000c
/* 080636e4 */ .word 0x00000003
/* 080636e8 */ .word 0x080179f5
/* 080636ec */ .word 0x00000002
/* 080636f0 */ .word 0x00000000
/* 080636f4 */ .word 0x00000000
/* 080636f8 */ .word 0x0000000c
/* 080636fc */ .word 0x0000000e
/* 08063700 */ .word 0x00000000
/* 08063704 */ .word 0x00000000

/* 08063708 */ .word 0x8250820a
/* 0806370c */ .word 0x82be82c2
/* 08063710 */ .word 0x894181af
/* 08063714 */ .word 0x82aa82b9
/* 08063718 */ .word 0x82a682d3
/* 0806371c */ .word 0x818883e9
/* 08063720 */ .word 0xa2820a42
/* 08063724 */ .word 0xa282aa82
/* 08063728 */ .word 0x8083c682
/* 0806372c */ .word 0xa2825983
/* 08063730 */ .word 0x49814981
/* 08063734 */ .word 0x82aa820a
/* 08063738 */ .word 0x82ce82f1
/* 0806373c */ .word 0x83c482c1
/* 08063740 */ .word 0x0049816c

@ Bytecode 
/* 08063744 */ .word 0x00000003
/* 08063748 */ .word 0x080179f5
/* 0806374c */ .word 0x00000001
/* 08063750 */ .word 0x00000003
/* 08063754 */ .word 0x080179f5
/* 08063758 */ .word 0x00000002
/* 0806375c */ .word 0x00000000
/* 08063760 */ .word 0x00000000
/* 08063764 */ .word 0x00000018
/* 08063768 */ .word 0x00000003
/* 0806376c */ .word 0x080179f5
/* 08063770 */ .word 0x00000001
/* 08063774 */ .word 0x00000000
/* 08063778 */ .word 0x00000000
/* 0806377c */ .word 0x00000018
/* 08063780 */ .word 0x00000003
/* 08063784 */ .word 0x080179f5
/* 08063788 */ .word 0x00000001
/* 0806378c */ .word 0x00000003
/* 08063790 */ .word 0x080179f5
/* 08063794 */ .word 0x00000002
/* 08063798 */ .word 0x00000000
/* 0806379c */ .word 0x00000000
/* 080637a0 */ .word 0x00000018
/* 080637a4 */ .word 0x00000003
/* 080637a8 */ .word 0x080179f5
/* 080637ac */ .word 0x00000001
/* 080637b0 */ .word 0x00000000
/* 080637b4 */ .word 0x00000000
/* 080637b8 */ .word 0x00000018
/* 080637bc */ .word 0x00000003
/* 080637c0 */ .word 0x080179f5
/* 080637c4 */ .word 0x00000001
/* 080637c8 */ .word 0x00000003
/* 080637cc */ .word 0x080179f5
/* 080637d0 */ .word 0x00000002
/* 080637d4 */ .word 0x00000000
/* 080637d8 */ .word 0x00000000
/* 080637dc */ .word 0x0000000c
/* 080637e0 */ .word 0x00000000
/* 080637e4 */ .word 0x00000000
/* 080637e8 */ .word 0x00000006
/* 080637ec */ .word 0x00000003
/* 080637f0 */ .word 0x080179f5
/* 080637f4 */ .word 0x00000002
/* 080637f8 */ .word 0x00000000
/* 080637fc */ .word 0x00000000
/* 08063800 */ .word 0x00000006
/* 08063804 */ .word 0x00000003
/* 08063808 */ .word 0x080179f5
/* 0806380c */ .word 0x00000001
/* 08063810 */ .word 0x00000000
/* 08063814 */ .word 0x00000000
/* 08063818 */ .word 0x0000000c
/* 0806381c */ .word 0x00000003
/* 08063820 */ .word 0x080179f5
/* 08063824 */ .word 0x00000002
/* 08063828 */ .word 0x00000000
/* 0806382c */ .word 0x00000000
/* 08063830 */ .word 0x0000000c
/* 08063834 */ .word 0x00000003
/* 08063838 */ .word 0x080179f5
/* 0806383c */ .word 0x00000001
/* 08063840 */ .word 0x00000000
/* 08063844 */ .word 0x00000000
/* 08063848 */ .word 0x0000000c
/* 0806384c */ .word 0x00000003
/* 08063850 */ .word 0x080179f5
/* 08063854 */ .word 0x00000002
/* 08063858 */ .word 0x00000000
/* 0806385c */ .word 0x00000000
/* 08063860 */ .word 0x0000000c
/* 08063864 */ .word 0x0000000e
/* 08063868 */ .word 0x00000000
/* 0806386c */ .word 0x00000000

/* 08063870 */ .word 0x82dc820a
/* 08063874 */ .word 0x82dc82bd
/* 08063878 */ .word 0x825082bd
/* 0806387c */ .word 0x0a4181c2
/* 08063880 */ .word 0xaa82b989
/* 08063884 */ .word 0xa682d382
/* 08063888 */ .word 0x8883e982
/* 0806388c */ .word 0x820a4981
/* 08063890 */ .word 0x82ab82c5
/* 08063894 */ .word 0x83e782bd
/* 08063898 */ .word 0x8362834a
/* 0806389c */ .word 0x82e68252
/* 080638a0 */ .word 0x81ac82b7
/* 080638a4 */ .word 0x00000049

@ Bytecode 
/* 080638a8 */ .word 0x00000003
/* 080638ac */ .word 0x080179f5
/* 080638b0 */ .word 0x00000001
/* 080638b4 */ .word 0x00000003
/* 080638b8 */ .word 0x080179f5
/* 080638bc */ .word 0x00000002
/* 080638c0 */ .word 0x00000000
/* 080638c4 */ .word 0x00000000
/* 080638c8 */ .word 0x00000018
/* 080638cc */ .word 0x00000003
/* 080638d0 */ .word 0x080179f5
/* 080638d4 */ .word 0x00000001
/* 080638d8 */ .word 0x00000000
/* 080638dc */ .word 0x00000000
/* 080638e0 */ .word 0x00000018
/* 080638e4 */ .word 0x00000003
/* 080638e8 */ .word 0x080179f5
/* 080638ec */ .word 0x00000001
/* 080638f0 */ .word 0x00000003
/* 080638f4 */ .word 0x080179f5
/* 080638f8 */ .word 0x00000002
/* 080638fc */ .word 0x00000000
/* 08063900 */ .word 0x00000000
/* 08063904 */ .word 0x00000018
/* 08063908 */ .word 0x00000003
/* 0806390c */ .word 0x080179f5
/* 08063910 */ .word 0x00000001
/* 08063914 */ .word 0x00000000
/* 08063918 */ .word 0x00000000
/* 0806391c */ .word 0x00000006
/* 08063920 */ .word 0x00000003
/* 08063924 */ .word 0x080179f5
/* 08063928 */ .word 0x00000002
/* 0806392c */ .word 0x00000000
/* 08063930 */ .word 0x00000000
/* 08063934 */ .word 0x00000006
/* 08063938 */ .word 0x00000000
/* 0806393c */ .word 0x00000000
/* 08063940 */ .word 0x0000000c
/* 08063944 */ .word 0x00000003
/* 08063948 */ .word 0x080179f5
/* 0806394c */ .word 0x00000001
/* 08063950 */ .word 0x00000003
/* 08063954 */ .word 0x080179f5
/* 08063958 */ .word 0x00000002
/* 0806395c */ .word 0x00000000
/* 08063960 */ .word 0x00000000
/* 08063964 */ .word 0x0000000c
/* 08063968 */ .word 0x00000000
/* 0806396c */ .word 0x00000000
/* 08063970 */ .word 0x00000006
/* 08063974 */ .word 0x00000003
/* 08063978 */ .word 0x080179f5
/* 0806397c */ .word 0x00000002
/* 08063980 */ .word 0x00000000
/* 08063984 */ .word 0x00000000
/* 08063988 */ .word 0x00000006
/* 0806398c */ .word 0x00000003
/* 08063990 */ .word 0x080179f5
/* 08063994 */ .word 0x00000001
/* 08063998 */ .word 0x00000000
/* 0806399c */ .word 0x00000000
/* 080639a0 */ .word 0x0000000c
/* 080639a4 */ .word 0x00000003
/* 080639a8 */ .word 0x080179f5
/* 080639ac */ .word 0x00000002
/* 080639b0 */ .word 0x00000000
/* 080639b4 */ .word 0x00000000
/* 080639b8 */ .word 0x0000000c
/* 080639bc */ .word 0x00000003
/* 080639c0 */ .word 0x080179f5
/* 080639c4 */ .word 0x00000001
/* 080639c8 */ .word 0x00000000
/* 080639cc */ .word 0x00000000
/* 080639d0 */ .word 0x0000000c
/* 080639d4 */ .word 0x00000003
/* 080639d8 */ .word 0x080179f5
/* 080639dc */ .word 0x00000002
/* 080639e0 */ .word 0x00000000
/* 080639e4 */ .word 0x00000000
/* 080639e8 */ .word 0x0000000c
/* 080639ec */ .word 0x0000000e
/* 080639f0 */ .word 0x00000000
/* 080639f4 */ .word 0x00000000

/* 080639f8 */ .word 0xad82e682
/* 080639fc */ .word 0xa282ab82
/* 08063a00 */ .word 0x7d83c482
/* 08063a04 */ .word 0xb5826c83
/* 08063a08 */ .word 0xcb82c482
/* 08063a0c */ .word 0x8d0a4281
/* 08063a10 */ .word 0x82ab8244
/* 08063a14 */ .word 0x835e83c8
/* 08063a18 */ .word 0x837e8343
/* 08063a1c */ .word 0x824f8393
/* 08063a20 */ .word 0x82c782c5
/* 08063a24 */ .word 0x81bc82a4
/* 08063a28 */ .word 0x89890a42
/* 08063a2c */ .word 0xf0827491
/* 08063a30 */ .word 0xdf827e8e
/* 08063a34 */ .word 0xc682e982
/* 08063a38 */ .word 0x820a4181
/* 08063a3c */ .word 0x96e88ea8
/* 08063a40 */ .word 0x82aa827b
/* 08063a44 */ .word 0x82af82ab
/* 08063a48 */ .word 0x818883e9
/* 08063a4c */ .word 0x00000049

@ Bytecode 
/* 08063a50 */ .word 0x00000003
/* 08063a54 */ .word 0x080179f5
/* 08063a58 */ .word 0x00000002
/* 08063a5c */ .word 0x00000000
/* 08063a60 */ .word 0x00000000
/* 08063a64 */ .word 0x00000018
/* 08063a68 */ .word 0x00000003
/* 08063a6c */ .word 0x080179f5
/* 08063a70 */ .word 0x00000001
/* 08063a74 */ .word 0x00000000
/* 08063a78 */ .word 0x00000000
/* 08063a7c */ .word 0x0000000c
/* 08063a80 */ .word 0x00000003
/* 08063a84 */ .word 0x080179f5
/* 08063a88 */ .word 0x00000001
/* 08063a8c */ .word 0x00000000
/* 08063a90 */ .word 0x00000000
/* 08063a94 */ .word 0x0000000c
/* 08063a98 */ .word 0x00000003
/* 08063a9c */ .word 0x080179f5
/* 08063aa0 */ .word 0x00000002
/* 08063aa4 */ .word 0x00000000
/* 08063aa8 */ .word 0x00000000
/* 08063aac */ .word 0x00000018
/* 08063ab0 */ .word 0x00000003
/* 08063ab4 */ .word 0x080179f5
/* 08063ab8 */ .word 0x00000001
/* 08063abc */ .word 0x00000000
/* 08063ac0 */ .word 0x00000000
/* 08063ac4 */ .word 0x00000018
/* 08063ac8 */ .word 0x00000003
/* 08063acc */ .word 0x080179f5
/* 08063ad0 */ .word 0x00000002
/* 08063ad4 */ .word 0x00000000
/* 08063ad8 */ .word 0x00000000
/* 08063adc */ .word 0x00000018
/* 08063ae0 */ .word 0x00000003
/* 08063ae4 */ .word 0x080179f5
/* 08063ae8 */ .word 0x00000001
/* 08063aec */ .word 0x00000000
/* 08063af0 */ .word 0x00000000
/* 08063af4 */ .word 0x0000000c
/* 08063af8 */ .word 0x00000003
/* 08063afc */ .word 0x080179f5
/* 08063b00 */ .word 0x00000001
/* 08063b04 */ .word 0x00000000
/* 08063b08 */ .word 0x00000000
/* 08063b0c */ .word 0x0000000c
/* 08063b10 */ .word 0x00000003
/* 08063b14 */ .word 0x080179f5
/* 08063b18 */ .word 0x00000002
/* 08063b1c */ .word 0x00000000
/* 08063b20 */ .word 0x00000000
/* 08063b24 */ .word 0x00000018
/* 08063b28 */ .word 0x0000000e
/* 08063b2c */ .word 0x00000000
/* 08063b30 */ .word 0x00000000
/* 08063b34 */ .word 0x00000003
/* 08063b38 */ .word 0x080179f5
/* 08063b3c */ .word 0x00000001
/* 08063b40 */ .word 0x00000000
/* 08063b44 */ .word 0x00000000
/* 08063b48 */ .word 0x00000015
/* 08063b4c */ .word 0x0000000e
/* 08063b50 */ .word 0x00000000
/* 08063b54 */ .word 0x00000000

/* 08063b58 */ .word 0x8356830a
/* 08063b5c */ .word 0x836f8393
/* 08063b60 */ .word 0x83c5828b
/* 08063b64 */ .word 0x8362834c
/* 08063b68 */ .word 0x828a8360
/* 08063b6c */ .word 0xdc820ac6
/* 08063b70 */ .word 0xdf82c682
/* 08063b74 */ .word 0xa882c482
/* 08063b78 */ .word 0xa482b182
/* 08063b7c */ .word 0x49816c83
/* 08063b80 */ .word 0x82b1820a
/* 08063b84 */ .word 0x81cd82ea
/* 08063b88 */ .word 0x82c58241
/* 08063b8c */ .word 0x82e982ab
/* 08063b90 */ .word 0x816c83e6
/* 08063b94 */ .word 0x00000a48

@ Bytecode 
/* 08063b98 */ .word 0x00000003
/* 08063b9c */ .word 0x080179f5
/* 08063ba0 */ .word 0x00000001
/* 08063ba4 */ .word 0x00000003
/* 08063ba8 */ .word 0x080179f5
/* 08063bac */ .word 0x00000007
/* 08063bb0 */ .word 0x00000000
/* 08063bb4 */ .word 0x00000000
/* 08063bb8 */ .word 0x00000015
/* 08063bbc */ .word 0x0000000e
/* 08063bc0 */ .word 0x00000000
/* 08063bc4 */ .word 0x00000000

/* 08063bc8 */ .word 0x8360830a
/* 08063bcc */ .word 0x83628387
/* 08063bd0 */ .word 0x82be8267
/* 08063bd4 */ .word 0x824081af
/* 08063bd8 */ .word 0x82a682a9
/* 08063bdc */ .word 0x818883e9
/* 08063be0 */ .word 0xed820a49
/* 08063be4 */ .word 0xe982a982
/* 08063be8 */ .word 0xc882a982
/* 08063bec */ .word 0x000a4881

@ Bytecode 
/* 08063bf0 */ .word 0x00000003
/* 08063bf4 */ .word 0x080179f5
/* 08063bf8 */ .word 0x00000002
/* 08063bfc */ .word 0x00000000
/* 08063c00 */ .word 0x00000000
/* 08063c04 */ .word 0x00000018
/* 08063c08 */ .word 0x00000003
/* 08063c0c */ .word 0x080179f5
/* 08063c10 */ .word 0x00000001
/* 08063c14 */ .word 0x00000000
/* 08063c18 */ .word 0x00000000
/* 08063c1c */ .word 0x0000000c
/* 08063c20 */ .word 0x00000003
/* 08063c24 */ .word 0x080179f5
/* 08063c28 */ .word 0x00000001
/* 08063c2c */ .word 0x00000000
/* 08063c30 */ .word 0x00000000
/* 08063c34 */ .word 0x0000000c
/* 08063c38 */ .word 0x00000003
/* 08063c3c */ .word 0x080179f5
/* 08063c40 */ .word 0x00000002
/* 08063c44 */ .word 0x00000000
/* 08063c48 */ .word 0x00000000
/* 08063c4c */ .word 0x00000018
/* 08063c50 */ .word 0x00000003
/* 08063c54 */ .word 0x080179f5
/* 08063c58 */ .word 0x00000001
/* 08063c5c */ .word 0x00000000
/* 08063c60 */ .word 0x00000000
/* 08063c64 */ .word 0x00000018
/* 08063c68 */ .word 0x00000003
/* 08063c6c */ .word 0x080179f5
/* 08063c70 */ .word 0x00000002
/* 08063c74 */ .word 0x00000000
/* 08063c78 */ .word 0x00000000
/* 08063c7c */ .word 0x00000018
/* 08063c80 */ .word 0x00000003
/* 08063c84 */ .word 0x080179f5
/* 08063c88 */ .word 0x00000002
/* 08063c8c */ .word 0x00000000
/* 08063c90 */ .word 0x00000000
/* 08063c94 */ .word 0x0000000c
/* 08063c98 */ .word 0x00000003
/* 08063c9c */ .word 0x080179f5
/* 08063ca0 */ .word 0x00000001
/* 08063ca4 */ .word 0x00000000
/* 08063ca8 */ .word 0x00000000
/* 08063cac */ .word 0x0000000c
/* 08063cb0 */ .word 0x00000003
/* 08063cb4 */ .word 0x080179f5
/* 08063cb8 */ .word 0x00000002
/* 08063cbc */ .word 0x00000000
/* 08063cc0 */ .word 0x00000000
/* 08063cc4 */ .word 0x00000018
/* 08063cc8 */ .word 0x0000000e
/* 08063ccc */ .word 0x00000000
/* 08063cd0 */ .word 0x00000000

/* 08063cd4 */ .word 0x8250820a
/* 08063cd8 */ .word 0x82be82c2
/* 08063cdc */ .word 0x894181af
/* 08063ce0 */ .word 0x82aa82b9
/* 08063ce4 */ .word 0x82a682d3
/* 08063ce8 */ .word 0x818883e9
/* 08063cec */ .word 0xed820a49
/* 08063cf0 */ .word 0xc682e882
/* 08063cf4 */ .word 0x93834a83
/* 08063cf8 */ .word 0x93835e83
/* 08063cfc */ .word 0xa982be82
/* 08063d00 */ .word 0x820ae782
/* 08063d04 */ .word 0x82f182aa
/* 08063d08 */ .word 0x82c182ce
/* 08063d0c */ .word 0x816c83c4
/* 08063d10 */ .word 0x00000a49

@ Bytecode 
/* 08063d14 */ .word 0x00000003
/* 08063d18 */ .word 0x080179f5
/* 08063d1c */ .word 0x00000002
/* 08063d20 */ .word 0x00000000
/* 08063d24 */ .word 0x00000000
/* 08063d28 */ .word 0x00000018
/* 08063d2c */ .word 0x00000003
/* 08063d30 */ .word 0x080179f5
/* 08063d34 */ .word 0x00000001
/* 08063d38 */ .word 0x00000000
/* 08063d3c */ .word 0x00000000
/* 08063d40 */ .word 0x0000000c
/* 08063d44 */ .word 0x00000003
/* 08063d48 */ .word 0x080179f5
/* 08063d4c */ .word 0x00000001
/* 08063d50 */ .word 0x00000000
/* 08063d54 */ .word 0x00000000
/* 08063d58 */ .word 0x0000000c
/* 08063d5c */ .word 0x00000003
/* 08063d60 */ .word 0x080179f5
/* 08063d64 */ .word 0x00000002
/* 08063d68 */ .word 0x00000000
/* 08063d6c */ .word 0x00000000
/* 08063d70 */ .word 0x00000018
/* 08063d74 */ .word 0x00000003
/* 08063d78 */ .word 0x080179f5
/* 08063d7c */ .word 0x00000001
/* 08063d80 */ .word 0x00000000
/* 08063d84 */ .word 0x00000000
/* 08063d88 */ .word 0x00000018
/* 08063d8c */ .word 0x00000003
/* 08063d90 */ .word 0x080179f5
/* 08063d94 */ .word 0x00000002
/* 08063d98 */ .word 0x00000000
/* 08063d9c */ .word 0x00000000
/* 08063da0 */ .word 0x00000018
/* 08063da4 */ .word 0x00000003
/* 08063da8 */ .word 0x080179f5
/* 08063dac */ .word 0x00000003
/* 08063db0 */ .word 0x00000000
/* 08063db4 */ .word 0x00000000
/* 08063db8 */ .word 0x00000006
/* 08063dbc */ .word 0x00000003
/* 08063dc0 */ .word 0x080179f5
/* 08063dc4 */ .word 0x00000002
/* 08063dc8 */ .word 0x00000000
/* 08063dcc */ .word 0x00000000
/* 08063dd0 */ .word 0x00000006
/* 08063dd4 */ .word 0x00000003
/* 08063dd8 */ .word 0x080179f5
/* 08063ddc */ .word 0x00000001
/* 08063de0 */ .word 0x00000000
/* 08063de4 */ .word 0x00000000
/* 08063de8 */ .word 0x0000000c
/* 08063dec */ .word 0x00000003
/* 08063df0 */ .word 0x080179f5
/* 08063df4 */ .word 0x00000002
/* 08063df8 */ .word 0x00000000
/* 08063dfc */ .word 0x00000000
/* 08063e00 */ .word 0x00000018
/* 08063e04 */ .word 0x0000000e
/* 08063e08 */ .word 0x00000000
/* 08063e0c */ .word 0x00000000

/* 08063e10 */ .word 0xad82e682
/* 08063e14 */ .word 0xa282ab82
/* 08063e18 */ .word 0x7d83c482
/* 08063e1c */ .word 0xb5826c83
/* 08063e20 */ .word 0xcb82c482
/* 08063e24 */ .word 0x8d0a4281
/* 08063e28 */ .word 0x82ab8244
/* 08063e2c */ .word 0x835e83c8
/* 08063e30 */ .word 0x837e8343
/* 08063e34 */ .word 0x824f8393
/* 08063e38 */ .word 0x82c782c5
/* 08063e3c */ .word 0x81bc82a4
/* 08063e40 */ .word 0x89890a42
/* 08063e44 */ .word 0xf0827491
/* 08063e48 */ .word 0xdf827e8e
/* 08063e4c */ .word 0xc682e982
/* 08063e50 */ .word 0x820a4181
/* 08063e54 */ .word 0x96e88ea8
/* 08063e58 */ .word 0x82aa827b
/* 08063e5c */ .word 0x82af82ab
/* 08063e60 */ .word 0x818883e9
/* 08063e64 */ .word 0x00000049

@ Bytecode 
/* 08063e68 */ .word 0x00000003
/* 08063e6c */ .word 0x080179f5
/* 08063e70 */ .word 0x00000002
/* 08063e74 */ .word 0x00000000
/* 08063e78 */ .word 0x00000000
/* 08063e7c */ .word 0x00000006
/* 08063e80 */ .word 0x00000000
/* 08063e84 */ .word 0x00000000
/* 08063e88 */ .word 0x00000006
/* 08063e8c */ .word 0x00000003
/* 08063e90 */ .word 0x080179f5
/* 08063e94 */ .word 0x00000001
/* 08063e98 */ .word 0x00000000
/* 08063e9c */ .word 0x00000000
/* 08063ea0 */ .word 0x00000006
/* 08063ea4 */ .word 0x00000003
/* 08063ea8 */ .word 0x080179f5
/* 08063eac */ .word 0x00000002
/* 08063eb0 */ .word 0x00000000
/* 08063eb4 */ .word 0x00000000
/* 08063eb8 */ .word 0x00000006
/* 08063ebc */ .word 0x00000003
/* 08063ec0 */ .word 0x080179f5
/* 08063ec4 */ .word 0x00000001
/* 08063ec8 */ .word 0x00000000
/* 08063ecc */ .word 0x00000000
/* 08063ed0 */ .word 0x00000006
/* 08063ed4 */ .word 0x00000003
/* 08063ed8 */ .word 0x080179f5
/* 08063edc */ .word 0x00000002
/* 08063ee0 */ .word 0x00000000
/* 08063ee4 */ .word 0x00000000
/* 08063ee8 */ .word 0x00000006
/* 08063eec */ .word 0x00000003
/* 08063ef0 */ .word 0x080179f5
/* 08063ef4 */ .word 0x00000001
/* 08063ef8 */ .word 0x00000000
/* 08063efc */ .word 0x00000000
/* 08063f00 */ .word 0x00000006
/* 08063f04 */ .word 0x00000000
/* 08063f08 */ .word 0x00000000
/* 08063f0c */ .word 0x00000006
/* 08063f10 */ .word 0x00000003
/* 08063f14 */ .word 0x080179f5
/* 08063f18 */ .word 0x00000002
/* 08063f1c */ .word 0x00000000
/* 08063f20 */ .word 0x00000000
/* 08063f24 */ .word 0x00000006
/* 08063f28 */ .word 0x00000000
/* 08063f2c */ .word 0x00000000
/* 08063f30 */ .word 0x00000006
/* 08063f34 */ .word 0x00000000
/* 08063f38 */ .word 0x00000000
/* 08063f3c */ .word 0x00000006
/* 08063f40 */ .word 0x00000000
/* 08063f44 */ .word 0x00000000
/* 08063f48 */ .word 0x00000006
/* 08063f4c */ .word 0x00000003
/* 08063f50 */ .word 0x080179f5
/* 08063f54 */ .word 0x00000001
/* 08063f58 */ .word 0x00000000
/* 08063f5c */ .word 0x00000000
/* 08063f60 */ .word 0x00000006
/* 08063f64 */ .word 0x00000000
/* 08063f68 */ .word 0x00000000
/* 08063f6c */ .word 0x00000006
/* 08063f70 */ .word 0x00000003
/* 08063f74 */ .word 0x080179f5
/* 08063f78 */ .word 0x00000001
/* 08063f7c */ .word 0x00000000
/* 08063f80 */ .word 0x00000000
/* 08063f84 */ .word 0x00000006
/* 08063f88 */ .word 0x00000000
/* 08063f8c */ .word 0x00000000
/* 08063f90 */ .word 0x00000006
/* 08063f94 */ .word 0x00000003
/* 08063f98 */ .word 0x080179f5
/* 08063f9c */ .word 0x00000002
/* 08063fa0 */ .word 0x00000000
/* 08063fa4 */ .word 0x00000000
/* 08063fa8 */ .word 0x00000006
/* 08063fac */ .word 0x00000000
/* 08063fb0 */ .word 0x00000000
/* 08063fb4 */ .word 0x00000006
/* 08063fb8 */ .word 0x00000003
/* 08063fbc */ .word 0x080179f5
/* 08063fc0 */ .word 0x00000001
/* 08063fc4 */ .word 0x00000000
/* 08063fc8 */ .word 0x00000000
/* 08063fcc */ .word 0x00000006
/* 08063fd0 */ .word 0x00000003
/* 08063fd4 */ .word 0x080179f5
/* 08063fd8 */ .word 0x00000002
/* 08063fdc */ .word 0x00000000
/* 08063fe0 */ .word 0x00000000
/* 08063fe4 */ .word 0x00000006
/* 08063fe8 */ .word 0x00000003
/* 08063fec */ .word 0x080179f5
/* 08063ff0 */ .word 0x00000001
/* 08063ff4 */ .word 0x00000000
/* 08063ff8 */ .word 0x00000000
/* 08063ffc */ .word 0x00000006
/* 08064000 */ .word 0x00000003
/* 08064004 */ .word 0x080179f5
/* 08064008 */ .word 0x00000002
/* 0806400c */ .word 0x00000000
/* 08064010 */ .word 0x00000000
/* 08064014 */ .word 0x00000006
/* 08064018 */ .word 0x00000003
/* 0806401c */ .word 0x080179f5
/* 08064020 */ .word 0x00000001
/* 08064024 */ .word 0x00000000
/* 08064028 */ .word 0x00000000
/* 0806402c */ .word 0x00000006
/* 08064030 */ .word 0x00000000
/* 08064034 */ .word 0x00000000
/* 08064038 */ .word 0x00000006
/* 0806403c */ .word 0x00000003
/* 08064040 */ .word 0x080179f5
/* 08064044 */ .word 0x00000002
/* 08064048 */ .word 0x00000000
/* 0806404c */ .word 0x00000000
/* 08064050 */ .word 0x00000006
/* 08064054 */ .word 0x00000000
/* 08064058 */ .word 0x00000000
/* 0806405c */ .word 0x00000006
/* 08064060 */ .word 0x00000000
/* 08064064 */ .word 0x00000000
/* 08064068 */ .word 0x00000006
/* 0806406c */ .word 0x00000000
/* 08064070 */ .word 0x00000000
/* 08064074 */ .word 0x00000006
/* 08064078 */ .word 0x0000000e
/* 0806407c */ .word 0x00000000
/* 08064080 */ .word 0x00000000
/* 08064084 */ .word 0x00000003
/* 08064088 */ .word 0x080179f5
/* 0806408c */ .word 0x00000001
/* 08064090 */ .word 0x00000000
/* 08064094 */ .word 0x00000000
/* 08064098 */ .word 0x00000006
/* 0806409c */ .word 0x00000000
/* 080640a0 */ .word 0x00000000
/* 080640a4 */ .word 0x00000006
/* 080640a8 */ .word 0x00000003
/* 080640ac */ .word 0x080179f5
/* 080640b0 */ .word 0x00000001
/* 080640b4 */ .word 0x00000000
/* 080640b8 */ .word 0x00000000
/* 080640bc */ .word 0x00000006
/* 080640c0 */ .word 0x00000000
/* 080640c4 */ .word 0x00000000
/* 080640c8 */ .word 0x00000003
/* 080640cc */ .word 0x0000000e
/* 080640d0 */ .word 0x00000000
/* 080640d4 */ .word 0x00000000

/* 080640d8 */ .word 0x8358830a
/* 080640dc */ .word 0x8241836c
/* 080640e0 */ .word 0x835683c6
/* 080640e4 */ .word 0x836f8393
/* 080640e8 */ .word 0x0ac5828b
/* 080640ec */ .word 0xc182ab82
/* 080640f0 */ .word 0xe882bf82
/* 080640f4 */ .word 0xdc824181
/* 080640f8 */ .word 0xdf82c682
/* 080640fc */ .word 0xa482e682
/* 08064100 */ .word 0x820a4981
/* 08064104 */ .word 0x82f182aa
/* 08064108 */ .word 0x82c182ce
/* 0806410c */ .word 0x0a4981c4
/* 08064110 */ .word 0x00000000

@ Bytecode 
/* 08064114 */ .word 0x00000003
/* 08064118 */ .word 0x080179f5
/* 0806411c */ .word 0x00000002
/* 08064120 */ .word 0x00000000
/* 08064124 */ .word 0x00000000
/* 08064128 */ .word 0x00000006
/* 0806412c */ .word 0x00000000
/* 08064130 */ .word 0x00000000
/* 08064134 */ .word 0x00000006
/* 08064138 */ .word 0x00000003
/* 0806413c */ .word 0x080179f5
/* 08064140 */ .word 0x00000001
/* 08064144 */ .word 0x00000000
/* 08064148 */ .word 0x00000000
/* 0806414c */ .word 0x00000006
/* 08064150 */ .word 0x00000003
/* 08064154 */ .word 0x080179f5
/* 08064158 */ .word 0x00000002
/* 0806415c */ .word 0x00000000
/* 08064160 */ .word 0x00000000
/* 08064164 */ .word 0x00000006
/* 08064168 */ .word 0x00000003
/* 0806416c */ .word 0x080179f5
/* 08064170 */ .word 0x00000001
/* 08064174 */ .word 0x00000000
/* 08064178 */ .word 0x00000000
/* 0806417c */ .word 0x00000006
/* 08064180 */ .word 0x00000003
/* 08064184 */ .word 0x080179f5
/* 08064188 */ .word 0x00000002
/* 0806418c */ .word 0x00000000
/* 08064190 */ .word 0x00000000
/* 08064194 */ .word 0x00000006
/* 08064198 */ .word 0x00000003
/* 0806419c */ .word 0x080179f5
/* 080641a0 */ .word 0x00000001
/* 080641a4 */ .word 0x00000000
/* 080641a8 */ .word 0x00000000
/* 080641ac */ .word 0x00000006
/* 080641b0 */ .word 0x00000000
/* 080641b4 */ .word 0x00000000
/* 080641b8 */ .word 0x00000006
/* 080641bc */ .word 0x00000003
/* 080641c0 */ .word 0x080179f5
/* 080641c4 */ .word 0x00000002
/* 080641c8 */ .word 0x00000000
/* 080641cc */ .word 0x00000000
/* 080641d0 */ .word 0x00000006
/* 080641d4 */ .word 0x00000000
/* 080641d8 */ .word 0x00000000
/* 080641dc */ .word 0x00000006
/* 080641e0 */ .word 0x00000000
/* 080641e4 */ .word 0x00000000
/* 080641e8 */ .word 0x00000006
/* 080641ec */ .word 0x00000000
/* 080641f0 */ .word 0x00000000
/* 080641f4 */ .word 0x00000006
/* 080641f8 */ .word 0x00000003
/* 080641fc */ .word 0x080179f5
/* 08064200 */ .word 0x00000001
/* 08064204 */ .word 0x00000000
/* 08064208 */ .word 0x00000000
/* 0806420c */ .word 0x00000006
/* 08064210 */ .word 0x00000000
/* 08064214 */ .word 0x00000000
/* 08064218 */ .word 0x00000006
/* 0806421c */ .word 0x00000003
/* 08064220 */ .word 0x080179f5
/* 08064224 */ .word 0x00000001
/* 08064228 */ .word 0x00000000
/* 0806422c */ .word 0x00000000
/* 08064230 */ .word 0x00000006
/* 08064234 */ .word 0x00000000
/* 08064238 */ .word 0x00000000
/* 0806423c */ .word 0x00000006
/* 08064240 */ .word 0x00000003
/* 08064244 */ .word 0x080179f5
/* 08064248 */ .word 0x00000002
/* 0806424c */ .word 0x00000000
/* 08064250 */ .word 0x00000000
/* 08064254 */ .word 0x00000006
/* 08064258 */ .word 0x00000000
/* 0806425c */ .word 0x00000000
/* 08064260 */ .word 0x00000006
/* 08064264 */ .word 0x00000003
/* 08064268 */ .word 0x080179f5
/* 0806426c */ .word 0x00000001
/* 08064270 */ .word 0x00000000
/* 08064274 */ .word 0x00000000
/* 08064278 */ .word 0x00000006
/* 0806427c */ .word 0x00000003
/* 08064280 */ .word 0x080179f5
/* 08064284 */ .word 0x00000002
/* 08064288 */ .word 0x00000000
/* 0806428c */ .word 0x00000000
/* 08064290 */ .word 0x00000006
/* 08064294 */ .word 0x00000003
/* 08064298 */ .word 0x080179f5
/* 0806429c */ .word 0x00000001
/* 080642a0 */ .word 0x00000000
/* 080642a4 */ .word 0x00000000
/* 080642a8 */ .word 0x00000006
/* 080642ac */ .word 0x00000003
/* 080642b0 */ .word 0x080179f5
/* 080642b4 */ .word 0x00000002
/* 080642b8 */ .word 0x00000000
/* 080642bc */ .word 0x00000000
/* 080642c0 */ .word 0x00000006
/* 080642c4 */ .word 0x00000003
/* 080642c8 */ .word 0x080179f5
/* 080642cc */ .word 0x00000001
/* 080642d0 */ .word 0x00000000
/* 080642d4 */ .word 0x00000000
/* 080642d8 */ .word 0x00000006
/* 080642dc */ .word 0x00000000
/* 080642e0 */ .word 0x00000000
/* 080642e4 */ .word 0x00000006
/* 080642e8 */ .word 0x00000003
/* 080642ec */ .word 0x080179f5
/* 080642f0 */ .word 0x00000002
/* 080642f4 */ .word 0x00000000
/* 080642f8 */ .word 0x00000000
/* 080642fc */ .word 0x00000006
/* 08064300 */ .word 0x00000000
/* 08064304 */ .word 0x00000000
/* 08064308 */ .word 0x00000006
/* 0806430c */ .word 0x00000003
/* 08064310 */ .word 0x080179f5
/* 08064314 */ .word 0x00000002
/* 08064318 */ .word 0x00000000
/* 0806431c */ .word 0x00000000
/* 08064320 */ .word 0x00000006
/* 08064324 */ .word 0x00000000
/* 08064328 */ .word 0x00000000
/* 0806432c */ .word 0x00000006
/* 08064330 */ .word 0x0000000e
/* 08064334 */ .word 0x00000000
/* 08064338 */ .word 0x00000000
/* 0806433c */ .word 0x00000003
/* 08064340 */ .word 0x080179f5
/* 08064344 */ .word 0x00000001
/* 08064348 */ .word 0x00000003
/* 0806434c */ .word 0x080179f5
/* 08064350 */ .word 0x00000007
/* 08064354 */ .word 0x00000000
/* 08064358 */ .word 0x00000000
/* 0806435c */ .word 0x00000006
/* 08064360 */ .word 0x00000000
/* 08064364 */ .word 0x00000000
/* 08064368 */ .word 0x00000006
/* 0806436c */ .word 0x00000003
/* 08064370 */ .word 0x080179f5
/* 08064374 */ .word 0x00000001
/* 08064378 */ .word 0x00000000
/* 0806437c */ .word 0x00000000
/* 08064380 */ .word 0x00000006
/* 08064384 */ .word 0x00000000
/* 08064388 */ .word 0x00000000
/* 0806438c */ .word 0x00000003
/* 08064390 */ .word 0x0000000e
/* 08064394 */ .word 0x00000000
/* 08064398 */ .word 0x00000000
/* 0806439c */ .word 0x8350820a
/* 080643a0 */ .word 0x828a8f95
/* 080643a4 */ .word 0x81af82be
/* 080643a8 */ .word 0x83588341
/* 080643ac */ .word 0x8241836c
/* 080643b0 */ .word 0x5e830af0
/* 080643b4 */ .word 0xc9828083
/* 080643b8 */ .word 0xa682a982
/* 080643bc */ .word 0xdd82c482
/* 080643c0 */ .word 0x8883e982
/* 080643c4 */ .word 0x820a4281
/* 080643c8 */ .word 0x82a982ed
/* 080643cc */ .word 0x82a982e9
/* 080643d0 */ .word 0x004881c8
/* 080643d4 */ .word 0x00000003
/* 080643d8 */ .word 0x080179f5
/* 080643dc */ .word 0x00000002
/* 080643e0 */ .word 0x00000000
/* 080643e4 */ .word 0x00000000
/* 080643e8 */ .word 0x00000006
/* 080643ec */ .word 0x00000000
/* 080643f0 */ .word 0x00000000
/* 080643f4 */ .word 0x00000006
/* 080643f8 */ .word 0x00000003
/* 080643fc */ .word 0x080179f5
/* 08064400 */ .word 0x00000001
/* 08064404 */ .word 0x00000000
/* 08064408 */ .word 0x00000000
/* 0806440c */ .word 0x00000006
/* 08064410 */ .word 0x00000003
/* 08064414 */ .word 0x080179f5
/* 08064418 */ .word 0x00000002
/* 0806441c */ .word 0x00000000
/* 08064420 */ .word 0x00000000
/* 08064424 */ .word 0x00000006
/* 08064428 */ .word 0x00000003
/* 0806442c */ .word 0x080179f5
/* 08064430 */ .word 0x00000001
/* 08064434 */ .word 0x00000000
/* 08064438 */ .word 0x00000000
/* 0806443c */ .word 0x00000006
/* 08064440 */ .word 0x00000003
/* 08064444 */ .word 0x080179f5
/* 08064448 */ .word 0x00000002
/* 0806444c */ .word 0x00000000
/* 08064450 */ .word 0x00000000
/* 08064454 */ .word 0x00000006
/* 08064458 */ .word 0x00000003
/* 0806445c */ .word 0x080179f5
/* 08064460 */ .word 0x00000001
/* 08064464 */ .word 0x00000000
/* 08064468 */ .word 0x00000000
/* 0806446c */ .word 0x00000006
/* 08064470 */ .word 0x00000000
/* 08064474 */ .word 0x00000000
/* 08064478 */ .word 0x00000006
/* 0806447c */ .word 0x00000003
/* 08064480 */ .word 0x080179f5
/* 08064484 */ .word 0x00000002
/* 08064488 */ .word 0x00000000
/* 0806448c */ .word 0x00000000
/* 08064490 */ .word 0x00000006
/* 08064494 */ .word 0x00000000
/* 08064498 */ .word 0x00000000
/* 0806449c */ .word 0x00000006
/* 080644a0 */ .word 0x00000000
/* 080644a4 */ .word 0x00000000
/* 080644a8 */ .word 0x00000006
/* 080644ac */ .word 0x00000000
/* 080644b0 */ .word 0x00000000
/* 080644b4 */ .word 0x00000006
/* 080644b8 */ .word 0x00000003
/* 080644bc */ .word 0x080179f5
/* 080644c0 */ .word 0x00000001
/* 080644c4 */ .word 0x00000000
/* 080644c8 */ .word 0x00000000
/* 080644cc */ .word 0x00000006
/* 080644d0 */ .word 0x00000000
/* 080644d4 */ .word 0x00000000
/* 080644d8 */ .word 0x00000006
/* 080644dc */ .word 0x00000003
/* 080644e0 */ .word 0x080179f5
/* 080644e4 */ .word 0x00000001
/* 080644e8 */ .word 0x00000000
/* 080644ec */ .word 0x00000000
/* 080644f0 */ .word 0x00000006
/* 080644f4 */ .word 0x00000000
/* 080644f8 */ .word 0x00000000
/* 080644fc */ .word 0x00000006
/* 08064500 */ .word 0x00000003
/* 08064504 */ .word 0x080179f5
/* 08064508 */ .word 0x00000002
/* 0806450c */ .word 0x00000000
/* 08064510 */ .word 0x00000000
/* 08064514 */ .word 0x00000006
/* 08064518 */ .word 0x00000000
/* 0806451c */ .word 0x00000000
/* 08064520 */ .word 0x00000006
/* 08064524 */ .word 0x00000003
/* 08064528 */ .word 0x080179f5
/* 0806452c */ .word 0x00000001
/* 08064530 */ .word 0x00000000
/* 08064534 */ .word 0x00000000
/* 08064538 */ .word 0x00000006
/* 0806453c */ .word 0x00000003
/* 08064540 */ .word 0x080179f5
/* 08064544 */ .word 0x00000002
/* 08064548 */ .word 0x00000000
/* 0806454c */ .word 0x00000000
/* 08064550 */ .word 0x00000006
/* 08064554 */ .word 0x00000003
/* 08064558 */ .word 0x080179f5
/* 0806455c */ .word 0x00000001
/* 08064560 */ .word 0x00000000
/* 08064564 */ .word 0x00000000
/* 08064568 */ .word 0x00000006
/* 0806456c */ .word 0x00000003
/* 08064570 */ .word 0x080179f5
/* 08064574 */ .word 0x00000002
/* 08064578 */ .word 0x00000000
/* 0806457c */ .word 0x00000000
/* 08064580 */ .word 0x00000006
/* 08064584 */ .word 0x00000003
/* 08064588 */ .word 0x080179f5
/* 0806458c */ .word 0x00000001
/* 08064590 */ .word 0x00000000
/* 08064594 */ .word 0x00000000
/* 08064598 */ .word 0x00000006
/* 0806459c */ .word 0x00000000
/* 080645a0 */ .word 0x00000000
/* 080645a4 */ .word 0x00000006
/* 080645a8 */ .word 0x00000003
/* 080645ac */ .word 0x080179f5
/* 080645b0 */ .word 0x00000005
/* 080645b4 */ .word 0x00000000
/* 080645b8 */ .word 0x00000000
/* 080645bc */ .word 0x00000006
/* 080645c0 */ .word 0x00000000
/* 080645c4 */ .word 0x00000000
/* 080645c8 */ .word 0x00000006
/* 080645cc */ .word 0x00000003
/* 080645d0 */ .word 0x080179f5
/* 080645d4 */ .word 0x00000002
/* 080645d8 */ .word 0x00000000
/* 080645dc */ .word 0x00000000
/* 080645e0 */ .word 0x00000006
/* 080645e4 */ .word 0x00000000
/* 080645e8 */ .word 0x00000000
/* 080645ec */ .word 0x00000006
/* 080645f0 */ .word 0x0000000e
/* 080645f4 */ .word 0x00000000
/* 080645f8 */ .word 0x00000000
/* 080645fc */ .word 0x82b3820a
/* 08064600 */ .word 0x82b282a2
/* 08064604 */ .word 0x835883c9
/* 08064608 */ .word 0x8241836c
/* 0806460c */ .word 0x82e082f0
/* 08064610 */ .word 0x825082a4
/* 08064614 */ .word 0x0a4981c2
/* 08064618 */ .word 0x878fe88e
/* 0806461c */ .word 0xe682f082
/* 08064620 */ .word 0x6c8dad82
/* 08064624 */ .word 0xc482a682
/* 08064628 */ .word 0xc482dd82
/* 0806462c */ .word 0x42816c83
/* 08064630 */ .word 0x82aa820a
/* 08064634 */ .word 0x82ce82f1
/* 08064638 */ .word 0x816081ea
/* 0806463c */ .word 0x00000049
/* 08064640 */ .word 0x00000003
/* 08064644 */ .word 0x080179f5
/* 08064648 */ .word 0x00000002
/* 0806464c */ .word 0x00000000
/* 08064650 */ .word 0x00000000
/* 08064654 */ .word 0x00000006
/* 08064658 */ .word 0x00000000
/* 0806465c */ .word 0x00000000
/* 08064660 */ .word 0x00000006
/* 08064664 */ .word 0x00000003
/* 08064668 */ .word 0x080179f5
/* 0806466c */ .word 0x00000001
/* 08064670 */ .word 0x00000000
/* 08064674 */ .word 0x00000000
/* 08064678 */ .word 0x00000006
/* 0806467c */ .word 0x00000003
/* 08064680 */ .word 0x080179f5
/* 08064684 */ .word 0x00000002
/* 08064688 */ .word 0x00000000
/* 0806468c */ .word 0x00000000
/* 08064690 */ .word 0x00000006
/* 08064694 */ .word 0x00000003
/* 08064698 */ .word 0x080179f5
/* 0806469c */ .word 0x00000001
/* 080646a0 */ .word 0x00000000
/* 080646a4 */ .word 0x00000000
/* 080646a8 */ .word 0x00000006
/* 080646ac */ .word 0x00000003
/* 080646b0 */ .word 0x080179f5
/* 080646b4 */ .word 0x00000002
/* 080646b8 */ .word 0x00000000
/* 080646bc */ .word 0x00000000
/* 080646c0 */ .word 0x00000006
/* 080646c4 */ .word 0x00000003
/* 080646c8 */ .word 0x080179f5
/* 080646cc */ .word 0x00000001
/* 080646d0 */ .word 0x00000000
/* 080646d4 */ .word 0x00000000
/* 080646d8 */ .word 0x00000006
/* 080646dc */ .word 0x00000000
/* 080646e0 */ .word 0x00000000
/* 080646e4 */ .word 0x00000006
/* 080646e8 */ .word 0x00000003
/* 080646ec */ .word 0x080179f5
/* 080646f0 */ .word 0x00000002
/* 080646f4 */ .word 0x00000000
/* 080646f8 */ .word 0x00000000
/* 080646fc */ .word 0x00000006
/* 08064700 */ .word 0x00000000
/* 08064704 */ .word 0x00000000
/* 08064708 */ .word 0x00000006
/* 0806470c */ .word 0x00000000
/* 08064710 */ .word 0x00000000
/* 08064714 */ .word 0x00000006
/* 08064718 */ .word 0x00000000
/* 0806471c */ .word 0x00000000
/* 08064720 */ .word 0x00000006
/* 08064724 */ .word 0x00000003
/* 08064728 */ .word 0x080179f5
/* 0806472c */ .word 0x00000001
/* 08064730 */ .word 0x00000000
/* 08064734 */ .word 0x00000000
/* 08064738 */ .word 0x00000006
/* 0806473c */ .word 0x00000000
/* 08064740 */ .word 0x00000000
/* 08064744 */ .word 0x00000006
/* 08064748 */ .word 0x00000003
/* 0806474c */ .word 0x080179f5
/* 08064750 */ .word 0x00000001
/* 08064754 */ .word 0x00000000
/* 08064758 */ .word 0x00000000
/* 0806475c */ .word 0x00000006
/* 08064760 */ .word 0x00000000
/* 08064764 */ .word 0x00000000
/* 08064768 */ .word 0x00000006
/* 0806476c */ .word 0x00000003
/* 08064770 */ .word 0x080179f5
/* 08064774 */ .word 0x00000002
/* 08064778 */ .word 0x00000000
/* 0806477c */ .word 0x00000000
/* 08064780 */ .word 0x00000006
/* 08064784 */ .word 0x00000000
/* 08064788 */ .word 0x00000000
/* 0806478c */ .word 0x00000006
/* 08064790 */ .word 0x00000003
/* 08064794 */ .word 0x080179f5
/* 08064798 */ .word 0x00000001
/* 0806479c */ .word 0x00000000
/* 080647a0 */ .word 0x00000000
/* 080647a4 */ .word 0x00000006
/* 080647a8 */ .word 0x00000003
/* 080647ac */ .word 0x080179f5
/* 080647b0 */ .word 0x00000002
/* 080647b4 */ .word 0x00000000
/* 080647b8 */ .word 0x00000000
/* 080647bc */ .word 0x00000006
/* 080647c0 */ .word 0x00000003
/* 080647c4 */ .word 0x080179f5
/* 080647c8 */ .word 0x00000001
/* 080647cc */ .word 0x00000000
/* 080647d0 */ .word 0x00000000
/* 080647d4 */ .word 0x00000006
/* 080647d8 */ .word 0x00000003
/* 080647dc */ .word 0x080179f5
/* 080647e0 */ .word 0x00000002
/* 080647e4 */ .word 0x00000000
/* 080647e8 */ .word 0x00000000
/* 080647ec */ .word 0x00000006
/* 080647f0 */ .word 0x00000003
/* 080647f4 */ .word 0x080179f5
/* 080647f8 */ .word 0x00000001
/* 080647fc */ .word 0x00000000
/* 08064800 */ .word 0x00000000
/* 08064804 */ .word 0x00000006
/* 08064808 */ .word 0x00000000
/* 0806480c */ .word 0x00000000
/* 08064810 */ .word 0x00000006
/* 08064814 */ .word 0x00000003
/* 08064818 */ .word 0x080179f5
/* 0806481c */ .word 0x00000005
/* 08064820 */ .word 0x00000000
/* 08064824 */ .word 0x00000000
/* 08064828 */ .word 0x00000006
/* 0806482c */ .word 0x00000000
/* 08064830 */ .word 0x00000000
/* 08064834 */ .word 0x00000006
/* 08064838 */ .word 0x00000003
/* 0806483c */ .word 0x080179f5
/* 08064840 */ .word 0x00000003
/* 08064844 */ .word 0x00000000
/* 08064848 */ .word 0x00000000
/* 0806484c */ .word 0x00000006
/* 08064850 */ .word 0x00000003
/* 08064854 */ .word 0x080179f5
/* 08064858 */ .word 0x00000002
/* 0806485c */ .word 0x00000000
/* 08064860 */ .word 0x00000000
/* 08064864 */ .word 0x00000006
/* 08064868 */ .word 0x0000000e
/* 0806486c */ .word 0x00000000
/* 08064870 */ .word 0x00000000
/* 08064874 */ .word 0x82dc820a
/* 08064878 */ .word 0x81cd82b8
/* 0806487c */ .word 0x82a88241
/* 08064880 */ .word 0x82e782b3
/* 08064884 */ .word 0x82c582a2
/* 08064888 */ .word 0x0a4281b7
/* 0806488c */ .word 0xf182aa82
/* 08064890 */ .word 0xc182ce82
/* 08064894 */ .word 0x6c83c482
/* 08064898 */ .word 0x00004981
/* 0806489c */ .word 0x00000003
/* 080648a0 */ .word 0x080179f5
/* 080648a4 */ .word 0x00000002
/* 080648a8 */ .word 0x00000000
/* 080648ac */ .word 0x00000000
/* 080648b0 */ .word 0x00000006
/* 080648b4 */ .word 0x00000000
/* 080648b8 */ .word 0x00000000
/* 080648bc */ .word 0x00000006
/* 080648c0 */ .word 0x00000003
/* 080648c4 */ .word 0x080179f5
/* 080648c8 */ .word 0x00000001
/* 080648cc */ .word 0x00000000
/* 080648d0 */ .word 0x00000000
/* 080648d4 */ .word 0x00000006
/* 080648d8 */ .word 0x00000003
/* 080648dc */ .word 0x080179f5
/* 080648e0 */ .word 0x00000002
/* 080648e4 */ .word 0x00000000
/* 080648e8 */ .word 0x00000000
/* 080648ec */ .word 0x00000006
/* 080648f0 */ .word 0x00000003
/* 080648f4 */ .word 0x080179f5
/* 080648f8 */ .word 0x00000001
/* 080648fc */ .word 0x00000000
/* 08064900 */ .word 0x00000000
/* 08064904 */ .word 0x00000006
/* 08064908 */ .word 0x00000003
/* 0806490c */ .word 0x080179f5
/* 08064910 */ .word 0x00000002
/* 08064914 */ .word 0x00000000
/* 08064918 */ .word 0x00000000
/* 0806491c */ .word 0x00000006
/* 08064920 */ .word 0x00000003
/* 08064924 */ .word 0x080179f5
/* 08064928 */ .word 0x00000001
/* 0806492c */ .word 0x00000000
/* 08064930 */ .word 0x00000000
/* 08064934 */ .word 0x00000006
/* 08064938 */ .word 0x00000000
/* 0806493c */ .word 0x00000000
/* 08064940 */ .word 0x00000006
/* 08064944 */ .word 0x00000003
/* 08064948 */ .word 0x080179f5
/* 0806494c */ .word 0x00000002
/* 08064950 */ .word 0x00000000
/* 08064954 */ .word 0x00000000
/* 08064958 */ .word 0x00000006
/* 0806495c */ .word 0x00000000
/* 08064960 */ .word 0x00000000
/* 08064964 */ .word 0x00000006
/* 08064968 */ .word 0x00000000
/* 0806496c */ .word 0x00000000
/* 08064970 */ .word 0x00000006
/* 08064974 */ .word 0x00000000
/* 08064978 */ .word 0x00000000
/* 0806497c */ .word 0x00000006
/* 08064980 */ .word 0x00000003
/* 08064984 */ .word 0x080179f5
/* 08064988 */ .word 0x00000001
/* 0806498c */ .word 0x00000000
/* 08064990 */ .word 0x00000000
/* 08064994 */ .word 0x00000006
/* 08064998 */ .word 0x00000000
/* 0806499c */ .word 0x00000000
/* 080649a0 */ .word 0x00000006
/* 080649a4 */ .word 0x00000003
/* 080649a8 */ .word 0x080179f5
/* 080649ac */ .word 0x00000001
/* 080649b0 */ .word 0x00000000
/* 080649b4 */ .word 0x00000000
/* 080649b8 */ .word 0x00000006
/* 080649bc */ .word 0x00000000
/* 080649c0 */ .word 0x00000000
/* 080649c4 */ .word 0x00000006
/* 080649c8 */ .word 0x00000003
/* 080649cc */ .word 0x080179f5
/* 080649d0 */ .word 0x00000002
/* 080649d4 */ .word 0x00000000
/* 080649d8 */ .word 0x00000000
/* 080649dc */ .word 0x00000006
/* 080649e0 */ .word 0x00000000
/* 080649e4 */ .word 0x00000000
/* 080649e8 */ .word 0x00000006
/* 080649ec */ .word 0x00000003
/* 080649f0 */ .word 0x080179f5
/* 080649f4 */ .word 0x00000001
/* 080649f8 */ .word 0x00000000
/* 080649fc */ .word 0x00000000
/* 08064a00 */ .word 0x00000006
/* 08064a04 */ .word 0x00000003
/* 08064a08 */ .word 0x080179f5
/* 08064a0c */ .word 0x00000002
/* 08064a10 */ .word 0x00000000
/* 08064a14 */ .word 0x00000000
/* 08064a18 */ .word 0x00000006
/* 08064a1c */ .word 0x00000003
/* 08064a20 */ .word 0x080179f5
/* 08064a24 */ .word 0x00000001
/* 08064a28 */ .word 0x00000000
/* 08064a2c */ .word 0x00000000
/* 08064a30 */ .word 0x00000006
/* 08064a34 */ .word 0x00000003
/* 08064a38 */ .word 0x080179f5
/* 08064a3c */ .word 0x00000002
/* 08064a40 */ .word 0x00000000
/* 08064a44 */ .word 0x00000000
/* 08064a48 */ .word 0x00000006
/* 08064a4c */ .word 0x00000003
/* 08064a50 */ .word 0x080179f5
/* 08064a54 */ .word 0x00000001
/* 08064a58 */ .word 0x00000000
/* 08064a5c */ .word 0x00000000
/* 08064a60 */ .word 0x00000006
/* 08064a64 */ .word 0x00000000
/* 08064a68 */ .word 0x00000000
/* 08064a6c */ .word 0x00000006
/* 08064a70 */ .word 0x00000003
/* 08064a74 */ .word 0x080179f5
/* 08064a78 */ .word 0x00000005
/* 08064a7c */ .word 0x00000000
/* 08064a80 */ .word 0x00000000
/* 08064a84 */ .word 0x00000006
/* 08064a88 */ .word 0x00000000
/* 08064a8c */ .word 0x00000000
/* 08064a90 */ .word 0x00000006
/* 08064a94 */ .word 0x00000003
/* 08064a98 */ .word 0x080179f5
/* 08064a9c */ .word 0x00000003
/* 08064aa0 */ .word 0x00000000
/* 08064aa4 */ .word 0x00000000
/* 08064aa8 */ .word 0x00000006
/* 08064aac */ .word 0x00000003
/* 08064ab0 */ .word 0x080179f5
/* 08064ab4 */ .word 0x00000002
/* 08064ab8 */ .word 0x00000000
/* 08064abc */ .word 0x00000000
/* 08064ac0 */ .word 0x00000006
/* 08064ac4 */ .word 0x0000000e
/* 08064ac8 */ .word 0x00000000
/* 08064acc */ .word 0x00000000
/* 08064ad0 */ .word 0x00000003
/* 08064ad4 */ .word 0x080179f5
/* 08064ad8 */ .word 0x00000001
/* 08064adc */ .word 0x00000003
/* 08064ae0 */ .word 0x080179f5
/* 08064ae4 */ .word 0x00000007
/* 08064ae8 */ .word 0x00000000
/* 08064aec */ .word 0x00000000
/* 08064af0 */ .word 0x00000006
/* 08064af4 */ .word 0x00000000
/* 08064af8 */ .word 0x00000000
/* 08064afc */ .word 0x00000006
/* 08064b00 */ .word 0x00000003
/* 08064b04 */ .word 0x080179f5
/* 08064b08 */ .word 0x00000001
/* 08064b0c */ .word 0x00000000
/* 08064b10 */ .word 0x00000000
/* 08064b14 */ .word 0x00000006
/* 08064b18 */ .word 0x00000000
/* 08064b1c */ .word 0x00000000
/* 08064b20 */ .word 0x00000003
/* 08064b24 */ .word 0x0000000e
/* 08064b28 */ .word 0x00000000
/* 08064b2c */ .word 0x00000000
/* 08064b30 */ .word 0x94e38c0a
/* 08064b34 */ .word 0x82f082bc
/* 08064b38 */ .word 0x82a682a9
/* 08064b3c */ .word 0x82dd82c4
/* 08064b40 */ .word 0x81b782dc
/* 08064b44 */ .word 0xe6820a42
/* 08064b48 */ .word 0xad826081
/* 08064b4c */ .word 0xa282ab82
/* 08064b50 */ .word 0x4181c482
/* 08064b54 */ .word 0x82bf820a
/* 08064b58 */ .word 0x82f182e1
/* 08064b5c */ .word 0x837d83c6
/* 08064b60 */ .word 0x82b5826c
/* 08064b64 */ .word 0x816c83c4
/* 08064b68 */ .word 0x00000a49
/* 08064b6c */ .word 0x00000003
/* 08064b70 */ .word 0x080179f5
/* 08064b74 */ .word 0x00000002
/* 08064b78 */ .word 0x00000000
/* 08064b7c */ .word 0x00000000
/* 08064b80 */ .word 0x00000006
/* 08064b84 */ .word 0x00000000
/* 08064b88 */ .word 0x00000000
/* 08064b8c */ .word 0x00000006
/* 08064b90 */ .word 0x00000003
/* 08064b94 */ .word 0x080179f5
/* 08064b98 */ .word 0x00000001
/* 08064b9c */ .word 0x00000000
/* 08064ba0 */ .word 0x00000000
/* 08064ba4 */ .word 0x00000006
/* 08064ba8 */ .word 0x00000003
/* 08064bac */ .word 0x080179f5
/* 08064bb0 */ .word 0x00000002
/* 08064bb4 */ .word 0x00000000
/* 08064bb8 */ .word 0x00000000
/* 08064bbc */ .word 0x00000006
/* 08064bc0 */ .word 0x00000003
/* 08064bc4 */ .word 0x080179f5
/* 08064bc8 */ .word 0x00000001
/* 08064bcc */ .word 0x00000000
/* 08064bd0 */ .word 0x00000000
/* 08064bd4 */ .word 0x00000006
/* 08064bd8 */ .word 0x00000003
/* 08064bdc */ .word 0x080179f5
/* 08064be0 */ .word 0x00000002
/* 08064be4 */ .word 0x00000000
/* 08064be8 */ .word 0x00000000
/* 08064bec */ .word 0x00000006
/* 08064bf0 */ .word 0x00000003
/* 08064bf4 */ .word 0x080179f5
/* 08064bf8 */ .word 0x00000001
/* 08064bfc */ .word 0x00000000
/* 08064c00 */ .word 0x00000000
/* 08064c04 */ .word 0x00000006
/* 08064c08 */ .word 0x00000000
/* 08064c0c */ .word 0x00000000
/* 08064c10 */ .word 0x00000006
/* 08064c14 */ .word 0x00000003
/* 08064c18 */ .word 0x080179f5
/* 08064c1c */ .word 0x00000002
/* 08064c20 */ .word 0x00000000
/* 08064c24 */ .word 0x00000000
/* 08064c28 */ .word 0x00000006
/* 08064c2c */ .word 0x00000000
/* 08064c30 */ .word 0x00000000
/* 08064c34 */ .word 0x00000006
/* 08064c38 */ .word 0x00000000
/* 08064c3c */ .word 0x00000000
/* 08064c40 */ .word 0x00000006
/* 08064c44 */ .word 0x00000000
/* 08064c48 */ .word 0x00000000
/* 08064c4c */ .word 0x00000006
/* 08064c50 */ .word 0x00000003
/* 08064c54 */ .word 0x080179f5
/* 08064c58 */ .word 0x00000001
/* 08064c5c */ .word 0x00000000
/* 08064c60 */ .word 0x00000000
/* 08064c64 */ .word 0x00000006
/* 08064c68 */ .word 0x00000000
/* 08064c6c */ .word 0x00000000
/* 08064c70 */ .word 0x00000006
/* 08064c74 */ .word 0x00000000
/* 08064c78 */ .word 0x00000000
/* 08064c7c */ .word 0x00000006
/* 08064c80 */ .word 0x00000003
/* 08064c84 */ .word 0x080179f5
/* 08064c88 */ .word 0x00000001
/* 08064c8c */ .word 0x00000000
/* 08064c90 */ .word 0x00000000
/* 08064c94 */ .word 0x00000006
/* 08064c98 */ .word 0x00000000
/* 08064c9c */ .word 0x00000000
/* 08064ca0 */ .word 0x00000006
/* 08064ca4 */ .word 0x00000000
/* 08064ca8 */ .word 0x00000000
/* 08064cac */ .word 0x00000006
/* 08064cb0 */ .word 0x00000003
/* 08064cb4 */ .word 0x080179f5
/* 08064cb8 */ .word 0x00000001
/* 08064cbc */ .word 0x00000000
/* 08064cc0 */ .word 0x00000000
/* 08064cc4 */ .word 0x00000006
/* 08064cc8 */ .word 0x00000000
/* 08064ccc */ .word 0x00000000
/* 08064cd0 */ .word 0x00000006
/* 08064cd4 */ .word 0x00000000
/* 08064cd8 */ .word 0x00000000
/* 08064cdc */ .word 0x00000006
/* 08064ce0 */ .word 0x00000003
/* 08064ce4 */ .word 0x080179f5
/* 08064ce8 */ .word 0x00000001
/* 08064cec */ .word 0x00000000
/* 08064cf0 */ .word 0x00000000
/* 08064cf4 */ .word 0x00000006
/* 08064cf8 */ .word 0x00000000
/* 08064cfc */ .word 0x00000000
/* 08064d00 */ .word 0x00000006
/* 08064d04 */ .word 0x00000000
/* 08064d08 */ .word 0x00000000
/* 08064d0c */ .word 0x00000006
/* 08064d10 */ .word 0x00000003
/* 08064d14 */ .word 0x080179f5
/* 08064d18 */ .word 0x00000005
/* 08064d1c */ .word 0x00000000
/* 08064d20 */ .word 0x00000000
/* 08064d24 */ .word 0x00000006
/* 08064d28 */ .word 0x00000000
/* 08064d2c */ .word 0x00000000
/* 08064d30 */ .word 0x00000006
/* 08064d34 */ .word 0x00000003
/* 08064d38 */ .word 0x080179f5
/* 08064d3c */ .word 0x00000003
/* 08064d40 */ .word 0x00000000
/* 08064d44 */ .word 0x00000000
/* 08064d48 */ .word 0x00000006
/* 08064d4c */ .word 0x00000003
/* 08064d50 */ .word 0x080179f5
/* 08064d54 */ .word 0x00000002
/* 08064d58 */ .word 0x00000000
/* 08064d5c */ .word 0x00000000
/* 08064d60 */ .word 0x00000006
/* 08064d64 */ .word 0x0000000e
/* 08064d68 */ .word 0x00000000
/* 08064d6c */ .word 0x00000000
/* 08064d70 */ .word 0x8356830a
/* 08064d74 */ .word 0x836f8393
/* 08064d78 */ .word 0x82f0828b
/* 08064d7c */ .word 0x82b382a9
/* 08064d80 */ .word 0x0ac482cb
/* 08064d84 */ .word 0x66836e83
/* 08064d88 */ .word 0xb582c982
/* 08064d8c */ .word 0xdd82c482
/* 08064d90 */ .word 0xa482e682
/* 08064d94 */ .word 0x820a4981
/* 08064d98 */ .word 0x82ab82c5
/* 08064d9c */ .word 0x82a982e9
/* 08064da0 */ .word 0x004881c8
/* 08064da4 */ .word 0x00000003
/* 08064da8 */ .word 0x080179f5
/* 08064dac */ .word 0x00000002
/* 08064db0 */ .word 0x00000000
/* 08064db4 */ .word 0x00000000
/* 08064db8 */ .word 0x00000006
/* 08064dbc */ .word 0x00000000
/* 08064dc0 */ .word 0x00000000
/* 08064dc4 */ .word 0x00000006
/* 08064dc8 */ .word 0x00000003
/* 08064dcc */ .word 0x080179f5
/* 08064dd0 */ .word 0x00000001
/* 08064dd4 */ .word 0x00000000
/* 08064dd8 */ .word 0x00000000
/* 08064ddc */ .word 0x00000006
/* 08064de0 */ .word 0x00000003
/* 08064de4 */ .word 0x080179f5
/* 08064de8 */ .word 0x00000002
/* 08064dec */ .word 0x00000000
/* 08064df0 */ .word 0x00000000
/* 08064df4 */ .word 0x00000006
/* 08064df8 */ .word 0x00000003
/* 08064dfc */ .word 0x080179f5
/* 08064e00 */ .word 0x00000001
/* 08064e04 */ .word 0x00000000
/* 08064e08 */ .word 0x00000000
/* 08064e0c */ .word 0x00000006
/* 08064e10 */ .word 0x00000003
/* 08064e14 */ .word 0x080179f5
/* 08064e18 */ .word 0x00000002
/* 08064e1c */ .word 0x00000000
/* 08064e20 */ .word 0x00000000
/* 08064e24 */ .word 0x00000006
/* 08064e28 */ .word 0x00000003
/* 08064e2c */ .word 0x080179f5
/* 08064e30 */ .word 0x00000001
/* 08064e34 */ .word 0x00000000
/* 08064e38 */ .word 0x00000000
/* 08064e3c */ .word 0x00000006
/* 08064e40 */ .word 0x00000000
/* 08064e44 */ .word 0x00000000
/* 08064e48 */ .word 0x00000006
/* 08064e4c */ .word 0x00000003
/* 08064e50 */ .word 0x080179f5
/* 08064e54 */ .word 0x00000002
/* 08064e58 */ .word 0x00000000
/* 08064e5c */ .word 0x00000000
/* 08064e60 */ .word 0x00000006
/* 08064e64 */ .word 0x00000000
/* 08064e68 */ .word 0x00000000
/* 08064e6c */ .word 0x00000006
/* 08064e70 */ .word 0x00000000
/* 08064e74 */ .word 0x00000000
/* 08064e78 */ .word 0x00000006
/* 08064e7c */ .word 0x00000000
/* 08064e80 */ .word 0x00000000
/* 08064e84 */ .word 0x00000006
/* 08064e88 */ .word 0x00000003
/* 08064e8c */ .word 0x080179f5
/* 08064e90 */ .word 0x00000001
/* 08064e94 */ .word 0x00000003
/* 08064e98 */ .word 0x080179f5
/* 08064e9c */ .word 0x00000007
/* 08064ea0 */ .word 0x00000000
/* 08064ea4 */ .word 0x00000000
/* 08064ea8 */ .word 0x00000006
/* 08064eac */ .word 0x00000000
/* 08064eb0 */ .word 0x00000000
/* 08064eb4 */ .word 0x00000006
/* 08064eb8 */ .word 0x00000000
/* 08064ebc */ .word 0x00000000
/* 08064ec0 */ .word 0x00000006
/* 08064ec4 */ .word 0x00000003
/* 08064ec8 */ .word 0x080179f5
/* 08064ecc */ .word 0x00000001
/* 08064ed0 */ .word 0x00000003
/* 08064ed4 */ .word 0x080179f5
/* 08064ed8 */ .word 0x00000007
/* 08064edc */ .word 0x00000000
/* 08064ee0 */ .word 0x00000000
/* 08064ee4 */ .word 0x00000006
/* 08064ee8 */ .word 0x00000000
/* 08064eec */ .word 0x00000000
/* 08064ef0 */ .word 0x00000006
/* 08064ef4 */ .word 0x00000000
/* 08064ef8 */ .word 0x00000000
/* 08064efc */ .word 0x00000006
/* 08064f00 */ .word 0x00000003
/* 08064f04 */ .word 0x080179f5
/* 08064f08 */ .word 0x00000001
/* 08064f0c */ .word 0x00000003
/* 08064f10 */ .word 0x080179f5
/* 08064f14 */ .word 0x00000007
/* 08064f18 */ .word 0x00000000
/* 08064f1c */ .word 0x00000000
/* 08064f20 */ .word 0x00000006
/* 08064f24 */ .word 0x00000000
/* 08064f28 */ .word 0x00000000
/* 08064f2c */ .word 0x00000006
/* 08064f30 */ .word 0x00000000
/* 08064f34 */ .word 0x00000000
/* 08064f38 */ .word 0x00000006
/* 08064f3c */ .word 0x00000003
/* 08064f40 */ .word 0x080179f5
/* 08064f44 */ .word 0x00000001
/* 08064f48 */ .word 0x00000003
/* 08064f4c */ .word 0x080179f5
/* 08064f50 */ .word 0x00000007
/* 08064f54 */ .word 0x00000000
/* 08064f58 */ .word 0x00000000
/* 08064f5c */ .word 0x00000006
/* 08064f60 */ .word 0x00000000
/* 08064f64 */ .word 0x00000000
/* 08064f68 */ .word 0x00000006
/* 08064f6c */ .word 0x00000000
/* 08064f70 */ .word 0x00000000
/* 08064f74 */ .word 0x00000006
/* 08064f78 */ .word 0x00000003
/* 08064f7c */ .word 0x080179f5
/* 08064f80 */ .word 0x00000005
/* 08064f84 */ .word 0x00000000
/* 08064f88 */ .word 0x00000000
/* 08064f8c */ .word 0x00000006
/* 08064f90 */ .word 0x00000000
/* 08064f94 */ .word 0x00000000
/* 08064f98 */ .word 0x00000006
/* 08064f9c */ .word 0x00000003
/* 08064fa0 */ .word 0x080179f5
/* 08064fa4 */ .word 0x00000003
/* 08064fa8 */ .word 0x00000000
/* 08064fac */ .word 0x00000000
/* 08064fb0 */ .word 0x00000006
/* 08064fb4 */ .word 0x00000003
/* 08064fb8 */ .word 0x080179f5
/* 08064fbc */ .word 0x00000002
/* 08064fc0 */ .word 0x00000000
/* 08064fc4 */ .word 0x00000000
/* 08064fc8 */ .word 0x00000006
/* 08064fcc */ .word 0x0000000e
/* 08064fd0 */ .word 0x00000000
/* 08064fd4 */ .word 0x00000000
/* 08064fd8 */ .word 0x835e830a
/* 08064fdc */ .word 0x93e08280
/* 08064fe0 */ .word 0x82ea82fc
/* 08064fe4 */ .word 0x824181c4
/* 08064fe8 */ .word 0x82c182e0
/* 08064fec */ .word 0x6e830ac6
/* 08064ff0 */ .word 0xc9826683
/* 08064ff4 */ .word 0xbf82b582
/* 08064ff8 */ .word 0xa882e182
/* 08064ffc */ .word 0x4981a482
/* 08065000 */ .word 0x8343830a
/* 08065004 */ .word 0x83438350
/* 08065008 */ .word 0x81608150
/* 0806500c */ .word 0x00000049
/* 08065010 */ .word 0x00000003
/* 08065014 */ .word 0x080179f5
/* 08065018 */ .word 0x00000002
/* 0806501c */ .word 0x00000000
/* 08065020 */ .word 0x00000000
/* 08065024 */ .word 0x00000006
/* 08065028 */ .word 0x00000000
/* 0806502c */ .word 0x00000000
/* 08065030 */ .word 0x00000006
/* 08065034 */ .word 0x00000003
/* 08065038 */ .word 0x080179f5
/* 0806503c */ .word 0x00000001
/* 08065040 */ .word 0x00000000
/* 08065044 */ .word 0x00000000
/* 08065048 */ .word 0x00000006
/* 0806504c */ .word 0x00000003
/* 08065050 */ .word 0x080179f5
/* 08065054 */ .word 0x00000002
/* 08065058 */ .word 0x00000000
/* 0806505c */ .word 0x00000000
/* 08065060 */ .word 0x00000006
/* 08065064 */ .word 0x00000003
/* 08065068 */ .word 0x080179f5
/* 0806506c */ .word 0x00000001
/* 08065070 */ .word 0x00000000
/* 08065074 */ .word 0x00000000
/* 08065078 */ .word 0x00000006
/* 0806507c */ .word 0x00000003
/* 08065080 */ .word 0x080179f5
/* 08065084 */ .word 0x00000002
/* 08065088 */ .word 0x00000000
/* 0806508c */ .word 0x00000000
/* 08065090 */ .word 0x00000006
/* 08065094 */ .word 0x00000003
/* 08065098 */ .word 0x080179f5
/* 0806509c */ .word 0x00000001
/* 080650a0 */ .word 0x00000000
/* 080650a4 */ .word 0x00000000
/* 080650a8 */ .word 0x00000006
/* 080650ac */ .word 0x00000000
/* 080650b0 */ .word 0x00000000
/* 080650b4 */ .word 0x00000006
/* 080650b8 */ .word 0x00000003
/* 080650bc */ .word 0x080179f5
/* 080650c0 */ .word 0x00000002
/* 080650c4 */ .word 0x00000000
/* 080650c8 */ .word 0x00000000
/* 080650cc */ .word 0x00000006
/* 080650d0 */ .word 0x00000000
/* 080650d4 */ .word 0x00000000
/* 080650d8 */ .word 0x00000006
/* 080650dc */ .word 0x00000000
/* 080650e0 */ .word 0x00000000
/* 080650e4 */ .word 0x00000006
/* 080650e8 */ .word 0x00000000
/* 080650ec */ .word 0x00000000
/* 080650f0 */ .word 0x00000006
/* 080650f4 */ .word 0x00000003
/* 080650f8 */ .word 0x080179f5
/* 080650fc */ .word 0x00000001
/* 08065100 */ .word 0x00000003
/* 08065104 */ .word 0x080179f5
/* 08065108 */ .word 0x00000007
/* 0806510c */ .word 0x00000000
/* 08065110 */ .word 0x00000000
/* 08065114 */ .word 0x00000006
/* 08065118 */ .word 0x00000000
/* 0806511c */ .word 0x00000000
/* 08065120 */ .word 0x00000006
/* 08065124 */ .word 0x00000003
/* 08065128 */ .word 0x080179f5
/* 0806512c */ .word 0x00000005
/* 08065130 */ .word 0x00000000
/* 08065134 */ .word 0x00000000
/* 08065138 */ .word 0x00000006
/* 0806513c */ .word 0x00000003
/* 08065140 */ .word 0x080179f5
/* 08065144 */ .word 0x00000001
/* 08065148 */ .word 0x00000003
/* 0806514c */ .word 0x080179f5
/* 08065150 */ .word 0x00000007
/* 08065154 */ .word 0x00000000
/* 08065158 */ .word 0x00000000
/* 0806515c */ .word 0x00000006
/* 08065160 */ .word 0x00000000
/* 08065164 */ .word 0x00000000
/* 08065168 */ .word 0x00000006
/* 0806516c */ .word 0x00000003
/* 08065170 */ .word 0x080179f5
/* 08065174 */ .word 0x00000005
/* 08065178 */ .word 0x00000000
/* 0806517c */ .word 0x00000000
/* 08065180 */ .word 0x00000006
/* 08065184 */ .word 0x00000003
/* 08065188 */ .word 0x080179f5
/* 0806518c */ .word 0x00000001
/* 08065190 */ .word 0x00000003
/* 08065194 */ .word 0x080179f5
/* 08065198 */ .word 0x00000007
/* 0806519c */ .word 0x00000000
/* 080651a0 */ .word 0x00000000
/* 080651a4 */ .word 0x00000006
/* 080651a8 */ .word 0x00000000
/* 080651ac */ .word 0x00000000
/* 080651b0 */ .word 0x00000006
/* 080651b4 */ .word 0x00000003
/* 080651b8 */ .word 0x080179f5
/* 080651bc */ .word 0x00000005
/* 080651c0 */ .word 0x00000000
/* 080651c4 */ .word 0x00000000
/* 080651c8 */ .word 0x00000006
/* 080651cc */ .word 0x00000003
/* 080651d0 */ .word 0x080179f5
/* 080651d4 */ .word 0x00000001
/* 080651d8 */ .word 0x00000003
/* 080651dc */ .word 0x080179f5
/* 080651e0 */ .word 0x00000007
/* 080651e4 */ .word 0x00000000
/* 080651e8 */ .word 0x00000000
/* 080651ec */ .word 0x00000006
/* 080651f0 */ .word 0x00000000
/* 080651f4 */ .word 0x00000000
/* 080651f8 */ .word 0x00000006
/* 080651fc */ .word 0x00000000
/* 08065200 */ .word 0x00000000
/* 08065204 */ .word 0x00000006
/* 08065208 */ .word 0x00000003
/* 0806520c */ .word 0x080179f5
/* 08065210 */ .word 0x00000005
/* 08065214 */ .word 0x00000000
/* 08065218 */ .word 0x00000000
/* 0806521c */ .word 0x00000006
/* 08065220 */ .word 0x00000000
/* 08065224 */ .word 0x00000000
/* 08065228 */ .word 0x00000006
/* 0806522c */ .word 0x00000003
/* 08065230 */ .word 0x080179f5
/* 08065234 */ .word 0x00000003
/* 08065238 */ .word 0x00000000
/* 0806523c */ .word 0x00000000
/* 08065240 */ .word 0x00000006
/* 08065244 */ .word 0x00000003
/* 08065248 */ .word 0x080179f5
/* 0806524c */ .word 0x00000002
/* 08065250 */ .word 0x00000000
/* 08065254 */ .word 0x00000000
/* 08065258 */ .word 0x00000006
/* 0806525c */ .word 0x0000000e
/* 08065260 */ .word 0x00000000
/* 08065264 */ .word 0x00000000
/* 08065268 */ .word 0x82b3820a
/* 0806526c */ .word 0x93ab82c1
/* 08065270 */ .word 0x82ea82fc
/* 08065274 */ .word 0x835e83bd
/* 08065278 */ .word 0x0af08280
/* 0806527c */ .word 0x5b818d83
/* 08065280 */ .word 0xc9828b83
/* 08065284 */ .word 0xa682a982
/* 08065288 */ .word 0xdd82c482
/* 0806528c */ .word 0xa482e682
/* 08065290 */ .word 0x830a4981
/* 08065294 */ .word 0x82758356
/* 08065298 */ .word 0x82ac82b7
/* 0806529c */ .word 0x82a982e9
/* 080652a0 */ .word 0x814981e0
/* 080652a4 */ .word 0x00000049
/* 080652a8 */ .word 0x00000003
/* 080652ac */ .word 0x080179f5
/* 080652b0 */ .word 0x00000002
/* 080652b4 */ .word 0x00000000
/* 080652b8 */ .word 0x00000000
/* 080652bc */ .word 0x00000006
/* 080652c0 */ .word 0x00000000
/* 080652c4 */ .word 0x00000000
/* 080652c8 */ .word 0x00000006
/* 080652cc */ .word 0x00000003
/* 080652d0 */ .word 0x080179f5
/* 080652d4 */ .word 0x00000001
/* 080652d8 */ .word 0x00000000
/* 080652dc */ .word 0x00000000
/* 080652e0 */ .word 0x00000006
/* 080652e4 */ .word 0x00000003
/* 080652e8 */ .word 0x080179f5
/* 080652ec */ .word 0x00000002
/* 080652f0 */ .word 0x00000000
/* 080652f4 */ .word 0x00000000
/* 080652f8 */ .word 0x00000006
/* 080652fc */ .word 0x00000003
/* 08065300 */ .word 0x080179f5
/* 08065304 */ .word 0x00000001
/* 08065308 */ .word 0x00000000
/* 0806530c */ .word 0x00000000
/* 08065310 */ .word 0x00000006
/* 08065314 */ .word 0x00000003
/* 08065318 */ .word 0x080179f5
/* 0806531c */ .word 0x00000002
/* 08065320 */ .word 0x00000000
/* 08065324 */ .word 0x00000000
/* 08065328 */ .word 0x00000006
/* 0806532c */ .word 0x00000003
/* 08065330 */ .word 0x080179f5
/* 08065334 */ .word 0x00000001
/* 08065338 */ .word 0x00000000
/* 0806533c */ .word 0x00000000
/* 08065340 */ .word 0x00000006
/* 08065344 */ .word 0x00000000
/* 08065348 */ .word 0x00000000
/* 0806534c */ .word 0x00000006
/* 08065350 */ .word 0x00000003
/* 08065354 */ .word 0x080179f5
/* 08065358 */ .word 0x00000002
/* 0806535c */ .word 0x00000000
/* 08065360 */ .word 0x00000000
/* 08065364 */ .word 0x00000006
/* 08065368 */ .word 0x00000000
/* 0806536c */ .word 0x00000000
/* 08065370 */ .word 0x00000006
/* 08065374 */ .word 0x00000000
/* 08065378 */ .word 0x00000000
/* 0806537c */ .word 0x00000006
/* 08065380 */ .word 0x00000000
/* 08065384 */ .word 0x00000000
/* 08065388 */ .word 0x00000006
/* 0806538c */ .word 0x00000003
/* 08065390 */ .word 0x080179f5
/* 08065394 */ .word 0x00000001
/* 08065398 */ .word 0x00000003
/* 0806539c */ .word 0x080179f5
/* 080653a0 */ .word 0x00000007
/* 080653a4 */ .word 0x00000000
/* 080653a8 */ .word 0x00000000
/* 080653ac */ .word 0x00000006
/* 080653b0 */ .word 0x00000000
/* 080653b4 */ .word 0x00000000
/* 080653b8 */ .word 0x00000006
/* 080653bc */ .word 0x00000003
/* 080653c0 */ .word 0x080179f5
/* 080653c4 */ .word 0x00000008
/* 080653c8 */ .word 0x00000000
/* 080653cc */ .word 0x00000000
/* 080653d0 */ .word 0x00000006
/* 080653d4 */ .word 0x00000003
/* 080653d8 */ .word 0x080179f5
/* 080653dc */ .word 0x00000001
/* 080653e0 */ .word 0x00000003
/* 080653e4 */ .word 0x080179f5
/* 080653e8 */ .word 0x00000007
/* 080653ec */ .word 0x00000000
/* 080653f0 */ .word 0x00000000
/* 080653f4 */ .word 0x00000006
/* 080653f8 */ .word 0x00000000
/* 080653fc */ .word 0x00000000
/* 08065400 */ .word 0x00000006
/* 08065404 */ .word 0x00000003
/* 08065408 */ .word 0x080179f5
/* 0806540c */ .word 0x00000008
/* 08065410 */ .word 0x00000000
/* 08065414 */ .word 0x00000000
/* 08065418 */ .word 0x00000006
/* 0806541c */ .word 0x00000003
/* 08065420 */ .word 0x080179f5
/* 08065424 */ .word 0x00000001
/* 08065428 */ .word 0x00000003
/* 0806542c */ .word 0x080179f5
/* 08065430 */ .word 0x00000007
/* 08065434 */ .word 0x00000000
/* 08065438 */ .word 0x00000000
/* 0806543c */ .word 0x00000006
/* 08065440 */ .word 0x00000000
/* 08065444 */ .word 0x00000000
/* 08065448 */ .word 0x00000006
/* 0806544c */ .word 0x00000003
/* 08065450 */ .word 0x080179f5
/* 08065454 */ .word 0x00000008
/* 08065458 */ .word 0x00000000
/* 0806545c */ .word 0x00000000
/* 08065460 */ .word 0x00000006
/* 08065464 */ .word 0x00000003
/* 08065468 */ .word 0x080179f5
/* 0806546c */ .word 0x00000001
/* 08065470 */ .word 0x00000003
/* 08065474 */ .word 0x080179f5
/* 08065478 */ .word 0x00000007
/* 0806547c */ .word 0x00000000
/* 08065480 */ .word 0x00000000
/* 08065484 */ .word 0x00000006
/* 08065488 */ .word 0x00000000
/* 0806548c */ .word 0x00000000
/* 08065490 */ .word 0x00000006
/* 08065494 */ .word 0x00000000
/* 08065498 */ .word 0x00000000
/* 0806549c */ .word 0x00000006
/* 080654a0 */ .word 0x00000003
/* 080654a4 */ .word 0x080179f5
/* 080654a8 */ .word 0x00000005
/* 080654ac */ .word 0x00000000
/* 080654b0 */ .word 0x00000000
/* 080654b4 */ .word 0x00000006
/* 080654b8 */ .word 0x00000000
/* 080654bc */ .word 0x00000000
/* 080654c0 */ .word 0x00000006
/* 080654c4 */ .word 0x00000003
/* 080654c8 */ .word 0x080179f5
/* 080654cc */ .word 0x00000003
/* 080654d0 */ .word 0x00000000
/* 080654d4 */ .word 0x00000000
/* 080654d8 */ .word 0x00000006
/* 080654dc */ .word 0x00000003
/* 080654e0 */ .word 0x080179f5
/* 080654e4 */ .word 0x00000002
/* 080654e8 */ .word 0x00000000
/* 080654ec */ .word 0x00000000
/* 080654f0 */ .word 0x00000006
/* 080654f4 */ .word 0x0000000e
/* 080654f8 */ .word 0x00000000
/* 080654fc */ .word 0x00000000
/* 08065500 */ .word 0x89a18d0a
/* 08065504 */ .word 0x81cd82f1
/* 08065508 */ .word 0x50820a41
/* 0806550c */ .word 0x4f91c282
/* 08065510 */ .word 0x8c83cc82
/* 08065514 */ .word 0x58836283
/* 08065518 */ .word 0xf0829383
/* 0806551c */ .word 0x979e890a
/* 08065520 */ .word 0x82b58270
/* 08065524 */ .word 0x82dd82c4
/* 08065528 */ .word 0x81b782dc
/* 0806552c */ .word 0x00000042
/* 08065530 */ .word 0x8250820a
/* 08065534 */ .word 0x824f91c2
/* 08065538 */ .word 0x838c83cc
/* 0806553c */ .word 0x83588362
/* 08065540 */ .word 0x0af08293
/* 08065544 */ .word 0x8a834e83
/* 08065548 */ .word 0xb5824183
/* 0806554c */ .word 0xa982c482
/* 08065550 */ .word 0x4181e782
/* 08065554 */ .word 0x90a7920a
/* 08065558 */ .word 0x82b582ed
/* 0806555c */ .word 0x816c83c4
/* 08065560 */ .word 0x00000049
/* 08065564 */ .word 0x82c5820a
/* 08065568 */ .word 0x824181cd
/* 0806556c */ .word 0x82b682cd
/* 08065570 */ .word 0x81dc82df
/* 08065574 */ .word 0x81b7825b
/* 08065578 */ .word 0x00000049
/* 0806557c */ .word 0xad82e682
/* 08065580 */ .word 0xa282ab82
/* 08065584 */ .word 0x7d83c482
/* 08065588 */ .word 0xb5826c83
/* 0806558c */ .word 0xcb82c482
/* 08065590 */ .word 0x8d0a4281
/* 08065594 */ .word 0x82ab8244
/* 08065598 */ .word 0x835e83c8
/* 0806559c */ .word 0x837e8343
/* 080655a0 */ .word 0x824f8393
/* 080655a4 */ .word 0x82c782c5
/* 080655a8 */ .word 0x81bc82a4
/* 080655ac */ .word 0x89890a42
/* 080655b0 */ .word 0xf0827491
/* 080655b4 */ .word 0xdf827e8e
/* 080655b8 */ .word 0xc682e982
/* 080655bc */ .word 0x820a4181
/* 080655c0 */ .word 0x96e88ea8
/* 080655c4 */ .word 0x82aa827b
/* 080655c8 */ .word 0x82af82ab
/* 080655cc */ .word 0x818883e9
/* 080655d0 */ .word 0x00000049
/* 080655d4 */ .word 0x00000003
/* 080655d8 */ .word 0x080179f5
/* 080655dc */ .word 0x00000002
/* 080655e0 */ .word 0x00000000
/* 080655e4 */ .word 0x00000000
/* 080655e8 */ .word 0x00000006
/* 080655ec */ .word 0x00000000
/* 080655f0 */ .word 0x00000000
/* 080655f4 */ .word 0x00000006
/* 080655f8 */ .word 0x00000000
/* 080655fc */ .word 0x00000000
/* 08065600 */ .word 0x00000006
/* 08065604 */ .word 0x00000000
/* 08065608 */ .word 0x00000000
/* 0806560c */ .word 0x00000006
/* 08065610 */ .word 0x00000003
/* 08065614 */ .word 0x080179f5
/* 08065618 */ .word 0x00000001
/* 0806561c */ .word 0x00000000
/* 08065620 */ .word 0x00000000
/* 08065624 */ .word 0x00000006
/* 08065628 */ .word 0x00000000
/* 0806562c */ .word 0x00000000
/* 08065630 */ .word 0x00000006
/* 08065634 */ .word 0x00000000
/* 08065638 */ .word 0x00000000
/* 0806563c */ .word 0x00000006
/* 08065640 */ .word 0x00000003
/* 08065644 */ .word 0x080179f5
/* 08065648 */ .word 0x00000001
/* 0806564c */ .word 0x00000000
/* 08065650 */ .word 0x00000000
/* 08065654 */ .word 0x00000006
/* 08065658 */ .word 0x00000003
/* 0806565c */ .word 0x080179f5
/* 08065660 */ .word 0x00000002
/* 08065664 */ .word 0x00000000
/* 08065668 */ .word 0x00000000
/* 0806566c */ .word 0x00000006
/* 08065670 */ .word 0x00000000
/* 08065674 */ .word 0x00000000
/* 08065678 */ .word 0x00000006
/* 0806567c */ .word 0x00000000
/* 08065680 */ .word 0x00000000
/* 08065684 */ .word 0x00000006
/* 08065688 */ .word 0x00000000
/* 0806568c */ .word 0x00000000
/* 08065690 */ .word 0x00000006
/* 08065694 */ .word 0x00000003
/* 08065698 */ .word 0x080179f5
/* 0806569c */ .word 0x00000001
/* 080656a0 */ .word 0x00000000
/* 080656a4 */ .word 0x00000000
/* 080656a8 */ .word 0x00000006
/* 080656ac */ .word 0x00000000
/* 080656b0 */ .word 0x00000000
/* 080656b4 */ .word 0x00000006
/* 080656b8 */ .word 0x00000000
/* 080656bc */ .word 0x00000000
/* 080656c0 */ .word 0x00000006
/* 080656c4 */ .word 0x00000003
/* 080656c8 */ .word 0x080179f5
/* 080656cc */ .word 0x00000001
/* 080656d0 */ .word 0x00000000
/* 080656d4 */ .word 0x00000000
/* 080656d8 */ .word 0x00000006
/* 080656dc */ .word 0x00000003
/* 080656e0 */ .word 0x080179f5
/* 080656e4 */ .word 0x00000002
/* 080656e8 */ .word 0x00000000
/* 080656ec */ .word 0x00000000
/* 080656f0 */ .word 0x00000006
/* 080656f4 */ .word 0x00000000
/* 080656f8 */ .word 0x00000000
/* 080656fc */ .word 0x00000006
/* 08065700 */ .word 0x00000003
/* 08065704 */ .word 0x080179f5
/* 08065708 */ .word 0x00000001
/* 0806570c */ .word 0x00000000
/* 08065710 */ .word 0x00000000
/* 08065714 */ .word 0x00000006
/* 08065718 */ .word 0x00000000
/* 0806571c */ .word 0x00000000
/* 08065720 */ .word 0x00000006
/* 08065724 */ .word 0x00000003
/* 08065728 */ .word 0x080179f5
/* 0806572c */ .word 0x00000003
/* 08065730 */ .word 0x00000000
/* 08065734 */ .word 0x00000000
/* 08065738 */ .word 0x00000006
/* 0806573c */ .word 0x00000000
/* 08065740 */ .word 0x00000000
/* 08065744 */ .word 0x00000006
/* 08065748 */ .word 0x00000003
/* 0806574c */ .word 0x080179f5
/* 08065750 */ .word 0x00000003
/* 08065754 */ .word 0x00000000
/* 08065758 */ .word 0x00000000
/* 0806575c */ .word 0x00000006
/* 08065760 */ .word 0x00000000
/* 08065764 */ .word 0x00000000
/* 08065768 */ .word 0x00000006
/* 0806576c */ .word 0x00000003
/* 08065770 */ .word 0x080179f5
/* 08065774 */ .word 0x00000002
/* 08065778 */ .word 0x00000000
/* 0806577c */ .word 0x00000000
/* 08065780 */ .word 0x00000006
/* 08065784 */ .word 0x00000003
/* 08065788 */ .word 0x080179f5
/* 0806578c */ .word 0x00000003
/* 08065790 */ .word 0x00000000
/* 08065794 */ .word 0x00000000
/* 08065798 */ .word 0x00000006
/* 0806579c */ .word 0x00000003
/* 080657a0 */ .word 0x080179f5
/* 080657a4 */ .word 0x00000005
/* 080657a8 */ .word 0x00000000
/* 080657ac */ .word 0x00000000
/* 080657b0 */ .word 0x00000006
/* 080657b4 */ .word 0x00000000
/* 080657b8 */ .word 0x00000000
/* 080657bc */ .word 0x00000006
/* 080657c0 */ .word 0x0000000e
/* 080657c4 */ .word 0x00000000
/* 080657c8 */ .word 0x00000000
/* 080657cc */ .word 0x00000003
/* 080657d0 */ .word 0x080179f5
/* 080657d4 */ .word 0x00000001
/* 080657d8 */ .word 0x00000003
/* 080657dc */ .word 0x080179f5
/* 080657e0 */ .word 0x00000007
/* 080657e4 */ .word 0x00000000
/* 080657e8 */ .word 0x00000000
/* 080657ec */ .word 0x00000006
/* 080657f0 */ .word 0x00000000
/* 080657f4 */ .word 0x00000000
/* 080657f8 */ .word 0x00000006
/* 080657fc */ .word 0x00000000
/* 08065800 */ .word 0x00000000
/* 08065804 */ .word 0x00000006
/* 08065808 */ .word 0x00000003
/* 0806580c */ .word 0x080179f5
/* 08065810 */ .word 0x00000001
/* 08065814 */ .word 0x00000000
/* 08065818 */ .word 0x00000000
/* 0806581c */ .word 0x00000003
/* 08065820 */ .word 0x0000000e
/* 08065824 */ .word 0x00000000
/* 08065828 */ .word 0x00000000
/* 0806582c */ .word 0x836e830a
/* 08065830 */ .word 0x836e8343
/* 08065834 */ .word 0x82678362
/* 08065838 */ .word 0x82a282f0
/* 0806583c */ .word 0x0ac482ea
/* 08065840 */ .word 0x62834a83
/* 08065844 */ .word 0xe6825283
/* 08065848 */ .word 0xb782ad82
/* 0806584c */ .word 0x8883e982
/* 08065850 */ .word 0x000a4981
/* 08065854 */ .word 0x00000003
/* 08065858 */ .word 0x080179f5
/* 0806585c */ .word 0x00000002
/* 08065860 */ .word 0x00000000
/* 08065864 */ .word 0x00000000
/* 08065868 */ .word 0x00000006
/* 0806586c */ .word 0x00000000
/* 08065870 */ .word 0x00000000
/* 08065874 */ .word 0x00000006
/* 08065878 */ .word 0x00000000
/* 0806587c */ .word 0x00000000
/* 08065880 */ .word 0x00000006
/* 08065884 */ .word 0x00000000
/* 08065888 */ .word 0x00000000
/* 0806588c */ .word 0x00000006
/* 08065890 */ .word 0x00000003
/* 08065894 */ .word 0x080179f5
/* 08065898 */ .word 0x00000001
/* 0806589c */ .word 0x00000000
/* 080658a0 */ .word 0x00000000
/* 080658a4 */ .word 0x00000006
/* 080658a8 */ .word 0x00000000
/* 080658ac */ .word 0x00000000
/* 080658b0 */ .word 0x00000006
/* 080658b4 */ .word 0x00000003
/* 080658b8 */ .word 0x080179f5
/* 080658bc */ .word 0x00000004
/* 080658c0 */ .word 0x00000000
/* 080658c4 */ .word 0x00000000
/* 080658c8 */ .word 0x00000006
/* 080658cc */ .word 0x00000003
/* 080658d0 */ .word 0x080179f5
/* 080658d4 */ .word 0x00000001
/* 080658d8 */ .word 0x00000000
/* 080658dc */ .word 0x00000000
/* 080658e0 */ .word 0x00000006
/* 080658e4 */ .word 0x00000003
/* 080658e8 */ .word 0x080179f5
/* 080658ec */ .word 0x00000002
/* 080658f0 */ .word 0x00000000
/* 080658f4 */ .word 0x00000000
/* 080658f8 */ .word 0x00000006
/* 080658fc */ .word 0x00000000
/* 08065900 */ .word 0x00000000
/* 08065904 */ .word 0x00000006
/* 08065908 */ .word 0x00000000
/* 0806590c */ .word 0x00000000
/* 08065910 */ .word 0x00000006
/* 08065914 */ .word 0x00000000
/* 08065918 */ .word 0x00000000
/* 0806591c */ .word 0x00000006
/* 08065920 */ .word 0x00000003
/* 08065924 */ .word 0x080179f5
/* 08065928 */ .word 0x00000001
/* 0806592c */ .word 0x00000000
/* 08065930 */ .word 0x00000000
/* 08065934 */ .word 0x00000006
/* 08065938 */ .word 0x00000000
/* 0806593c */ .word 0x00000000
/* 08065940 */ .word 0x00000006
/* 08065944 */ .word 0x00000003
/* 08065948 */ .word 0x080179f5
/* 0806594c */ .word 0x00000004
/* 08065950 */ .word 0x00000000
/* 08065954 */ .word 0x00000000
/* 08065958 */ .word 0x00000006
/* 0806595c */ .word 0x00000003
/* 08065960 */ .word 0x080179f5
/* 08065964 */ .word 0x00000001
/* 08065968 */ .word 0x00000000
/* 0806596c */ .word 0x00000000
/* 08065970 */ .word 0x00000006
/* 08065974 */ .word 0x00000003
/* 08065978 */ .word 0x080179f5
/* 0806597c */ .word 0x00000002
/* 08065980 */ .word 0x00000000
/* 08065984 */ .word 0x00000000
/* 08065988 */ .word 0x00000006
/* 0806598c */ .word 0x00000000
/* 08065990 */ .word 0x00000000
/* 08065994 */ .word 0x00000006
/* 08065998 */ .word 0x00000003
/* 0806599c */ .word 0x080179f5
/* 080659a0 */ .word 0x00000001
/* 080659a4 */ .word 0x00000000
/* 080659a8 */ .word 0x00000000
/* 080659ac */ .word 0x00000006
/* 080659b0 */ .word 0x00000000
/* 080659b4 */ .word 0x00000000
/* 080659b8 */ .word 0x00000006
/* 080659bc */ .word 0x00000003
/* 080659c0 */ .word 0x080179f5
/* 080659c4 */ .word 0x00000003
/* 080659c8 */ .word 0x00000000
/* 080659cc */ .word 0x00000000
/* 080659d0 */ .word 0x00000006
/* 080659d4 */ .word 0x00000000
/* 080659d8 */ .word 0x00000000
/* 080659dc */ .word 0x00000006
/* 080659e0 */ .word 0x00000003
/* 080659e4 */ .word 0x080179f5
/* 080659e8 */ .word 0x00000003
/* 080659ec */ .word 0x00000000
/* 080659f0 */ .word 0x00000000
/* 080659f4 */ .word 0x00000006
/* 080659f8 */ .word 0x00000000
/* 080659fc */ .word 0x00000000
/* 08065a00 */ .word 0x00000006
/* 08065a04 */ .word 0x00000003
/* 08065a08 */ .word 0x080179f5
/* 08065a0c */ .word 0x00000002
/* 08065a10 */ .word 0x00000000
/* 08065a14 */ .word 0x00000000
/* 08065a18 */ .word 0x00000006
/* 08065a1c */ .word 0x00000003
/* 08065a20 */ .word 0x080179f5
/* 08065a24 */ .word 0x00000003
/* 08065a28 */ .word 0x00000000
/* 08065a2c */ .word 0x00000000
/* 08065a30 */ .word 0x00000006
/* 08065a34 */ .word 0x00000003
/* 08065a38 */ .word 0x080179f5
/* 08065a3c */ .word 0x00000005
/* 08065a40 */ .word 0x00000000
/* 08065a44 */ .word 0x00000000
/* 08065a48 */ .word 0x00000006
/* 08065a4c */ .word 0x00000000
/* 08065a50 */ .word 0x00000000
/* 08065a54 */ .word 0x00000006
/* 08065a58 */ .word 0x0000000e
/* 08065a5c */ .word 0x00000000
/* 08065a60 */ .word 0x00000000
/* 08065a64 */ .word 0x00000003
/* 08065a68 */ .word 0x080179f5
/* 08065a6c */ .word 0x00000001
/* 08065a70 */ .word 0x00000003
/* 08065a74 */ .word 0x080179f5
/* 08065a78 */ .word 0x00000007
/* 08065a7c */ .word 0x00000000
/* 08065a80 */ .word 0x00000000
/* 08065a84 */ .word 0x00000006
/* 08065a88 */ .word 0x00000000
/* 08065a8c */ .word 0x00000000
/* 08065a90 */ .word 0x00000006
/* 08065a94 */ .word 0x00000003
/* 08065a98 */ .word 0x080179f5
/* 08065a9c */ .word 0x00000004
/* 08065aa0 */ .word 0x00000000
/* 08065aa4 */ .word 0x00000000
/* 08065aa8 */ .word 0x00000006
/* 08065aac */ .word 0x00000003
/* 08065ab0 */ .word 0x080179f5
/* 08065ab4 */ .word 0x00000001
/* 08065ab8 */ .word 0x00000000
/* 08065abc */ .word 0x00000000
/* 08065ac0 */ .word 0x00000003
/* 08065ac4 */ .word 0x0000000e
/* 08065ac8 */ .word 0x00000000
/* 08065acc */ .word 0x00000000
/* 08065ad0 */ .word 0x82b3820a
/* 08065ad4 */ .word 0x81c982e7
/* 08065ad8 */ .word 0x82e08241
/* 08065adc */ .word 0x82ad8fa4
/* 08065ae0 */ .word 0x6e830ab5
/* 08065ae4 */ .word 0x6e834383
/* 08065ae8 */ .word 0x67836283
/* 08065aec */ .word 0xa282f082
/* 08065af0 */ .word 0xc482ea82
/* 08065af4 */ .word 0x834a830a
/* 08065af8 */ .word 0x82528362
/* 08065afc */ .word 0x82ad82e6
/* 08065b00 */ .word 0x83e982b7
/* 08065b04 */ .word 0x0a498188
/* 08065b08 */ .word 0x00000000
/* 08065b0c */ .word 0x00000003
/* 08065b10 */ .word 0x080179f5
/* 08065b14 */ .word 0x00000002
/* 08065b18 */ .word 0x00000000
/* 08065b1c */ .word 0x00000000
/* 08065b20 */ .word 0x00000006
/* 08065b24 */ .word 0x00000000
/* 08065b28 */ .word 0x00000000
/* 08065b2c */ .word 0x00000006
/* 08065b30 */ .word 0x00000003
/* 08065b34 */ .word 0x080179f5
/* 08065b38 */ .word 0x00000004
/* 08065b3c */ .word 0x00000000
/* 08065b40 */ .word 0x00000000
/* 08065b44 */ .word 0x00000006
/* 08065b48 */ .word 0x00000000
/* 08065b4c */ .word 0x00000000
/* 08065b50 */ .word 0x00000006
/* 08065b54 */ .word 0x00000003
/* 08065b58 */ .word 0x080179f5
/* 08065b5c */ .word 0x00000001
/* 08065b60 */ .word 0x00000000
/* 08065b64 */ .word 0x00000000
/* 08065b68 */ .word 0x00000006
/* 08065b6c */ .word 0x00000000
/* 08065b70 */ .word 0x00000000
/* 08065b74 */ .word 0x00000006
/* 08065b78 */ .word 0x00000003
/* 08065b7c */ .word 0x080179f5
/* 08065b80 */ .word 0x00000004
/* 08065b84 */ .word 0x00000000
/* 08065b88 */ .word 0x00000000
/* 08065b8c */ .word 0x00000006
/* 08065b90 */ .word 0x00000003
/* 08065b94 */ .word 0x080179f5
/* 08065b98 */ .word 0x00000001
/* 08065b9c */ .word 0x00000000
/* 08065ba0 */ .word 0x00000000
/* 08065ba4 */ .word 0x00000006
/* 08065ba8 */ .word 0x00000003
/* 08065bac */ .word 0x080179f5
/* 08065bb0 */ .word 0x00000002
/* 08065bb4 */ .word 0x00000000
/* 08065bb8 */ .word 0x00000000
/* 08065bbc */ .word 0x00000006
/* 08065bc0 */ .word 0x00000000
/* 08065bc4 */ .word 0x00000000
/* 08065bc8 */ .word 0x00000006
/* 08065bcc */ .word 0x00000003
/* 08065bd0 */ .word 0x080179f5
/* 08065bd4 */ .word 0x00000004
/* 08065bd8 */ .word 0x00000000
/* 08065bdc */ .word 0x00000000
/* 08065be0 */ .word 0x00000006
/* 08065be4 */ .word 0x00000000
/* 08065be8 */ .word 0x00000000
/* 08065bec */ .word 0x00000006
/* 08065bf0 */ .word 0x00000003
/* 08065bf4 */ .word 0x080179f5
/* 08065bf8 */ .word 0x00000001
/* 08065bfc */ .word 0x00000000
/* 08065c00 */ .word 0x00000000
/* 08065c04 */ .word 0x00000006
/* 08065c08 */ .word 0x00000000
/* 08065c0c */ .word 0x00000000
/* 08065c10 */ .word 0x00000006
/* 08065c14 */ .word 0x00000003
/* 08065c18 */ .word 0x080179f5
/* 08065c1c */ .word 0x00000004
/* 08065c20 */ .word 0x00000000
/* 08065c24 */ .word 0x00000000
/* 08065c28 */ .word 0x00000006
/* 08065c2c */ .word 0x00000003
/* 08065c30 */ .word 0x080179f5
/* 08065c34 */ .word 0x00000001
/* 08065c38 */ .word 0x00000000
/* 08065c3c */ .word 0x00000000
/* 08065c40 */ .word 0x00000006
/* 08065c44 */ .word 0x00000003
/* 08065c48 */ .word 0x080179f5
/* 08065c4c */ .word 0x00000002
/* 08065c50 */ .word 0x00000000
/* 08065c54 */ .word 0x00000000
/* 08065c58 */ .word 0x00000006
/* 08065c5c */ .word 0x00000000
/* 08065c60 */ .word 0x00000000
/* 08065c64 */ .word 0x00000006
/* 08065c68 */ .word 0x00000003
/* 08065c6c */ .word 0x080179f5
/* 08065c70 */ .word 0x00000001
/* 08065c74 */ .word 0x00000000
/* 08065c78 */ .word 0x00000000
/* 08065c7c */ .word 0x00000006
/* 08065c80 */ .word 0x00000000
/* 08065c84 */ .word 0x00000000
/* 08065c88 */ .word 0x00000006
/* 08065c8c */ .word 0x00000003
/* 08065c90 */ .word 0x080179f5
/* 08065c94 */ .word 0x00000003
/* 08065c98 */ .word 0x00000000
/* 08065c9c */ .word 0x00000000
/* 08065ca0 */ .word 0x00000006
/* 08065ca4 */ .word 0x00000000
/* 08065ca8 */ .word 0x00000000
/* 08065cac */ .word 0x00000006
/* 08065cb0 */ .word 0x00000003
/* 08065cb4 */ .word 0x080179f5
/* 08065cb8 */ .word 0x00000003
/* 08065cbc */ .word 0x00000000
/* 08065cc0 */ .word 0x00000000
/* 08065cc4 */ .word 0x00000006
/* 08065cc8 */ .word 0x00000000
/* 08065ccc */ .word 0x00000000
/* 08065cd0 */ .word 0x00000006
/* 08065cd4 */ .word 0x00000003
/* 08065cd8 */ .word 0x080179f5
/* 08065cdc */ .word 0x00000002
/* 08065ce0 */ .word 0x00000000
/* 08065ce4 */ .word 0x00000000
/* 08065ce8 */ .word 0x00000006
/* 08065cec */ .word 0x00000003
/* 08065cf0 */ .word 0x080179f5
/* 08065cf4 */ .word 0x00000003
/* 08065cf8 */ .word 0x00000000
/* 08065cfc */ .word 0x00000000
/* 08065d00 */ .word 0x00000006
/* 08065d04 */ .word 0x00000003
/* 08065d08 */ .word 0x080179f5
/* 08065d0c */ .word 0x00000005
/* 08065d10 */ .word 0x00000000
/* 08065d14 */ .word 0x00000000
/* 08065d18 */ .word 0x00000006
/* 08065d1c */ .word 0x00000000
/* 08065d20 */ .word 0x00000000
/* 08065d24 */ .word 0x00000006
/* 08065d28 */ .word 0x0000000e
/* 08065d2c */ .word 0x00000000
/* 08065d30 */ .word 0x00000000
/* 08065d34 */ .word 0x82b3820a
/* 08065d38 */ .word 0x82b282a2
/* 08065d3c */ .word 0x835883c9
/* 08065d40 */ .word 0x8241836c
/* 08065d44 */ .word 0x50820af0
/* 08065d48 */ .word 0xc792c282
/* 08065d4c */ .word 0xb582c189
/* 08065d50 */ .word 0xe182bf82
/* 08065d54 */ .word 0x8883a482
/* 08065d58 */ .word 0x820a4981
/* 08065d5c */ .word 0x82a982ed
/* 08065d60 */ .word 0x82a982e9
/* 08065d64 */ .word 0x004881c8
/* 08065d68 */ .word 0x00000003
/* 08065d6c */ .word 0x080179f5
/* 08065d70 */ .word 0x00000002
/* 08065d74 */ .word 0x00000000
/* 08065d78 */ .word 0x00000000
/* 08065d7c */ .word 0x00000006
/* 08065d80 */ .word 0x00000000
/* 08065d84 */ .word 0x00000000
/* 08065d88 */ .word 0x00000006
/* 08065d8c */ .word 0x00000003
/* 08065d90 */ .word 0x080179f5
/* 08065d94 */ .word 0x00000004
/* 08065d98 */ .word 0x00000000
/* 08065d9c */ .word 0x00000000
/* 08065da0 */ .word 0x00000006
/* 08065da4 */ .word 0x00000000
/* 08065da8 */ .word 0x00000000
/* 08065dac */ .word 0x00000006
/* 08065db0 */ .word 0x00000003
/* 08065db4 */ .word 0x080179f5
/* 08065db8 */ .word 0x00000001
/* 08065dbc */ .word 0x00000000
/* 08065dc0 */ .word 0x00000000
/* 08065dc4 */ .word 0x00000006
/* 08065dc8 */ .word 0x00000000
/* 08065dcc */ .word 0x00000000
/* 08065dd0 */ .word 0x00000006
/* 08065dd4 */ .word 0x00000003
/* 08065dd8 */ .word 0x080179f5
/* 08065ddc */ .word 0x00000004
/* 08065de0 */ .word 0x00000000
/* 08065de4 */ .word 0x00000000
/* 08065de8 */ .word 0x00000006
/* 08065dec */ .word 0x00000003
/* 08065df0 */ .word 0x080179f5
/* 08065df4 */ .word 0x00000001
/* 08065df8 */ .word 0x00000000
/* 08065dfc */ .word 0x00000000
/* 08065e00 */ .word 0x00000006
/* 08065e04 */ .word 0x00000003
/* 08065e08 */ .word 0x080179f5
/* 08065e0c */ .word 0x00000002
/* 08065e10 */ .word 0x00000000
/* 08065e14 */ .word 0x00000000
/* 08065e18 */ .word 0x00000006
/* 08065e1c */ .word 0x00000000
/* 08065e20 */ .word 0x00000000
/* 08065e24 */ .word 0x00000006
/* 08065e28 */ .word 0x00000003
/* 08065e2c */ .word 0x080179f5
/* 08065e30 */ .word 0x00000004
/* 08065e34 */ .word 0x00000000
/* 08065e38 */ .word 0x00000000
/* 08065e3c */ .word 0x00000006
/* 08065e40 */ .word 0x00000000
/* 08065e44 */ .word 0x00000000
/* 08065e48 */ .word 0x00000006
/* 08065e4c */ .word 0x00000003
/* 08065e50 */ .word 0x080179f5
/* 08065e54 */ .word 0x00000001
/* 08065e58 */ .word 0x00000000
/* 08065e5c */ .word 0x00000000
/* 08065e60 */ .word 0x00000006
/* 08065e64 */ .word 0x00000000
/* 08065e68 */ .word 0x00000000
/* 08065e6c */ .word 0x00000006
/* 08065e70 */ .word 0x00000003
/* 08065e74 */ .word 0x080179f5
/* 08065e78 */ .word 0x00000004
/* 08065e7c */ .word 0x00000000
/* 08065e80 */ .word 0x00000000
/* 08065e84 */ .word 0x00000006
/* 08065e88 */ .word 0x00000003
/* 08065e8c */ .word 0x080179f5
/* 08065e90 */ .word 0x00000001
/* 08065e94 */ .word 0x00000000
/* 08065e98 */ .word 0x00000000
/* 08065e9c */ .word 0x00000006
/* 08065ea0 */ .word 0x00000003
/* 08065ea4 */ .word 0x080179f5
/* 08065ea8 */ .word 0x00000002
/* 08065eac */ .word 0x00000000
/* 08065eb0 */ .word 0x00000000
/* 08065eb4 */ .word 0x00000006
/* 08065eb8 */ .word 0x00000000
/* 08065ebc */ .word 0x00000000
/* 08065ec0 */ .word 0x00000006
/* 08065ec4 */ .word 0x00000003
/* 08065ec8 */ .word 0x080179f5
/* 08065ecc */ .word 0x00000001
/* 08065ed0 */ .word 0x00000000
/* 08065ed4 */ .word 0x00000000
/* 08065ed8 */ .word 0x00000006
/* 08065edc */ .word 0x00000003
/* 08065ee0 */ .word 0x080179f5
/* 08065ee4 */ .word 0x00000002
/* 08065ee8 */ .word 0x00000000
/* 08065eec */ .word 0x00000000
/* 08065ef0 */ .word 0x00000006
/* 08065ef4 */ .word 0x00000003
/* 08065ef8 */ .word 0x080179f5
/* 08065efc */ .word 0x00000003
/* 08065f00 */ .word 0x00000000
/* 08065f04 */ .word 0x00000000
/* 08065f08 */ .word 0x00000006
/* 08065f0c */ .word 0x00000000
/* 08065f10 */ .word 0x00000000
/* 08065f14 */ .word 0x00000006
/* 08065f18 */ .word 0x00000003
/* 08065f1c */ .word 0x080179f5
/* 08065f20 */ .word 0x00000003
/* 08065f24 */ .word 0x00000000
/* 08065f28 */ .word 0x00000000
/* 08065f2c */ .word 0x00000006
/* 08065f30 */ .word 0x00000000
/* 08065f34 */ .word 0x00000000
/* 08065f38 */ .word 0x00000006
/* 08065f3c */ .word 0x00000003
/* 08065f40 */ .word 0x080179f5
/* 08065f44 */ .word 0x00000002
/* 08065f48 */ .word 0x00000000
/* 08065f4c */ .word 0x00000000
/* 08065f50 */ .word 0x00000006
/* 08065f54 */ .word 0x00000003
/* 08065f58 */ .word 0x080179f5
/* 08065f5c */ .word 0x00000003
/* 08065f60 */ .word 0x00000000
/* 08065f64 */ .word 0x00000000
/* 08065f68 */ .word 0x00000006
/* 08065f6c */ .word 0x00000003
/* 08065f70 */ .word 0x080179f5
/* 08065f74 */ .word 0x00000005
/* 08065f78 */ .word 0x00000000
/* 08065f7c */ .word 0x00000000
/* 08065f80 */ .word 0x00000006
/* 08065f84 */ .word 0x00000000
/* 08065f88 */ .word 0x00000000
/* 08065f8c */ .word 0x00000006
/* 08065f90 */ .word 0x0000000e
/* 08065f94 */ .word 0x00000000
/* 08065f98 */ .word 0x00000000
/* 08065f9c */ .word 0x82dc820a
/* 08065fa0 */ .word 0x81cd82b8
/* 08065fa4 */ .word 0x82a88241
/* 08065fa8 */ .word 0x82e782b3
/* 08065fac */ .word 0x82c582a2
/* 08065fb0 */ .word 0x0a4281b7
/* 08065fb4 */ .word 0xf182aa82
/* 08065fb8 */ .word 0xc182ce82
/* 08065fbc */ .word 0x6c83c482
/* 08065fc0 */ .word 0x00004981
/* 08065fc4 */ .word 0x00000003
/* 08065fc8 */ .word 0x080179f5
/* 08065fcc */ .word 0x00000002
/* 08065fd0 */ .word 0x00000000
/* 08065fd4 */ .word 0x00000000
/* 08065fd8 */ .word 0x00000006
/* 08065fdc */ .word 0x00000000
/* 08065fe0 */ .word 0x00000000
/* 08065fe4 */ .word 0x00000006
/* 08065fe8 */ .word 0x00000003
/* 08065fec */ .word 0x080179f5
/* 08065ff0 */ .word 0x00000004
/* 08065ff4 */ .word 0x00000000
/* 08065ff8 */ .word 0x00000000
/* 08065ffc */ .word 0x00000006
/* 08066000 */ .word 0x00000000
/* 08066004 */ .word 0x00000000
/* 08066008 */ .word 0x00000006
/* 0806600c */ .word 0x00000003
/* 08066010 */ .word 0x080179f5
/* 08066014 */ .word 0x00000001
/* 08066018 */ .word 0x00000000
/* 0806601c */ .word 0x00000000
/* 08066020 */ .word 0x00000006
/* 08066024 */ .word 0x00000000
/* 08066028 */ .word 0x00000000
/* 0806602c */ .word 0x00000006
/* 08066030 */ .word 0x00000003
/* 08066034 */ .word 0x080179f5
/* 08066038 */ .word 0x00000004
/* 0806603c */ .word 0x00000000
/* 08066040 */ .word 0x00000000
/* 08066044 */ .word 0x00000006
/* 08066048 */ .word 0x00000003
/* 0806604c */ .word 0x080179f5
/* 08066050 */ .word 0x00000001
/* 08066054 */ .word 0x00000000
/* 08066058 */ .word 0x00000000
/* 0806605c */ .word 0x00000006
/* 08066060 */ .word 0x00000003
/* 08066064 */ .word 0x080179f5
/* 08066068 */ .word 0x00000002
/* 0806606c */ .word 0x00000000
/* 08066070 */ .word 0x00000000
/* 08066074 */ .word 0x00000006
/* 08066078 */ .word 0x00000000
/* 0806607c */ .word 0x00000000
/* 08066080 */ .word 0x00000006
/* 08066084 */ .word 0x00000003
/* 08066088 */ .word 0x080179f5
/* 0806608c */ .word 0x00000004
/* 08066090 */ .word 0x00000000
/* 08066094 */ .word 0x00000000
/* 08066098 */ .word 0x00000006
/* 0806609c */ .word 0x00000000
/* 080660a0 */ .word 0x00000000
/* 080660a4 */ .word 0x00000006
/* 080660a8 */ .word 0x00000003
/* 080660ac */ .word 0x080179f5
/* 080660b0 */ .word 0x00000001
/* 080660b4 */ .word 0x00000000
/* 080660b8 */ .word 0x00000000
/* 080660bc */ .word 0x00000006
/* 080660c0 */ .word 0x00000000
/* 080660c4 */ .word 0x00000000
/* 080660c8 */ .word 0x00000006
/* 080660cc */ .word 0x00000003
/* 080660d0 */ .word 0x080179f5
/* 080660d4 */ .word 0x00000004
/* 080660d8 */ .word 0x00000000
/* 080660dc */ .word 0x00000000
/* 080660e0 */ .word 0x00000006
/* 080660e4 */ .word 0x00000003
/* 080660e8 */ .word 0x080179f5
/* 080660ec */ .word 0x00000001
/* 080660f0 */ .word 0x00000000
/* 080660f4 */ .word 0x00000000
/* 080660f8 */ .word 0x00000006
/* 080660fc */ .word 0x00000003
/* 08066100 */ .word 0x080179f5
/* 08066104 */ .word 0x00000002
/* 08066108 */ .word 0x00000000
/* 0806610c */ .word 0x00000000
/* 08066110 */ .word 0x00000006
/* 08066114 */ .word 0x00000000
/* 08066118 */ .word 0x00000000
/* 0806611c */ .word 0x00000006
/* 08066120 */ .word 0x00000003
/* 08066124 */ .word 0x080179f5
/* 08066128 */ .word 0x00000004
/* 0806612c */ .word 0x00000000
/* 08066130 */ .word 0x00000000
/* 08066134 */ .word 0x00000006
/* 08066138 */ .word 0x00000000
/* 0806613c */ .word 0x00000000
/* 08066140 */ .word 0x00000006
/* 08066144 */ .word 0x00000003
/* 08066148 */ .word 0x080179f5
/* 0806614c */ .word 0x00000001
/* 08066150 */ .word 0x00000000
/* 08066154 */ .word 0x00000000
/* 08066158 */ .word 0x00000006
/* 0806615c */ .word 0x00000000
/* 08066160 */ .word 0x00000000
/* 08066164 */ .word 0x00000006
/* 08066168 */ .word 0x00000003
/* 0806616c */ .word 0x080179f5
/* 08066170 */ .word 0x00000004
/* 08066174 */ .word 0x00000000
/* 08066178 */ .word 0x00000000
/* 0806617c */ .word 0x00000006
/* 08066180 */ .word 0x00000003
/* 08066184 */ .word 0x080179f5
/* 08066188 */ .word 0x00000001
/* 0806618c */ .word 0x00000000
/* 08066190 */ .word 0x00000000
/* 08066194 */ .word 0x00000006
/* 08066198 */ .word 0x00000003
/* 0806619c */ .word 0x080179f5
/* 080661a0 */ .word 0x00000002
/* 080661a4 */ .word 0x00000000
/* 080661a8 */ .word 0x00000000
/* 080661ac */ .word 0x00000006
/* 080661b0 */ .word 0x00000000
/* 080661b4 */ .word 0x00000000
/* 080661b8 */ .word 0x00000006
/* 080661bc */ .word 0x00000003
/* 080661c0 */ .word 0x080179f5
/* 080661c4 */ .word 0x00000004
/* 080661c8 */ .word 0x00000000
/* 080661cc */ .word 0x00000000
/* 080661d0 */ .word 0x00000006
/* 080661d4 */ .word 0x00000000
/* 080661d8 */ .word 0x00000000
/* 080661dc */ .word 0x00000006
/* 080661e0 */ .word 0x0000000e
/* 080661e4 */ .word 0x00000000
/* 080661e8 */ .word 0x00000000
/* 080661ec */ .word 0x00000003
/* 080661f0 */ .word 0x080179f5
/* 080661f4 */ .word 0x00000001
/* 080661f8 */ .word 0x00000003
/* 080661fc */ .word 0x080179f5
/* 08066200 */ .word 0x00000007
/* 08066204 */ .word 0x00000000
/* 08066208 */ .word 0x00000000
/* 0806620c */ .word 0x00000006
/* 08066210 */ .word 0x00000000
/* 08066214 */ .word 0x00000000
/* 08066218 */ .word 0x00000006
/* 0806621c */ .word 0x00000003
/* 08066220 */ .word 0x080179f5
/* 08066224 */ .word 0x00000004
/* 08066228 */ .word 0x00000000
/* 0806622c */ .word 0x00000000
/* 08066230 */ .word 0x00000006
/* 08066234 */ .word 0x00000003
/* 08066238 */ .word 0x080179f5
/* 0806623c */ .word 0x00000001
/* 08066240 */ .word 0x00000000
/* 08066244 */ .word 0x00000000
/* 08066248 */ .word 0x00000003
/* 0806624c */ .word 0x0000000e
/* 08066250 */ .word 0x00000000
/* 08066254 */ .word 0x00000000
/* 08066258 */ .word 0x82b1820a
/* 0806625c */ .word 0x82a982b1
/* 08066260 */ .word 0x8faa82e7
/* 08066264 */ .word 0x8289959f
/* 08066268 */ .word 0x81b782c5
/* 0806626c */ .word 0xe6820a49
/* 08066270 */ .word 0xad826081
/* 08066274 */ .word 0xa282ab82
/* 08066278 */ .word 0x4181c482
/* 0806627c */ .word 0x82bf820a
/* 08066280 */ .word 0x82f182e1
/* 08066284 */ .word 0x837d83c6
/* 08066288 */ .word 0x82b5826c
/* 0806628c */ .word 0x816c83c4
/* 08066290 */ .word 0x00000a49
/* 08066294 */ .word 0x00000003
/* 08066298 */ .word 0x080179f5
/* 0806629c */ .word 0x00000002
/* 080662a0 */ .word 0x00000000
/* 080662a4 */ .word 0x00000000
/* 080662a8 */ .word 0x00000006
/* 080662ac */ .word 0x00000000
/* 080662b0 */ .word 0x00000000
/* 080662b4 */ .word 0x00000006
/* 080662b8 */ .word 0x00000003
/* 080662bc */ .word 0x080179f5
/* 080662c0 */ .word 0x00000004
/* 080662c4 */ .word 0x00000000
/* 080662c8 */ .word 0x00000000
/* 080662cc */ .word 0x00000006
/* 080662d0 */ .word 0x00000000
/* 080662d4 */ .word 0x00000000
/* 080662d8 */ .word 0x00000006
/* 080662dc */ .word 0x00000003
/* 080662e0 */ .word 0x080179f5
/* 080662e4 */ .word 0x00000001
/* 080662e8 */ .word 0x00000000
/* 080662ec */ .word 0x00000000
/* 080662f0 */ .word 0x00000006
/* 080662f4 */ .word 0x00000000
/* 080662f8 */ .word 0x00000000
/* 080662fc */ .word 0x00000006
/* 08066300 */ .word 0x00000003
/* 08066304 */ .word 0x080179f5
/* 08066308 */ .word 0x00000004
/* 0806630c */ .word 0x00000000
/* 08066310 */ .word 0x00000000
/* 08066314 */ .word 0x00000006
/* 08066318 */ .word 0x00000003
/* 0806631c */ .word 0x080179f5
/* 08066320 */ .word 0x00000001
/* 08066324 */ .word 0x00000000
/* 08066328 */ .word 0x00000000
/* 0806632c */ .word 0x00000006
/* 08066330 */ .word 0x00000003
/* 08066334 */ .word 0x080179f5
/* 08066338 */ .word 0x00000002
/* 0806633c */ .word 0x00000000
/* 08066340 */ .word 0x00000000
/* 08066344 */ .word 0x00000006
/* 08066348 */ .word 0x00000003
/* 0806634c */ .word 0x080179f5
/* 08066350 */ .word 0x00000001
/* 08066354 */ .word 0x00000003
/* 08066358 */ .word 0x080179f5
/* 0806635c */ .word 0x00000007
/* 08066360 */ .word 0x00000000
/* 08066364 */ .word 0x00000000
/* 08066368 */ .word 0x00000006
/* 0806636c */ .word 0x00000000
/* 08066370 */ .word 0x00000000
/* 08066374 */ .word 0x00000006
/* 08066378 */ .word 0x00000000
/* 0806637c */ .word 0x00000000
/* 08066380 */ .word 0x00000006
/* 08066384 */ .word 0x00000003
/* 08066388 */ .word 0x080179f5
/* 0806638c */ .word 0x00000003
/* 08066390 */ .word 0x00000000
/* 08066394 */ .word 0x00000000
/* 08066398 */ .word 0x00000006
/* 0806639c */ .word 0x00000000
/* 080663a0 */ .word 0x00000000
/* 080663a4 */ .word 0x00000006
/* 080663a8 */ .word 0x00000000
/* 080663ac */ .word 0x00000000
/* 080663b0 */ .word 0x00000006
/* 080663b4 */ .word 0x00000000
/* 080663b8 */ .word 0x00000000
/* 080663bc */ .word 0x00000006
/* 080663c0 */ .word 0x00000000
/* 080663c4 */ .word 0x00000000
/* 080663c8 */ .word 0x00000006
/* 080663cc */ .word 0x00000000
/* 080663d0 */ .word 0x00000000
/* 080663d4 */ .word 0x00000006
/* 080663d8 */ .word 0x00000000
/* 080663dc */ .word 0x00000000
/* 080663e0 */ .word 0x00000006
/* 080663e4 */ .word 0x00000000
/* 080663e8 */ .word 0x00000000
/* 080663ec */ .word 0x00000006
/* 080663f0 */ .word 0x00000000
/* 080663f4 */ .word 0x00000000
/* 080663f8 */ .word 0x00000006
/* 080663fc */ .word 0x00000000
/* 08066400 */ .word 0x00000000
/* 08066404 */ .word 0x00000006
/* 08066408 */ .word 0x00000000
/* 0806640c */ .word 0x00000000
/* 08066410 */ .word 0x00000006
/* 08066414 */ .word 0x00000000
/* 08066418 */ .word 0x00000000
/* 0806641c */ .word 0x00000006
/* 08066420 */ .word 0x00000003
/* 08066424 */ .word 0x080179f5
/* 08066428 */ .word 0x00000001
/* 0806642c */ .word 0x00000000
/* 08066430 */ .word 0x00000000
/* 08066434 */ .word 0x00000006
/* 08066438 */ .word 0x00000000
/* 0806643c */ .word 0x00000000
/* 08066440 */ .word 0x00000006
/* 08066444 */ .word 0x00000003
/* 08066448 */ .word 0x080179f5
/* 0806644c */ .word 0x00000003
/* 08066450 */ .word 0x00000000
/* 08066454 */ .word 0x00000000
/* 08066458 */ .word 0x00000006
/* 0806645c */ .word 0x00000003
/* 08066460 */ .word 0x080179f5
/* 08066464 */ .word 0x00000002
/* 08066468 */ .word 0x00000000
/* 0806646c */ .word 0x00000000
/* 08066470 */ .word 0x00000006
/* 08066474 */ .word 0x0000000e
/* 08066478 */ .word 0x00000000
/* 0806647c */ .word 0x00000000
/* 08066480 */ .word 0x836f830a
/* 08066484 */ .word 0x83c68258
/* 08066488 */ .word 0x836c8358
/* 0806648c */ .word 0x0af08241
/* 08066490 */ .word 0xe582bf82
/* 08066494 */ .word 0xc682c182
/* 08066498 */ .word 0xbd824081
/* 0806649c */ .word 0x8883b782
/* 080664a0 */ .word 0x820a4981
/* 080664a4 */ .word 0x82ab82c5
/* 080664a8 */ .word 0x82a982e9
/* 080664ac */ .word 0x004881c8
/* 080664b0 */ .word 0x00000003
/* 080664b4 */ .word 0x080179f5
/* 080664b8 */ .word 0x00000002
/* 080664bc */ .word 0x00000000
/* 080664c0 */ .word 0x00000000
/* 080664c4 */ .word 0x00000006
/* 080664c8 */ .word 0x00000000
/* 080664cc */ .word 0x00000000
/* 080664d0 */ .word 0x00000006
/* 080664d4 */ .word 0x00000003
/* 080664d8 */ .word 0x080179f5
/* 080664dc */ .word 0x00000004
/* 080664e0 */ .word 0x00000000
/* 080664e4 */ .word 0x00000000
/* 080664e8 */ .word 0x00000006
/* 080664ec */ .word 0x00000000
/* 080664f0 */ .word 0x00000000
/* 080664f4 */ .word 0x00000006
/* 080664f8 */ .word 0x00000003
/* 080664fc */ .word 0x080179f5
/* 08066500 */ .word 0x00000001
/* 08066504 */ .word 0x00000000
/* 08066508 */ .word 0x00000000
/* 0806650c */ .word 0x00000006
/* 08066510 */ .word 0x00000000
/* 08066514 */ .word 0x00000000
/* 08066518 */ .word 0x00000006
/* 0806651c */ .word 0x00000003
/* 08066520 */ .word 0x080179f5
/* 08066524 */ .word 0x00000004
/* 08066528 */ .word 0x00000000
/* 0806652c */ .word 0x00000000
/* 08066530 */ .word 0x00000006
/* 08066534 */ .word 0x00000003
/* 08066538 */ .word 0x080179f5
/* 0806653c */ .word 0x00000001
/* 08066540 */ .word 0x00000000
/* 08066544 */ .word 0x00000000
/* 08066548 */ .word 0x00000006
/* 0806654c */ .word 0x00000003
/* 08066550 */ .word 0x080179f5
/* 08066554 */ .word 0x00000002
/* 08066558 */ .word 0x00000000
/* 0806655c */ .word 0x00000000
/* 08066560 */ .word 0x00000006
/* 08066564 */ .word 0x00000003
/* 08066568 */ .word 0x080179f5
/* 0806656c */ .word 0x00000001
/* 08066570 */ .word 0x00000003
/* 08066574 */ .word 0x080179f5
/* 08066578 */ .word 0x00000007
/* 0806657c */ .word 0x00000000
/* 08066580 */ .word 0x00000000
/* 08066584 */ .word 0x00000006
/* 08066588 */ .word 0x00000000
/* 0806658c */ .word 0x00000000
/* 08066590 */ .word 0x00000006
/* 08066594 */ .word 0x00000000
/* 08066598 */ .word 0x00000000
/* 0806659c */ .word 0x00000006
/* 080665a0 */ .word 0x00000003
/* 080665a4 */ .word 0x080179f5
/* 080665a8 */ .word 0x00000003
/* 080665ac */ .word 0x00000000
/* 080665b0 */ .word 0x00000000
/* 080665b4 */ .word 0x00000006
/* 080665b8 */ .word 0x00000003
/* 080665bc */ .word 0x080179f5
/* 080665c0 */ .word 0x00000002
/* 080665c4 */ .word 0x00000000
/* 080665c8 */ .word 0x00000000
/* 080665cc */ .word 0x00000006
/* 080665d0 */ .word 0x00000000
/* 080665d4 */ .word 0x00000000
/* 080665d8 */ .word 0x00000006
/* 080665dc */ .word 0x00000003
/* 080665e0 */ .word 0x080179f5
/* 080665e4 */ .word 0x00000001
/* 080665e8 */ .word 0x00000000
/* 080665ec */ .word 0x00000000
/* 080665f0 */ .word 0x00000006
/* 080665f4 */ .word 0x00000003
/* 080665f8 */ .word 0x080179f5
/* 080665fc */ .word 0x00000002
/* 08066600 */ .word 0x00000000
/* 08066604 */ .word 0x00000000
/* 08066608 */ .word 0x00000006
/* 0806660c */ .word 0x00000000
/* 08066610 */ .word 0x00000000
/* 08066614 */ .word 0x00000006
/* 08066618 */ .word 0x00000000
/* 0806661c */ .word 0x00000000
/* 08066620 */ .word 0x00000006
/* 08066624 */ .word 0x00000000
/* 08066628 */ .word 0x00000000
/* 0806662c */ .word 0x00000006
/* 08066630 */ .word 0x00000000
/* 08066634 */ .word 0x00000000
/* 08066638 */ .word 0x00000006
/* 0806663c */ .word 0x00000000
/* 08066640 */ .word 0x00000000
/* 08066644 */ .word 0x00000006
/* 08066648 */ .word 0x00000000
/* 0806664c */ .word 0x00000000
/* 08066650 */ .word 0x00000006
/* 08066654 */ .word 0x00000000
/* 08066658 */ .word 0x00000000
/* 0806665c */ .word 0x00000006
/* 08066660 */ .word 0x00000003
/* 08066664 */ .word 0x080179f5
/* 08066668 */ .word 0x00000001
/* 0806666c */ .word 0x00000000
/* 08066670 */ .word 0x00000000
/* 08066674 */ .word 0x00000006
/* 08066678 */ .word 0x00000000
/* 0806667c */ .word 0x00000000
/* 08066680 */ .word 0x00000006
/* 08066684 */ .word 0x00000003
/* 08066688 */ .word 0x080179f5
/* 0806668c */ .word 0x00000003
/* 08066690 */ .word 0x00000000
/* 08066694 */ .word 0x00000000
/* 08066698 */ .word 0x00000006
/* 0806669c */ .word 0x00000003
/* 080666a0 */ .word 0x080179f5
/* 080666a4 */ .word 0x00000002
/* 080666a8 */ .word 0x00000000
/* 080666ac */ .word 0x00000000
/* 080666b0 */ .word 0x00000006
/* 080666b4 */ .word 0x0000000e
/* 080666b8 */ .word 0x00000000
/* 080666bc */ .word 0x00000000
/* 080666c0 */ .word 0x836f830a
/* 080666c4 */ .word 0x83688358
/* 080666c8 */ .word 0x82808389
/* 080666cc */ .word 0x825082f0
/* 080666d0 */ .word 0xd3820ac2
/* 080666d4 */ .word 0xb582e282
/* 080666d8 */ .word 0xdd82c482
/* 080666dc */ .word 0x8883e982
/* 080666e0 */ .word 0x820a4281
/* 080666e4 */ .word 0x82f182aa
/* 080666e8 */ .word 0x82c182ce
/* 080666ec */ .word 0x004981c4
/* 080666f0 */ .word 0x00000003
/* 080666f4 */ .word 0x080179f5
/* 080666f8 */ .word 0x00000002
/* 080666fc */ .word 0x00000000
/* 08066700 */ .word 0x00000000
/* 08066704 */ .word 0x00000006
/* 08066708 */ .word 0x00000000
/* 0806670c */ .word 0x00000000
/* 08066710 */ .word 0x00000006
/* 08066714 */ .word 0x00000003
/* 08066718 */ .word 0x080179f5
/* 0806671c */ .word 0x00000004
/* 08066720 */ .word 0x00000000
/* 08066724 */ .word 0x00000000
/* 08066728 */ .word 0x00000006
/* 0806672c */ .word 0x00000000
/* 08066730 */ .word 0x00000000
/* 08066734 */ .word 0x00000006
/* 08066738 */ .word 0x00000003
/* 0806673c */ .word 0x080179f5
/* 08066740 */ .word 0x00000001
/* 08066744 */ .word 0x00000000
/* 08066748 */ .word 0x00000000
/* 0806674c */ .word 0x00000006
/* 08066750 */ .word 0x00000000
/* 08066754 */ .word 0x00000000
/* 08066758 */ .word 0x00000006
/* 0806675c */ .word 0x00000003
/* 08066760 */ .word 0x080179f5
/* 08066764 */ .word 0x00000004
/* 08066768 */ .word 0x00000000
/* 0806676c */ .word 0x00000000
/* 08066770 */ .word 0x00000006
/* 08066774 */ .word 0x00000003
/* 08066778 */ .word 0x080179f5
/* 0806677c */ .word 0x00000001
/* 08066780 */ .word 0x00000000
/* 08066784 */ .word 0x00000000
/* 08066788 */ .word 0x00000006
/* 0806678c */ .word 0x00000003
/* 08066790 */ .word 0x080179f5
/* 08066794 */ .word 0x00000002
/* 08066798 */ .word 0x00000000
/* 0806679c */ .word 0x00000000
/* 080667a0 */ .word 0x00000006
/* 080667a4 */ .word 0x00000003
/* 080667a8 */ .word 0x080179f5
/* 080667ac */ .word 0x00000001
/* 080667b0 */ .word 0x00000003
/* 080667b4 */ .word 0x080179f5
/* 080667b8 */ .word 0x00000007
/* 080667bc */ .word 0x00000000
/* 080667c0 */ .word 0x00000000
/* 080667c4 */ .word 0x00000006
/* 080667c8 */ .word 0x00000000
/* 080667cc */ .word 0x00000000
/* 080667d0 */ .word 0x00000006
/* 080667d4 */ .word 0x00000000
/* 080667d8 */ .word 0x00000000
/* 080667dc */ .word 0x00000006
/* 080667e0 */ .word 0x00000003
/* 080667e4 */ .word 0x080179f5
/* 080667e8 */ .word 0x00000003
/* 080667ec */ .word 0x00000000
/* 080667f0 */ .word 0x00000000
/* 080667f4 */ .word 0x00000006
/* 080667f8 */ .word 0x00000003
/* 080667fc */ .word 0x080179f5
/* 08066800 */ .word 0x00000002
/* 08066804 */ .word 0x00000000
/* 08066808 */ .word 0x00000000
/* 0806680c */ .word 0x00000006
/* 08066810 */ .word 0x00000000
/* 08066814 */ .word 0x00000000
/* 08066818 */ .word 0x00000006
/* 0806681c */ .word 0x00000003
/* 08066820 */ .word 0x080179f5
/* 08066824 */ .word 0x00000001
/* 08066828 */ .word 0x00000000
/* 0806682c */ .word 0x00000000
/* 08066830 */ .word 0x00000003
/* 08066834 */ .word 0x00000003
/* 08066838 */ .word 0x080179f5
/* 0806683c */ .word 0x00000000
/* 08066840 */ .word 0x00000000
/* 08066844 */ .word 0x00000000
/* 08066848 */ .word 0x00000003
/* 0806684c */ .word 0x00000003
/* 08066850 */ .word 0x080179f5
/* 08066854 */ .word 0x00000003
/* 08066858 */ .word 0x00000000
/* 0806685c */ .word 0x00000000
/* 08066860 */ .word 0x00000006
/* 08066864 */ .word 0x00000000
/* 08066868 */ .word 0x00000000
/* 0806686c */ .word 0x00000006
/* 08066870 */ .word 0x00000000
/* 08066874 */ .word 0x00000000
/* 08066878 */ .word 0x00000006
/* 0806687c */ .word 0x00000000
/* 08066880 */ .word 0x00000000
/* 08066884 */ .word 0x00000006
/* 08066888 */ .word 0x00000000
/* 0806688c */ .word 0x00000000
/* 08066890 */ .word 0x00000006
/* 08066894 */ .word 0x00000000
/* 08066898 */ .word 0x00000000
/* 0806689c */ .word 0x00000006
/* 080668a0 */ .word 0x00000000
/* 080668a4 */ .word 0x00000000
/* 080668a8 */ .word 0x00000006
/* 080668ac */ .word 0x00000000
/* 080668b0 */ .word 0x00000000
/* 080668b4 */ .word 0x00000006
/* 080668b8 */ .word 0x00000003
/* 080668bc */ .word 0x080179f5
/* 080668c0 */ .word 0x00000001
/* 080668c4 */ .word 0x00000000
/* 080668c8 */ .word 0x00000000
/* 080668cc */ .word 0x00000006
/* 080668d0 */ .word 0x00000000
/* 080668d4 */ .word 0x00000000
/* 080668d8 */ .word 0x00000006
/* 080668dc */ .word 0x00000003
/* 080668e0 */ .word 0x080179f5
/* 080668e4 */ .word 0x00000003
/* 080668e8 */ .word 0x00000000
/* 080668ec */ .word 0x00000000
/* 080668f0 */ .word 0x00000006
/* 080668f4 */ .word 0x00000003
/* 080668f8 */ .word 0x080179f5
/* 080668fc */ .word 0x00000002
/* 08066900 */ .word 0x00000000
/* 08066904 */ .word 0x00000000
/* 08066908 */ .word 0x00000006
/* 0806690c */ .word 0x0000000e
/* 08066910 */ .word 0x00000000
/* 08066914 */ .word 0x00000000
/* 08066918 */ .word 0xe782b382
/* 0806691c */ .word 0x4181c982
/* 08066920 */ .word 0xbd82dc82
/* 08066924 */ .word 0xbd82dc82
/* 08066928 */ .word 0x836f830a
/* 0806692c */ .word 0x83c68258
/* 08066930 */ .word 0x836c8358
/* 08066934 */ .word 0x92f08241
/* 08066938 */ .word 0x81c189c7
/* 0806693c */ .word 0x0a498149
/* 08066940 */ .word 0x7e834c83
/* 08066944 */ .word 0xe782c882
/* 08066948 */ .word 0xab82c582
/* 0806694c */ .word 0x4981e982
/* 08066950 */ .word 0x82aa820a
/* 08066954 */ .word 0x82ce82f1
/* 08066958 */ .word 0x816081ea
/* 0806695c */ .word 0x0a498149
/* 08066960 */ .word 0x00000000
/* 08066964 */ .word 0x00000003
/* 08066968 */ .word 0x080179f5
/* 0806696c */ .word 0x00000002
/* 08066970 */ .word 0x00000000
/* 08066974 */ .word 0x00000000
/* 08066978 */ .word 0x00000006
/* 0806697c */ .word 0x00000000
/* 08066980 */ .word 0x00000000
/* 08066984 */ .word 0x00000006
/* 08066988 */ .word 0x00000003
/* 0806698c */ .word 0x080179f5
/* 08066990 */ .word 0x00000004
/* 08066994 */ .word 0x00000000
/* 08066998 */ .word 0x00000000
/* 0806699c */ .word 0x00000006
/* 080669a0 */ .word 0x00000000
/* 080669a4 */ .word 0x00000000
/* 080669a8 */ .word 0x00000006
/* 080669ac */ .word 0x00000003
/* 080669b0 */ .word 0x080179f5
/* 080669b4 */ .word 0x00000001
/* 080669b8 */ .word 0x00000000
/* 080669bc */ .word 0x00000000
/* 080669c0 */ .word 0x00000006
/* 080669c4 */ .word 0x00000000
/* 080669c8 */ .word 0x00000000
/* 080669cc */ .word 0x00000006
/* 080669d0 */ .word 0x00000003
/* 080669d4 */ .word 0x080179f5
/* 080669d8 */ .word 0x00000004
/* 080669dc */ .word 0x00000000
/* 080669e0 */ .word 0x00000000
/* 080669e4 */ .word 0x00000006
/* 080669e8 */ .word 0x00000003
/* 080669ec */ .word 0x080179f5
/* 080669f0 */ .word 0x00000001
/* 080669f4 */ .word 0x00000000
/* 080669f8 */ .word 0x00000000
/* 080669fc */ .word 0x00000006
/* 08066a00 */ .word 0x00000003
/* 08066a04 */ .word 0x080179f5
/* 08066a08 */ .word 0x00000002
/* 08066a0c */ .word 0x00000000
/* 08066a10 */ .word 0x00000000
/* 08066a14 */ .word 0x00000006
/* 08066a18 */ .word 0x00000003
/* 08066a1c */ .word 0x080179f5
/* 08066a20 */ .word 0x00000001
/* 08066a24 */ .word 0x00000003
/* 08066a28 */ .word 0x080179f5
/* 08066a2c */ .word 0x00000007
/* 08066a30 */ .word 0x00000000
/* 08066a34 */ .word 0x00000000
/* 08066a38 */ .word 0x00000006
/* 08066a3c */ .word 0x00000000
/* 08066a40 */ .word 0x00000000
/* 08066a44 */ .word 0x00000006
/* 08066a48 */ .word 0x00000000
/* 08066a4c */ .word 0x00000000
/* 08066a50 */ .word 0x00000006
/* 08066a54 */ .word 0x00000003
/* 08066a58 */ .word 0x080179f5
/* 08066a5c */ .word 0x00000003
/* 08066a60 */ .word 0x00000000
/* 08066a64 */ .word 0x00000000
/* 08066a68 */ .word 0x00000006
/* 08066a6c */ .word 0x00000003
/* 08066a70 */ .word 0x080179f5
/* 08066a74 */ .word 0x00000002
/* 08066a78 */ .word 0x00000000
/* 08066a7c */ .word 0x00000000
/* 08066a80 */ .word 0x00000006
/* 08066a84 */ .word 0x00000000
/* 08066a88 */ .word 0x00000000
/* 08066a8c */ .word 0x00000006
/* 08066a90 */ .word 0x00000003
/* 08066a94 */ .word 0x080179f5
/* 08066a98 */ .word 0x00000001
/* 08066a9c */ .word 0x00000000
/* 08066aa0 */ .word 0x00000000
/* 08066aa4 */ .word 0x00000003
/* 08066aa8 */ .word 0x00000003
/* 08066aac */ .word 0x080179f5
/* 08066ab0 */ .word 0x00000000
/* 08066ab4 */ .word 0x00000000
/* 08066ab8 */ .word 0x00000000
/* 08066abc */ .word 0x00000003
/* 08066ac0 */ .word 0x00000003
/* 08066ac4 */ .word 0x080179f5
/* 08066ac8 */ .word 0x00000003
/* 08066acc */ .word 0x00000000
/* 08066ad0 */ .word 0x00000000
/* 08066ad4 */ .word 0x00000006
/* 08066ad8 */ .word 0x00000003
/* 08066adc */ .word 0x080179f5
/* 08066ae0 */ .word 0x00000002
/* 08066ae4 */ .word 0x00000000
/* 08066ae8 */ .word 0x00000000
/* 08066aec */ .word 0x00000006
/* 08066af0 */ .word 0x00000003
/* 08066af4 */ .word 0x080179f5
/* 08066af8 */ .word 0x00000001
/* 08066afc */ .word 0x00000000
/* 08066b00 */ .word 0x00000000
/* 08066b04 */ .word 0x00000006
/* 08066b08 */ .word 0x00000000
/* 08066b0c */ .word 0x00000000
/* 08066b10 */ .word 0x00000006
/* 08066b14 */ .word 0x00000000
/* 08066b18 */ .word 0x00000000
/* 08066b1c */ .word 0x00000006
/* 08066b20 */ .word 0x00000000
/* 08066b24 */ .word 0x00000000
/* 08066b28 */ .word 0x00000006
/* 08066b2c */ .word 0x00000000
/* 08066b30 */ .word 0x00000000
/* 08066b34 */ .word 0x00000006
/* 08066b38 */ .word 0x00000000
/* 08066b3c */ .word 0x00000000
/* 08066b40 */ .word 0x00000006
/* 08066b44 */ .word 0x00000003
/* 08066b48 */ .word 0x080179f5
/* 08066b4c */ .word 0x00000001
/* 08066b50 */ .word 0x00000000
/* 08066b54 */ .word 0x00000000
/* 08066b58 */ .word 0x00000006
/* 08066b5c */ .word 0x00000000
/* 08066b60 */ .word 0x00000000
/* 08066b64 */ .word 0x00000006
/* 08066b68 */ .word 0x00000003
/* 08066b6c */ .word 0x080179f5
/* 08066b70 */ .word 0x00000003
/* 08066b74 */ .word 0x00000000
/* 08066b78 */ .word 0x00000000
/* 08066b7c */ .word 0x00000006
/* 08066b80 */ .word 0x00000003
/* 08066b84 */ .word 0x080179f5
/* 08066b88 */ .word 0x00000002
/* 08066b8c */ .word 0x00000000
/* 08066b90 */ .word 0x00000000
/* 08066b94 */ .word 0x00000006
/* 08066b98 */ .word 0x0000000e
/* 08066b9c */ .word 0x00000000
/* 08066ba0 */ .word 0x00000000
/* 08066ba4 */ .word 0x836f830a
/* 08066ba8 */ .word 0x83688358
/* 08066bac */ .word 0x82808389
/* 08066bb0 */ .word 0x825082f0
/* 08066bb4 */ .word 0xd3820ac2
/* 08066bb8 */ .word 0xb582e282
/* 08066bbc */ .word 0xdd82c482
/* 08066bc0 */ .word 0x8883e982
/* 08066bc4 */ .word 0x830a4281
/* 08066bc8 */ .word 0x8281834c
/* 08066bcc */ .word 0x816c83c4
/* 08066bd0 */ .word 0x00498149
/* 08066bd4 */ .word 0x00000003
/* 08066bd8 */ .word 0x080179f5
/* 08066bdc */ .word 0x00000002
/* 08066be0 */ .word 0x00000000
/* 08066be4 */ .word 0x00000000
/* 08066be8 */ .word 0x00000006
/* 08066bec */ .word 0x00000000
/* 08066bf0 */ .word 0x00000000
/* 08066bf4 */ .word 0x00000006
/* 08066bf8 */ .word 0x00000003
/* 08066bfc */ .word 0x080179f5
/* 08066c00 */ .word 0x00000004
/* 08066c04 */ .word 0x00000000
/* 08066c08 */ .word 0x00000000
/* 08066c0c */ .word 0x00000006
/* 08066c10 */ .word 0x00000000
/* 08066c14 */ .word 0x00000000
/* 08066c18 */ .word 0x00000006
/* 08066c1c */ .word 0x00000003
/* 08066c20 */ .word 0x080179f5
/* 08066c24 */ .word 0x00000001
/* 08066c28 */ .word 0x00000000
/* 08066c2c */ .word 0x00000000
/* 08066c30 */ .word 0x00000006
/* 08066c34 */ .word 0x00000000
/* 08066c38 */ .word 0x00000000
/* 08066c3c */ .word 0x00000006
/* 08066c40 */ .word 0x00000003
/* 08066c44 */ .word 0x080179f5
/* 08066c48 */ .word 0x00000004
/* 08066c4c */ .word 0x00000000
/* 08066c50 */ .word 0x00000000
/* 08066c54 */ .word 0x00000006
/* 08066c58 */ .word 0x00000003
/* 08066c5c */ .word 0x080179f5
/* 08066c60 */ .word 0x00000001
/* 08066c64 */ .word 0x00000000
/* 08066c68 */ .word 0x00000000
/* 08066c6c */ .word 0x00000006
/* 08066c70 */ .word 0x00000003
/* 08066c74 */ .word 0x080179f5
/* 08066c78 */ .word 0x00000002
/* 08066c7c */ .word 0x00000000
/* 08066c80 */ .word 0x00000000
/* 08066c84 */ .word 0x00000006
/* 08066c88 */ .word 0x00000003
/* 08066c8c */ .word 0x080179f5
/* 08066c90 */ .word 0x00000001
/* 08066c94 */ .word 0x00000003
/* 08066c98 */ .word 0x080179f5
/* 08066c9c */ .word 0x00000007
/* 08066ca0 */ .word 0x00000000
/* 08066ca4 */ .word 0x00000000
/* 08066ca8 */ .word 0x00000006
/* 08066cac */ .word 0x00000000
/* 08066cb0 */ .word 0x00000000
/* 08066cb4 */ .word 0x00000006
/* 08066cb8 */ .word 0x00000000
/* 08066cbc */ .word 0x00000000
/* 08066cc0 */ .word 0x00000006
/* 08066cc4 */ .word 0x00000003
/* 08066cc8 */ .word 0x080179f5
/* 08066ccc */ .word 0x00000003
/* 08066cd0 */ .word 0x00000000
/* 08066cd4 */ .word 0x00000000
/* 08066cd8 */ .word 0x00000006
/* 08066cdc */ .word 0x00000003
/* 08066ce0 */ .word 0x080179f5
/* 08066ce4 */ .word 0x00000002
/* 08066ce8 */ .word 0x00000000
/* 08066cec */ .word 0x00000000
/* 08066cf0 */ .word 0x00000006
/* 08066cf4 */ .word 0x00000000
/* 08066cf8 */ .word 0x00000000
/* 08066cfc */ .word 0x00000006
/* 08066d00 */ .word 0x00000003
/* 08066d04 */ .word 0x080179f5
/* 08066d08 */ .word 0x00000001
/* 08066d0c */ .word 0x00000000
/* 08066d10 */ .word 0x00000000
/* 08066d14 */ .word 0x00000003
/* 08066d18 */ .word 0x00000003
/* 08066d1c */ .word 0x080179f5
/* 08066d20 */ .word 0x00000000
/* 08066d24 */ .word 0x00000000
/* 08066d28 */ .word 0x00000000
/* 08066d2c */ .word 0x00000003
/* 08066d30 */ .word 0x00000003
/* 08066d34 */ .word 0x080179f5
/* 08066d38 */ .word 0x00000003
/* 08066d3c */ .word 0x00000000
/* 08066d40 */ .word 0x00000000
/* 08066d44 */ .word 0x00000006
/* 08066d48 */ .word 0x00000003
/* 08066d4c */ .word 0x080179f5
/* 08066d50 */ .word 0x00000002
/* 08066d54 */ .word 0x00000000
/* 08066d58 */ .word 0x00000000
/* 08066d5c */ .word 0x00000006
/* 08066d60 */ .word 0x00000003
/* 08066d64 */ .word 0x080179f5
/* 08066d68 */ .word 0x00000001
/* 08066d6c */ .word 0x00000000
/* 08066d70 */ .word 0x00000000
/* 08066d74 */ .word 0x00000006
/* 08066d78 */ .word 0x00000003
/* 08066d7c */ .word 0x080179f5
/* 08066d80 */ .word 0x00000000
/* 08066d84 */ .word 0x00000000
/* 08066d88 */ .word 0x00000000
/* 08066d8c */ .word 0x00000006
/* 08066d90 */ .word 0x00000000
/* 08066d94 */ .word 0x00000000
/* 08066d98 */ .word 0x00000006
/* 08066d9c */ .word 0x00000000
/* 08066da0 */ .word 0x00000000
/* 08066da4 */ .word 0x00000006
/* 08066da8 */ .word 0x00000000
/* 08066dac */ .word 0x00000000
/* 08066db0 */ .word 0x00000006
/* 08066db4 */ .word 0x00000000
/* 08066db8 */ .word 0x00000000
/* 08066dbc */ .word 0x00000006
/* 08066dc0 */ .word 0x00000003
/* 08066dc4 */ .word 0x080179f5
/* 08066dc8 */ .word 0x00000001
/* 08066dcc */ .word 0x00000000
/* 08066dd0 */ .word 0x00000000
/* 08066dd4 */ .word 0x00000006
/* 08066dd8 */ .word 0x00000000
/* 08066ddc */ .word 0x00000000
/* 08066de0 */ .word 0x00000006
/* 08066de4 */ .word 0x00000003
/* 08066de8 */ .word 0x080179f5
/* 08066dec */ .word 0x00000003
/* 08066df0 */ .word 0x00000000
/* 08066df4 */ .word 0x00000000
/* 08066df8 */ .word 0x00000006
/* 08066dfc */ .word 0x00000003
/* 08066e00 */ .word 0x080179f5
/* 08066e04 */ .word 0x00000002
/* 08066e08 */ .word 0x00000000
/* 08066e0c */ .word 0x00000000
/* 08066e10 */ .word 0x00000006
/* 08066e14 */ .word 0x0000000e
/* 08066e18 */ .word 0x00000000
/* 08066e1c */ .word 0x00000000
/* 08066e20 */ .word 0xc182b382
/* 08066e24 */ .word 0xcc82ab82
/* 08066e28 */ .word 0x58836f83
/* 08066e2c */ .word 0x89836883
/* 08066e30 */ .word 0x830ac982
/* 08066e34 */ .word 0x83938356
/* 08066e38 */ .word 0x828b836f
/* 08066e3c */ .word 0x82a982f0
/* 08066e40 */ .word 0x82cb82b3
/* 08066e44 */ .word 0x818883e9
/* 08066e48 */ .word 0xb1820a49
/* 08066e4c */ .word 0xcd82ea82
/* 08066e50 */ .word 0x80834181
/* 08066e54 */ .word 0x43835983
/* 08066e58 */ .word 0x49814981
/* 08066e5c */ .word 0x8374830a
/* 08066e60 */ .word 0x83438340
/* 08066e64 */ .word 0x815b8167
/* 08066e68 */ .word 0x00498149
/* 08066e6c */ .word 0x00000003
/* 08066e70 */ .word 0x080179f5
/* 08066e74 */ .word 0x00000002
/* 08066e78 */ .word 0x00000000
/* 08066e7c */ .word 0x00000000
/* 08066e80 */ .word 0x00000006
/* 08066e84 */ .word 0x00000000
/* 08066e88 */ .word 0x00000000
/* 08066e8c */ .word 0x00000006
/* 08066e90 */ .word 0x00000003
/* 08066e94 */ .word 0x080179f5
/* 08066e98 */ .word 0x00000004
/* 08066e9c */ .word 0x00000000
/* 08066ea0 */ .word 0x00000000
/* 08066ea4 */ .word 0x00000006
/* 08066ea8 */ .word 0x00000000
/* 08066eac */ .word 0x00000000
/* 08066eb0 */ .word 0x00000006
/* 08066eb4 */ .word 0x00000003
/* 08066eb8 */ .word 0x080179f5
/* 08066ebc */ .word 0x00000001
/* 08066ec0 */ .word 0x00000000
/* 08066ec4 */ .word 0x00000000
/* 08066ec8 */ .word 0x00000006
/* 08066ecc */ .word 0x00000000
/* 08066ed0 */ .word 0x00000000
/* 08066ed4 */ .word 0x00000006
/* 08066ed8 */ .word 0x00000003
/* 08066edc */ .word 0x080179f5
/* 08066ee0 */ .word 0x00000004
/* 08066ee4 */ .word 0x00000000
/* 08066ee8 */ .word 0x00000000
/* 08066eec */ .word 0x00000006
/* 08066ef0 */ .word 0x00000003
/* 08066ef4 */ .word 0x080179f5
/* 08066ef8 */ .word 0x00000001
/* 08066efc */ .word 0x00000000
/* 08066f00 */ .word 0x00000000
/* 08066f04 */ .word 0x00000006
/* 08066f08 */ .word 0x00000003
/* 08066f0c */ .word 0x080179f5
/* 08066f10 */ .word 0x00000002
/* 08066f14 */ .word 0x00000000
/* 08066f18 */ .word 0x00000000
/* 08066f1c */ .word 0x00000006
/* 08066f20 */ .word 0x00000003
/* 08066f24 */ .word 0x080179f5
/* 08066f28 */ .word 0x00000001
/* 08066f2c */ .word 0x00000003
/* 08066f30 */ .word 0x080179f5
/* 08066f34 */ .word 0x00000007
/* 08066f38 */ .word 0x00000000
/* 08066f3c */ .word 0x00000000
/* 08066f40 */ .word 0x00000006
/* 08066f44 */ .word 0x00000000
/* 08066f48 */ .word 0x00000000
/* 08066f4c */ .word 0x00000006
/* 08066f50 */ .word 0x00000000
/* 08066f54 */ .word 0x00000000
/* 08066f58 */ .word 0x00000006
/* 08066f5c */ .word 0x00000003
/* 08066f60 */ .word 0x080179f5
/* 08066f64 */ .word 0x00000003
/* 08066f68 */ .word 0x00000000
/* 08066f6c */ .word 0x00000000
/* 08066f70 */ .word 0x00000006
/* 08066f74 */ .word 0x00000003
/* 08066f78 */ .word 0x080179f5
/* 08066f7c */ .word 0x00000002
/* 08066f80 */ .word 0x00000000
/* 08066f84 */ .word 0x00000000
/* 08066f88 */ .word 0x00000006
/* 08066f8c */ .word 0x00000000
/* 08066f90 */ .word 0x00000000
/* 08066f94 */ .word 0x00000006
/* 08066f98 */ .word 0x00000003
/* 08066f9c */ .word 0x080179f5
/* 08066fa0 */ .word 0x00000001
/* 08066fa4 */ .word 0x00000000
/* 08066fa8 */ .word 0x00000000
/* 08066fac */ .word 0x00000003
/* 08066fb0 */ .word 0x00000003
/* 08066fb4 */ .word 0x080179f5
/* 08066fb8 */ .word 0x00000000
/* 08066fbc */ .word 0x00000000
/* 08066fc0 */ .word 0x00000000
/* 08066fc4 */ .word 0x00000003
/* 08066fc8 */ .word 0x00000003
/* 08066fcc */ .word 0x080179f5
/* 08066fd0 */ .word 0x00000003
/* 08066fd4 */ .word 0x00000000
/* 08066fd8 */ .word 0x00000000
/* 08066fdc */ .word 0x00000006
/* 08066fe0 */ .word 0x00000003
/* 08066fe4 */ .word 0x080179f5
/* 08066fe8 */ .word 0x00000002
/* 08066fec */ .word 0x00000000
/* 08066ff0 */ .word 0x00000000
/* 08066ff4 */ .word 0x00000006
/* 08066ff8 */ .word 0x00000003
/* 08066ffc */ .word 0x080179f5
/* 08067000 */ .word 0x00000001
/* 08067004 */ .word 0x00000000
/* 08067008 */ .word 0x00000000
/* 0806700c */ .word 0x00000006
/* 08067010 */ .word 0x00000003
/* 08067014 */ .word 0x080179f5
/* 08067018 */ .word 0x00000000
/* 0806701c */ .word 0x00000003
/* 08067020 */ .word 0x080179f5
/* 08067024 */ .word 0x00000006
/* 08067028 */ .word 0x00000000
/* 0806702c */ .word 0x00000000
/* 08067030 */ .word 0x00000006
/* 08067034 */ .word 0x00000000
/* 08067038 */ .word 0x00000000
/* 0806703c */ .word 0x00000006
/* 08067040 */ .word 0x00000000
/* 08067044 */ .word 0x00000000
/* 08067048 */ .word 0x00000006
/* 0806704c */ .word 0x00000000
/* 08067050 */ .word 0x00000000
/* 08067054 */ .word 0x00000006
/* 08067058 */ .word 0x00000000
/* 0806705c */ .word 0x00000000
/* 08067060 */ .word 0x00000006
/* 08067064 */ .word 0x00000003
/* 08067068 */ .word 0x080179f5
/* 0806706c */ .word 0x00000001
/* 08067070 */ .word 0x00000000
/* 08067074 */ .word 0x00000000
/* 08067078 */ .word 0x00000006
/* 0806707c */ .word 0x00000000
/* 08067080 */ .word 0x00000000
/* 08067084 */ .word 0x00000006
/* 08067088 */ .word 0x00000003
/* 0806708c */ .word 0x080179f5
/* 08067090 */ .word 0x00000003
/* 08067094 */ .word 0x00000000
/* 08067098 */ .word 0x00000000
/* 0806709c */ .word 0x00000006
/* 080670a0 */ .word 0x00000003
/* 080670a4 */ .word 0x080179f5
/* 080670a8 */ .word 0x00000002
/* 080670ac */ .word 0x00000000
/* 080670b0 */ .word 0x00000000
/* 080670b4 */ .word 0x00000006
/* 080670b8 */ .word 0x0000000e
/* 080670bc */ .word 0x00000000
/* 080670c0 */ .word 0x00000000
/* 080670c4 */ .word 0x82b1820a
/* 080670c8 */ .word 0x82dc82ea
/* 080670cc */ .word 0x838083bd
/* 080670d0 */ .word 0x82438359
/* 080670d4 */ .word 0x82b182c6
/* 080670d8 */ .word 0x0ac982eb
/* 080670dc */ .word 0x6c835883
/* 080670e0 */ .word 0xf0824183
/* 080670e4 */ .word 0xc2825082
/* 080670e8 */ .word 0xc189c792
/* 080670ec */ .word 0x49814981
/* 080670f0 */ .word 0x82e0820a
/* 080670f4 */ .word 0x824181a4
/* 080670f8 */ .word 0x82ad82a2
/* 080670fc */ .word 0x82a982b5
/* 08067100 */ .word 0x81a282c8
/* 08067104 */ .word 0x81498149
/* 08067108 */ .word 0x00000049
/* 0806710c */ .word 0x00000003
/* 08067110 */ .word 0x080179f5
/* 08067114 */ .word 0x00000002
/* 08067118 */ .word 0x00000000
/* 0806711c */ .word 0x00000000
/* 08067120 */ .word 0x00000006
/* 08067124 */ .word 0x00000000
/* 08067128 */ .word 0x00000000
/* 0806712c */ .word 0x00000006
/* 08067130 */ .word 0x00000003
/* 08067134 */ .word 0x080179f5
/* 08067138 */ .word 0x00000004
/* 0806713c */ .word 0x00000000
/* 08067140 */ .word 0x00000000
/* 08067144 */ .word 0x00000006
/* 08067148 */ .word 0x00000000
/* 0806714c */ .word 0x00000000
/* 08067150 */ .word 0x00000006
/* 08067154 */ .word 0x00000003
/* 08067158 */ .word 0x080179f5
/* 0806715c */ .word 0x00000001
/* 08067160 */ .word 0x00000000
/* 08067164 */ .word 0x00000000
/* 08067168 */ .word 0x00000006
/* 0806716c */ .word 0x00000000
/* 08067170 */ .word 0x00000000
/* 08067174 */ .word 0x00000006
/* 08067178 */ .word 0x00000003
/* 0806717c */ .word 0x080179f5
/* 08067180 */ .word 0x00000004
/* 08067184 */ .word 0x00000000
/* 08067188 */ .word 0x00000000
/* 0806718c */ .word 0x00000006
/* 08067190 */ .word 0x00000003
/* 08067194 */ .word 0x080179f5
/* 08067198 */ .word 0x00000001
/* 0806719c */ .word 0x00000000
/* 080671a0 */ .word 0x00000000
/* 080671a4 */ .word 0x00000006
/* 080671a8 */ .word 0x00000003
/* 080671ac */ .word 0x080179f5
/* 080671b0 */ .word 0x00000002
/* 080671b4 */ .word 0x00000000
/* 080671b8 */ .word 0x00000000
/* 080671bc */ .word 0x00000006
/* 080671c0 */ .word 0x00000003
/* 080671c4 */ .word 0x080179f5
/* 080671c8 */ .word 0x00000001
/* 080671cc */ .word 0x00000003
/* 080671d0 */ .word 0x080179f5
/* 080671d4 */ .word 0x00000007
/* 080671d8 */ .word 0x00000000
/* 080671dc */ .word 0x00000000
/* 080671e0 */ .word 0x00000006
/* 080671e4 */ .word 0x00000000
/* 080671e8 */ .word 0x00000000
/* 080671ec */ .word 0x00000006
/* 080671f0 */ .word 0x00000000
/* 080671f4 */ .word 0x00000000
/* 080671f8 */ .word 0x00000006
/* 080671fc */ .word 0x00000003
/* 08067200 */ .word 0x080179f5
/* 08067204 */ .word 0x00000003
/* 08067208 */ .word 0x00000000
/* 0806720c */ .word 0x00000000
/* 08067210 */ .word 0x00000006
/* 08067214 */ .word 0x00000003
/* 08067218 */ .word 0x080179f5
/* 0806721c */ .word 0x00000002
/* 08067220 */ .word 0x00000000
/* 08067224 */ .word 0x00000000
/* 08067228 */ .word 0x00000006
/* 0806722c */ .word 0x00000000
/* 08067230 */ .word 0x00000000
/* 08067234 */ .word 0x00000006
/* 08067238 */ .word 0x00000003
/* 0806723c */ .word 0x080179f5
/* 08067240 */ .word 0x00000001
/* 08067244 */ .word 0x00000000
/* 08067248 */ .word 0x00000000
/* 0806724c */ .word 0x00000003
/* 08067250 */ .word 0x00000003
/* 08067254 */ .word 0x080179f5
/* 08067258 */ .word 0x00000000
/* 0806725c */ .word 0x00000000
/* 08067260 */ .word 0x00000000
/* 08067264 */ .word 0x00000003
/* 08067268 */ .word 0x00000003
/* 0806726c */ .word 0x080179f5
/* 08067270 */ .word 0x00000003
/* 08067274 */ .word 0x00000000
/* 08067278 */ .word 0x00000000
/* 0806727c */ .word 0x00000006
/* 08067280 */ .word 0x00000003
/* 08067284 */ .word 0x080179f5
/* 08067288 */ .word 0x00000002
/* 0806728c */ .word 0x00000000
/* 08067290 */ .word 0x00000000
/* 08067294 */ .word 0x00000006
/* 08067298 */ .word 0x00000003
/* 0806729c */ .word 0x080179f5
/* 080672a0 */ .word 0x00000001
/* 080672a4 */ .word 0x00000000
/* 080672a8 */ .word 0x00000000
/* 080672ac */ .word 0x00000006
/* 080672b0 */ .word 0x00000003
/* 080672b4 */ .word 0x080179f5
/* 080672b8 */ .word 0x00000000
/* 080672bc */ .word 0x00000003
/* 080672c0 */ .word 0x080179f5
/* 080672c4 */ .word 0x00000006
/* 080672c8 */ .word 0x00000000
/* 080672cc */ .word 0x00000000
/* 080672d0 */ .word 0x00000006
/* 080672d4 */ .word 0x00000000
/* 080672d8 */ .word 0x00000000
/* 080672dc */ .word 0x00000006
/* 080672e0 */ .word 0x00000003
/* 080672e4 */ .word 0x080179f5
/* 080672e8 */ .word 0x00000002
/* 080672ec */ .word 0x00000000
/* 080672f0 */ .word 0x00000000
/* 080672f4 */ .word 0x00000006
/* 080672f8 */ .word 0x00000000
/* 080672fc */ .word 0x00000000
/* 08067300 */ .word 0x00000006
/* 08067304 */ .word 0x00000000
/* 08067308 */ .word 0x00000000
/* 0806730c */ .word 0x00000006
/* 08067310 */ .word 0x00000003
/* 08067314 */ .word 0x080179f5
/* 08067318 */ .word 0x00000001
/* 0806731c */ .word 0x00000000
/* 08067320 */ .word 0x00000000
/* 08067324 */ .word 0x00000006
/* 08067328 */ .word 0x00000000
/* 0806732c */ .word 0x00000000
/* 08067330 */ .word 0x00000006
/* 08067334 */ .word 0x00000003
/* 08067338 */ .word 0x080179f5
/* 0806733c */ .word 0x00000003
/* 08067340 */ .word 0x00000000
/* 08067344 */ .word 0x00000000
/* 08067348 */ .word 0x00000006
/* 0806734c */ .word 0x00000003
/* 08067350 */ .word 0x080179f5
/* 08067354 */ .word 0x00000002
/* 08067358 */ .word 0x00000000
/* 0806735c */ .word 0x00000000
/* 08067360 */ .word 0x00000006
/* 08067364 */ .word 0x0000000e
/* 08067368 */ .word 0x00000000
/* 0806736c */ .word 0x00000000
/* 08067370 */ .word 0xea82b182
/* 08067374 */ .word 0x4081c582
/* 08067378 */ .word 0xa282b382
/* 0806737c */ .word 0x4981b282
/* 08067380 */ .word 0x835e830a
/* 08067384 */ .word 0x82f08280
/* 08067388 */ .word 0x92c28250
/* 0806738c */ .word 0x82c189c7
/* 08067390 */ .word 0x83e982b7
/* 08067394 */ .word 0x0a498188
/* 08067398 */ .word 0xea82ac97
/* 0806739c */ .word 0xe682e982
/* 080673a0 */ .word 0xc882a482
/* 080673a4 */ .word 0x4a834383
/* 080673a8 */ .word 0xbd82b582
/* 080673ac */ .word 0x8376830a
/* 080673b0 */ .word 0x8243838c
/* 080673b4 */ .word 0x82e682f0
/* 080673b8 */ .word 0x82b582eb
/* 080673bc */ .word 0x82c582ad
/* 080673c0 */ .word 0x814981b7
/* 080673c4 */ .word 0x00000049
/* 080673c8 */ .word 0x00000003
/* 080673cc */ .word 0x080179f5
/* 080673d0 */ .word 0x00000002
/* 080673d4 */ .word 0x00000000
/* 080673d8 */ .word 0x00000000
/* 080673dc */ .word 0x00000006
/* 080673e0 */ .word 0x00000000
/* 080673e4 */ .word 0x00000000
/* 080673e8 */ .word 0x00000006
/* 080673ec */ .word 0x00000003
/* 080673f0 */ .word 0x080179f5
/* 080673f4 */ .word 0x00000004
/* 080673f8 */ .word 0x00000000
/* 080673fc */ .word 0x00000000
/* 08067400 */ .word 0x00000006
/* 08067404 */ .word 0x00000000
/* 08067408 */ .word 0x00000000
/* 0806740c */ .word 0x00000006
/* 08067410 */ .word 0x00000003
/* 08067414 */ .word 0x080179f5
/* 08067418 */ .word 0x00000001
/* 0806741c */ .word 0x00000000
/* 08067420 */ .word 0x00000000
/* 08067424 */ .word 0x00000006
/* 08067428 */ .word 0x00000000
/* 0806742c */ .word 0x00000000
/* 08067430 */ .word 0x00000006
/* 08067434 */ .word 0x00000003
/* 08067438 */ .word 0x080179f5
/* 0806743c */ .word 0x00000004
/* 08067440 */ .word 0x00000000
/* 08067444 */ .word 0x00000000
/* 08067448 */ .word 0x00000006
/* 0806744c */ .word 0x00000003
/* 08067450 */ .word 0x080179f5
/* 08067454 */ .word 0x00000001
/* 08067458 */ .word 0x00000000
/* 0806745c */ .word 0x00000000
/* 08067460 */ .word 0x00000006
/* 08067464 */ .word 0x00000003
/* 08067468 */ .word 0x080179f5
/* 0806746c */ .word 0x00000002
/* 08067470 */ .word 0x00000000
/* 08067474 */ .word 0x00000000
/* 08067478 */ .word 0x00000006
/* 0806747c */ .word 0x00000003
/* 08067480 */ .word 0x080179f5
/* 08067484 */ .word 0x00000001
/* 08067488 */ .word 0x00000003
/* 0806748c */ .word 0x080179f5
/* 08067490 */ .word 0x00000007
/* 08067494 */ .word 0x00000000
/* 08067498 */ .word 0x00000000
/* 0806749c */ .word 0x00000006
/* 080674a0 */ .word 0x00000000
/* 080674a4 */ .word 0x00000000
/* 080674a8 */ .word 0x00000006
/* 080674ac */ .word 0x00000000
/* 080674b0 */ .word 0x00000000
/* 080674b4 */ .word 0x00000006
/* 080674b8 */ .word 0x00000003
/* 080674bc */ .word 0x080179f5
/* 080674c0 */ .word 0x00000003
/* 080674c4 */ .word 0x00000000
/* 080674c8 */ .word 0x00000000
/* 080674cc */ .word 0x00000006
/* 080674d0 */ .word 0x00000003
/* 080674d4 */ .word 0x080179f5
/* 080674d8 */ .word 0x00000002
/* 080674dc */ .word 0x00000000
/* 080674e0 */ .word 0x00000000
/* 080674e4 */ .word 0x00000006
/* 080674e8 */ .word 0x00000000
/* 080674ec */ .word 0x00000000
/* 080674f0 */ .word 0x00000006
/* 080674f4 */ .word 0x00000003
/* 080674f8 */ .word 0x080179f5
/* 080674fc */ .word 0x00000001
/* 08067500 */ .word 0x00000000
/* 08067504 */ .word 0x00000000
/* 08067508 */ .word 0x00000003
/* 0806750c */ .word 0x00000003
/* 08067510 */ .word 0x080179f5
/* 08067514 */ .word 0x00000000
/* 08067518 */ .word 0x00000000
/* 0806751c */ .word 0x00000000
/* 08067520 */ .word 0x00000003
/* 08067524 */ .word 0x00000003
/* 08067528 */ .word 0x080179f5
/* 0806752c */ .word 0x00000003
/* 08067530 */ .word 0x00000000
/* 08067534 */ .word 0x00000000
/* 08067538 */ .word 0x00000006
/* 0806753c */ .word 0x00000003
/* 08067540 */ .word 0x080179f5
/* 08067544 */ .word 0x00000002
/* 08067548 */ .word 0x00000000
/* 0806754c */ .word 0x00000000
/* 08067550 */ .word 0x00000006
/* 08067554 */ .word 0x00000003
/* 08067558 */ .word 0x080179f5
/* 0806755c */ .word 0x00000001
/* 08067560 */ .word 0x00000000
/* 08067564 */ .word 0x00000000
/* 08067568 */ .word 0x00000006
/* 0806756c */ .word 0x00000003
/* 08067570 */ .word 0x080179f5
/* 08067574 */ .word 0x00000000
/* 08067578 */ .word 0x00000003
/* 0806757c */ .word 0x080179f5
/* 08067580 */ .word 0x00000006
/* 08067584 */ .word 0x00000000
/* 08067588 */ .word 0x00000000
/* 0806758c */ .word 0x00000006
/* 08067590 */ .word 0x00000000
/* 08067594 */ .word 0x00000000
/* 08067598 */ .word 0x00000006
/* 0806759c */ .word 0x00000003
/* 080675a0 */ .word 0x080179f5
/* 080675a4 */ .word 0x00000002
/* 080675a8 */ .word 0x00000000
/* 080675ac */ .word 0x00000000
/* 080675b0 */ .word 0x00000006
/* 080675b4 */ .word 0x00000000
/* 080675b8 */ .word 0x00000000
/* 080675bc */ .word 0x00000006
/* 080675c0 */ .word 0x00000003
/* 080675c4 */ .word 0x080179f5
/* 080675c8 */ .word 0x00000005
/* 080675cc */ .word 0x00000000
/* 080675d0 */ .word 0x00000000
/* 080675d4 */ .word 0x00000006
/* 080675d8 */ .word 0x00000003
/* 080675dc */ .word 0x080179f5
/* 080675e0 */ .word 0x00000001
/* 080675e4 */ .word 0x00000000
/* 080675e8 */ .word 0x00000000
/* 080675ec */ .word 0x00000006
/* 080675f0 */ .word 0x00000000
/* 080675f4 */ .word 0x00000000
/* 080675f8 */ .word 0x00000006
/* 080675fc */ .word 0x00000003
/* 08067600 */ .word 0x080179f5
/* 08067604 */ .word 0x00000003
/* 08067608 */ .word 0x00000000
/* 0806760c */ .word 0x00000000
/* 08067610 */ .word 0x00000006
/* 08067614 */ .word 0x00000003
/* 08067618 */ .word 0x080179f5
/* 0806761c */ .word 0x00000002
/* 08067620 */ .word 0x00000000
/* 08067624 */ .word 0x00000000
/* 08067628 */ .word 0x00000006
/* 0806762c */ .word 0x0000000e
/* 08067630 */ .word 0x00000000
/* 08067634 */ .word 0x00000000
/* 08067638 */ .word 0x89a18d0a
/* 0806763c */ .word 0x81cd82f1
/* 08067640 */ .word 0x50820a41
/* 08067644 */ .word 0x4f91c282
/* 08067648 */ .word 0x8c83cc82
/* 0806764c */ .word 0x58836283
/* 08067650 */ .word 0xf0829383
/* 08067654 */ .word 0x979e890a
/* 08067658 */ .word 0x82b58270
/* 0806765c */ .word 0x82dd82c4
/* 08067660 */ .word 0x81b782dc
/* 08067664 */ .word 0x00000042
/* 08067668 */ .word 0x8250820a
/* 0806766c */ .word 0x824f91c2
/* 08067670 */ .word 0x838c83cc
/* 08067674 */ .word 0x83588362
/* 08067678 */ .word 0x0af08293
/* 0806767c */ .word 0x8a834e83
/* 08067680 */ .word 0xb5824183
/* 08067684 */ .word 0xa982c482
/* 08067688 */ .word 0x4181e782
/* 0806768c */ .word 0x90a7920a
/* 08067690 */ .word 0x82b582ed
/* 08067694 */ .word 0x816c83c4
/* 08067698 */ .word 0x00000049
/* 0806769c */ .word 0x82c5820a
/* 080676a0 */ .word 0x824181cd
/* 080676a4 */ .word 0x82b682cd
/* 080676a8 */ .word 0x81dc82df
/* 080676ac */ .word 0x81b7825b
/* 080676b0 */ .word 0x00000049
/* 080676b4 */ .word 0xbc944f91
/* 080676b8 */ .word 0x4081aa82
/* 080676bc */ .word 0xdc82a282
/* 080676c0 */ .word 0xc682d082
/* 080676c4 */ .word 0xbe82c282
/* 080676c8 */ .word 0xbd82c182
/* 080676cc */ .word 0x9f82c882
/* 080676d0 */ .word 0x00004281
/* 080676d4 */ .word 0xbc944f91
/* 080676d8 */ .word 0xce824181
/* 080676dc */ .word 0xbf82c182
/* 080676e0 */ .word 0xbe82e882
/* 080676e4 */ .word 0x4981cb82
/* 080676e8 */ .word 0x00000000
/* 080676ec */ .word 0xbc94e38c
/* 080676f0 */ .word 0xe0824181
/* 080676f4 */ .word 0xb382e882
/* 080676f8 */ .word 0xc182aa82
/* 080676fc */ .word 0xe182bf82
/* 08067700 */ .word 0xc482c182
/* 08067704 */ .word 0xc882bd82
/* 08067708 */ .word 0x42819f82
/* 0806770c */ .word 0x00000000
/* 08067710 */ .word 0xbc94e38c
/* 08067714 */ .word 0x4081c582
/* 08067718 */ .word 0xe882e082
/* 0806771c */ .word 0xaa82a082
/* 08067720 */ .word 0xbd82c182
/* 08067724 */ .word 0x6081cb82
/* 08067728 */ .word 0x00004981
/* 0806772c */ .word 0x00000000
/* 08067730 */ .word 0x89834e83
/* 08067734 */ .word 0x7d834383
/* 08067738 */ .word 0x4e836283
/* 0806773c */ .word 0xaa825883
/* 08067740 */ .word 0xab824081
/* 08067744 */ .word 0xc182dc82
/* 08067748 */ .word 0xbd82c482
/* 0806774c */ .word 0x49814981
/* 08067750 */ .word 0x00000000
/* 08067754 */ .word 0xa282b382
/* 08067758 */ .word 0xc982b282
/* 0806775c */ .word 0xbf824081
/* 08067760 */ .word 0xf182e182
/* 08067764 */ .word 0x4081c682
/* 08067768 */ .word 0x81835683
/* 0806776c */ .word 0xbd82c482
/* 08067770 */ .word 0x4981cb82
/* 08067774 */ .word 0x00000000
/* 08067778 */ .word 0xed82dc82
/* 0806777c */ .word 0xcc82e882
/* 08067780 */ .word 0xbb945d95
/* 08067784 */ .word 0x00000000
/* 08067788 */ .word 0x303a302e
/* 0806778c */ .word 0x40836e83
/* 08067790 */ .word 0x00006081
/* 08067794 */ .word 0x303a302e
/* 08067798 */ .word 0xc882cd82
/* 0806779c */ .word 0x4081d182
/* 080677a0 */ .word 0xaa82a082
/* 080677a4 */ .word 0xce82ea82
/* 080677a8 */ .word 0x00006081
/* 080677ac */ .word 0x303a312e
/* 080677b0 */ .word 0x313ac782
/* 080677b4 */ .word 0xf1825b81
/* 080677b8 */ .word 0x312e4081
/* 080677bc */ .word 0xc782303a
/* 080677c0 */ .word 0x5b81313a
/* 080677c4 */ .word 0x4081f182
/* 080677c8 */ .word 0x303a322e
/* 080677cc */ .word 0x322ecf82
/* 080677d0 */ .word 0x5b81313a
/* 080677d4 */ .word 0x4081f182
/* 080677d8 */ .word 0x303a322e
/* 080677dc */ .word 0x322ecf82
/* 080677e0 */ .word 0x5b81313a
/* 080677e4 */ .word 0x0000f182
/* 080677e8 */ .word 0x303a312e
/* 080677ec */ .word 0x313ac782
/* 080677f0 */ .word 0xc782f182
/* 080677f4 */ .word 0x322e4081
/* 080677f8 */ .word 0xcf82303a
/* 080677fc */ .word 0x313a322e
/* 08067800 */ .word 0xf1825b81
/* 08067804 */ .word 0x322e4081
/* 08067808 */ .word 0xcf82303a
/* 0806780c */ .word 0x313a322e
/* 08067810 */ .word 0x0000f182
/* 08067814 */ .word 0x303a302e
/* 08067818 */ .word 0x40836e83
/* 0806781c */ .word 0x40816081
/* 08067820 */ .word 0x60814183
/* 08067824 */ .word 0x00000000
/* 08067828 */ .word 0x303a302e
/* 0806782c */ .word 0xf182a982
/* 08067830 */ .word 0xa282b982
/* 08067834 */ .word 0xa0824081
/* 08067838 */ .word 0xe982aa82
/* 0806783c */ .word 0x00006081
/* 08067840 */ .word 0x303a302e
/* 08067844 */ .word 0xf182c982
/* 08067848 */ .word 0x4081ab82
/* 0806784c */ .word 0xaa82a082
/* 08067850 */ .word 0xce82ea82
/* 08067854 */ .word 0x00006081
/* 08067858 */ .word 0x303a302e
/* 0806785c */ .word 0xe382ab82
/* 08067860 */ .word 0xe882a482
/* 08067864 */ .word 0xa482e582
/* 08067868 */ .word 0xa0824081
/* 0806786c */ .word 0xe982aa82
/* 08067870 */ .word 0x00006081
/* 08067874 */ .word 0x303a302e
/* 08067878 */ .word 0xc282dc82
/* 0806787c */ .word 0xbe82e882
/* 08067880 */ .word 0xed824081
/* 08067884 */ .word 0xb582c182
/* 08067888 */ .word 0xa282e582
/* 0806788c */ .word 0x00004981
/* 08067890 */ .word 0x303a312e
/* 08067894 */ .word 0x313ac782
/* 08067898 */ .word 0xc782f182
/* 0806789c */ .word 0x322e4081
/* 080678a0 */ .word 0xcf82303a
/* 080678a4 */ .word 0x313a322e
/* 080678a8 */ .word 0x322ef182
/* 080678ac */ .word 0xcf82303a
/* 080678b0 */ .word 0x312e4081
/* 080678b4 */ .word 0xc782303a
/* 080678b8 */ .word 0xf182313a
/* 080678bc */ .word 0x4081c782
/* 080678c0 */ .word 0x303a322e
/* 080678c4 */ .word 0x322ecf82
/* 080678c8 */ .word 0xf182313a
/* 080678cc */ .word 0x303a322e
/* 080678d0 */ .word 0x0000cf82
/* 080678d4 */ .word 0x303a302e
/* 080678d8 */ .word 0xc182c982
/* 080678dc */ .word 0xf182db82
/* 080678e0 */ .word 0xe382b682
/* 080678e4 */ .word 0xaa82a482
/* 080678e8 */ .word 0xed824081
/* 080678ec */ .word 0xb582c182
/* 080678f0 */ .word 0xa282e582
/* 080678f4 */ .word 0x00004981
/* 080678f8 */ .word 0x303a312e
/* 080678fc */ .word 0x313ac782
/* 08067900 */ .word 0xf1825b81
/* 08067904 */ .word 0x312e4081
/* 08067908 */ .word 0xc782303a
/* 0806790c */ .word 0x5b81313a
/* 08067910 */ .word 0x4081f182
/* 08067914 */ .word 0x303a322e
/* 08067918 */ .word 0x322ecf82
/* 0806791c */ .word 0xf182313a
/* 08067920 */ .word 0x00000000
/* 08067924 */ .word 0x303a302e
/* 08067928 */ .word 0x8c835c83
/* 0806792c */ .word 0xd0824081
/* 08067930 */ .word 0xad82c182
/* 08067934 */ .word 0x4081e882
/* 08067938 */ .word 0xa682a982
/* 0806793c */ .word 0xc482c182
/* 08067940 */ .word 0x00000000
/* 08067944 */ .word 0x303a302e
/* 08067948 */ .word 0x40836e83
/* 0806794c */ .word 0x40816081
/* 08067950 */ .word 0xf182da82
/* 08067954 */ .word 0xc782a882
/* 08067958 */ .word 0x0000e882
/* 0806795c */ .word 0x303a312e
/* 08067960 */ .word 0x313ac782
/* 08067964 */ .word 0xc782f182
/* 08067968 */ .word 0x322e4081
/* 0806796c */ .word 0xcf82303a
/* 08067970 */ .word 0x313a322e
/* 08067974 */ .word 0x322ef182
/* 08067978 */ .word 0xcf82303a
/* 0806797c */ .word 0x00000000
/* 08067980 */ .word 0x303a312e
/* 08067984 */ .word 0x313ac782
/* 08067988 */ .word 0xf1825b81
/* 0806798c */ .word 0x322e4081
/* 08067990 */ .word 0xcf82303a
/* 08067994 */ .word 0x313a322e
/* 08067998 */ .word 0xf1825b81
/* 0806799c */ .word 0x322e4081
/* 080679a0 */ .word 0xcf82303a
/* 080679a4 */ .word 0x313a322e
/* 080679a8 */ .word 0x0000f182
/* 080679ac */ .word 0x303a302e
/* 080679b0 */ .word 0x81834183
/* 080679b4 */ .word 0x4081aa82
/* 080679b8 */ .word 0xaa82a082
/* 080679bc */ .word 0xce82ea82
/* 080679c0 */ .word 0x00006081
/* 080679c4 */ .word 0x303a302e
/* 080679c8 */ .word 0xae82e282
/* 080679cc */ .word 0xc982e782
/* 080679d0 */ .word 0xa0824081
/* 080679d4 */ .word 0xe982aa82
/* 080679d8 */ .word 0x00006081
/* 080679dc */ .word 0x303a302e
/* 080679e0 */ .word 0xe782d982
/* 080679e4 */ .word 0x40814981
/* 080679e8 */ .word 0xc282dc82
/* 080679ec */ .word 0xbe82e882
/* 080679f0 */ .word 0xed824081
/* 080679f4 */ .word 0xb582c182
/* 080679f8 */ .word 0xa282e582
/* 080679fc */ .word 0x00004981
/* 08067a00 */ .word 0x303a302e
/* 08067a04 */ .word 0xea82b182
/* 08067a08 */ .word 0x0000bc82
/* 08067a0c */ .word 0x303a302e
/* 08067a10 */ .word 0x43838183
/* 08067a14 */ .word 0x40816883
/* 08067a18 */ .word 0x93834383
/* 08067a1c */ .word 0x57834081
/* 08067a20 */ .word 0x322e8383
/* 08067a24 */ .word 0x313a7083
/* 08067a28 */ .word 0x00009383
/* 08067a2c */ .word 0x303a322e
/* 08067a30 */ .word 0x322ecf82
/* 08067a34 */ .word 0xf182313a
/* 08067a38 */ .word 0x322e4081
/* 08067a3c */ .word 0xcf82303a
/* 08067a40 */ .word 0x313a322e
/* 08067a44 */ .word 0x0000f182
/* 08067a48 */ .word 0x303a312e
/* 08067a4c */ .word 0x313ac782
/* 08067a50 */ .word 0xf1825b81
/* 08067a54 */ .word 0x312e4081
/* 08067a58 */ .word 0xc782303a
/* 08067a5c */ .word 0x5b81313a
/* 08067a60 */ .word 0x4081f182
/* 08067a64 */ .word 0x303a322e
/* 08067a68 */ .word 0x322ecf82
/* 08067a6c */ .word 0x5b81313a
/* 08067a70 */ .word 0x4081f182
/* 08067a74 */ .word 0x303a322e
/* 08067a78 */ .word 0x322ecf82
/* 08067a7c */ .word 0xf182313a
/* 08067a80 */ .word 0x00000000
/* 08067a84 */ .word 0x313a362e
/* 08067a88 */ .word 0xf182da82
/* 08067a8c */ .word 0xc782a882
/* 08067a90 */ .word 0x4081e882
/* 08067a94 */ .word 0xdc82b582
/* 08067a98 */ .word 0xe582b582
/* 08067a9c */ .word 0x4981a482
/* 08067aa0 */ .word 0x00000000
/* 08067aa4 */ .word 0x313a362e
/* 08067aa8 */ .word 0xf182dd82
/* 08067aac */ .word 0xcc82c882
/* 08067ab0 */ .word 0xc4824081
/* 08067ab4 */ .word 0xe582d182
/* 08067ab8 */ .word 0xb582a482
/* 08067abc */ .word 0x4081f082
/* 08067ac0 */ .word 0xcb82dc82
/* 08067ac4 */ .word 0xc482b582
/* 08067ac8 */ .word 0x42816c83
/* 08067acc */ .word 0x00000000
/* 08067ad0 */ .word 0x303a362e
/* 08067ad4 */ .word 0x6a826e82
/* 08067ad8 */ .word 0x00004981
/* 08067adc */ .word 0x313a362e
/* 08067ae0 */ .word 0x6081e082
/* 08067ae4 */ .word 0xc182a282
/* 08067ae8 */ .word 0xe582bf82
/* 08067aec */ .word 0xa2824081
/* 08067af0 */ .word 0xc482c182
/* 08067af4 */ .word 0xe682dd82
/* 08067af8 */ .word 0x4981a482
/* 08067afc */ .word 0x00000000
/* 08067b00 */ .word 0x313a362e
/* 08067b04 */ .word 0xcd82c582
/* 08067b08 */ .word 0x40814181
/* 08067b0c */ .word 0xf182d982
/* 08067b10 */ .word 0xf182ce82
/* 08067b14 */ .word 0xaa824081
/* 08067b18 */ .word 0xce82f182
/* 08067b1c */ .word 0xc482c182
/* 08067b20 */ .word 0x49816c83
/* 08067b24 */ .word 0x00000000
/* 08067b28 */ .word 0x50834383
/* 08067b2c */ .word 0xc882c482
/* 08067b30 */ .word 0x4281a282
/* 08067b34 */ .word 0x00000000
/* 08067b38 */ .word 0x50834383
/* 08067b3c */ .word 0xe982c482
/* 08067b40 */ .word 0x40814981
/* 08067b44 */ .word 0x50834383
/* 08067b48 */ .word 0xe982c482
/* 08067b4c */ .word 0x00004981
/* 08067b50 */ .word 0x73835883
/* 08067b54 */ .word 0x68835b81
/* 08067b58 */ .word 0x4081aa82
/* 08067b5c */ .word 0xe882ab91
/* 08067b60 */ .word 0xa282c882
/* 08067b64 */ .word 0x42816983
/* 08067b68 */ .word 0x00000000
/* 08067b6c */ .word 0xa282a282
/* 08067b70 */ .word 0x73835883
/* 08067b74 */ .word 0x68835b81
/* 08067b78 */ .word 0x5b83be82
/* 08067b7c */ .word 0x00004981
/* 08067b80 */ .word 0x4e836583
/* 08067b84 */ .word 0xab917395
/* 08067b88 */ .word 0x6983be82
/* 08067b8c */ .word 0x00004281
/* 08067b90 */ .word 0x4e836583
/* 08067b94 */ .word 0x4081aa82
/* 08067b98 */ .word 0xe982a082
/* 08067b9c */ .word 0x00004981
/* 08067ba0 */ .word 0x60827282
/* 08067ba4 */ .word 0x74826b82
/* 08067ba8 */ .word 0xe782a982
/* 08067bac */ .word 0xd0824081
/* 08067bb0 */ .word 0xb182c682
/* 08067bb4 */ .word 0x0000c682
/* 08067bb8 */ .word 0xa282c282
/* 08067bbc */ .word 0xab82c482
/* 08067bc0 */ .word 0x00006983
/* 08067bc4 */ .word 0x7d834383
/* 08067bc8 */ .word 0x60834383
/* 08067bcc */ .word 0xc182be82
/* 08067bd0 */ .word 0xcb82bd82
/* 08067bd4 */ .word 0x6381a582
/* 08067bd8 */ .word 0x00000000
/* 08067bdc */ .word 0xa282be82
/* 08067be0 */ .word 0x4081d482
/* 08067be4 */ .word 0xa982e682
/* 08067be8 */ .word 0xbd82c182
/* 08067bec */ .word 0x49818883
/* 08067bf0 */ .word 0x00000000
/* 08067bf4 */ .word 0xc182e482
/* 08067bf8 */ .word 0xe882bd82
/* 08067bfc */ .word 0xe982b782
/* 08067c00 */ .word 0xb182c682
/* 08067c04 */ .word 0xaa82eb82
/* 08067c08 */ .word 0xc8824081
/* 08067c0c */ .word 0xbe82f182
/* 08067c10 */ .word 0xc882a982
/* 08067c14 */ .word 0x63814083
/* 08067c18 */ .word 0x00000000
/* 08067c1c */ .word 0xc182e482
/* 08067c20 */ .word 0xe882bd82
/* 08067c24 */ .word 0xe982b782
/* 08067c28 */ .word 0xb182c682
/* 08067c2c */ .word 0xaa82eb82
/* 08067c30 */ .word 0xe6824081
/* 08067c34 */ .word 0xc182a982
/* 08067c38 */ .word 0x8883bd82
/* 08067c3c */ .word 0x00004981
/* 08067c40 */ .word 0x00000000
/* 08067c44 */ .word 0xf182a082
/* 08067c48 */ .word 0x6783c882
/* 08067c4c */ .word 0x40815283
/* 08067c50 */ .word 0xad82e682
/* 08067c54 */ .word 0x4c834081
/* 08067c58 */ .word 0xbd828183
/* 08067c5c */ .word 0x60816c83
/* 08067c60 */ .word 0x40814981
/* 08067c64 */ .word 0xb282b782
/* 08067c68 */ .word 0x8883a282
/* 08067c6c */ .word 0x49815b81
/* 08067c70 */ .word 0x00004981
/* 08067c74 */ .word 0xa982c882
/* 08067c78 */ .word 0xcc82dc82
/* 08067c7c */ .word 0x0000ba90
/* 08067c80 */ .word 0xc5827581
/* 08067c84 */ .word 0xa982b782
/* 08067c88 */ .word 0x76814881
/* 08067c8c */ .word 0x4081cc82
/* 08067c90 */ .word 0x8a836d83
/* 08067c94 */ .word 0x4081aa82
/* 08067c98 */ .word 0xa982a082
/* 08067c9c */ .word 0x4281f182
/* 08067ca0 */ .word 0x00000000
/* 08067ca4 */ .word 0xc5827581
/* 08067ca8 */ .word 0xa982b782
/* 08067cac */ .word 0x76814881
/* 08067cb0 */ .word 0x4081cc82
/* 08067cb4 */ .word 0x8a836d83
/* 08067cb8 */ .word 0x4081aa82
/* 08067cbc */ .word 0x62836f83
/* 08067cc0 */ .word 0x8a836083
/* 08067cc4 */ .word 0x4981e282
/* 08067cc8 */ .word 0x00000000
/* 08067ccc */ .word 0xa9827581
/* 08067cd0 */ .word 0x6c83e082
/* 08067cd4 */ .word 0xcc827681
/* 08067cd8 */ .word 0x6d834081
/* 08067cdc */ .word 0xaa828a83
/* 08067ce0 */ .word 0x4c834081
/* 08067ce4 */ .word 0x56837283
/* 08067ce8 */ .word 0x62835b81
/* 08067cec */ .word 0x42815883
/* 08067cf0 */ .word 0x00000000
/* 08067cf4 */ .word 0xa9827581
/* 08067cf8 */ .word 0x6c83e082
/* 08067cfc */ .word 0xcc827681
/* 08067d00 */ .word 0x6d834081
/* 08067d04 */ .word 0xc9828a83
/* 08067d08 */ .word 0x56834081
/* 08067d0c */ .word 0xea827283
/* 08067d10 */ .word 0xc582bd82
/* 08067d14 */ .word 0x00004981
/* 08067d18 */ .word 0x54837581
/* 08067d1c */ .word 0x52834383
/* 08067d20 */ .word 0x49815b81
/* 08067d24 */ .word 0xcc827681
/* 08067d28 */ .word 0x6d834081
/* 08067d2c */ .word 0xaa828a83
/* 08067d30 */ .word 0x54834081
/* 08067d34 */ .word 0x52834383
/* 08067d38 */ .word 0xbf825b81
/* 08067d3c */ .word 0xa482e182
/* 08067d40 */ .word 0x00004281
/* 08067d44 */ .word 0x54837581
/* 08067d48 */ .word 0x52834383
/* 08067d4c */ .word 0x49815b81
/* 08067d50 */ .word 0xcc827681
/* 08067d54 */ .word 0x6d834081
/* 08067d58 */ .word 0xaa828a83
/* 08067d5c */ .word 0x54834081
/* 08067d60 */ .word 0x52834383
/* 08067d64 */ .word 0xe2825b81
/* 08067d68 */ .word 0x4981f182
/* 08067d6c */ .word 0x00000000
/* 08067d70 */ .word 0x6d834183
/* 08067d74 */ .word 0xe7825283
/* 08067d78 */ .word 0x5283cc82
/* 08067d7c */ .word 0x93838183
/* 08067d80 */ .word 0x00006783
/* 08067d84 */ .word 0xb182a282
/* 08067d88 */ .word 0xa982c182
/* 08067d8c */ .word 0x00000000
/* 08067d90 */ .word 0xbd82dc82
/* 08067d94 */ .word 0xeb82e282
/* 08067d98 */ .word 0x6081c882
/* 08067d9c */ .word 0x00000000
/* 08067da0 */ .word 0x60817581
/* 08067da4 */ .word 0xb782c582
/* 08067da8 */ .word 0x4881a982
/* 08067dac */ .word 0xcc827681
/* 08067db0 */ .word 0x6d834081
/* 08067db4 */ .word 0xaa828a83
/* 08067db8 */ .word 0xa0824081
/* 08067dbc */ .word 0xf182a982
/* 08067dc0 */ .word 0x00004281
/* 08067dc4 */ .word 0x60817581
/* 08067dc8 */ .word 0xb782c582
/* 08067dcc */ .word 0x4881a982
/* 08067dd0 */ .word 0xcc827681
/* 08067dd4 */ .word 0x6d834081
/* 08067dd8 */ .word 0xaa828a83
/* 08067ddc */ .word 0x6f834081
/* 08067de0 */ .word 0x60836283
/* 08067de4 */ .word 0xe2828a83
/* 08067de8 */ .word 0x00004981
/* 08067dec */ .word 0x60817581
/* 08067df0 */ .word 0xe082a982
/* 08067df4 */ .word 0x76816c83
/* 08067df8 */ .word 0x4081cc82
/* 08067dfc */ .word 0x8a836d83
/* 08067e00 */ .word 0x4081aa82
/* 08067e04 */ .word 0x72834c83
/* 08067e08 */ .word 0x5b815683
/* 08067e0c */ .word 0x58836283
/* 08067e10 */ .word 0x00004281
/* 08067e14 */ .word 0x60817581
/* 08067e18 */ .word 0xe082a982
/* 08067e1c */ .word 0x76816c83
/* 08067e20 */ .word 0x4081cc82
/* 08067e24 */ .word 0x8a836d83
/* 08067e28 */ .word 0x4081c982
/* 08067e2c */ .word 0x72835683
/* 08067e30 */ .word 0xbd82ea82
/* 08067e34 */ .word 0x4981c582
/* 08067e38 */ .word 0x00000000
/* 08067e3c */ .word 0x60817581
/* 08067e40 */ .word 0x43835483
/* 08067e44 */ .word 0x5b815283
/* 08067e48 */ .word 0x76814981
/* 08067e4c */ .word 0x4081cc82
/* 08067e50 */ .word 0x8a836d83
/* 08067e54 */ .word 0x4081aa82
/* 08067e58 */ .word 0x43835483
/* 08067e5c */ .word 0x5b815283
/* 08067e60 */ .word 0xe182bf82
/* 08067e64 */ .word 0x4281a482
/* 08067e68 */ .word 0x00000000
/* 08067e6c */ .word 0x60817581
/* 08067e70 */ .word 0x43835483
/* 08067e74 */ .word 0x5b815283
/* 08067e78 */ .word 0x76814981
/* 08067e7c */ .word 0x4081cc82
/* 08067e80 */ .word 0x8a836d83
/* 08067e84 */ .word 0x4081aa82
/* 08067e88 */ .word 0x43835483
/* 08067e8c */ .word 0x5b815283
/* 08067e90 */ .word 0xf182e282
/* 08067e94 */ .word 0x00004981
/* 08067e98 */ .word 0x6d834183
/* 08067e9c */ .word 0xe7825283
/* 08067ea0 */ .word 0x4081cc82
/* 08067ea4 */ .word 0x81835283
/* 08067ea8 */ .word 0x67839383
/* 08067eac */ .word 0x00000000
/* 08067eb0 */ .word 0xb182a282
/* 08067eb4 */ .word 0xa982c182
/* 08067eb8 */ .word 0x00000000
/* 08067ebc */ .word 0xbd82dc82
/* 08067ec0 */ .word 0xeb82e282
/* 08067ec4 */ .word 0x6081c882
/* 08067ec8 */ .word 0x00000000
/* 08067ecc */ .word 0xbe82dc82
/* 08067ed0 */ .word 0xbe82dc82
/* 08067ed4 */ .word 0xb782c582
/* 08067ed8 */ .word 0x00004281
/* 08067edc */ .word 0xc882a982
/* 08067ee0 */ .word 0x4181e882
/* 08067ee4 */ .word 0x54834081
/* 08067ee8 */ .word 0x52834383
/* 08067eec */ .word 0xc5825b81
/* 08067ef0 */ .word 0xb7825b81
/* 08067ef4 */ .word 0x00004981
/* 08067ef8 */ .word 0xf182cd82
/* 08067efc */ .word 0xf182be82
/* 08067f00 */ .word 0xe8824081
/* 08067f04 */ .word 0xad82e582
/* 08067f08 */ .word 0x4081aa82
/* 08067f0c */ .word 0xaf82a982
/* 08067f10 */ .word 0xdc82c482
/* 08067f14 */ .word 0x4281b782
/* 08067f18 */ .word 0x00000000
/* 08067f1c */ .word 0xce82b782
/* 08067f20 */ .word 0xb582e782
/* 08067f24 */ .word 0x4081a282
/* 08067f28 */ .word 0xf182cd82
/* 08067f2c */ .word 0xf182be82
/* 08067f30 */ .word 0xe8824081
/* 08067f34 */ .word 0xad82e582
/* 08067f38 */ .word 0x4981be82
/* 08067f3c */ .word 0x00000000
/* 08067f40 */ .word 0xc182e082
/* 08067f44 */ .word 0x4081c682
/* 08067f48 */ .word 0x66834583
/* 08067f4c */ .word 0x4081f082
/* 08067f50 */ .word 0xaa82dd82
/* 08067f54 */ .word 0xa482b182
/* 08067f58 */ .word 0x00004281
/* 08067f5c */ .word 0xc482c682
/* 08067f60 */ .word 0x4081e082
/* 08067f64 */ .word 0x4e836583
/* 08067f68 */ .word 0x4a836a83
/* 08067f6c */ .word 0xbe828b83
/* 08067f70 */ .word 0x00004981
/* 08067f74 */ .word 0xbc82c882
/* 08067f78 */ .word 0x8a83cc82
/* 08067f7c */ .word 0x80835983
/* 08067f80 */ .word 0x44906791
/* 08067f84 */ .word 0xe782a982
/* 08067f88 */ .word 0x4292ca92
/* 08067f8c */ .word 0x00000000
/* 08067f90 */ .word 0x303a312e
/* 08067f94 */ .word 0x313ac782
/* 08067f98 */ .word 0xf1825b81
/* 08067f9c */ .word 0x312e4081
/* 08067fa0 */ .word 0xc782303a
/* 08067fa4 */ .word 0x5b81313a
/* 08067fa8 */ .word 0x4081f182
/* 08067fac */ .word 0x303a322e
/* 08067fb0 */ .word 0x322ecf82
/* 08067fb4 */ .word 0x5b81313a
/* 08067fb8 */ .word 0x4081f182
/* 08067fbc */ .word 0x303a322e
/* 08067fc0 */ .word 0x322ecf82
/* 08067fc4 */ .word 0xf182313a
/* 08067fc8 */ .word 0x00000000
/* 08067fcc */ .word 0x303a312e
/* 08067fd0 */ .word 0x313ac782
/* 08067fd4 */ .word 0xc782f182
/* 08067fd8 */ .word 0x322e4081
/* 08067fdc */ .word 0xcf82303a
/* 08067fe0 */ .word 0x313a322e
/* 08067fe4 */ .word 0xf1825b81
/* 08067fe8 */ .word 0x322e4081
/* 08067fec */ .word 0xcf82303a
/* 08067ff0 */ .word 0x313a322e
/* 08067ff4 */ .word 0x0000f182
/* 08067ff8 */ .word 0xa282b182
/* 08067ffc */ .word 0xb5824081
/* 08068000 */ .word 0xe982c482
/* 08068004 */ .word 0x00004881
/* 08068008 */ .word 0x5a834183
/* 0806800c */ .word 0x5b81e982
/* 08068010 */ .word 0x49814981
/* 08068014 */ .word 0x00000000
/* 08068018 */ .word 0xf182aa82
/* 0806801c */ .word 0xc182ce82
/* 08068020 */ .word 0x6081c482
/* 08068024 */ .word 0x00004981
/* 08068028 */ .word 0x00000000
/* 0806802c */ .word 0xbe82dc82
/* 08068030 */ .word 0xbe82dc82
/* 08068034 */ .word 0xb782c582
/* 08068038 */ .word 0x00004281
/* 0806803c */ .word 0xc882a982
/* 08068040 */ .word 0x4181e882
/* 08068044 */ .word 0x54834081
/* 08068048 */ .word 0x52834383
/* 0806804c */ .word 0xc5825b81
/* 08068050 */ .word 0xb7825b81
/* 08068054 */ .word 0x00004981
/* 08068058 */ .word 0xf182cd82
/* 0806805c */ .word 0xf182be82
/* 08068060 */ .word 0xe8824081
/* 08068064 */ .word 0xad82e582
/* 08068068 */ .word 0x4081aa82
/* 0806806c */ .word 0xaf82a982
/* 08068070 */ .word 0xdc82c482
/* 08068074 */ .word 0x4281b782
/* 08068078 */ .word 0x00000000
/* 0806807c */ .word 0xce82b782
/* 08068080 */ .word 0xb582e782
/* 08068084 */ .word 0x4081a282
/* 08068088 */ .word 0xf182cd82
/* 0806808c */ .word 0xf182be82
/* 08068090 */ .word 0xe8824081
/* 08068094 */ .word 0xad82e582
/* 08068098 */ .word 0x4981be82
/* 0806809c */ .word 0x00000000
/* 080680a0 */ .word 0xc182e082
/* 080680a4 */ .word 0x4081c682
/* 080680a8 */ .word 0x66834583
/* 080680ac */ .word 0x4081f082
/* 080680b0 */ .word 0xaa82dd82
/* 080680b4 */ .word 0xa482b182
/* 080680b8 */ .word 0x00004281
/* 080680bc */ .word 0xc482c682
/* 080680c0 */ .word 0x4081e082
/* 080680c4 */ .word 0x4e836583
/* 080680c8 */ .word 0x4a836a83
/* 080680cc */ .word 0xbe828b83
/* 080680d0 */ .word 0x00004981
/* 080680d4 */ .word 0xbc82c882
/* 080680d8 */ .word 0x8a83cc82
/* 080680dc */ .word 0x80835983
/* 080680e0 */ .word 0x44906791
/* 080680e4 */ .word 0xe782a982
/* 080680e8 */ .word 0x4292ca92
/* 080680ec */ .word 0x00000000
/* 080680f0 */ .word 0x82a2820a
/* 080680f4 */ .word 0x82dc82ab
/* 080680f8 */ .word 0x004981b7
/* 080680fc */ .word 0x82c7820a
/* 08068100 */ .word 0x81bc82a4
/* 08068104 */ .word 0x00000042
/* 08068108 */ .word 0x82bb820a
/* 0806810c */ .word 0x82dc82b1
/* 08068110 */ .word 0x814981c5
/* 08068114 */ .word 0x00000049
/* 08068118 */ .word 0x8355830a
/* 0806811c */ .word 0x836c8393
/* 08068120 */ .word 0x81498193
/* 08068124 */ .word 0x00000049
/* 08068128 */ .word 0x82a8820a
/* 0806812c */ .word 0x82b282dd
/* 08068130 */ .word 0x814981c6
/* 08068134 */ .word 0x00000049
/* 08068138 */ .word 0xc182e482
/* 0806813c */ .word 0xe882ad82
/* 08068140 */ .word 0xb5824081
/* 08068144 */ .word 0xa982e682
/* 08068148 */ .word 0x00000000
/* 0806814c */ .word 0x82b3820a
/* 08068150 */ .word 0x82b282a2
/* 08068154 */ .word 0x81b782c5
/* 08068158 */ .word 0x00000042
/* 0806815c */ .word 0x82b3820a
/* 08068160 */ .word 0x204181c4
/* 08068164 */ .word 0xf089b390
/* 08068168 */ .word 0x4881cd82
/* 0806816c */ .word 0x00000000
/* 08068170 */ .word 0xbd82dc82
/* 08068174 */ .word 0xa482b282
/* 08068178 */ .word 0x00004981
/* 0806817c */ .word 0xa482bb82
/* 08068180 */ .word 0xb782c582
/* 08068184 */ .word 0x00004281
/* 08068188 */ .word 0xa482bb82
/* 0806818c */ .word 0xa482bb82
/* 08068190 */ .word 0x00004981
/* 08068194 */ .word 0xa282a282
/* 08068198 */ .word 0x6081cb82
/* 0806819c */ .word 0x00004981
/* 080681a0 */ .word 0xa282e682
/* 080681a4 */ .word 0x49818883
/* 080681a8 */ .word 0x00000000
/* 080681ac */ .word 0xd182b582
/* 080681b0 */ .word 0xbf82ea82
/* 080681b4 */ .word 0xa482e182
/* 080681b8 */ .word 0x00004981
/* 080681bc */ .word 0xe182ac82
/* 080681c0 */ .word 0xf182d382
/* 080681c4 */ .word 0x00004981
/* 080681c8 */ .word 0x53835883
/* 080681cc */ .word 0x62834383
/* 080681d0 */ .word 0x5b815883
/* 080681d4 */ .word 0x00004981
/* 080681d8 */ .word 0xc182a482
/* 080681dc */ .word 0x5b81bb82
/* 080681e0 */ .word 0x4981f182
/* 080681e4 */ .word 0x00004881
/* 080681e8 */ .word 0x6c90b492
/* 080681ec */ .word 0x00004981
/* 080681f0 */ .word 0xce82e282
/* 080681f4 */ .word 0xa2825b81
/* 080681f8 */ .word 0x00004981
/* 080681fc */ .word 0xea82e082
/* 08068200 */ .word 0x5b81e982
/* 08068204 */ .word 0x49814981
/* 08068208 */ .word 0x00000000
/* 0806820c */ .word 0xa282dc82
/* 08068210 */ .word 0xbd82c182
/* 08068214 */ .word 0x49814981
/* 08068218 */ .word 0x00000000
/* 0806821c */ .word 0x71834583
/* 08068220 */ .word 0x5b818783
/* 08068224 */ .word 0x49814981
/* 08068228 */ .word 0x00000000
/* 0806822c */ .word 0xe48fe591
/* 08068230 */ .word 0x49817695
/* 08068234 */ .word 0x00004881
/* 08068238 */ .word 0xf182c882
/* 0806823c */ .word 0xb182c482
/* 08068240 */ .word 0xbd82c182
/* 08068244 */ .word 0x49814981
/* 08068248 */ .word 0x00000000
/* 0806824c */ .word 0xf182c882
/* 08068250 */ .word 0xa982be82
/* 08068254 */ .word 0x90974081
/* 08068258 */ .word 0xc482ea82
/* 0806825c */ .word 0xc882bd82
/* 08068260 */ .word 0x42819f82
/* 08068264 */ .word 0x00000000
/* 08068268 */ .word 0xaa82a791
/* 0806826c */ .word 0xa0824081
/* 08068270 */ .word 0xc482c182
/* 08068274 */ .word 0x6c83bd82
/* 08068278 */ .word 0x00004981
/* 0806827c */ .word 0xe582bf82
/* 08068280 */ .word 0xc682c182
/* 08068284 */ .word 0xa0824081
/* 08068288 */ .word 0xc482ed82
/* 0806828c */ .word 0xbd82c482
/* 08068290 */ .word 0x9f82c882
/* 08068294 */ .word 0x00004281
/* 08068298 */ .word 0xa282e682
/* 0806829c */ .word 0x6692bb94
/* 080682a0 */ .word 0xb582f082
/* 080682a4 */ .word 0xe982c482
/* 080682a8 */ .word 0x49816c83
/* 080682ac */ .word 0x00000000
/* 080682b0 */ .word 0x72835483
/* 080682b4 */ .word 0xe88ecc82
/* 080682b8 */ .word 0xaa824f91
/* 080682bc */ .word 0x4b834081
/* 080682c0 */ .word 0x4b835e83
/* 080682c4 */ .word 0xbe825e83
/* 080682c8 */ .word 0xbd82c182
/* 080682cc */ .word 0x9f82c882
/* 080682d0 */ .word 0x00004281
/* 080682d4 */ .word 0x72835483
/* 080682d8 */ .word 0xe88ecc82
/* 080682dc */ .word 0xaa824f91
/* 080682e0 */ .word 0x4c834081
/* 080682e4 */ .word 0xc1827d83
/* 080682e8 */ .word 0xbd82c482
/* 080682ec */ .word 0x49816c83
/* 080682f0 */ .word 0x00000000
/* 080682f4 */ .word 0x79835883
/* 080682f8 */ .word 0x58835b81
/* 080682fc */ .word 0xcb82a882
/* 08068300 */ .word 0xb382a682
/* 08068304 */ .word 0xcc82f182
/* 08068308 */ .word 0xa98cd388
/* 0806830c */ .word 0x00000000
/* 08068310 */ .word 0x62838c83
/* 08068314 */ .word 0x53836383
/* 08068318 */ .word 0x49815b81
/* 0806831c */ .word 0x00000000
/* 08068320 */ .word 0x08a59c58
/* 08068324 */ .word 0x00000000
/* 08068328 */ .word 0x00000003
/* 0806832c */ .word 0x08017381
/* 08068330 */ .word 0x000000c0
/* 08068334 */ .word 0x00000604
/* 08068338 */ .word 0x0801738d
/* 0806833c */ .word 0x089e5ec0
/* 08068340 */ .word 0x00000000
/* 08068344 */ .word 0x00000000
/* 08068348 */ .word 0x000000c0
/* 0806834c */ .word 0x0000000e
/* 08068350 */ .word 0x00000000
/* 08068354 */ .word 0x00000000
/* 08068358 */ .word 0x00000000
/* 0806835c */ .word 0x00000000
/* 08068360 */ .word 0x00000018
/* 08068364 */ .word 0x00000000
/* 08068368 */ .word 0x00000000
/* 0806836c */ .word 0x00000018
/* 08068370 */ .word 0x00000003
/* 08068374 */ .word 0x08017381
/* 08068378 */ .word 0x00000000
/* 0806837c */ .word 0x00000204
/* 08068380 */ .word 0x0801738d
/* 08068384 */ .word 0x089e5ec0
/* 08068388 */ .word 0x00000000
/* 0806838c */ .word 0x00000000
/* 08068390 */ .word 0x0000000c
/* 08068394 */ .word 0x00000000
/* 08068398 */ .word 0x00000000
/* 0806839c */ .word 0x00000006
/* 080683a0 */ .word 0x00000003
/* 080683a4 */ .word 0x08017381
/* 080683a8 */ .word 0x00000001
/* 080683ac */ .word 0x00000204
/* 080683b0 */ .word 0x0801738d
/* 080683b4 */ .word 0x089e5ec0
/* 080683b8 */ .word 0x00000000
/* 080683bc */ .word 0x00000000
/* 080683c0 */ .word 0x00000006
/* 080683c4 */ .word 0x00000003
/* 080683c8 */ .word 0x08017381
/* 080683cc */ .word 0x00000000
/* 080683d0 */ .word 0x00000204
/* 080683d4 */ .word 0x0801738d
/* 080683d8 */ .word 0x089e5ec0
/* 080683dc */ .word 0x00000000
/* 080683e0 */ .word 0x00000000
/* 080683e4 */ .word 0x0000000c
/* 080683e8 */ .word 0x00000003
/* 080683ec */ .word 0x08017381
/* 080683f0 */ .word 0x00000000
/* 080683f4 */ .word 0x00000204
/* 080683f8 */ .word 0x0801738d
/* 080683fc */ .word 0x089e5ec0
/* 08068400 */ .word 0x00000000
/* 08068404 */ .word 0x00000000
/* 08068408 */ .word 0x00000006
/* 0806840c */ .word 0x00000003
/* 08068410 */ .word 0x08017381
/* 08068414 */ .word 0x00000001
/* 08068418 */ .word 0x00000204
/* 0806841c */ .word 0x0801738d
/* 08068420 */ .word 0x089e5ec0
/* 08068424 */ .word 0x00000000
/* 08068428 */ .word 0x00000000
/* 0806842c */ .word 0x00000006
/* 08068430 */ .word 0x00000003
/* 08068434 */ .word 0x08001981
/* 08068438 */ .word 0x00000003
/* 0806843c */ .word 0x0000001a
/* 08068440 */ .word 0x00000000
/* 08068444 */ .word 0x030053e4
/* 08068448 */ .word 0x0000001c
/* 0806844c */ .word 0x00000000
/* 08068450 */ .word 0x00000000
/* 08068454 */ .word 0x00000003
/* 08068458 */ .word 0x08017381
/* 0806845c */ .word 0x00000000
/* 08068460 */ .word 0x00000204
/* 08068464 */ .word 0x0801738d
/* 08068468 */ .word 0x089e5ec0
/* 0806846c */ .word 0x00000000
/* 08068470 */ .word 0x00000000
/* 08068474 */ .word 0x00000008
/* 08068478 */ .word 0x00000003
/* 0806847c */ .word 0x08017381
/* 08068480 */ .word 0x00000000
/* 08068484 */ .word 0x00000204
/* 08068488 */ .word 0x0801738d
/* 0806848c */ .word 0x089e5ec0
/* 08068490 */ .word 0x00000000
/* 08068494 */ .word 0x00000000
/* 08068498 */ .word 0x00000008
/* 0806849c */ .word 0x00000003
/* 080684a0 */ .word 0x08017381
/* 080684a4 */ .word 0x00000000
/* 080684a8 */ .word 0x00000204
/* 080684ac */ .word 0x0801738d
/* 080684b0 */ .word 0x089e5ec0
/* 080684b4 */ .word 0x00000000
/* 080684b8 */ .word 0x00000000
/* 080684bc */ .word 0x00000008
/* 080684c0 */ .word 0x0000001d
/* 080684c4 */ .word 0x00000000
/* 080684c8 */ .word 0x00000000
/* 080684cc */ .word 0x0000001c
/* 080684d0 */ .word 0x00000000
/* 080684d4 */ .word 0x00000001
/* 080684d8 */ .word 0x00000003
/* 080684dc */ .word 0x08017381
/* 080684e0 */ .word 0x00000000
/* 080684e4 */ .word 0x00000204
/* 080684e8 */ .word 0x0801738d
/* 080684ec */ .word 0x089e5ec0
/* 080684f0 */ .word 0x00000000
/* 080684f4 */ .word 0x00000000
/* 080684f8 */ .word 0x00000006
/* 080684fc */ .word 0x00000000
/* 08068500 */ .word 0x00000000
/* 08068504 */ .word 0x00000006
/* 08068508 */ .word 0x00000000
/* 0806850c */ .word 0x00000000
/* 08068510 */ .word 0x00000006
/* 08068514 */ .word 0x00000003
/* 08068518 */ .word 0x08017381
/* 0806851c */ .word 0x00000001
/* 08068520 */ .word 0x00000204
/* 08068524 */ .word 0x0801738d
/* 08068528 */ .word 0x089e5ec0
/* 0806852c */ .word 0x00000000
/* 08068530 */ .word 0x00000000
/* 08068534 */ .word 0x00000006
/* 08068538 */ .word 0x0000001d
/* 0806853c */ .word 0x00000000
/* 08068540 */ .word 0x00000000
/* 08068544 */ .word 0x0000001c
/* 08068548 */ .word 0x00000000
/* 0806854c */ .word 0x00000002
/* 08068550 */ .word 0x00000003
/* 08068554 */ .word 0x08017381
/* 08068558 */ .word 0x00000000
/* 0806855c */ .word 0x00000204
/* 08068560 */ .word 0x0801738d
/* 08068564 */ .word 0x089e5ec0
/* 08068568 */ .word 0x00000000
/* 0806856c */ .word 0x00000000
/* 08068570 */ .word 0x00000006
/* 08068574 */ .word 0x00000003
/* 08068578 */ .word 0x08017381
/* 0806857c */ .word 0x00000001
/* 08068580 */ .word 0x00000204
/* 08068584 */ .word 0x0801738d
/* 08068588 */ .word 0x089e5ec0
/* 0806858c */ .word 0x00000000
/* 08068590 */ .word 0x00000000
/* 08068594 */ .word 0x00000006
/* 08068598 */ .word 0x00000000
/* 0806859c */ .word 0x00000000
/* 080685a0 */ .word 0x00000006
/* 080685a4 */ .word 0x00000003
/* 080685a8 */ .word 0x08017381
/* 080685ac */ .word 0x00000001
/* 080685b0 */ .word 0x00000204
/* 080685b4 */ .word 0x0801738d
/* 080685b8 */ .word 0x089e5ec0
/* 080685bc */ .word 0x00000000
/* 080685c0 */ .word 0x00000000
/* 080685c4 */ .word 0x00000006
/* 080685c8 */ .word 0x0000001d
/* 080685cc */ .word 0x00000000
/* 080685d0 */ .word 0x00000000
/* 080685d4 */ .word 0x0000001b
/* 080685d8 */ .word 0x00000000
/* 080685dc */ .word 0x00000000
/* 080685e0 */ .word 0x00000003
/* 080685e4 */ .word 0x08001981
/* 080685e8 */ .word 0x00000003
/* 080685ec */ .word 0x0000001a
/* 080685f0 */ .word 0x00000000
/* 080685f4 */ .word 0x030053e4
/* 080685f8 */ .word 0x0000001c
/* 080685fc */ .word 0x00000000
/* 08068600 */ .word 0x00000000
/* 08068604 */ .word 0x00000003
/* 08068608 */ .word 0x08017381
/* 0806860c */ .word 0x00000000
/* 08068610 */ .word 0x00000204
/* 08068614 */ .word 0x0801738d
/* 08068618 */ .word 0x089e5ec0
/* 0806861c */ .word 0x00000000
/* 08068620 */ .word 0x00000000
/* 08068624 */ .word 0x0000000c
/* 08068628 */ .word 0x00000000
/* 0806862c */ .word 0x00000000
/* 08068630 */ .word 0x00000006
/* 08068634 */ .word 0x00000003
/* 08068638 */ .word 0x08017381
/* 0806863c */ .word 0x00000000
/* 08068640 */ .word 0x00000204
/* 08068644 */ .word 0x0801738d
/* 08068648 */ .word 0x089e5ec0
/* 0806864c */ .word 0x00000000
/* 08068650 */ .word 0x00000000
/* 08068654 */ .word 0x0000000c
/* 08068658 */ .word 0x00000000
/* 0806865c */ .word 0x00000000
/* 08068660 */ .word 0x00000006
/* 08068664 */ .word 0x00000003
/* 08068668 */ .word 0x08017381
/* 0806866c */ .word 0x00000000
/* 08068670 */ .word 0x00000204
/* 08068674 */ .word 0x0801738d
/* 08068678 */ .word 0x089e5ec0
/* 0806867c */ .word 0x00000000
/* 08068680 */ .word 0x00000000
/* 08068684 */ .word 0x0000000c
/* 08068688 */ .word 0x00000000
/* 0806868c */ .word 0x00000000
/* 08068690 */ .word 0x00000006
/* 08068694 */ .word 0x0000001d
/* 08068698 */ .word 0x00000000
/* 0806869c */ .word 0x00000000
/* 080686a0 */ .word 0x0000001c
/* 080686a4 */ .word 0x00000000
/* 080686a8 */ .word 0x00000001
/* 080686ac */ .word 0x00000003
/* 080686b0 */ .word 0x08017381
/* 080686b4 */ .word 0x00000000
/* 080686b8 */ .word 0x00000204
/* 080686bc */ .word 0x0801738d
/* 080686c0 */ .word 0x089e5ec0
/* 080686c4 */ .word 0x00000000
/* 080686c8 */ .word 0x00000000
/* 080686cc */ .word 0x00000006
/* 080686d0 */ .word 0x00000000
/* 080686d4 */ .word 0x00000000
/* 080686d8 */ .word 0x00000006
/* 080686dc */ .word 0x00000003
/* 080686e0 */ .word 0x08017381
/* 080686e4 */ .word 0x00000000
/* 080686e8 */ .word 0x00000204
/* 080686ec */ .word 0x0801738d
/* 080686f0 */ .word 0x089e5ec0
/* 080686f4 */ .word 0x00000000
/* 080686f8 */ .word 0x00000000
/* 080686fc */ .word 0x00000006
/* 08068700 */ .word 0x00000000
/* 08068704 */ .word 0x00000000
/* 08068708 */ .word 0x00000006
/* 0806870c */ .word 0x0000001d
/* 08068710 */ .word 0x00000000
/* 08068714 */ .word 0x00000000
/* 08068718 */ .word 0x0000001c
/* 0806871c */ .word 0x00000000
/* 08068720 */ .word 0x00000002
/* 08068724 */ .word 0x00000003
/* 08068728 */ .word 0x08017381
/* 0806872c */ .word 0x00000000
/* 08068730 */ .word 0x00000204
/* 08068734 */ .word 0x0801738d
/* 08068738 */ .word 0x089e5ec0
/* 0806873c */ .word 0x00000000
/* 08068740 */ .word 0x00000000
/* 08068744 */ .word 0x0000000c
/* 08068748 */ .word 0x00000003
/* 0806874c */ .word 0x08017381
/* 08068750 */ .word 0x00000000
/* 08068754 */ .word 0x00000204
/* 08068758 */ .word 0x0801738d
/* 0806875c */ .word 0x089e5ec0
/* 08068760 */ .word 0x00000000
/* 08068764 */ .word 0x00000000
/* 08068768 */ .word 0x00000006
/* 0806876c */ .word 0x00000003
/* 08068770 */ .word 0x08017381
/* 08068774 */ .word 0x00000001
/* 08068778 */ .word 0x00000204
/* 0806877c */ .word 0x0801738d
/* 08068780 */ .word 0x089e5ec0
/* 08068784 */ .word 0x00000000
/* 08068788 */ .word 0x00000000
/* 0806878c */ .word 0x00000006
/* 08068790 */ .word 0x00000003
/* 08068794 */ .word 0x08017381
/* 08068798 */ .word 0x00000000
/* 0806879c */ .word 0x00000204
/* 080687a0 */ .word 0x0801738d
/* 080687a4 */ .word 0x089e5ec0
/* 080687a8 */ .word 0x00000000
/* 080687ac */ .word 0x00000000
/* 080687b0 */ .word 0x0000000c
/* 080687b4 */ .word 0x0000001d
/* 080687b8 */ .word 0x00000000
/* 080687bc */ .word 0x00000000
/* 080687c0 */ .word 0x0000001b
/* 080687c4 */ .word 0x00000000
/* 080687c8 */ .word 0x00000000
/* 080687cc */ .word 0x00000003
/* 080687d0 */ .word 0x08017381
/* 080687d4 */ .word 0x00000108
/* 080687d8 */ .word 0x00000c04
/* 080687dc */ .word 0x0801738d
/* 080687e0 */ .word 0x089e5ec0
/* 080687e4 */ .word 0x0000000e
/* 080687e8 */ .word 0x00000000
/* 080687ec */ .word 0x00000000
/* 080687f0 */ .word 0x00000000
/* 080687f4 */ .word 0x00000000
/* 080687f8 */ .word 0x00000018
/* 080687fc */ .word 0x00000000
/* 08068800 */ .word 0x00000000
/* 08068804 */ .word 0x00000018
/* 08068808 */ .word 0x00000003
/* 0806880c */ .word 0x08017381
/* 08068810 */ .word 0x00000000
/* 08068814 */ .word 0x00000204
/* 08068818 */ .word 0x0801738d
/* 0806881c */ .word 0x089e5ec0
/* 08068820 */ .word 0x00000000
/* 08068824 */ .word 0x00000000
/* 08068828 */ .word 0x0000000c
/* 0806882c */ .word 0x00000000
/* 08068830 */ .word 0x00000000
/* 08068834 */ .word 0x00000006
/* 08068838 */ .word 0x00000003
/* 0806883c */ .word 0x08017381
/* 08068840 */ .word 0x00000001
/* 08068844 */ .word 0x00000204
/* 08068848 */ .word 0x0801738d
/* 0806884c */ .word 0x089e5ec0
/* 08068850 */ .word 0x00000000
/* 08068854 */ .word 0x00000000
/* 08068858 */ .word 0x00000006
/* 0806885c */ .word 0x00000003
/* 08068860 */ .word 0x08017381
/* 08068864 */ .word 0x00000000
/* 08068868 */ .word 0x00000204
/* 0806886c */ .word 0x0801738d
/* 08068870 */ .word 0x089e5ec0
/* 08068874 */ .word 0x00000000
/* 08068878 */ .word 0x00000000
/* 0806887c */ .word 0x0000000c
/* 08068880 */ .word 0x00000003
/* 08068884 */ .word 0x08017381
/* 08068888 */ .word 0x00000000
/* 0806888c */ .word 0x00000204
/* 08068890 */ .word 0x0801738d
/* 08068894 */ .word 0x089e5ec0
/* 08068898 */ .word 0x00000000
/* 0806889c */ .word 0x00000000
/* 080688a0 */ .word 0x00000006
/* 080688a4 */ .word 0x00000003
/* 080688a8 */ .word 0x08017381
/* 080688ac */ .word 0x00000001
/* 080688b0 */ .word 0x00000204
/* 080688b4 */ .word 0x0801738d
/* 080688b8 */ .word 0x089e5ec0
/* 080688bc */ .word 0x00000000
/* 080688c0 */ .word 0x00000000
/* 080688c4 */ .word 0x00000006
/* 080688c8 */ .word 0x00000003
/* 080688cc */ .word 0x08017381
/* 080688d0 */ .word 0x00000000
/* 080688d4 */ .word 0x00000204
/* 080688d8 */ .word 0x0801738d
/* 080688dc */ .word 0x089e5ec0
/* 080688e0 */ .word 0x00000000
/* 080688e4 */ .word 0x00000000
/* 080688e8 */ .word 0x00000008
/* 080688ec */ .word 0x00000003
/* 080688f0 */ .word 0x08017381
/* 080688f4 */ .word 0x00000000
/* 080688f8 */ .word 0x00000204
/* 080688fc */ .word 0x0801738d
/* 08068900 */ .word 0x089e5ec0
/* 08068904 */ .word 0x00000000
/* 08068908 */ .word 0x00000000
/* 0806890c */ .word 0x00000008
/* 08068910 */ .word 0x00000003
/* 08068914 */ .word 0x08017381
/* 08068918 */ .word 0x00000000
/* 0806891c */ .word 0x00000204
/* 08068920 */ .word 0x0801738d
/* 08068924 */ .word 0x089e5ec0
/* 08068928 */ .word 0x00000000
/* 0806892c */ .word 0x00000000
/* 08068930 */ .word 0x00000008
/* 08068934 */ .word 0x00000003
/* 08068938 */ .word 0x08017381
/* 0806893c */ .word 0x00000000
/* 08068940 */ .word 0x00000204
/* 08068944 */ .word 0x0801738d
/* 08068948 */ .word 0x089e5ec0
/* 0806894c */ .word 0x00000000
/* 08068950 */ .word 0x00000000
/* 08068954 */ .word 0x00000006
/* 08068958 */ .word 0x00000000
/* 0806895c */ .word 0x00000000
/* 08068960 */ .word 0x00000006
/* 08068964 */ .word 0x00000003
/* 08068968 */ .word 0x08017381
/* 0806896c */ .word 0x00000000
/* 08068970 */ .word 0x00000204
/* 08068974 */ .word 0x0801738d
/* 08068978 */ .word 0x089e5ec0
/* 0806897c */ .word 0x00000000
/* 08068980 */ .word 0x00000000
/* 08068984 */ .word 0x00000006
/* 08068988 */ .word 0x00000003
/* 0806898c */ .word 0x08017381
/* 08068990 */ .word 0x00000001
/* 08068994 */ .word 0x00000204
/* 08068998 */ .word 0x0801738d
/* 0806899c */ .word 0x089e5ec0
/* 080689a0 */ .word 0x00000000
/* 080689a4 */ .word 0x00000000
/* 080689a8 */ .word 0x00000006
/* 080689ac */ .word 0x0000000e
/* 080689b0 */ .word 0x00000000
/* 080689b4 */ .word 0x00000000
/* 080689b8 */ .word 0x08a59c64
/* 080689bc */ .word 0x00000000
/* 080689c0 */ .word 0x00000000
/* 080689c4 */ .word 0x00000000
/* 080689c8 */ .word 0x00000018
/* 080689cc */ .word 0x00000000
/* 080689d0 */ .word 0x00000000
/* 080689d4 */ .word 0x00000018
/* 080689d8 */ .word 0x00000003
/* 080689dc */ .word 0x08017381
/* 080689e0 */ .word 0x00000000
/* 080689e4 */ .word 0x00000204
/* 080689e8 */ .word 0x0801738d
/* 080689ec */ .word 0x089e5ec0
/* 080689f0 */ .word 0x00000000
/* 080689f4 */ .word 0x00000000
/* 080689f8 */ .word 0x0000000c
/* 080689fc */ .word 0x00000000
/* 08068a00 */ .word 0x00000000
/* 08068a04 */ .word 0x00000006
/* 08068a08 */ .word 0x00000003
/* 08068a0c */ .word 0x08017381
/* 08068a10 */ .word 0x00000001
/* 08068a14 */ .word 0x00000204
/* 08068a18 */ .word 0x0801738d
/* 08068a1c */ .word 0x089e5ec0
/* 08068a20 */ .word 0x00000000
/* 08068a24 */ .word 0x00000000
/* 08068a28 */ .word 0x00000006
/* 08068a2c */ .word 0x00000003
/* 08068a30 */ .word 0x08017381
/* 08068a34 */ .word 0x00000000
/* 08068a38 */ .word 0x00000204
/* 08068a3c */ .word 0x0801738d
/* 08068a40 */ .word 0x089e5ec0
/* 08068a44 */ .word 0x00000000
/* 08068a48 */ .word 0x00000000
/* 08068a4c */ .word 0x0000000c
/* 08068a50 */ .word 0x00000003
/* 08068a54 */ .word 0x08017381
/* 08068a58 */ .word 0x00000000
/* 08068a5c */ .word 0x00000204
/* 08068a60 */ .word 0x0801738d
/* 08068a64 */ .word 0x089e5ec0
/* 08068a68 */ .word 0x00000000
/* 08068a6c */ .word 0x00000000
/* 08068a70 */ .word 0x00000006
/* 08068a74 */ .word 0x00000003
/* 08068a78 */ .word 0x08017381
/* 08068a7c */ .word 0x00000001
/* 08068a80 */ .word 0x00000204
/* 08068a84 */ .word 0x0801738d
/* 08068a88 */ .word 0x089e5ec0
/* 08068a8c */ .word 0x00000000
/* 08068a90 */ .word 0x00000000
/* 08068a94 */ .word 0x00000006
/* 08068a98 */ .word 0x00000003
/* 08068a9c */ .word 0x08017381
/* 08068aa0 */ .word 0x00000000
/* 08068aa4 */ .word 0x00000204
/* 08068aa8 */ .word 0x0801738d
/* 08068aac */ .word 0x089e5ec0
/* 08068ab0 */ .word 0x00000000
/* 08068ab4 */ .word 0x00000000
/* 08068ab8 */ .word 0x00000008
/* 08068abc */ .word 0x00000003
/* 08068ac0 */ .word 0x08017381
/* 08068ac4 */ .word 0x00000000
/* 08068ac8 */ .word 0x00000204
/* 08068acc */ .word 0x0801738d
/* 08068ad0 */ .word 0x089e5ec0
/* 08068ad4 */ .word 0x00000000
/* 08068ad8 */ .word 0x00000000
/* 08068adc */ .word 0x00000008
/* 08068ae0 */ .word 0x00000003
/* 08068ae4 */ .word 0x08017381
/* 08068ae8 */ .word 0x00000000
/* 08068aec */ .word 0x00000204
/* 08068af0 */ .word 0x0801738d
/* 08068af4 */ .word 0x089e5ec0
/* 08068af8 */ .word 0x00000000
/* 08068afc */ .word 0x00000000
/* 08068b00 */ .word 0x00000008
/* 08068b04 */ .word 0x00000003
/* 08068b08 */ .word 0x08017381
/* 08068b0c */ .word 0x00000000
/* 08068b10 */ .word 0x00000204
/* 08068b14 */ .word 0x0801738d
/* 08068b18 */ .word 0x089e5ec0
/* 08068b1c */ .word 0x00000000
/* 08068b20 */ .word 0x00000000
/* 08068b24 */ .word 0x00000018
/* 08068b28 */ .word 0x0000000e
/* 08068b2c */ .word 0x00000000
/* 08068b30 */ .word 0x00000000
/* 08068b34 */ .word 0x08a59c70
/* 08068b38 */ .word 0x00000000
/* 08068b3c */ .word 0x08a59c7c
/* 08068b40 */ .word 0x00000000
/* 08068b44 */ .word 0x00000000
/* 08068b48 */ .word 0x00000000
/* 08068b4c */ .word 0x00000018
/* 08068b50 */ .word 0x00000000
/* 08068b54 */ .word 0x00000000
/* 08068b58 */ .word 0x00000018
/* 08068b5c */ .word 0x00000003
/* 08068b60 */ .word 0x08017381
/* 08068b64 */ .word 0x00000000
/* 08068b68 */ .word 0x00000204
/* 08068b6c */ .word 0x0801738d
/* 08068b70 */ .word 0x089e5ec0
/* 08068b74 */ .word 0x00000000
/* 08068b78 */ .word 0x00000000
/* 08068b7c */ .word 0x0000000c
/* 08068b80 */ .word 0x00000000
/* 08068b84 */ .word 0x00000000
/* 08068b88 */ .word 0x00000006
/* 08068b8c */ .word 0x00000003
/* 08068b90 */ .word 0x08017381
/* 08068b94 */ .word 0x00000001
/* 08068b98 */ .word 0x00000204
/* 08068b9c */ .word 0x0801738d
/* 08068ba0 */ .word 0x089e5ec0
/* 08068ba4 */ .word 0x00000000
/* 08068ba8 */ .word 0x00000000
/* 08068bac */ .word 0x00000006
/* 08068bb0 */ .word 0x00000003
/* 08068bb4 */ .word 0x08017381
/* 08068bb8 */ .word 0x00000000
/* 08068bbc */ .word 0x00000204
/* 08068bc0 */ .word 0x0801738d
/* 08068bc4 */ .word 0x089e5ec0
/* 08068bc8 */ .word 0x00000000
/* 08068bcc */ .word 0x00000000
/* 08068bd0 */ .word 0x0000000c
/* 08068bd4 */ .word 0x00000003
/* 08068bd8 */ .word 0x08017381
/* 08068bdc */ .word 0x00000000
/* 08068be0 */ .word 0x00000204
/* 08068be4 */ .word 0x0801738d
/* 08068be8 */ .word 0x089e5ec0
/* 08068bec */ .word 0x00000000
/* 08068bf0 */ .word 0x00000000
/* 08068bf4 */ .word 0x00000006
/* 08068bf8 */ .word 0x00000003
/* 08068bfc */ .word 0x08017381
/* 08068c00 */ .word 0x00000001
/* 08068c04 */ .word 0x00000204
/* 08068c08 */ .word 0x0801738d
/* 08068c0c */ .word 0x089e5ec0
/* 08068c10 */ .word 0x00000000
/* 08068c14 */ .word 0x00000000
/* 08068c18 */ .word 0x00000006
/* 08068c1c */ .word 0x00000003
/* 08068c20 */ .word 0x08017381
/* 08068c24 */ .word 0x00000000
/* 08068c28 */ .word 0x00000204
/* 08068c2c */ .word 0x0801738d
/* 08068c30 */ .word 0x089e5ec0
/* 08068c34 */ .word 0x00000000
/* 08068c38 */ .word 0x00000000
/* 08068c3c */ .word 0x0000000c
/* 08068c40 */ .word 0x00000003
/* 08068c44 */ .word 0x08017381
/* 08068c48 */ .word 0x00000000
/* 08068c4c */ .word 0x00000204
/* 08068c50 */ .word 0x0801738d
/* 08068c54 */ .word 0x089e5ec0
/* 08068c58 */ .word 0x00000000
/* 08068c5c */ .word 0x00000000
/* 08068c60 */ .word 0x0000000c
/* 08068c64 */ .word 0x00000003
/* 08068c68 */ .word 0x08017381
/* 08068c6c */ .word 0x00000000
/* 08068c70 */ .word 0x00000204
/* 08068c74 */ .word 0x0801738d
/* 08068c78 */ .word 0x089e5ec0
/* 08068c7c */ .word 0x00000000
/* 08068c80 */ .word 0x00000000
/* 08068c84 */ .word 0x00000018
/* 08068c88 */ .word 0x0000000e
/* 08068c8c */ .word 0x00000000
/* 08068c90 */ .word 0x00000000
/* 08068c94 */ .word 0x08a59c88
/* 08068c98 */ .word 0x00000000
/* 08068c9c */ .word 0x00000000
/* 08068ca0 */ .word 0x00000000
/* 08068ca4 */ .word 0x00000018
/* 08068ca8 */ .word 0x00000000
/* 08068cac */ .word 0x00000000
/* 08068cb0 */ .word 0x00000018
/* 08068cb4 */ .word 0x00000003
/* 08068cb8 */ .word 0x08017381
/* 08068cbc */ .word 0x00000000
/* 08068cc0 */ .word 0x00000204
/* 08068cc4 */ .word 0x0801738d
/* 08068cc8 */ .word 0x089e5ec0
/* 08068ccc */ .word 0x00000000
/* 08068cd0 */ .word 0x00000000
/* 08068cd4 */ .word 0x0000000c
/* 08068cd8 */ .word 0x00000000
/* 08068cdc */ .word 0x00000000
/* 08068ce0 */ .word 0x00000006
/* 08068ce4 */ .word 0x00000003
/* 08068ce8 */ .word 0x08017381
/* 08068cec */ .word 0x00000001
/* 08068cf0 */ .word 0x00000204
/* 08068cf4 */ .word 0x0801738d
/* 08068cf8 */ .word 0x089e5ec0
/* 08068cfc */ .word 0x00000000
/* 08068d00 */ .word 0x00000000
/* 08068d04 */ .word 0x00000006
/* 08068d08 */ .word 0x00000003
/* 08068d0c */ .word 0x08017381
/* 08068d10 */ .word 0x00000000
/* 08068d14 */ .word 0x00000204
/* 08068d18 */ .word 0x0801738d
/* 08068d1c */ .word 0x089e5ec0
/* 08068d20 */ .word 0x00000000
/* 08068d24 */ .word 0x00000000
/* 08068d28 */ .word 0x0000000c
/* 08068d2c */ .word 0x00000003
/* 08068d30 */ .word 0x08017381
/* 08068d34 */ .word 0x00000000
/* 08068d38 */ .word 0x00000204
/* 08068d3c */ .word 0x0801738d
/* 08068d40 */ .word 0x089e5ec0
/* 08068d44 */ .word 0x00000000
/* 08068d48 */ .word 0x00000000
/* 08068d4c */ .word 0x00000006
/* 08068d50 */ .word 0x00000003
/* 08068d54 */ .word 0x08017381
/* 08068d58 */ .word 0x00000001
/* 08068d5c */ .word 0x00000204
/* 08068d60 */ .word 0x0801738d
/* 08068d64 */ .word 0x089e5ec0
/* 08068d68 */ .word 0x00000000
/* 08068d6c */ .word 0x00000000
/* 08068d70 */ .word 0x00000006
/* 08068d74 */ .word 0x00000003
/* 08068d78 */ .word 0x08017381
/* 08068d7c */ .word 0x00000000
/* 08068d80 */ .word 0x00000204
/* 08068d84 */ .word 0x0801738d
/* 08068d88 */ .word 0x089e5ec0
/* 08068d8c */ .word 0x00000000
/* 08068d90 */ .word 0x00000000
/* 08068d94 */ .word 0x00000018
/* 08068d98 */ .word 0x00000000
/* 08068d9c */ .word 0x00000000
/* 08068da0 */ .word 0x00000018
/* 08068da4 */ .word 0x0000000e
/* 08068da8 */ .word 0x00000000
/* 08068dac */ .word 0x00000000
/* 08068db0 */ .word 0x08a59c94
/* 08068db4 */ .word 0x00000000
/* 08068db8 */ .word 0x00000000
/* 08068dbc */ .word 0x00000000
/* 08068dc0 */ .word 0x00000018
/* 08068dc4 */ .word 0x00000000
/* 08068dc8 */ .word 0x00000000
/* 08068dcc */ .word 0x00000018
/* 08068dd0 */ .word 0x00000003
/* 08068dd4 */ .word 0x08017381
/* 08068dd8 */ .word 0x00000000
/* 08068ddc */ .word 0x00000204
/* 08068de0 */ .word 0x0801738d
/* 08068de4 */ .word 0x089e5ec0
/* 08068de8 */ .word 0x00000000
/* 08068dec */ .word 0x00000000
/* 08068df0 */ .word 0x0000000c
/* 08068df4 */ .word 0x00000000
/* 08068df8 */ .word 0x00000000
/* 08068dfc */ .word 0x00000006
/* 08068e00 */ .word 0x00000003
/* 08068e04 */ .word 0x08017381
/* 08068e08 */ .word 0x00000001
/* 08068e0c */ .word 0x00000204
/* 08068e10 */ .word 0x0801738d
/* 08068e14 */ .word 0x089e5ec0
/* 08068e18 */ .word 0x00000000
/* 08068e1c */ .word 0x00000000
/* 08068e20 */ .word 0x00000006
/* 08068e24 */ .word 0x00000003
/* 08068e28 */ .word 0x08017381
/* 08068e2c */ .word 0x00000000
/* 08068e30 */ .word 0x00000204
/* 08068e34 */ .word 0x0801738d
/* 08068e38 */ .word 0x089e5ec0
/* 08068e3c */ .word 0x00000000
/* 08068e40 */ .word 0x00000000
/* 08068e44 */ .word 0x0000000c
/* 08068e48 */ .word 0x00000003
/* 08068e4c */ .word 0x08017381
/* 08068e50 */ .word 0x00000000
/* 08068e54 */ .word 0x00000204
/* 08068e58 */ .word 0x0801738d
/* 08068e5c */ .word 0x089e5ec0
/* 08068e60 */ .word 0x00000000
/* 08068e64 */ .word 0x00000000
/* 08068e68 */ .word 0x0000000c
/* 08068e6c */ .word 0x00000003
/* 08068e70 */ .word 0x08017381
/* 08068e74 */ .word 0x00000000
/* 08068e78 */ .word 0x00000204
/* 08068e7c */ .word 0x0801738d
/* 08068e80 */ .word 0x089e5ec0
/* 08068e84 */ .word 0x00000000
/* 08068e88 */ .word 0x00000000
/* 08068e8c */ .word 0x00000018
/* 08068e90 */ .word 0x00000000
/* 08068e94 */ .word 0x00000000
/* 08068e98 */ .word 0x00000018
/* 08068e9c */ .word 0x0000000e
/* 08068ea0 */ .word 0x00000000
/* 08068ea4 */ .word 0x00000000
/* 08068ea8 */ .word 0x08a59ca0
/* 08068eac */ .word 0x00000000
/* 08068eb0 */ .word 0x00000000
/* 08068eb4 */ .word 0x00000000
/* 08068eb8 */ .word 0x00000018
/* 08068ebc */ .word 0x00000000
/* 08068ec0 */ .word 0x00000000
/* 08068ec4 */ .word 0x00000018
/* 08068ec8 */ .word 0x00000003
/* 08068ecc */ .word 0x08017381
/* 08068ed0 */ .word 0x00000000
/* 08068ed4 */ .word 0x00000204
/* 08068ed8 */ .word 0x0801738d
/* 08068edc */ .word 0x089e5ec0
/* 08068ee0 */ .word 0x00000000
/* 08068ee4 */ .word 0x00000000
/* 08068ee8 */ .word 0x00000018
/* 08068eec */ .word 0x00000003
/* 08068ef0 */ .word 0x08017381
/* 08068ef4 */ .word 0x00000000
/* 08068ef8 */ .word 0x00000204
/* 08068efc */ .word 0x0801738d
/* 08068f00 */ .word 0x089e5ec0
/* 08068f04 */ .word 0x00000000
/* 08068f08 */ .word 0x00000000
/* 08068f0c */ .word 0x0000000c
/* 08068f10 */ .word 0x00000003
/* 08068f14 */ .word 0x08017381
/* 08068f18 */ .word 0x00000000
/* 08068f1c */ .word 0x00000204
/* 08068f20 */ .word 0x0801738d
/* 08068f24 */ .word 0x089e5ec0
/* 08068f28 */ .word 0x00000000
/* 08068f2c */ .word 0x00000000
/* 08068f30 */ .word 0x0000000c
/* 08068f34 */ .word 0x00000003
/* 08068f38 */ .word 0x08017381
/* 08068f3c */ .word 0x00000000
/* 08068f40 */ .word 0x00000204
/* 08068f44 */ .word 0x0801738d
/* 08068f48 */ .word 0x089e5ec0
/* 08068f4c */ .word 0x00000000
/* 08068f50 */ .word 0x00000000
/* 08068f54 */ .word 0x00000018
/* 08068f58 */ .word 0x00000000
/* 08068f5c */ .word 0x00000000
/* 08068f60 */ .word 0x00000018
/* 08068f64 */ .word 0x0000000e
/* 08068f68 */ .word 0x00000000
/* 08068f6c */ .word 0x00000000
/* 08068f70 */ .word 0x08a59cac
/* 08068f74 */ .word 0x00000000
/* 08068f78 */ .word 0x00000000
/* 08068f7c */ .word 0x00000000
/* 08068f80 */ .word 0x00000018
/* 08068f84 */ .word 0x00000000
/* 08068f88 */ .word 0x00000000
/* 08068f8c */ .word 0x00000018
/* 08068f90 */ .word 0x00000003
/* 08068f94 */ .word 0x08017381
/* 08068f98 */ .word 0x00000000
/* 08068f9c */ .word 0x00000204
/* 08068fa0 */ .word 0x0801738d
/* 08068fa4 */ .word 0x089e5ec0
/* 08068fa8 */ .word 0x00000000
/* 08068fac */ .word 0x00000000
/* 08068fb0 */ .word 0x00000018
/* 08068fb4 */ .word 0x00000003
/* 08068fb8 */ .word 0x08017381
/* 08068fbc */ .word 0x00000000
/* 08068fc0 */ .word 0x00000204
/* 08068fc4 */ .word 0x0801738d
/* 08068fc8 */ .word 0x089e5ec0
/* 08068fcc */ .word 0x00000000
/* 08068fd0 */ .word 0x00000000
/* 08068fd4 */ .word 0x00000018
/* 08068fd8 */ .word 0x00000003
/* 08068fdc */ .word 0x08017381
/* 08068fe0 */ .word 0x00000000
/* 08068fe4 */ .word 0x00000204
/* 08068fe8 */ .word 0x0801738d
/* 08068fec */ .word 0x089e5ec0
/* 08068ff0 */ .word 0x00000000
/* 08068ff4 */ .word 0x00000000
/* 08068ff8 */ .word 0x00000018
/* 08068ffc */ .word 0x00000000
/* 08069000 */ .word 0x00000000
/* 08069004 */ .word 0x00000018
/* 08069008 */ .word 0x0000000e
/* 0806900c */ .word 0x00000000
/* 08069010 */ .word 0x00000000
/* 08069014 */ .word 0x08a59cc4
/* 08069018 */ .word 0x00000000
/* 0806901c */ .word 0x00000000
/* 08069020 */ .word 0x00000000
/* 08069024 */ .word 0x00000018
/* 08069028 */ .word 0x00000000
/* 0806902c */ .word 0x00000000
/* 08069030 */ .word 0x00000018
/* 08069034 */ .word 0x00000003
/* 08069038 */ .word 0x08001981
/* 0806903c */ .word 0x00000002
/* 08069040 */ .word 0x0000001a
/* 08069044 */ .word 0x00000000
/* 08069048 */ .word 0x030053e4
/* 0806904c */ .word 0x0000001c
/* 08069050 */ .word 0x00000000
/* 08069054 */ .word 0x00000000
/* 08069058 */ .word 0x00000003
/* 0806905c */ .word 0x08017381
/* 08069060 */ .word 0x00000000
/* 08069064 */ .word 0x00000204
/* 08069068 */ .word 0x0801738d
/* 0806906c */ .word 0x089e5ec0
/* 08069070 */ .word 0x00000000
/* 08069074 */ .word 0x00000000
/* 08069078 */ .word 0x00000018
/* 0806907c */ .word 0x0000001d
/* 08069080 */ .word 0x00000000
/* 08069084 */ .word 0x00000000
/* 08069088 */ .word 0x0000001c
/* 0806908c */ .word 0x00000000
/* 08069090 */ .word 0x00000001
/* 08069094 */ .word 0x00000003
/* 08069098 */ .word 0x08017381
/* 0806909c */ .word 0x00000000
/* 080690a0 */ .word 0x00000204
/* 080690a4 */ .word 0x0801738d
/* 080690a8 */ .word 0x089e5ec0
/* 080690ac */ .word 0x00000000
/* 080690b0 */ .word 0x00000000
/* 080690b4 */ .word 0x0000000c
/* 080690b8 */ .word 0x00000003
/* 080690bc */ .word 0x08017381
/* 080690c0 */ .word 0x00000000
/* 080690c4 */ .word 0x00000204
/* 080690c8 */ .word 0x0801738d
/* 080690cc */ .word 0x089e5ec0
/* 080690d0 */ .word 0x00000000
/* 080690d4 */ .word 0x00000000
/* 080690d8 */ .word 0x0000000c
/* 080690dc */ .word 0x0000001d
/* 080690e0 */ .word 0x00000000
/* 080690e4 */ .word 0x00000000
/* 080690e8 */ .word 0x0000001b
/* 080690ec */ .word 0x00000000
/* 080690f0 */ .word 0x00000000
/* 080690f4 */ .word 0x00000003
/* 080690f8 */ .word 0x08001981
/* 080690fc */ .word 0x00000003
/* 08069100 */ .word 0x0000001a
/* 08069104 */ .word 0x00000000
/* 08069108 */ .word 0x030053e4
/* 0806910c */ .word 0x0000001c
/* 08069110 */ .word 0x00000000
/* 08069114 */ .word 0x00000000
/* 08069118 */ .word 0x00000003
/* 0806911c */ .word 0x08017381
/* 08069120 */ .word 0x00000000
/* 08069124 */ .word 0x00000204
/* 08069128 */ .word 0x0801738d
/* 0806912c */ .word 0x089e5ec0
/* 08069130 */ .word 0x00000000
/* 08069134 */ .word 0x00000000
/* 08069138 */ .word 0x00000006
/* 0806913c */ .word 0x00000003
/* 08069140 */ .word 0x08017381
/* 08069144 */ .word 0x00000001
/* 08069148 */ .word 0x00000204
/* 0806914c */ .word 0x0801738d
/* 08069150 */ .word 0x089e5ec0
/* 08069154 */ .word 0x00000000
/* 08069158 */ .word 0x00000000
/* 0806915c */ .word 0x00000006
/* 08069160 */ .word 0x00000003
/* 08069164 */ .word 0x08017381
/* 08069168 */ .word 0x00000000
/* 0806916c */ .word 0x00000204
/* 08069170 */ .word 0x0801738d
/* 08069174 */ .word 0x089e5ec0
/* 08069178 */ .word 0x00000000
/* 0806917c */ .word 0x00000000
/* 08069180 */ .word 0x0000000c
/* 08069184 */ .word 0x0000001d
/* 08069188 */ .word 0x00000000
/* 0806918c */ .word 0x00000000
/* 08069190 */ .word 0x0000001c
/* 08069194 */ .word 0x00000000
/* 08069198 */ .word 0x00000001
/* 0806919c */ .word 0x00000003
/* 080691a0 */ .word 0x08017381
/* 080691a4 */ .word 0x00000000
/* 080691a8 */ .word 0x00000204
/* 080691ac */ .word 0x0801738d
/* 080691b0 */ .word 0x089e5ec0
/* 080691b4 */ .word 0x00000000
/* 080691b8 */ .word 0x00000000
/* 080691bc */ .word 0x0000000c
/* 080691c0 */ .word 0x00000003
/* 080691c4 */ .word 0x08017381
/* 080691c8 */ .word 0x00000000
/* 080691cc */ .word 0x00000204
/* 080691d0 */ .word 0x0801738d
/* 080691d4 */ .word 0x089e5ec0
/* 080691d8 */ .word 0x00000000
/* 080691dc */ .word 0x00000000
/* 080691e0 */ .word 0x00000006
/* 080691e4 */ .word 0x00000003
/* 080691e8 */ .word 0x08017381
/* 080691ec */ .word 0x00000001
/* 080691f0 */ .word 0x00000204
/* 080691f4 */ .word 0x0801738d
/* 080691f8 */ .word 0x089e5ec0
/* 080691fc */ .word 0x00000000
/* 08069200 */ .word 0x00000000
/* 08069204 */ .word 0x00000006
/* 08069208 */ .word 0x0000001d
/* 0806920c */ .word 0x00000000
/* 08069210 */ .word 0x00000000
/* 08069214 */ .word 0x0000001c
/* 08069218 */ .word 0x00000000
/* 0806921c */ .word 0x00000002
/* 08069220 */ .word 0x00000003
/* 08069224 */ .word 0x08017381
/* 08069228 */ .word 0x00000000
/* 0806922c */ .word 0x00000204
/* 08069230 */ .word 0x0801738d
/* 08069234 */ .word 0x089e5ec0
/* 08069238 */ .word 0x00000000
/* 0806923c */ .word 0x00000000
/* 08069240 */ .word 0x00000006
/* 08069244 */ .word 0x00000003
/* 08069248 */ .word 0x08017381
/* 0806924c */ .word 0x00000001
/* 08069250 */ .word 0x00000204
/* 08069254 */ .word 0x0801738d
/* 08069258 */ .word 0x089e5ec0
/* 0806925c */ .word 0x00000000
/* 08069260 */ .word 0x00000000
/* 08069264 */ .word 0x00000006
/* 08069268 */ .word 0x00000003
/* 0806926c */ .word 0x08017381
/* 08069270 */ .word 0x00000000
/* 08069274 */ .word 0x00000204
/* 08069278 */ .word 0x0801738d
/* 0806927c */ .word 0x089e5ec0
/* 08069280 */ .word 0x00000000
/* 08069284 */ .word 0x00000000
/* 08069288 */ .word 0x00000006
/* 0806928c */ .word 0x00000003
/* 08069290 */ .word 0x08017381
/* 08069294 */ .word 0x00000001
/* 08069298 */ .word 0x00000204
/* 0806929c */ .word 0x0801738d
/* 080692a0 */ .word 0x089e5ec0
/* 080692a4 */ .word 0x00000000
/* 080692a8 */ .word 0x00000000
/* 080692ac */ .word 0x00000006
/* 080692b0 */ .word 0x0000001d
/* 080692b4 */ .word 0x00000000
/* 080692b8 */ .word 0x00000000
/* 080692bc */ .word 0x0000001b
/* 080692c0 */ .word 0x00000000
/* 080692c4 */ .word 0x00000000
/* 080692c8 */ .word 0x00000003
/* 080692cc */ .word 0x08001981
/* 080692d0 */ .word 0x00000003
/* 080692d4 */ .word 0x0000001a
/* 080692d8 */ .word 0x00000000
/* 080692dc */ .word 0x030053e4
/* 080692e0 */ .word 0x0000001c
/* 080692e4 */ .word 0x00000000
/* 080692e8 */ .word 0x00000000
/* 080692ec */ .word 0x00000003
/* 080692f0 */ .word 0x08017381
/* 080692f4 */ .word 0x00000000
/* 080692f8 */ .word 0x00000204
/* 080692fc */ .word 0x0801738d
/* 08069300 */ .word 0x089e5ec0
/* 08069304 */ .word 0x00000000
/* 08069308 */ .word 0x00000000
/* 0806930c */ .word 0x0000000c
/* 08069310 */ .word 0x00000003
/* 08069314 */ .word 0x08017381
/* 08069318 */ .word 0x00000000
/* 0806931c */ .word 0x00000204
/* 08069320 */ .word 0x0801738d
/* 08069324 */ .word 0x089e5ec0
/* 08069328 */ .word 0x00000000
/* 0806932c */ .word 0x00000000
/* 08069330 */ .word 0x0000000c
/* 08069334 */ .word 0x0000001d
/* 08069338 */ .word 0x00000000
/* 0806933c */ .word 0x00000000
/* 08069340 */ .word 0x0000001c
/* 08069344 */ .word 0x00000000
/* 08069348 */ .word 0x00000001
/* 0806934c */ .word 0x00000003
/* 08069350 */ .word 0x08017381
/* 08069354 */ .word 0x00000000
/* 08069358 */ .word 0x00000204
/* 0806935c */ .word 0x0801738d
/* 08069360 */ .word 0x089e5ec0
/* 08069364 */ .word 0x00000000
/* 08069368 */ .word 0x00000000
/* 0806936c */ .word 0x0000000c
/* 08069370 */ .word 0x00000003
/* 08069374 */ .word 0x08017381
/* 08069378 */ .word 0x00000000
/* 0806937c */ .word 0x00000204
/* 08069380 */ .word 0x0801738d
/* 08069384 */ .word 0x089e5ec0
/* 08069388 */ .word 0x00000000
/* 0806938c */ .word 0x00000000
/* 08069390 */ .word 0x00000006
/* 08069394 */ .word 0x00000003
/* 08069398 */ .word 0x08017381
/* 0806939c */ .word 0x00000001
/* 080693a0 */ .word 0x00000204
/* 080693a4 */ .word 0x0801738d
/* 080693a8 */ .word 0x089e5ec0
/* 080693ac */ .word 0x00000000
/* 080693b0 */ .word 0x00000000
/* 080693b4 */ .word 0x00000006
/* 080693b8 */ .word 0x0000001d
/* 080693bc */ .word 0x00000000
/* 080693c0 */ .word 0x00000000
/* 080693c4 */ .word 0x0000001c
/* 080693c8 */ .word 0x00000000
/* 080693cc */ .word 0x00000002
/* 080693d0 */ .word 0x00000003
/* 080693d4 */ .word 0x08017381
/* 080693d8 */ .word 0x00000000
/* 080693dc */ .word 0x00000204
/* 080693e0 */ .word 0x0801738d
/* 080693e4 */ .word 0x089e5ec0
/* 080693e8 */ .word 0x00000000
/* 080693ec */ .word 0x00000000
/* 080693f0 */ .word 0x00000006
/* 080693f4 */ .word 0x00000003
/* 080693f8 */ .word 0x08017381
/* 080693fc */ .word 0x00000001
/* 08069400 */ .word 0x00000204
/* 08069404 */ .word 0x0801738d
/* 08069408 */ .word 0x089e5ec0
/* 0806940c */ .word 0x00000000
/* 08069410 */ .word 0x00000000
/* 08069414 */ .word 0x00000006
/* 08069418 */ .word 0x00000003
/* 0806941c */ .word 0x08017381
/* 08069420 */ .word 0x00000000
/* 08069424 */ .word 0x00000204
/* 08069428 */ .word 0x0801738d
/* 0806942c */ .word 0x089e5ec0
/* 08069430 */ .word 0x00000000
/* 08069434 */ .word 0x00000000
/* 08069438 */ .word 0x00000006
/* 0806943c */ .word 0x00000003
/* 08069440 */ .word 0x08017381
/* 08069444 */ .word 0x00000001
/* 08069448 */ .word 0x00000204
/* 0806944c */ .word 0x0801738d
/* 08069450 */ .word 0x089e5ec0
/* 08069454 */ .word 0x00000000
/* 08069458 */ .word 0x00000000
/* 0806945c */ .word 0x00000006
/* 08069460 */ .word 0x0000001d
/* 08069464 */ .word 0x00000000
/* 08069468 */ .word 0x00000000
/* 0806946c */ .word 0x0000001b
/* 08069470 */ .word 0x00000000
/* 08069474 */ .word 0x00000000
/* 08069478 */ .word 0x00000003
/* 0806947c */ .word 0x08017381
/* 08069480 */ .word 0x00000108
/* 08069484 */ .word 0x00000c04
/* 08069488 */ .word 0x0801738d
/* 0806948c */ .word 0x089e5ec0
/* 08069490 */ .word 0x0000000e
/* 08069494 */ .word 0x00000000
/* 08069498 */ .word 0x00000000
/* 0806949c */ .word 0x00000000
/* 080694a0 */ .word 0x00000000
/* 080694a4 */ .word 0x00000018
/* 080694a8 */ .word 0x00000000
/* 080694ac */ .word 0x00000000
/* 080694b0 */ .word 0x00000018
/* 080694b4 */ .word 0x00000003
/* 080694b8 */ .word 0x08017381
/* 080694bc */ .word 0x00000000
/* 080694c0 */ .word 0x00000204
/* 080694c4 */ .word 0x0801738d
/* 080694c8 */ .word 0x089e5ec0
/* 080694cc */ .word 0x00000000
/* 080694d0 */ .word 0x00000000
/* 080694d4 */ .word 0x0000000c
/* 080694d8 */ .word 0x00000000
/* 080694dc */ .word 0x00000000
/* 080694e0 */ .word 0x0000000c
/* 080694e4 */ .word 0x00000003
/* 080694e8 */ .word 0x08017381
/* 080694ec */ .word 0x00000000
/* 080694f0 */ .word 0x00000204
/* 080694f4 */ .word 0x0801738d
/* 080694f8 */ .word 0x089e5ec0
/* 080694fc */ .word 0x00000000
/* 08069500 */ .word 0x00000000
/* 08069504 */ .word 0x00000006
/* 08069508 */ .word 0x00000003
/* 0806950c */ .word 0x08017381
/* 08069510 */ .word 0x00000001
/* 08069514 */ .word 0x00000204
/* 08069518 */ .word 0x0801738d
/* 0806951c */ .word 0x089e5ec0
/* 08069520 */ .word 0x00000000
/* 08069524 */ .word 0x00000000
/* 08069528 */ .word 0x00000006
/* 0806952c */ .word 0x00000003
/* 08069530 */ .word 0x08017381
/* 08069534 */ .word 0x00000000
/* 08069538 */ .word 0x00000204
/* 0806953c */ .word 0x0801738d
/* 08069540 */ .word 0x089e5ec0
/* 08069544 */ .word 0x00000000
/* 08069548 */ .word 0x00000000
/* 0806954c */ .word 0x00000006
/* 08069550 */ .word 0x00000003
/* 08069554 */ .word 0x08017381
/* 08069558 */ .word 0x00000001
/* 0806955c */ .word 0x00000204
/* 08069560 */ .word 0x0801738d
/* 08069564 */ .word 0x089e5ec0
/* 08069568 */ .word 0x00000000
/* 0806956c */ .word 0x00000000
/* 08069570 */ .word 0x00000006
/* 08069574 */ .word 0x00000003
/* 08069578 */ .word 0x08017381
/* 0806957c */ .word 0x00000000
/* 08069580 */ .word 0x00000204
/* 08069584 */ .word 0x0801738d
/* 08069588 */ .word 0x089e5ec0
/* 0806958c */ .word 0x00000000
/* 08069590 */ .word 0x00000000
/* 08069594 */ .word 0x0000000c
/* 08069598 */ .word 0x00000003
/* 0806959c */ .word 0x08017381
/* 080695a0 */ .word 0x00000000
/* 080695a4 */ .word 0x00000204
/* 080695a8 */ .word 0x0801738d
/* 080695ac */ .word 0x089e5ec0
/* 080695b0 */ .word 0x00000000
/* 080695b4 */ .word 0x00000000
/* 080695b8 */ .word 0x00000006
/* 080695bc */ .word 0x00000003
/* 080695c0 */ .word 0x08017381
/* 080695c4 */ .word 0x00000001
/* 080695c8 */ .word 0x00000204
/* 080695cc */ .word 0x0801738d
/* 080695d0 */ .word 0x089e5ec0
/* 080695d4 */ .word 0x00000000
/* 080695d8 */ .word 0x00000000
/* 080695dc */ .word 0x00000006
/* 080695e0 */ .word 0x00000003
/* 080695e4 */ .word 0x08017381
/* 080695e8 */ .word 0x00000000
/* 080695ec */ .word 0x00000204
/* 080695f0 */ .word 0x0801738d
/* 080695f4 */ .word 0x089e5ec0
/* 080695f8 */ .word 0x00000000
/* 080695fc */ .word 0x00000000
/* 08069600 */ .word 0x00000018
/* 08069604 */ .word 0x0000000e
/* 08069608 */ .word 0x00000000
/* 0806960c */ .word 0x00000000
/* 08069610 */ .word 0x08a59cd0
/* 08069614 */ .word 0x00000000
/* 08069618 */ .word 0x00000000
/* 0806961c */ .word 0x00000000
/* 08069620 */ .word 0x00000018
/* 08069624 */ .word 0x00000000
/* 08069628 */ .word 0x00000000
/* 0806962c */ .word 0x00000018
/* 08069630 */ .word 0x00000003
/* 08069634 */ .word 0x08017381
/* 08069638 */ .word 0x00000000
/* 0806963c */ .word 0x00000204
/* 08069640 */ .word 0x0801738d
/* 08069644 */ .word 0x089e5ec0
/* 08069648 */ .word 0x00000000
/* 0806964c */ .word 0x00000000
/* 08069650 */ .word 0x0000000c
/* 08069654 */ .word 0x00000000
/* 08069658 */ .word 0x00000000
/* 0806965c */ .word 0x0000000c
/* 08069660 */ .word 0x00000003
/* 08069664 */ .word 0x08017381
/* 08069668 */ .word 0x00000000
/* 0806966c */ .word 0x00000204
/* 08069670 */ .word 0x0801738d
/* 08069674 */ .word 0x089e5ec0
/* 08069678 */ .word 0x00000000
/* 0806967c */ .word 0x00000000
/* 08069680 */ .word 0x00000006
/* 08069684 */ .word 0x00000003
/* 08069688 */ .word 0x08017381
/* 0806968c */ .word 0x00000001
/* 08069690 */ .word 0x00000204
/* 08069694 */ .word 0x0801738d
/* 08069698 */ .word 0x089e5ec0
/* 0806969c */ .word 0x00000000
/* 080696a0 */ .word 0x00000000
/* 080696a4 */ .word 0x00000006
/* 080696a8 */ .word 0x00000003
/* 080696ac */ .word 0x08017381
/* 080696b0 */ .word 0x00000000
/* 080696b4 */ .word 0x00000204
/* 080696b8 */ .word 0x0801738d
/* 080696bc */ .word 0x089e5ec0
/* 080696c0 */ .word 0x00000000
/* 080696c4 */ .word 0x00000000
/* 080696c8 */ .word 0x00000006
/* 080696cc */ .word 0x00000003
/* 080696d0 */ .word 0x08017381
/* 080696d4 */ .word 0x00000001
/* 080696d8 */ .word 0x00000204
/* 080696dc */ .word 0x0801738d
/* 080696e0 */ .word 0x089e5ec0
/* 080696e4 */ .word 0x00000000
/* 080696e8 */ .word 0x00000000
/* 080696ec */ .word 0x00000006
/* 080696f0 */ .word 0x00000003
/* 080696f4 */ .word 0x08017381
/* 080696f8 */ .word 0x00000000
/* 080696fc */ .word 0x00000204
/* 08069700 */ .word 0x0801738d
/* 08069704 */ .word 0x089e5ec0
/* 08069708 */ .word 0x00000000
/* 0806970c */ .word 0x00000000
/* 08069710 */ .word 0x0000000c
/* 08069714 */ .word 0x00000003
/* 08069718 */ .word 0x08017381
/* 0806971c */ .word 0x00000000
/* 08069720 */ .word 0x00000204
/* 08069724 */ .word 0x0801738d
/* 08069728 */ .word 0x089e5ec0
/* 0806972c */ .word 0x00000000
/* 08069730 */ .word 0x00000000
/* 08069734 */ .word 0x0000000c
/* 08069738 */ .word 0x00000003
/* 0806973c */ .word 0x08017381
/* 08069740 */ .word 0x00000000
/* 08069744 */ .word 0x00000204
/* 08069748 */ .word 0x0801738d
/* 0806974c */ .word 0x089e5ec0
/* 08069750 */ .word 0x00000000
/* 08069754 */ .word 0x00000000
/* 08069758 */ .word 0x00000018
/* 0806975c */ .word 0x0000000e
/* 08069760 */ .word 0x00000000
/* 08069764 */ .word 0x00000000
/* 08069768 */ .word 0x08a59cdc
/* 0806976c */ .word 0x00000000
/* 08069770 */ .word 0x00000000
/* 08069774 */ .word 0x00000000
/* 08069778 */ .word 0x00000018
/* 0806977c */ .word 0x00000000
/* 08069780 */ .word 0x00000000
/* 08069784 */ .word 0x00000018
/* 08069788 */ .word 0x00000003
/* 0806978c */ .word 0x08017381
/* 08069790 */ .word 0x00000000
/* 08069794 */ .word 0x00000204
/* 08069798 */ .word 0x0801738d
/* 0806979c */ .word 0x089e5ec0
/* 080697a0 */ .word 0x00000000
/* 080697a4 */ .word 0x00000000
/* 080697a8 */ .word 0x0000000c
/* 080697ac */ .word 0x00000000
/* 080697b0 */ .word 0x00000000
/* 080697b4 */ .word 0x0000000c
/* 080697b8 */ .word 0x00000003
/* 080697bc */ .word 0x08017381
/* 080697c0 */ .word 0x00000000
/* 080697c4 */ .word 0x00000204
/* 080697c8 */ .word 0x0801738d
/* 080697cc */ .word 0x089e5ec0
/* 080697d0 */ .word 0x00000000
/* 080697d4 */ .word 0x00000000
/* 080697d8 */ .word 0x00000006
/* 080697dc */ .word 0x00000003
/* 080697e0 */ .word 0x08017381
/* 080697e4 */ .word 0x00000001
/* 080697e8 */ .word 0x00000204
/* 080697ec */ .word 0x0801738d
/* 080697f0 */ .word 0x089e5ec0
/* 080697f4 */ .word 0x00000000
/* 080697f8 */ .word 0x00000000
/* 080697fc */ .word 0x00000006
/* 08069800 */ .word 0x00000003
/* 08069804 */ .word 0x08017381
/* 08069808 */ .word 0x00000000
/* 0806980c */ .word 0x00000204
/* 08069810 */ .word 0x0801738d
/* 08069814 */ .word 0x089e5ec0
/* 08069818 */ .word 0x00000000
/* 0806981c */ .word 0x00000000
/* 08069820 */ .word 0x00000006
/* 08069824 */ .word 0x00000003
/* 08069828 */ .word 0x08017381
/* 0806982c */ .word 0x00000001
/* 08069830 */ .word 0x00000204
/* 08069834 */ .word 0x0801738d
/* 08069838 */ .word 0x089e5ec0
/* 0806983c */ .word 0x00000000
/* 08069840 */ .word 0x00000000
/* 08069844 */ .word 0x00000006
/* 08069848 */ .word 0x00000003
/* 0806984c */ .word 0x08017381
/* 08069850 */ .word 0x00000000
/* 08069854 */ .word 0x00000204
/* 08069858 */ .word 0x0801738d
/* 0806985c */ .word 0x089e5ec0
/* 08069860 */ .word 0x00000000
/* 08069864 */ .word 0x00000000
/* 08069868 */ .word 0x00000018
/* 0806986c */ .word 0x00000000
/* 08069870 */ .word 0x00000000
/* 08069874 */ .word 0x00000018
/* 08069878 */ .word 0x0000000e
/* 0806987c */ .word 0x00000000
/* 08069880 */ .word 0x00000000
/* 08069884 */ .word 0x08a59ce8
/* 08069888 */ .word 0x00000000
/* 0806988c */ .word 0x00000000
/* 08069890 */ .word 0x00000000
/* 08069894 */ .word 0x00000018
/* 08069898 */ .word 0x00000000
/* 0806989c */ .word 0x00000000
/* 080698a0 */ .word 0x00000018
/* 080698a4 */ .word 0x00000003
/* 080698a8 */ .word 0x08017381
/* 080698ac */ .word 0x00000000
/* 080698b0 */ .word 0x00000204
/* 080698b4 */ .word 0x0801738d
/* 080698b8 */ .word 0x089e5ec0
/* 080698bc */ .word 0x00000000
/* 080698c0 */ .word 0x00000000
/* 080698c4 */ .word 0x0000000c
/* 080698c8 */ .word 0x00000000
/* 080698cc */ .word 0x00000000
/* 080698d0 */ .word 0x0000000c
/* 080698d4 */ .word 0x00000003
/* 080698d8 */ .word 0x08017381
/* 080698dc */ .word 0x00000000
/* 080698e0 */ .word 0x00000204
/* 080698e4 */ .word 0x0801738d
/* 080698e8 */ .word 0x089e5ec0
/* 080698ec */ .word 0x00000000
/* 080698f0 */ .word 0x00000000
/* 080698f4 */ .word 0x0000000c
/* 080698f8 */ .word 0x00000003
/* 080698fc */ .word 0x08017381
/* 08069900 */ .word 0x00000000
/* 08069904 */ .word 0x00000204
/* 08069908 */ .word 0x0801738d
/* 0806990c */ .word 0x089e5ec0
/* 08069910 */ .word 0x00000000
/* 08069914 */ .word 0x00000000
/* 08069918 */ .word 0x0000000c
/* 0806991c */ .word 0x00000003
/* 08069920 */ .word 0x08017381
/* 08069924 */ .word 0x00000000
/* 08069928 */ .word 0x00000204
/* 0806992c */ .word 0x0801738d
/* 08069930 */ .word 0x089e5ec0
/* 08069934 */ .word 0x00000000
/* 08069938 */ .word 0x00000000
/* 0806993c */ .word 0x00000018
/* 08069940 */ .word 0x00000000
/* 08069944 */ .word 0x00000000
/* 08069948 */ .word 0x00000018
/* 0806994c */ .word 0x0000000e
/* 08069950 */ .word 0x00000000
/* 08069954 */ .word 0x00000000
/* 08069958 */ .word 0x08a59cf4
/* 0806995c */ .word 0x00000000
/* 08069960 */ .word 0x94638e0a
/* 08069964 */ .word 0x8149814f
/* 08069968 */ .word 0x00000049
/* 0806996c */ .word 0xbd82dc82
/* 08069970 */ .word 0xed90a792
/* 08069974 */ .word 0xc482b582
/* 08069978 */ .word 0xb382ba89
/* 0806997c */ .word 0x4281a282
/* 08069980 */ .word 0x82b3820a
/* 08069984 */ .word 0x82a482e6
/* 08069988 */ .word 0x81e782c8
/* 0806998c */ .word 0x00000042
/* 08069990 */ .word 0xf182b182
/* 08069994 */ .word 0xf182ce82
/* 08069998 */ .word 0x4281cd82
/* 0806999c */ .word 0x834e830a
/* 080699a0 */ .word 0x83598343
/* 080699a4 */ .word 0x83938369
/* 080699a8 */ .word 0x815f835f
/* 080699ac */ .word 0x82488149
/* 080699b0 */ .word 0x8a9e8ecc
/* 080699b4 */ .word 0x82c582d4
/* 080699b8 */ .word 0x004281b7
/* 080699bc */ .word 0xf189a18d
/* 080699c0 */ .word 0x4181cd82
/* 080699c4 */ .word 0xc8824081
/* 080699c8 */ .word 0xc682f182
/* 080699cc */ .word 0x8358830a
/* 080699d0 */ .word 0x83568379
/* 080699d4 */ .word 0x828b8383
/* 080699d8 */ .word 0x81b782c5
/* 080699dc */ .word 0x00000049
/* 080699e0 */ .word 0xcd82c582
/* 080699e4 */ .word 0xb3824081
/* 080699e8 */ .word 0xbb82c182
/* 080699ec */ .word 0x820aad82
/* 080699f0 */ .word 0x82c182a2
/* 080699f4 */ .word 0x82dd82c4
/* 080699f8 */ .word 0x82b582dc
/* 080699fc */ .word 0x81a482e5
/* 08069a00 */ .word 0x00000049
/* 08069a04 */ .word 0x82bb820a
/* 08069a08 */ .word 0x82dc82b1
/* 08069a0c */ .word 0x814981c5
/* 08069a10 */ .word 0x00000049
/* 08069a14 */ .word 0x82b3820a
/* 08069a18 */ .word 0x204181c4
/* 08069a1c */ .word 0xf089b390
/* 08069a20 */ .word 0x4881cd82
/* 08069a24 */ .word 0x00000000
/* 08069a28 */ .word 0x89b3900a
/* 08069a2c */ .word 0x814981f0
/* 08069a30 */ .word 0x00000049
/* 08069a34 */ .word 0x82c5820a
/* 08069a38 */ .word 0x814181cd
/* 08069a3c */ .word 0x82c28240
/* 08069a40 */ .word 0x82c582ac
/* 08069a44 */ .word 0x004281b7
/* 08069a48 */ .word 0x46415453
/* 08069a4c */ .word 0x52432046
/* 08069a50 */ .word 0x54494445
/* 08069a54 */ .word 0x00000053
/* 08069a58 */ .word 0x444f5250
/* 08069a5c */ .word 0x52454355
/* 08069a60 */ .word 0x00000053
/* 08069a64 */ .word 0xf182c282
/* 08069a68 */ .word 0x8981ad82
/* 08069a6c */ .word 0x00000000
/* 08069a70 */ .word 0x41532e59
/* 08069a74 */ .word 0x4f4d414b
/* 08069a78 */ .word 0x00004f54
/* 08069a7c */ .word 0x45505553
/* 08069a80 */ .word 0x53495652
/* 08069a84 */ .word 0x0053524f
/* 08069a88 */ .word 0x41592e4b
/* 08069a8c */ .word 0x4f4e414d
/* 08069a90 */ .word 0x00000000
/* 08069a94 */ .word 0x49492e48
/* 08069a98 */ .word 0x00004144
/* 08069a9c */ .word 0x4d552e4e
/* 08069aa0 */ .word 0x544f4d45
/* 08069aa4 */ .word 0x0000004f
/* 08069aa8 */ .word 0x45494843
/* 08069aac */ .word 0x49442046
/* 08069ab0 */ .word 0x54434552
/* 08069ab4 */ .word 0x0000524f
/* 08069ab8 */ .word 0x534f2e4b
/* 08069abc */ .word 0x00415741
/* 08069ac0 */ .word 0x454d4147
/* 08069ac4 */ .word 0x53454420
/* 08069ac8 */ .word 0x004e4749
/* 08069acc */ .word 0x41542e4b
/* 08069ad0 */ .word 0x4355454b
/* 08069ad4 */ .word 0x00004948
/* 08069ad8 */ .word 0x4f592e4d
/* 08069adc */ .word 0x0000454e
/* 08069ae0 */ .word 0x4b492e53
/* 08069ae4 */ .word 0x00004f45
/* 08069ae8 */ .word 0x55462e4e
/* 08069aec */ .word 0x41545552
/* 08069af0 */ .word 0x00000000
/* 08069af4 */ .word 0x41542e52
/* 08069af8 */ .word 0x4148414b
/* 08069afc */ .word 0x00494853
/* 08069b00 */ .word 0x41542e59
/* 08069b04 */ .word 0x4355454b
/* 08069b08 */ .word 0x00004948
/* 08069b0c */ .word 0x414b2e4d
/* 08069b10 */ .word 0x4f4e4157
/* 08069b14 */ .word 0x00000000
/* 08069b18 */ .word 0x474f5250
/* 08069b1c */ .word 0x204d4152
/* 08069b20 */ .word 0x45524944
/* 08069b24 */ .word 0x524f5443
/* 08069b28 */ .word 0x00000000
/* 08069b2c */ .word 0x474f5250
/* 08069b30 */ .word 0x4d4d4152
/* 08069b34 */ .word 0x00474e49
/* 08069b38 */ .word 0x49534544
/* 08069b3c */ .word 0x44204e47
/* 08069b40 */ .word 0x43455249
/* 08069b44 */ .word 0x00524f54
/* 08069b48 */ .word 0x49534544
/* 08069b4c */ .word 0x00004e47
/* 08069b50 */ .word 0x494d2e46
/* 08069b54 */ .word 0x4f4d4159
/* 08069b58 */ .word 0x00004f54
/* 08069b5c */ .word 0x4e554f53
/* 08069b60 */ .word 0x49442044
/* 08069b64 */ .word 0x54434552
/* 08069b68 */ .word 0x0053524f
/* 08069b6c */ .word 0x474f2e48
/* 08069b70 */ .word 0x004f5255
/* 08069b74 */ .word 0x414b2e4b
/* 08069b78 */ .word 0x4144414d
/* 08069b7c */ .word 0x00000000
/* 08069b80 */ .word 0x4953554d
/* 08069b84 */ .word 0x00000043
/* 08069b88 */ .word 0x4953554d
/* 08069b8c */ .word 0x52412043
/* 08069b90 */ .word 0x474e4152
/* 08069b94 */ .word 0x4e454d45
/* 08069b98 */ .word 0x00000054
/* 08069b9c */ .word 0x55592e4b
/* 08069ba0 */ .word 0x00415341
/* 08069ba4 */ .word 0x2e442e48
/* 08069ba8 */ .word 0x555a5553
/* 08069bac */ .word 0x0000494b
/* 08069bb0 */ .word 0x4b4f2e4b
/* 08069bb4 */ .word 0x004f4255
/* 08069bb8 */ .word 0x48532e44
/* 08069bbc */ .word 0x41424949
/* 08069bc0 */ .word 0x00000000
/* 08069bc4 */ .word 0x4e554f53
/* 08069bc8 */ .word 0x46452044
/* 08069bcc */ .word 0x54434546
/* 08069bd0 */ .word 0x00000000
/* 08069bd4 */ .word 0x55462e54
/* 08069bd8 */ .word 0x0049494a
/* 08069bdc */ .word 0x474e4f53
/* 08069be0 */ .word 0x00000000
/* 08069be4 */ .word 0x8c939e8e
/* 08069be8 */ .word 0x9f824081
/* 08069bec */ .word 0x0000dd82
/* 08069bf0 */ .word 0x86926393
/* 08069bf4 */ .word 0x8d914081
/* 08069bf8 */ .word 0x00006a8e
/* 08069bfc */ .word 0x43494f56
/* 08069c00 */ .word 0x00000045
/* 08069c04 */ .word 0x494b2e4e
/* 08069c08 */ .word 0x554d4154
/* 08069c0c */ .word 0x00004152
/* 08069c10 */ .word 0x4f4e2e4d
/* 08069c14 */ .word 0x4152554d
/* 08069c18 */ .word 0x00000000
/* 08069c1c */ .word 0x55424544
/* 08069c20 */ .word 0x00000047
/* 08069c24 */ .word 0x44412e59
/* 08069c28 */ .word 0x49484341
/* 08069c2c */ .word 0x00000000
/* 08069c30 */ .word 0x41482e4e
/* 08069c34 */ .word 0x44494853
/* 08069c38 */ .word 0x00000041
/* 08069c3c */ .word 0x41542e53
/* 08069c40 */ .word 0x4144414b
/* 08069c44 */ .word 0x00000000
/* 08069c48 */ .word 0x494e2e44
/* 08069c4c */ .word 0x4b494853
/* 08069c50 */ .word 0x00415741
/* 08069c54 */ .word 0x55532e52
/* 08069c58 */ .word 0x00004f47
/* 08069c5c */ .word 0x44412e53
/* 08069c60 */ .word 0x49484341
/* 08069c64 */ .word 0x00000000
/* 08069c68 */ .word 0x41532e48
/* 08069c6c */ .word 0x5547414b
/* 08069c70 */ .word 0x00494843
/* 08069c74 */ .word 0x41572e4e
/* 08069c78 */ .word 0x414e4154
/* 08069c7c */ .word 0x00004542
/* 08069c80 */ .word 0x414d2e48
/* 08069c84 */ .word 0x44555354
/* 08069c88 */ .word 0x00000041
/* 08069c8c */ .word 0x4f4d2e44
/* 08069c90 */ .word 0x41544952
/* 08069c94 */ .word 0x00000000
/* 08069c98 */ .word 0x4d552e4b
/* 08069c9c */ .word 0x00414445
/* 08069ca0 */ .word 0x414e2e59
/* 08069ca4 */ .word 0x0049414b
/* 08069ca8 */ .word 0x55462e59
/* 08069cac */ .word 0x414b494a
/* 08069cb0 */ .word 0x00004157
/* 08069cb4 */ .word 0x494e2e4b
/* 08069cb8 */ .word 0x4d494853
/* 08069cbc */ .word 0x004f544f
/* 08069cc0 */ .word 0x4b412e54
/* 08069cc4 */ .word 0x004f4849
/* 08069cc8 */ .word 0x45542e4a
/* 08069ccc */ .word 0x00494152
/* 08069cd0 */ .word 0x48532e41
/* 08069cd4 */ .word 0x5a494d49
/* 08069cd8 */ .word 0x54414255
/* 08069cdc */ .word 0x00000041
/* 08069ce0 */ .word 0x41592e59
/* 08069ce4 */ .word 0x4853414d
/* 08069ce8 */ .word 0x00415449
/* 08069cec */ .word 0x43455053
/* 08069cf0 */ .word 0x204c4149
/* 08069cf4 */ .word 0x4e414854
/* 08069cf8 */ .word 0x0000534b
/* 08069cfc */ .word 0x554b2e59
/* 08069d00 */ .word 0x53544152
/* 08069d04 */ .word 0x00454e55
/* 08069d08 */ .word 0x414b2e52
/* 08069d0c */ .word 0x544f4d49
/* 08069d10 */ .word 0x0000004f
/* 08069d14 */ .word 0x41532e48
/* 08069d18 */ .word 0x4147414b
/* 08069d1c */ .word 0x0000494d
/* 08069d20 */ .word 0x4f592e52
/* 08069d24 */ .word 0x54494853
/* 08069d28 */ .word 0x00494d4f
/* 08069d2c */ .word 0x41592e53
/* 08069d30 */ .word 0x4f4d414d
/* 08069d34 */ .word 0x00004f54
/* 08069d38 */ .word 0x4f482e54
/* 08069d3c */ .word 0x00415454
/* 08069d40 */ .word 0x414d2e4e
/* 08069d44 */ .word 0x4d555354
/* 08069d48 */ .word 0x00415949
/* 08069d4c */ .word 0xc282dd82
/* 08069d50 */ .word 0xbf82ce82
/* 08069d54 */ .word 0xdc824081
/* 08069d58 */ .word 0x0000ab82
/* 08069d5c */ .word 0x454b2e41
/* 08069d60 */ .word 0x434f4d4e
/* 08069d64 */ .word 0x00004948
/* 08069d68 */ .word 0x414e2e48
/* 08069d6c */ .word 0x4f4e414b
/* 08069d70 */ .word 0x00000000
/* 08069d74 */ .word 0xc882a082
/* 08069d78 */ .word 0x0000bd82
/* 08069d7c */ .word 0x43455845
/* 08069d80 */ .word 0x56495455
/* 08069d84 */ .word 0x00000045
/* 08069d88 */ .word 0x20202020
/* 08069d8c */ .word 0x52502020
/* 08069d90 */ .word 0x4355444f
/* 08069d94 */ .word 0x00535245
/* 08069d98 */ .word 0x57492e53
/* 08069d9c */ .word 0x00415441
/* 08069da0 */ .word 0x45542e53
/* 08069da4 */ .word 0x00494152
/* 08069da8 */ .word 0x00000000
/* 08069dac */ .word 0x32294328
/* 08069db0 */ .word 0x20363030
/* 08069db4 */ .word 0x746e694e
/* 08069db8 */ .word 0x6f646e65
/* 08069dbc */ .word 0x502e4a2f
/* 08069dc0 */ .word 0x4f4f522e
/* 08069dc4 */ .word 0x0000004d
/* 08069dc8 */ .word 0xa8820a0a
/* 08069dcc */ .word 0xa982c282
/* 08069dd0 */ .word 0xb382ea82
/* 08069dd4 */ .word 0x4981dc82
/* 08069dd8 */ .word 0x00000000
/* 08069ddc */ .word 0xf182aa82
/* 08069de0 */ .word 0xe882ce82
/* 08069de4 */ .word 0xb582dc82
/* 08069de8 */ .word 0x6c83bd82
/* 08069dec */ .word 0x820a4981
/* 08069df0 */ .word 0x82c882a0
/* 08069df4 */ .word 0x81cc82bd
/* 08069df8 */ .word 0x838a8340
/* 08069dfc */ .word 0x8a808359
/* 08069e00 */ .word 0x0a4181b4
/* 08069e04 */ .word 0xad82c797
/* 08069e08 */ .word 0xc182c882
/* 08069e0c */ .word 0xa282c482
/* 08069e10 */ .word 0xc682e982
/* 08069e14 */ .word 0x82a4820a
/* 08069e18 */ .word 0x82b582ea
/* 08069e1c */ .word 0x81c882a2
/* 08069e20 */ .word 0x00000042
/* 08069e24 */ .word 0x8a834e83
/* 08069e28 */ .word 0xb5824183
/* 08069e2c */ .word 0x5183bd82
/* 08069e30 */ .word 0x80835b81
/* 08069e34 */ .word 0x820acd82
/* 08069e38 */ .word 0x82ea82c8
/* 08069e3c */ .word 0x82b182bd
/* 08069e40 */ .word 0x81aa82eb
/* 08069e44 */ .word 0x82a28240
/* 08069e48 */ .word 0x82ce82bf
/* 08069e4c */ .word 0x798a0af1
/* 08069e50 */ .word 0xa282b582
/* 08069e54 */ .word 0xe782a982
/* 08069e58 */ .word 0xdc824181
/* 08069e5c */ .word 0xa082bd82
/* 08069e60 */ .word 0xc582c682
/* 08069e64 */ .word 0x82a0820a
/* 08069e68 */ .word 0x82f182bb
/* 08069e6c */ .word 0x82dd82c5
/* 08069e70 */ .word 0x816c83c4
/* 08069e74 */ .word 0x00000049
/* 08069e78 */ .word 0x5b815183
/* 08069e7c */ .word 0xcd828083
/* 08069e80 */ .word 0xa0824181
/* 08069e84 */ .word 0xb782c682
/* 08069e88 */ .word 0xb582b182
/* 08069e8c */ .word 0xaf82be82
/* 08069e90 */ .word 0x82c2820a
/* 08069e94 */ .word 0x82ad82c3
/* 08069e98 */ .word 0x82be82f1
/* 08069e9c */ .word 0x81c782af
/* 08069ea0 */ .word 0x82b18241
/* 08069ea4 */ .word 0x0ac582b1
/* 08069ea8 */ .word 0x5e835883
/* 08069eac */ .word 0x74836283
/* 08069eb0 */ .word 0x8183cc82
/* 08069eb4 */ .word 0x6f839383
/* 08069eb8 */ .word 0xd08f5b81
/* 08069ebc */ .word 0xf082ee89
/* 08069ec0 */ .word 0x82b3820a
/* 08069ec4 */ .word 0x82c482b9
/* 08069ec8 */ .word 0x82be82ad
/* 08069ecc */ .word 0x83a282b3
/* 08069ed0 */ .word 0x0042816c
/* 08069ed4 */ .word 0xc5820a0a
/* 08069ed8 */ .word 0x4181cd82
/* 08069edc */ .word 0xa482c782
/* 08069ee0 */ .word 0x6081bc82
/* 08069ee4 */ .word 0x00004981
/* 08069ee8 */ .word 0xb1820a0a
/* 08069eec */ .word 0xc982f182
/* 08069ef0 */ .word 0xcd82bf82
/* 08069ef4 */ .word 0x00004981
/* 08069ef8 */ .word 0xf182aa82
/* 08069efc */ .word 0xc182ce82
/* 08069f00 */ .word 0xdc82c482
/* 08069f04 */ .word 0xa982b782
/* 08069f08 */ .word 0x820a4881
/* 08069f0c */ .word 0x82c882a0
/* 08069f10 */ .word 0x81cc82bd
/* 08069f14 */ .word 0x838a8340
/* 08069f18 */ .word 0x8a808359
/* 08069f1c */ .word 0x0a4181b4
/* 08069f20 */ .word 0xad82c797
/* 08069f24 */ .word 0xc182c882
/* 08069f28 */ .word 0xa282c482
/* 08069f2c */ .word 0xc682e982
/* 08069f30 */ .word 0x82a4820a
/* 08069f34 */ .word 0x82b582ea
/* 08069f38 */ .word 0x81c882a2
/* 08069f3c */ .word 0x00000042
/* 08069f40 */ .word 0x8a834e83
/* 08069f44 */ .word 0xb5824183
/* 08069f48 */ .word 0x5183bd82
/* 08069f4c */ .word 0x80835b81
/* 08069f50 */ .word 0x820acd82
/* 08069f54 */ .word 0x82ea82c8
/* 08069f58 */ .word 0x82b182bd
/* 08069f5c */ .word 0x81aa82eb
/* 08069f60 */ .word 0x82a28240
/* 08069f64 */ .word 0x82ce82bf
/* 08069f68 */ .word 0x798a0af1
/* 08069f6c */ .word 0xa282b582
/* 08069f70 */ .word 0xe782a982
/* 08069f74 */ .word 0xbd894181
/* 08069f78 */ .word 0xe082f189
/* 08069f7c */ .word 0x82a0820a
/* 08069f80 */ .word 0x82f182bb
/* 08069f84 */ .word 0x82dd82c5
/* 08069f88 */ .word 0x816c83c4
/* 08069f8c */ .word 0x00000049
/* 08069f90 */ .word 0xa482bb82
/* 08069f94 */ .word 0xa482bb82
/* 08069f98 */ .word 0x830a4181
/* 08069f9c */ .word 0x835b8151
/* 08069fa0 */ .word 0x83cc8280
/* 08069fa4 */ .word 0x835e8358
/* 08069fa8 */ .word 0x82748362
/* 08069fac */ .word 0x82b582c5
/* 08069fb0 */ .word 0x81cb82bd
/* 08069fb4 */ .word 0xa18d0a42
/* 08069fb8 */ .word 0x4181cd82
/* 08069fbc */ .word 0xf182c782
/* 08069fc0 */ .word 0x5183c882
/* 08069fc4 */ .word 0x80835b81
/* 08069fc8 */ .word 0x8d0af082
/* 08069fcc */ .word 0x82c182ec
/* 08069fd0 */ .word 0x82e982c4
/* 08069fd4 */ .word 0x82c582f1
/* 08069fd8 */ .word 0x82e582b5
/* 08069fdc */ .word 0x82cb82a4
/* 08069fe0 */ .word 0x006381a5
/* 08069fe4 */ .word 0xdc824301
/* 08069fe8 */ .word 0xbb824181
/* 08069fec */ .word 0xcd82ea82
/* 08069ff0 */ .word 0xc482b382
/* 08069ff4 */ .word 0xab82a882
/* 08069ff8 */ .word 0x0a0a4281
/* 08069ffc */ .word 0xcd82c582
/* 0806a000 */ .word 0xc7824181
/* 0806a004 */ .word 0xbc82a482
/* 0806a008 */ .word 0x49816081
/* 0806a00c */ .word 0x00000000
/* 0806a010 */ .word 0xbe82dc82
/* 0806a014 */ .word 0xbe82dc82
/* 0806a018 */ .word 0xb782c582
/* 0806a01c */ .word 0x00004281
/* 0806a020 */ .word 0xc882a982
/* 0806a024 */ .word 0x4181e882
/* 0806a028 */ .word 0x54834081
/* 0806a02c */ .word 0x52834383
/* 0806a030 */ .word 0xc5825b81
/* 0806a034 */ .word 0xb7825b81
/* 0806a038 */ .word 0x00004981
/* 0806a03c */ .word 0xf182cd82
/* 0806a040 */ .word 0xf182be82
/* 0806a044 */ .word 0xe8824081
/* 0806a048 */ .word 0xad82e582
/* 0806a04c */ .word 0x4081aa82
/* 0806a050 */ .word 0xaf82a982
/* 0806a054 */ .word 0xdc82c482
/* 0806a058 */ .word 0x4281b782
/* 0806a05c */ .word 0x00000000
/* 0806a060 */ .word 0xce82b782
/* 0806a064 */ .word 0xb582e782
/* 0806a068 */ .word 0x4081a282
/* 0806a06c */ .word 0xf182cd82
/* 0806a070 */ .word 0xf182be82
/* 0806a074 */ .word 0xe8824081
/* 0806a078 */ .word 0xad82e582
/* 0806a07c */ .word 0x4981be82
/* 0806a080 */ .word 0x00000000
/* 0806a084 */ .word 0xc182e082
/* 0806a088 */ .word 0x4081c682
/* 0806a08c */ .word 0x66834583
/* 0806a090 */ .word 0x4081f082
/* 0806a094 */ .word 0xaa82dd82
/* 0806a098 */ .word 0xa482b182
/* 0806a09c */ .word 0x00004281
/* 0806a0a0 */ .word 0xc482c682
/* 0806a0a4 */ .word 0x4081e082
/* 0806a0a8 */ .word 0x4e836583
/* 0806a0ac */ .word 0x4a836a83
/* 0806a0b0 */ .word 0xbe828b83
/* 0806a0b4 */ .word 0x00004981
/* 0806a0b8 */ .word 0xbc82c882
/* 0806a0bc */ .word 0x8a83cc82
/* 0806a0c0 */ .word 0x80835983
/* 0806a0c4 */ .word 0x44906791
/* 0806a0c8 */ .word 0xe782a982
/* 0806a0cc */ .word 0x4292ca92
/* 0806a0d0 */ .word 0x00000000
/* 0806a0d4 */ .word 0x35013105
/* 0806a0d8 */ .word 0xf4814081
/* 0806a0dc */ .word 0xf6974081
/* 0806a0e0 */ .word 0x6e83cc82
/* 0806a0e4 */ .word 0x5b816a83
/* 0806a0e8 */ .word 0x43835883
/* 0806a0ec */ .word 0x67836081
/* 0806a0f0 */ .word 0x93834783
/* 0806a0f4 */ .word 0x46835783
/* 0806a0f8 */ .word 0x00008b83
/* 0806a0fc */ .word 0x35013105
/* 0806a100 */ .word 0xa4824081
/* 0806a104 */ .word 0x4081bd82
/* 0806a108 */ .word 0x9e8e4081
/* 0806a10c */ .word 0x40818c93
/* 0806a110 */ .word 0xdd829f82
/* 0806a114 */ .word 0x00000000
/* 0806a118 */ .word 0x35013105
/* 0806a11c */ .word 0xec8d4081
/* 0806a120 */ .word 0x40818c8e
/* 0806a124 */ .word 0xc88bec8d
/* 0806a128 */ .word 0x40814081
/* 0806a12c */ .word 0xf182c282
/* 0806a130 */ .word 0x0000ad82
/* 0806a134 */ .word 0x35013105
/* 0806a138 */ .word 0xd2954081
/* 0806a13c */ .word 0x4081c88b
/* 0806a140 */ .word 0xe9974081
/* 0806a144 */ .word 0x6144d896
/* 0806a148 */ .word 0x69686369
/* 0806a14c */ .word 0x738d478f
/* 0806a150 */ .word 0x00000000
/* 0806a154 */ .word 0x0131050a
/* 0806a158 */ .word 0x92430135
/* 0806a15c */ .word 0x819f8bf1
/* 0806a160 */ .word 0x4a408140
/* 0806a164 */ .word 0x522e502e
/* 0806a168 */ .word 0x004d4f4f
/* 0806a16c */ .word 0xbe82dc82
/* 0806a170 */ .word 0xbe82dc82
/* 0806a174 */ .word 0xb782c582
/* 0806a178 */ .word 0x00004281
/* 0806a17c */ .word 0xc882a982
/* 0806a180 */ .word 0x4181e882
/* 0806a184 */ .word 0x54834081
/* 0806a188 */ .word 0x52834383
/* 0806a18c */ .word 0xc5825b81
/* 0806a190 */ .word 0xb7825b81
/* 0806a194 */ .word 0x00004981
/* 0806a198 */ .word 0xf182cd82
/* 0806a19c */ .word 0xf182be82
/* 0806a1a0 */ .word 0xe8824081
/* 0806a1a4 */ .word 0xad82e582
/* 0806a1a8 */ .word 0x4081aa82
/* 0806a1ac */ .word 0xaf82a982
/* 0806a1b0 */ .word 0xdc82c482
/* 0806a1b4 */ .word 0x4281b782
/* 0806a1b8 */ .word 0x00000000
/* 0806a1bc */ .word 0xce82b782
/* 0806a1c0 */ .word 0xb582e782
/* 0806a1c4 */ .word 0x4081a282
/* 0806a1c8 */ .word 0xf182cd82
/* 0806a1cc */ .word 0xf182be82
/* 0806a1d0 */ .word 0xe8824081
/* 0806a1d4 */ .word 0xad82e582
/* 0806a1d8 */ .word 0x4981be82
/* 0806a1dc */ .word 0x00000000
/* 0806a1e0 */ .word 0xc182e082
/* 0806a1e4 */ .word 0x4081c682
/* 0806a1e8 */ .word 0x66834583
/* 0806a1ec */ .word 0x4081f082
/* 0806a1f0 */ .word 0xaa82dd82
/* 0806a1f4 */ .word 0xa482b182
/* 0806a1f8 */ .word 0x00004281
/* 0806a1fc */ .word 0xc482c682
/* 0806a200 */ .word 0x4081e082
/* 0806a204 */ .word 0x4e836583
/* 0806a208 */ .word 0x4a836a83
/* 0806a20c */ .word 0xbe828b83
/* 0806a210 */ .word 0x00004981
/* 0806a214 */ .word 0xbc82c882
/* 0806a218 */ .word 0x8a83cc82
/* 0806a21c */ .word 0x80835983
/* 0806a220 */ .word 0x44906791
/* 0806a224 */ .word 0xe782a982
/* 0806a228 */ .word 0x4292ca92
/* 0806a22c */ .word 0x00000000
/* 0806a230 */ .word 0xbe82dc82
/* 0806a234 */ .word 0xbe82dc82
/* 0806a238 */ .word 0xb782c582
/* 0806a23c */ .word 0x00004281
/* 0806a240 */ .word 0xc882a982
/* 0806a244 */ .word 0x4181e882
/* 0806a248 */ .word 0x54834081
/* 0806a24c */ .word 0x52834383
/* 0806a250 */ .word 0xc5825b81
/* 0806a254 */ .word 0xb7825b81
/* 0806a258 */ .word 0x00004981
/* 0806a25c */ .word 0xf182cd82
/* 0806a260 */ .word 0xf182be82
/* 0806a264 */ .word 0xe8824081
/* 0806a268 */ .word 0xad82e582
/* 0806a26c */ .word 0x4081aa82
/* 0806a270 */ .word 0xaf82a982
/* 0806a274 */ .word 0xdc82c482
/* 0806a278 */ .word 0x4281b782
/* 0806a27c */ .word 0x00000000
/* 0806a280 */ .word 0xce82b782
/* 0806a284 */ .word 0xb582e782
/* 0806a288 */ .word 0x4081a282
/* 0806a28c */ .word 0xf182cd82
/* 0806a290 */ .word 0xf182be82
/* 0806a294 */ .word 0xe8824081
/* 0806a298 */ .word 0xad82e582
/* 0806a29c */ .word 0x4981be82
/* 0806a2a0 */ .word 0x00000000
/* 0806a2a4 */ .word 0xc182e082
/* 0806a2a8 */ .word 0x4081c682
/* 0806a2ac */ .word 0x66834583
/* 0806a2b0 */ .word 0x4081f082
/* 0806a2b4 */ .word 0xaa82dd82
/* 0806a2b8 */ .word 0xa482b182
/* 0806a2bc */ .word 0x00004281
/* 0806a2c0 */ .word 0xc482c682
/* 0806a2c4 */ .word 0x4081e082
/* 0806a2c8 */ .word 0x4e836583
/* 0806a2cc */ .word 0x4a836a83
/* 0806a2d0 */ .word 0xbe828b83
/* 0806a2d4 */ .word 0x00004981
/* 0806a2d8 */ .word 0xbc82c882
/* 0806a2dc */ .word 0x8a83cc82
/* 0806a2e0 */ .word 0x80835983
/* 0806a2e4 */ .word 0x44906791
/* 0806a2e8 */ .word 0xe782a982
/* 0806a2ec */ .word 0x4292ca92
/* 0806a2f0 */ .word 0x00000000
/* 0806a2f4 */ .word 0x31055201
/* 0806a2f8 */ .word 0xf4813501
/* 0806a2fc */ .word 0x53495720
/* 0806a300 */ .word 0x4e8c2048
/* 0806a304 */ .word 0xd291f082
/* 0806a308 */ .word 0xc882c482
/* 0806a30c */ .word 0xc482ad82
/* 0806a310 */ .word 0x00004081
/* 0806a314 */ .word 0x40814c01
/* 0806a318 */ .word 0xbd82a482
/* 0806a31c */ .word 0x40814081
/* 0806a320 */ .word 0x86926393
/* 0806a324 */ .word 0x8d914081
/* 0806a328 */ .word 0x00006a8e
/* 0806a32c */ .word 0xec8d4c01
/* 0806a330 */ .word 0x40818c8e
/* 0806a334 */ .word 0xc88bec8d
/* 0806a338 */ .word 0x8140810a
/* 0806a33c */ .word 0x81408140
/* 0806a340 */ .word 0x81408140
/* 0806a344 */ .word 0x81408140
/* 0806a348 */ .word 0x82c28240
/* 0806a34c */ .word 0x0aad82f1
/* 0806a350 */ .word 0xc88bd295
/* 0806a354 */ .word 0x8140810a
/* 0806a358 */ .word 0x81408140
/* 0806a35c */ .word 0x81408140
/* 0806a360 */ .word 0x81408140
/* 0806a364 */ .word 0x90929340
/* 0806a368 */ .word 0x8c4081f3
/* 0806a36c */ .word 0x00ea88f6
/* 0806a370 */ .word 0xf1924301
/* 0806a374 */ .word 0x40819f8b
/* 0806a378 */ .word 0x2e4a4081
/* 0806a37c */ .word 0x4f522e50
/* 0806a380 */ .word 0x00004d4f
/* 0806a384 */ .word 0xbc944f91
/* 0806a388 */ .word 0x4081aa82
/* 0806a38c */ .word 0xdc82a282
/* 0806a390 */ .word 0xc682d082
/* 0806a394 */ .word 0xbe82c282
/* 0806a398 */ .word 0xbd82c182
/* 0806a39c */ .word 0x9f82c882
/* 0806a3a0 */ .word 0x00004281
/* 0806a3a4 */ .word 0xbc944f91
/* 0806a3a8 */ .word 0xce824181
/* 0806a3ac */ .word 0xbf82c182
/* 0806a3b0 */ .word 0xbe82e882
/* 0806a3b4 */ .word 0x4981cb82
/* 0806a3b8 */ .word 0x00000000
/* 0806a3bc */ .word 0xbc94e38c
/* 0806a3c0 */ .word 0xe0824181
/* 0806a3c4 */ .word 0xb382e882
/* 0806a3c8 */ .word 0xc182aa82
/* 0806a3cc */ .word 0xe182bf82
/* 0806a3d0 */ .word 0xc482c182
/* 0806a3d4 */ .word 0xc882bd82
/* 0806a3d8 */ .word 0x42819f82
/* 0806a3dc */ .word 0x00000000
/* 0806a3e0 */ .word 0xbc94e38c
/* 0806a3e4 */ .word 0x4081c582
/* 0806a3e8 */ .word 0xe882e082
/* 0806a3ec */ .word 0xaa82a082
/* 0806a3f0 */ .word 0xbd82c182
/* 0806a3f4 */ .word 0x6081cb82
/* 0806a3f8 */ .word 0x00004981
/* 0806a3fc */ .word 0x00000000
/* 0806a400 */ .word 0x89834e83
/* 0806a404 */ .word 0x7d834383
/* 0806a408 */ .word 0x4e836283
/* 0806a40c */ .word 0xaa825883
/* 0806a410 */ .word 0xab824081
/* 0806a414 */ .word 0xc182dc82
/* 0806a418 */ .word 0xbd82c482
/* 0806a41c */ .word 0x49814981
/* 0806a420 */ .word 0x00000000
/* 0806a424 */ .word 0xa282b382
/* 0806a428 */ .word 0xc982b282
/* 0806a42c */ .word 0xbf824081
/* 0806a430 */ .word 0xf182e182
/* 0806a434 */ .word 0x4081c682
/* 0806a438 */ .word 0x81835683
/* 0806a43c */ .word 0xbd82c482
/* 0806a440 */ .word 0x4981cb82
/* 0806a444 */ .word 0x00000000
/* 0806a448 */ .word 0xed82dc82
/* 0806a44c */ .word 0xcc82e882
/* 0806a450 */ .word 0xbb945d95
/* 0806a454 */ .word 0x00000000
/* 0806a458 */ .word 0x303a302e
/* 0806a45c */ .word 0x40836e83
/* 0806a460 */ .word 0x00006081
/* 0806a464 */ .word 0x303a302e
/* 0806a468 */ .word 0xc882cd82
/* 0806a46c */ .word 0x4081d182
/* 0806a470 */ .word 0xaa82a082
/* 0806a474 */ .word 0xce82ea82
/* 0806a478 */ .word 0x00006081
/* 0806a47c */ .word 0x303a312e
/* 0806a480 */ .word 0x313ac782
/* 0806a484 */ .word 0xf1825b81
/* 0806a488 */ .word 0x312e4081
/* 0806a48c */ .word 0xc782303a
/* 0806a490 */ .word 0x5b81313a
/* 0806a494 */ .word 0x4081f182
/* 0806a498 */ .word 0x303a322e
/* 0806a49c */ .word 0x322ecf82
/* 0806a4a0 */ .word 0x5b81313a
/* 0806a4a4 */ .word 0x4081f182
/* 0806a4a8 */ .word 0x303a322e
/* 0806a4ac */ .word 0x322ecf82
/* 0806a4b0 */ .word 0x5b81313a
/* 0806a4b4 */ .word 0x0000f182
/* 0806a4b8 */ .word 0x303a312e
/* 0806a4bc */ .word 0x313ac782
/* 0806a4c0 */ .word 0xc782f182
/* 0806a4c4 */ .word 0x322e4081
/* 0806a4c8 */ .word 0xcf82303a
/* 0806a4cc */ .word 0x313a322e
/* 0806a4d0 */ .word 0xf1825b81
/* 0806a4d4 */ .word 0x322e4081
/* 0806a4d8 */ .word 0xcf82303a
/* 0806a4dc */ .word 0x313a322e
/* 0806a4e0 */ .word 0x0000f182
/* 0806a4e4 */ .word 0x303a302e
/* 0806a4e8 */ .word 0x40836e83
/* 0806a4ec */ .word 0x40816081
/* 0806a4f0 */ .word 0x60814183
/* 0806a4f4 */ .word 0x00000000
/* 0806a4f8 */ .word 0x303a302e
/* 0806a4fc */ .word 0xf182a982
/* 0806a500 */ .word 0xa282b982
/* 0806a504 */ .word 0xa0824081
/* 0806a508 */ .word 0xe982aa82
/* 0806a50c */ .word 0x00006081
/* 0806a510 */ .word 0x303a322e
/* 0806a514 */ .word 0x322ecf82
/* 0806a518 */ .word 0x5b81313a
/* 0806a51c */ .word 0x4081f182
/* 0806a520 */ .word 0x303a322e
/* 0806a524 */ .word 0x322ecf82
/* 0806a528 */ .word 0x5b81313a
/* 0806a52c */ .word 0x4081f182
/* 0806a530 */ .word 0x303a312e
/* 0806a534 */ .word 0x313ac782
/* 0806a538 */ .word 0xc782f182
/* 0806a53c */ .word 0x312e4081
/* 0806a540 */ .word 0xc782303a
/* 0806a544 */ .word 0x5b81313a
/* 0806a548 */ .word 0x0000f182
/* 0806a54c */ .word 0x303a322e
/* 0806a550 */ .word 0x322ecf82
/* 0806a554 */ .word 0xf182313a
/* 0806a558 */ .word 0x303a322e
/* 0806a55c */ .word 0x4081cf82
/* 0806a560 */ .word 0x303a312e
/* 0806a564 */ .word 0x313ac782
/* 0806a568 */ .word 0xf1825b81
/* 0806a56c */ .word 0x322e4081
/* 0806a570 */ .word 0xcf82303a
/* 0806a574 */ .word 0x313a322e
/* 0806a578 */ .word 0x0000f182
/* 0806a57c */ .word 0x303a302e
/* 0806a580 */ .word 0xf182c982
/* 0806a584 */ .word 0x4081ab82
/* 0806a588 */ .word 0xaa82a082
/* 0806a58c */ .word 0xce82ea82
/* 0806a590 */ .word 0x00006081
/* 0806a594 */ .word 0x303a302e
/* 0806a598 */ .word 0xe382ab82
/* 0806a59c */ .word 0xe882a482
/* 0806a5a0 */ .word 0xa482e582
/* 0806a5a4 */ .word 0xa0824081
/* 0806a5a8 */ .word 0xe982aa82
/* 0806a5ac */ .word 0x00006081
/* 0806a5b0 */ .word 0x303a302e
/* 0806a5b4 */ .word 0xc282dc82
/* 0806a5b8 */ .word 0xbe82e882
/* 0806a5bc */ .word 0xed824081
/* 0806a5c0 */ .word 0xb582c182
/* 0806a5c4 */ .word 0xa282e582
/* 0806a5c8 */ .word 0x00004981
/* 0806a5cc */ .word 0x303a312e
/* 0806a5d0 */ .word 0x313ac782
/* 0806a5d4 */ .word 0xc782f182
/* 0806a5d8 */ .word 0x322e4081
/* 0806a5dc */ .word 0xcf82303a
/* 0806a5e0 */ .word 0x313a322e
/* 0806a5e4 */ .word 0x322ef182
/* 0806a5e8 */ .word 0xcf82303a
/* 0806a5ec */ .word 0x312e4081
/* 0806a5f0 */ .word 0xc782303a
/* 0806a5f4 */ .word 0xf182313a
/* 0806a5f8 */ .word 0x4081c782
/* 0806a5fc */ .word 0x303a322e
/* 0806a600 */ .word 0x322ecf82
/* 0806a604 */ .word 0xf182313a
/* 0806a608 */ .word 0x303a322e
/* 0806a60c */ .word 0x0000cf82
/* 0806a610 */ .word 0x303a302e
/* 0806a614 */ .word 0xc182c982
/* 0806a618 */ .word 0xf182db82
/* 0806a61c */ .word 0xe382b682
/* 0806a620 */ .word 0xaa82a482
/* 0806a624 */ .word 0xed824081
/* 0806a628 */ .word 0xb582c182
/* 0806a62c */ .word 0xa282e582
/* 0806a630 */ .word 0x00004981
/* 0806a634 */ .word 0x303a312e
/* 0806a638 */ .word 0x313ac782
/* 0806a63c */ .word 0xc782f182
/* 0806a640 */ .word 0x322e4081
/* 0806a644 */ .word 0xcf82303a
/* 0806a648 */ .word 0x313a322e
/* 0806a64c */ .word 0x322ef182
/* 0806a650 */ .word 0xcf82303a
/* 0806a654 */ .word 0x322e4081
/* 0806a658 */ .word 0xcf82303a
/* 0806a65c */ .word 0x313a322e
/* 0806a660 */ .word 0x0000f182
/* 0806a664 */ .word 0x303a302e
/* 0806a668 */ .word 0x8c835c83
/* 0806a66c */ .word 0xd0824081
/* 0806a670 */ .word 0xad82c182
/* 0806a674 */ .word 0x4081e882
/* 0806a678 */ .word 0xa682a982
/* 0806a67c */ .word 0xc482c182
/* 0806a680 */ .word 0x00000000
/* 0806a684 */ .word 0x303a302e
/* 0806a688 */ .word 0x40836e83
/* 0806a68c */ .word 0x40816081
/* 0806a690 */ .word 0xf182da82
/* 0806a694 */ .word 0xc782a882
/* 0806a698 */ .word 0x0000e882
/* 0806a69c */ .word 0x303a312e
/* 0806a6a0 */ .word 0x313ac782
/* 0806a6a4 */ .word 0xc782f182
/* 0806a6a8 */ .word 0x322e4081
/* 0806a6ac */ .word 0xcf82303a
/* 0806a6b0 */ .word 0x313a322e
/* 0806a6b4 */ .word 0x322ef182
/* 0806a6b8 */ .word 0xcf82303a
/* 0806a6bc */ .word 0x00000000
/* 0806a6c0 */ .word 0x303a322e
/* 0806a6c4 */ .word 0x322ecf82
/* 0806a6c8 */ .word 0xf182313a
/* 0806a6cc */ .word 0x303a322e
/* 0806a6d0 */ .word 0x4081cf82
/* 0806a6d4 */ .word 0x303a312e
/* 0806a6d8 */ .word 0x313ac782
/* 0806a6dc */ .word 0xc782f182
/* 0806a6e0 */ .word 0x00000000
/* 0806a6e4 */ .word 0x303a322e
/* 0806a6e8 */ .word 0x322ecf82
/* 0806a6ec */ .word 0x5b81313a
/* 0806a6f0 */ .word 0x4081f182
/* 0806a6f4 */ .word 0x303a322e
/* 0806a6f8 */ .word 0x322ecf82
/* 0806a6fc */ .word 0xf182313a
/* 0806a700 */ .word 0x303a322e
/* 0806a704 */ .word 0x4081cf82
/* 0806a708 */ .word 0x303a322e
/* 0806a70c */ .word 0x322ecf82
/* 0806a710 */ .word 0xf182313a
/* 0806a714 */ .word 0x00000000
/* 0806a718 */ .word 0x303a302e
/* 0806a71c */ .word 0x81834183
/* 0806a720 */ .word 0x4081aa82
/* 0806a724 */ .word 0xaa82a082
/* 0806a728 */ .word 0xce82ea82
/* 0806a72c */ .word 0x00006081
/* 0806a730 */ .word 0x303a302e
/* 0806a734 */ .word 0xae82e282
/* 0806a738 */ .word 0xc982e782
/* 0806a73c */ .word 0xa0824081
/* 0806a740 */ .word 0xe982aa82
/* 0806a744 */ .word 0x00006081
/* 0806a748 */ .word 0x303a302e
/* 0806a74c */ .word 0xe782d982
/* 0806a750 */ .word 0x40814981
/* 0806a754 */ .word 0xc282dc82
/* 0806a758 */ .word 0xbe82e882
/* 0806a75c */ .word 0xed824081
/* 0806a760 */ .word 0xb582c182
/* 0806a764 */ .word 0xa282e582
/* 0806a768 */ .word 0x00004981
/* 0806a76c */ .word 0x303a302e
/* 0806a770 */ .word 0xea82b182
/* 0806a774 */ .word 0x0000bc82
/* 0806a778 */ .word 0x303a302e
/* 0806a77c */ .word 0x43838183
/* 0806a780 */ .word 0x40816883
/* 0806a784 */ .word 0x93834383
/* 0806a788 */ .word 0x57834081
/* 0806a78c */ .word 0x322e8383
/* 0806a790 */ .word 0x313a7083
/* 0806a794 */ .word 0x00009383
/* 0806a798 */ .word 0x303a322e
/* 0806a79c */ .word 0x322ecf82
/* 0806a7a0 */ .word 0xf182313a
/* 0806a7a4 */ .word 0x00000000
/* 0806a7a8 */ .word 0xbe82dc82
/* 0806a7ac */ .word 0xbe82dc82
/* 0806a7b0 */ .word 0xb782c582
/* 0806a7b4 */ .word 0x00004281
/* 0806a7b8 */ .word 0xc882a982
/* 0806a7bc */ .word 0x4181e882
/* 0806a7c0 */ .word 0x54834081
/* 0806a7c4 */ .word 0x52834383
/* 0806a7c8 */ .word 0xc5825b81
/* 0806a7cc */ .word 0xb7825b81
/* 0806a7d0 */ .word 0x00004981
/* 0806a7d4 */ .word 0xf182cd82
/* 0806a7d8 */ .word 0xf182be82
/* 0806a7dc */ .word 0xe8824081
/* 0806a7e0 */ .word 0xad82e582
/* 0806a7e4 */ .word 0x4081aa82
/* 0806a7e8 */ .word 0xaf82a982
/* 0806a7ec */ .word 0xdc82c482
/* 0806a7f0 */ .word 0x4281b782
/* 0806a7f4 */ .word 0x00000000
/* 0806a7f8 */ .word 0xce82b782
/* 0806a7fc */ .word 0xb582e782
/* 0806a800 */ .word 0x4081a282
/* 0806a804 */ .word 0xf182cd82
/* 0806a808 */ .word 0xf182be82
/* 0806a80c */ .word 0xe8824081
/* 0806a810 */ .word 0xad82e582
/* 0806a814 */ .word 0x4981be82
/* 0806a818 */ .word 0x00000000
/* 0806a81c */ .word 0xc182e082
/* 0806a820 */ .word 0x4081c682
/* 0806a824 */ .word 0x66834583
/* 0806a828 */ .word 0x4081f082
/* 0806a82c */ .word 0xaa82dd82
/* 0806a830 */ .word 0xa482b182
/* 0806a834 */ .word 0x00004281
/* 0806a838 */ .word 0xc482c682
/* 0806a83c */ .word 0x4081e082
/* 0806a840 */ .word 0x4e836583
/* 0806a844 */ .word 0x4a836a83
/* 0806a848 */ .word 0xbe828b83
/* 0806a84c */ .word 0x00004981
/* 0806a850 */ .word 0xbc82c882
/* 0806a854 */ .word 0x8a83cc82
/* 0806a858 */ .word 0x80835983
/* 0806a85c */ .word 0x44906791
/* 0806a860 */ .word 0xe782a982
/* 0806a864 */ .word 0x4292ca92
/* 0806a868 */ .word 0x00000000
/* 0806a86c */ .word 0xea82bb82
/* 0806a870 */ .word 0xcd82c582
/* 0806a874 */ .word 0xb1824081
/* 0806a878 */ .word 0xc582b182
/* 0806a87c */ .word 0xa8824081
/* 0806a880 */ .word 0xe782b382
/* 0806a884 */ .word 0xf082a282
/* 0806a888 */ .word 0xcd824081
/* 0806a88c */ .word 0xdf82b682
/* 0806a890 */ .word 0x4981e982
/* 0806a894 */ .word 0x00000000
/* 0806a898 */ .word 0xab82b382
/* 0806a89c */ .word 0x4081c982
/* 0806a8a0 */ .word 0xc182a282
/* 0806a8a4 */ .word 0xad82c682
/* 0806a8a8 */ .word 0x4181aa82
/* 0806a8ac */ .word 0xed824081
/* 0806a8b0 */ .word 0xc682e882
/* 0806a8b4 */ .word 0x4a834081
/* 0806a8b8 */ .word 0x5e839383
/* 0806a8bc */ .word 0xbe829383
/* 0806a8c0 */ .word 0x49814981
/* 0806a8c4 */ .word 0x00000000
/* 0806a8c8 */ .word 0xcc82bd82
/* 0806a8cc */ .word 0xf182b582
/* 0806a8d0 */ .word 0x6c83c582
/* 0806a8d4 */ .word 0x00004981
/* 0806a8d8 */ .word 0x82a2820a
/* 0806a8dc */ .word 0x82dc82ab
/* 0806a8e0 */ .word 0x004981b7
/* 0806a8e4 */ .word 0x82c7820a
/* 0806a8e8 */ .word 0x81bc82a4
/* 0806a8ec */ .word 0x00000042
/* 0806a8f0 */ .word 0x82bb820a
/* 0806a8f4 */ .word 0x82dc82b1
/* 0806a8f8 */ .word 0x814981c5
/* 0806a8fc */ .word 0x00000049
/* 0806a900 */ .word 0x8355830a
/* 0806a904 */ .word 0x836c8393
/* 0806a908 */ .word 0x81498193
/* 0806a90c */ .word 0x00000049
/* 0806a910 */ .word 0x82a8820a
/* 0806a914 */ .word 0x82b282dd
/* 0806a918 */ .word 0x814981c6
/* 0806a91c */ .word 0x00000049
/* 0806a920 */ .word 0x303a312e
/* 0806a924 */ .word 0x313ac782
/* 0806a928 */ .word 0xc782f182
/* 0806a92c */ .word 0x322e4081
/* 0806a930 */ .word 0xcf82303a
/* 0806a934 */ .word 0x313a322e
/* 0806a938 */ .word 0x322ef182
/* 0806a93c */ .word 0xcf82303a
/* 0806a940 */ .word 0x00000000
/* 0806a944 */ .word 0x303a312e
/* 0806a948 */ .word 0x313ac782
/* 0806a94c */ .word 0xf1825b81
/* 0806a950 */ .word 0x322e4081
/* 0806a954 */ .word 0xcf82303a
/* 0806a958 */ .word 0x313a322e
/* 0806a95c */ .word 0xf1825b81
/* 0806a960 */ .word 0x322e4081
/* 0806a964 */ .word 0xcf82303a
/* 0806a968 */ .word 0x313a322e
/* 0806a96c */ .word 0x0000f182
/* 0806a970 */ .word 0xed82a882
/* 0806a974 */ .word 0x4981e882
/* 0806a978 */ .word 0x00000000
/* 0806a97c */ .word 0xbe82dc82
/* 0806a980 */ .word 0xbe82dc82
/* 0806a984 */ .word 0xb782c582
/* 0806a988 */ .word 0x00004281
/* 0806a98c */ .word 0xc882a982
/* 0806a990 */ .word 0x4181e882
/* 0806a994 */ .word 0x54834081
/* 0806a998 */ .word 0x52834383
/* 0806a99c */ .word 0xc5825b81
/* 0806a9a0 */ .word 0xb7825b81
/* 0806a9a4 */ .word 0x00004981
/* 0806a9a8 */ .word 0xf182cd82
/* 0806a9ac */ .word 0xf182be82
/* 0806a9b0 */ .word 0xe8824081
/* 0806a9b4 */ .word 0xad82e582
/* 0806a9b8 */ .word 0x4081aa82
/* 0806a9bc */ .word 0xaf82a982
/* 0806a9c0 */ .word 0xdc82c482
/* 0806a9c4 */ .word 0x4281b782
/* 0806a9c8 */ .word 0x00000000
/* 0806a9cc */ .word 0xce82b782
/* 0806a9d0 */ .word 0xb582e782
/* 0806a9d4 */ .word 0x4081a282
/* 0806a9d8 */ .word 0xf182cd82
/* 0806a9dc */ .word 0xf182be82
/* 0806a9e0 */ .word 0xe8824081
/* 0806a9e4 */ .word 0xad82e582
/* 0806a9e8 */ .word 0x4981be82
/* 0806a9ec */ .word 0x00000000
/* 0806a9f0 */ .word 0xc182e082
/* 0806a9f4 */ .word 0x4081c682
/* 0806a9f8 */ .word 0x66834583
/* 0806a9fc */ .word 0x4081f082
/* 0806aa00 */ .word 0xaa82dd82
/* 0806aa04 */ .word 0xa482b182
/* 0806aa08 */ .word 0x00004281
/* 0806aa0c */ .word 0xc482c682
/* 0806aa10 */ .word 0x4081e082
/* 0806aa14 */ .word 0x4e836583
/* 0806aa18 */ .word 0x4a836a83
/* 0806aa1c */ .word 0xbe828b83
/* 0806aa20 */ .word 0x00004981
/* 0806aa24 */ .word 0xbc82c882
/* 0806aa28 */ .word 0x8a83cc82
/* 0806aa2c */ .word 0x80835983
/* 0806aa30 */ .word 0x44906791
/* 0806aa34 */ .word 0xe782a982
/* 0806aa38 */ .word 0x4292ca92
/* 0806aa3c */ .word 0x00000000
/* 0806aa40 */ .word 0x93834b83
/* 0806aa44 */ .word 0x8c836f83
/* 0806aa48 */ .word 0x49816081
/* 0806aa4c */ .word 0x00004981
/* 0806aa50 */ .word 0xf182aa82
/* 0806aa54 */ .word 0xe982ce82
/* 0806aa58 */ .word 0xbe82cc82
/* 0806aa5c */ .word 0x49815b81
/* 0806aa60 */ .word 0x00004981
/* 0806aa64 */ .word 0x40837483
/* 0806aa68 */ .word 0x67834383
/* 0806aa6c */ .word 0x49815b81
/* 0806aa70 */ .word 0x00004981
/* 0806aa74 */ .word 0xa482e082
/* 0806aa78 */ .word 0xd0824081
/* 0806aa7c */ .word 0xd382c682
/* 0806aa80 */ .word 0xce82f182
/* 0806aa84 */ .word 0x4981e882
/* 0806aa88 */ .word 0x00004981
/* 0806aa8c */ .word 0xac82c282
/* 0806aa90 */ .word 0x4081c582
/* 0806aa94 */ .word 0xed82a882
/* 0806aa98 */ .word 0xc582e882
/* 0806aa9c */ .word 0x85836083
/* 0806aaa0 */ .word 0x49815b81
/* 0806aaa4 */ .word 0x00000000
/* 0806aaa8 */ .word 0x00000000

.end
