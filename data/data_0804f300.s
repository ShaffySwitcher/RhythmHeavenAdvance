.section .text
.syntax unified

.include "include/gba.inc"

glabel D_0804f300
@ Used in boot.s for interrupt jumptable
/* 0804f300 */ .word (func_08049144 + 1) @ INTERRUPT_DMA2
/* 0804f304 */ .word (func_08001380 + 1) @ INTERRUPT_VBLANK
/* 0804f308 */ .word (func_080091a4 + 1) @ INTERRUPT_HBLANK
/* 0804f30c */ .word (func_08009268 + 1) @ INTERRUPT_VCOUNT
/* 0804f310 */ .word (func_080001f4_stub + 1) @ INTERRUPT_TIMER0
/* 0804f314 */ .word (func_080001f4_stub + 1) @ INTERRUPT_TIMER1
/* 0804f318 */ .word (func_080001f4_stub + 1) @ INTERRUPT_TIMER2
/* 0804f31c */ .word (func_080001f4_stub + 1) @ INTERRUPT_TIMER3
/* 0804f320 */ .word (func_080001f4_stub + 1) @ INTERRUPT_COMM
/* 0804f324 */ .word (func_080001f4_stub + 1) @ INTERRUPT_DMA0
/* 0804f328 */ .word (func_080001f4_stub + 1) @ INTERRUPT_DMA1
/* 0804f32c */ .word (func_080001f4_stub + 1) @ INTERRUPT_DMA3
/* 0804f330 */ .word (func_080001f4_stub + 1) @ INTERRUPT_BUTTON
/* 0804f334 */ .word (func_080001f4_stub + 1)
@ above is dma'd to D_03004460

/* 0804f338 */
.asciz "ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ"
.balign 4, 0

glabel D_0804f370
.asciz "＿"
.balign 4, 0

glabel D_0804f374
.asciz "！"
.balign 4, 0

glabel D_0804f378
.asciz "？"
.balign 4, 0

glabel D_0804f37c
.asciz "，"
.balign 4, 0

glabel D_0804f380
.asciz "－"
.balign 4, 0

@ Notification from the Rhythm Reference Room
glabel D_0804f384
.asciz "　リズム資料室からお知らせ"
.balign 4, 0

@ You have recieved [_______]
glabel D_0804f3a0
.asciz "　　　　　　　　　　　　　　　　　　　　を入荷しました。"
.balign 4, 0

glabel D_0804f3dc
.asciz "「　"
.balign 4, 0

glabel D_0804f3e4
.asciz "　」"
.balign 4, 0

@ See you later.
/* 0804f3ec */
.asciz "\n\nでは　また。\n\n"
.balign 4, 0

@ I'm still unpacking boxes, so
@ please come back in a bit.
/* 0804f400 */
.asciz "\nいま　ちょっと　しこみ中なので\nまた　あとで　きてくださいね。\n\n"
.balign 4, 0

@ I'm pretty good at Rhythm Games.
@ If you need help, <come to the Cafe>.
/* 0804f444 */
.ascii "\nわたしに　できることが　あれば、\n"
.text_gold
.ascii "ちからに　なりますよ"
.text_normal
.asciz "。\n\n"
.balign 4, 0

@ This is the Cafe.
@ <When you can't finish a game>,
@ or when you just want a break,
@ please come here and relax.
/* 0804f488 */
.ascii "\nここは　いわゆる　キッサ店です。\nゲームが　"
.text_gold
.ascii "うまくできないとき"
.text_normal
.asciz "や\nつかれたときにでも　おいで下さい。"
.balign 4, 0

@ Welcome. This is your
@ first time here, isn't it?
/* 0804f4f4 */
.asciz "\nいらっしゃいませ。\nこちらに　来たのは　はじめてですね？\n\n"
.balign 4, 0

@ Come back in a while!
/* 0804f530 */
.asciz "\n\nしばらく　してから　きてね～。\n\n"
.balign 4, 0

@ Don't let it frustrate you.
@ You're supposed to enjoy yourself.
/* 0804f554 */
.asciz "\nあまり　ムキに　ならずに\n楽しんで下さいね…\n\n"
.balign 4, 0

@ Just keep moving to the music,
@ and you'll have fun doing it, too.
/* 0804f584 */
.asciz "\nそれと同時に　音楽に　ノるのが\n楽しくなるとも思うんです。\n\n"
.balign 4, 0

@ You know, after a few tries
@ I think you'll manage that superb.
/* 0804f5c4 */
.asciz "\nなんどか　やるうちに　コツが\nつかめると　思いますよ。\n\n"
.balign 4, 0

@ Please try your best
@ for those Perfects.
@ See you soon!
/* 0804f600 */
.asciz "\nパーフェクト　がんばってくださいね。\nではまた。\n\n"
.balign 4, 0

@ Sorry for yelling. I just got
@ a little too excited there.
/* 0804f634 */
.asciz "\n大きい声をだして　すみません。\nなんだか　うれしかったものですから…\n\n"
.balign 4, 0

@ Please enjoy the
@ game. See you!
/* 0804f67c */
.asciz "\nゲーム　楽しんでくださいね。\nではまた。\n\n"
.balign 4, 0

@ Is that right? Loose lips can sink
@ friendships... please forgive me.
/* 0804f6a8 */
.asciz "\nそうですか。\nウワサ話なんて　してしまい\nしつれいしました。"
.balign 4, 0

@ Had enough, I suppose? Go
@ get some rest. I'll be waiting.
/* 0804f6e4 */
.asciz "\nおつかれでしょう？\n少し　休んでくださいネ。\nでは　また。"
.balign 4, 0

@ Wow. It looks like you've
@ mastered the game. Not bad.
/* 0804f720 */
.asciz "\nいやいや、しかし　なんと　まぁ\nコンプリートですか。\nやりますな～。"
.balign 4, 0

@ Well, in celebration I've added
@ more songs to the studio.
/* 0804f764 */
.asciz "\nそうそう、\nお祝いに　ささやかでは　ありますが\nスタジオの曲をふやしておきました。\n"
.balign 4, 0

@ Oh, I'm so happy I think
@ I might just start to cry.
/* 0804f7b8 */
.asciz "\nなんだか　私も、すっごく\nうれしくって　ウルウルです…\n\n"
.balign 4, 0

@ You must have excellent rhythm
@ sense to have gotten this far.
/* 0804f7f4 */
.asciz "\nもう、そこまで　やりこんだら\nリズム感　かなり　良くなって\nいるでしょうネ！"
.balign 4, 0

@ <Unbelievable!!>
/* 0804f840 */
.text_large
.text_gold
.ascii "\n\nアンビリーバボー!!"
.text_small
.text_normal
.asciz ""
.balign 4, 0

@ <Good job!!>
/* 0804f868 */
.text_large
.text_gold
.ascii "\n\nグッド　ジョブ!!"
.text_small
.text_normal
.asciz ""
.balign 4, 0

@ <Congratulations!!>
/* 0804f88c */
.text_large
.text_gold
.ascii "\n\nおめでとー!!"
.text_small
.text_normal
.asciz ""
.balign 4, 0

@ <You're good!!>
/* 0804f8ac */
.text_large
.text_gold
.ascii "\n\nやるじゃなーい!!"
.text_small
.text_normal
.asciz ""
.balign 4, 0

@ <Not too bad!!>
/* 0804f8d0 */
.text_large
.text_gold
.ascii "\n\nすごいじゃなーい!!"
.text_small
.text_normal
.asciz ""
.balign 4, 0

@ <I was moved!>
/* 0804f8f8 */
.text_large
.text_gold
.ascii "\n\n感動したー！"
.text_small
.text_normal
.asciz ""
.balign 4, 0

@ <Good luck!>
/* 0804f918 */
.text_large
.text_gold
.ascii "\n\nグッド　ラック！"
.text_small
.text_normal
.asciz ""
.balign 4, 0

@ <Go! Go!>
/* 0804f93c */
.text_large
.text_gold
.ascii "\n\nイケイケー！"
.text_small
.text_normal
.asciz ""
.balign 4, 0

@ <Fight!>
/* 0804f95c */
.text_large
.text_gold
.ascii "\n\nファイトー！"
.text_small
.text_normal
.asciz ""
.balign 4, 0

@ <Go for it!>
/* 0804f97c */
.text_large
.text_gold
.ascii "\n\nがんばれー！"
.text_small
.text_normal
.asciz ""
.balign 4, 0

@ Maybe I should try a little harder
@ to get good at Rhythm Heaven...
/* 0804f99c */
.asciz "\n\n私も　ゲーム　してみようかな…\n\n"
.balign 4, 0

@ But you'll be a bit happier once you
@ find your Rhythm Sense, I'm sure.
/* 0804f9c0 */
.asciz "\nでも、リズム感が　よくなると　きっと　ちょっと　ハッピーに　なるんでしょうね。"
.balign 4, 0

@ Well, not that I'm very
@ aware of it myself.
/* 0804fa10 */
.asciz "\nま、私なんかは　あんまり\nいしきすることも　ないんですがね。\n\n"
.balign 4, 0

@ By the way, I wonder how
@ Rhythm Sense is for humans?
/* 0804fa50 */
.asciz "\nそれはそうと、リズム感って　人間にとって　どういうものなんでしょうねぇ。\n\n"
.balign 4, 0

@ Did you know that already?
@ Sorry if it seems like I'm
@ talking down to you.
@ Anyways, see you again.
/* 0804fa9c */
.asciz "\nまぁ、そういうモン　らしいです。\nテキトーで　ごめんなさいネ。\nでは　また。"
.balign 4, 0

@ Halfway between one clap
@ and the next (the "onbeats")
@ is called the "offbeat".
@ At least, so I understand.
/* 0804fae8 */
.asciz "\nその　手びょうしと手びょうしの\nちょうど　まん中のタイミングが\n「ウラ」なんだそうです。"
.balign 4, 0

@ How do I explain it...
@ Well, you naturally clap
@ your hands to music, right?
/* 0804fb40 */
.asciz "\nたとえば、音楽にあわせて\n自然に手をたたくとしますね。\n\n"
.balign 4, 0

@ Honestly, I wasn't sure
@ what it meant either.
@ So, the other day I looked
@ up the definition.
/* 0804fb7c */
.asciz "\nま、私も　それほど　詳しくはないので　アレなんですけどネ。\n\n"
.balign 4, 0

@ I hear the word "offbeat" often. 
@ Do you know what an "offbeat" is?
/* 0804fbbc */
.asciz "\nそれはそうと、この世界でよく聞く\n「ウラ」って　どういうものか\n知ってますか？"
.balign 4, 0

@ Well, nothing we can do but practice.
@ Take care for now.
/* 0804fc0c */
.asciz "\nま、ぼちぼち　やっていきましょうネ。\nでは　また。\n\n"
.balign 4, 0

@ Counting to yourself is hard, isn't it?
@ I always go too fast or lose my place.
/* 0804fc44 */
.asciz "\n空白を　カウントするってのは\nムズいもんですね～。\n\n"
.balign 4, 0

@ I always have trouble with
@ the rests in the second test.
/* 0804fc7c */
.asciz "\nなかなか　どうして　２つめのテストが　うまく　できないんですヨ。\n\n"
.balign 4, 0

@ I just tried it again yesterday, but
@ 65 points seems to be my limit...
/* 0804fcc0 */
.asciz "\n私も　ときどき　やるんですけど\n６５点くらいが　限界なんですよねぇ…\n\n"
.balign 4, 0

@ Say, when was the last time you
@ checked your "Rhythm Test" score?
/* 0804fd08 */
.asciz "\nそれはそうと、\n最近　「リズム感測定」してます？\n\n"
.balign 4, 0

@ Maybe it's for the best.
@ For musical instruments, you
@ just have to keep at it.
@ You should try your best, too.
/* 0804fd3c */
.asciz "\nま、楽器は　すぐには　うまくならないでしょうし、じっくりと　つきあってみましょうかね…"
.balign 4, 0

@ You'll find it's hard to quit
@ once you start a lesson.
/* 0804fd94 */
.asciz "\nレッスンを　やりだすと　これが\nなかなか　やめられないんですよね～。\n\n"
.balign 4, 0

@ The teacher is really strict.
@ I asked him for an easier
@ lesson, but he told me to
@ just keep on trying my best.
/* 0804fddc */
.asciz "\n先生が、こういうのは　すききらいが\nあるから、ムリして　しないでネって\n言ってましたけど、"
.balign 4, 0

@ I take lessons once a week, but
@ I don't really seem to improve.
/* 0804fe38 */
.asciz "\n私は　週に１回だけ　レッスンを\nうけてるんですが、なかなか\n上達しませんねぇ。"
.balign 4, 0

@ Let me ask... have you tried the
@ Drum Lessons in the Prize Corner?
/* 0804fe88 */
.asciz "\nそれはそうと、おまけコーナーの　ドラムレッスンって　やったことあります？\n\n"
.balign 4, 0

@ Learn from me, and don't forget
@ to take a break every so often.
@ Anyway, see you again.
/* 0804fed4 */
.asciz "\nこんど　ドライブでも　行きませんか？\nま、よかったら　ですけどネ。\nでは　また。"
.balign 4, 0

@ What? Oh, I was talking to myself.
@ It was a monologue... sorry.
/* 0804ff24 */
.asciz "\nあ、いや、こっちの話です。\nひとりごとですので…　すみませんね。\n\n"
.balign 4, 0

@ I was up all last night playing.
@ I just couldn't stop myself...
/* 0804ff68 */
.asciz "\n\nきのう　おそくまで　遊んでたからなぁ…\n\n"
.balign 4, 0

@ By the way, right now
@ I'm terribly tired...
/* 0804ff94 */
.asciz "\nそれはそうと、\nなんだか　今　すごく　ねむいのです…\n\n"
.balign 4, 0

@ All I can do is pour
@ the coffee, but... heh.
/* 0804ffcc */
.asciz "\n私は、コーヒーを　入れるだけしか\nできませんが…　ははは…\n\n"
.balign 4, 0

@ Well... he isn't a talkative person,
@ but you seem to be getting along.
/* 0805000c */
.asciz "\nま、まぁ　無口な方ですが\nなかよくしたいんじゃないですか？\n\n"
.balign 4, 0

@ Hm? You didn't order it?
@ Ah, I see. This is actually
@ for the guy next to you...
/* 0805004c */
.asciz "\nえ？　たのんでないって？　あぁ、これは　おとなりから　なんですが…\n\n"
.balign 4, 0

@ By the way, here's the
@ coffee you ordered.
/* 08050094 */
.asciz "\nそれはそうと、\nコーヒー　入りましたヨ。\n\n"
.balign 4, 0

@ Hey, you're a human, right?
@ Well, despite our species I still
@ hope that we can get along
/* 080500c0 */
.asciz "\nお客さんは　人間ですよね？\nまぁ、私は　犬ですが　これからも\nなかよくしてくださいネ～。"
.balign 4, 0

@ When you get to be my age,
@ time really does seem to fly.
/* 08050118 */
.asciz "\nいやはや、このトシになると\n時がたつのが　はやいですねぇ。\n\n"
.balign 4, 0

@ I'm not one of those young pups,
@ either. I'm nine years old.
/* 08050158 */
.asciz "\nかれこれ　９才で　もう　けっこう\nいいトシなんです。\n\n"
.balign 4, 0

@ By the way, if you hadn't
@ noticed, I'm actually a dog.
/* 08050190 */
.asciz "\nそれはそうと、\n実は　私　犬なんですヨ。\n\n"
.balign 4, 0

@ Just don't think that good
@ rhythm makes you qualified
@ to be a doctor, ha ha ha.
/* 080501bc */
.asciz "\nまぁ、私には　詳しい理屈なんて\nわからないですけどネ。ははは。\n\n"
.balign 4, 0

@ Music is strange, isn't it?
@ It has this mysterious
@ power to heal the heart.
/* 08050200 */
.asciz "\n音楽って　フシギですよね～。\nどうして　あんなにも　心を\nゆさぶるんでしょうね。"
.balign 4, 0

@ Taking out a good old record and
@ reminiscing about the past
@ always makes me feel better.
/* 08050250 */
.asciz "\nけっこう古いレコードなんかを　出してきて　当時を　思い出したりすると、ホッとするんです。"
.balign 4, 0

@ By the way, what do
@ you do when you're sad?
@ I always listen to music.
/* 080502ac */
.asciz "\nそれはそうと、悲しいときって\nどうしてますか？\n私は　もっぱら　音楽を　ききますねぇ。"
.balign 4, 0

@ Then again, if we gave speeches
@ with bongos or the neighbors
@ argued with trumpets, it'd get
@ noisy, don't you think? Ha ha ha.
/* 08050304 */
.asciz "\nでも　もし、ドラムで　選挙演説とか\nボンゴで　夫婦ゲンカとかあったら\nやかましそうですネ。ははは。"
.balign 4, 0

@ I learned it from another
@ customer, and now I want
@ to try it for myself.
/* 08050368 */
.asciz "\nこのまえ　いらっしゃった　お客さんが\n教えてくれたんですけど、ちょっと\n面白そうじゃないですか？"
.balign 4, 0

@ For example... you could play
@ a drum beat to ask "How are
@ you?" or say "Please come
@ visit!" even from far away.
/* 080503c8 */
.asciz "\nタイコの大きな音で　リズムをきざんで\nはなれた人と　コミュニケーションを\nとるらしいんですヨ。"
.balign 4, 0

@ By attaching words and meanings
@ to certain beats, you can have a
@ conversation without speaking.
/* 08050428 */
.asciz "\nリズムパターンに　言葉や　意味を　対応させて、会話をするんだそうです。\n\n"
.balign 4, 0

@ Say... did you know that you can
@ have a conversation with rhythm?
/* 08050474 */
.asciz "\nそれはそうと、リズムで\n会話ができるって　知ってました？\n\n"
.balign 4, 0

@ Oh... but if you already knew that,
@ I'm sorry if I bored you.
@ See you later.
/* 080504b0 */
.asciz "\nご存知でしたら　つまらない話でしたネ。\nすみません。ではまた。\n\n"
.balign 4, 0

@ Collecting lots of medals will
@ unlock all sorts of prizes that
@ you can play with. Please do your
@ best to collect them all!
/* 080504f4 */
.asciz "\nメダルを　集めると　いろいろな\nおまけが　遊べるようになるので\nがんばって　集めてくださいネ。"
.balign 4, 0

@ If you get a "Superb",
@ you'll even get a medal.
/* 08050554 */
.asciz "\nで、「ハイレベル」をとると\nメダルが　もらえるんです。\n\n"
.balign 4, 0

@ There are three grades, you know:
@ "Try Again", "OK" and "Superb".
/* 08050590 */
.asciz "\nゲームの成績は「やりなおし」「平凡」「ハイレベル」の３つが、あるんですヨ。\n\n"
.balign 4, 0

@ By the way, have you ever
@ gotten a "Superb" rating on a game?
/* 080505e0 */
.asciz "\nそれはそうと、ゲームで\n「ハイレベル」っていう成績を\nとったことありますか？"
.balign 4, 0

@ Oh! You're here, you're here!
@ I've been waiting, you know!!
glabel D_0805062c
.asciz "\nお、きたきた！\n待ってたヨ～！！\n\n"
.balign 4, 0

@ Are you making progress?
@ Please do your best!
glabel D_08050650
.asciz "\nゲーム　すすんでますか？\nがんばって　くださいね～。\n\n"
.balign 4, 0

@ Aren't you getting tired?
@ Don't forget to rest now and then.
glabel D_08050688
.asciz "\nだいぶ　つかれたのでは　ないですか？\nときどき　休んだほうが　よいですよ。\n\n"
.balign 4, 0

@ You've been at this a while,
@ haven't you? Please rest a little.
glabel D_080506d8
.asciz "\nかなり　はまってますねぇ。\nすこしは　休んでくださいね。\n\n"
.balign 4, 0

glabel D_08050714
.asciz ""
.balign 4, 0

glabel D_08050718
.asciz "\n"
.balign 4, 0
 
 @ Was that you on <
glabel D_0805071c
.asciz "そうそう、"
.balign 4, 0

glabel D_08050728
.text_gold
.asciz ""
.balign 4, 0

@ >?
glabel D_08050730
.text_normal
.asciz "で\n"
.balign 4, 0

@ I heard you just got a Perfect!?
glabel D_08050738
.asciz "パーフェクト　だしたんだって！？"
.balign 4, 0

@ You're still on ______
glabel D_0805075c
.asciz "そういえば、"
.balign 4, 0

@ Are you having trouble?
glabel D_0805076c
.asciz "行きづまってませんか？\n\n"
.balign 4, 0

@ Hmmm... is
glabel D_08050788
.asciz "う～む…　"
.balign 4, 0

@ giving
glabel D_08050794
.text_normal
.asciz "に\n"
.balign 4, 0

@ you trouble earning that medal?
glabel D_0805079c
.asciz "てこずってるんですねぇ。\n\n"
.balign 4, 0

@ Rumor has it
glabel D_080507b8
.asciz "ウワサを　きいたんですけど、\n"
.balign 4, 0

@ was doing a perfect campaign.
glabel D_080507d8
.text_normal
.asciz "　ばかり\n"
.balign 4, 0

@ Weren't you playing it just now?
glabel D_080507e8
.asciz "してるみたいですね。"
.balign 4, 0

@ Ah! Wait, I remember!
glabel D_08050800
.asciz "\n\nあ、　ちょっと　思い出しました！\n\n"
.balign 4, 0

@ Hey, here's a tip!
@ Soon
glabel D_08050828
.asciz "そうそう、\nもうすぐ"
.balign 4, 0

@ is going
@ to be having a perfect campaign.
glabel D_0805083c
.text_normal
.asciz "で、\nパーフェクトキャンペーンを\nするそうですヨ。"
.balign 4, 0

@ Please keep on working hard.
@ I'll be here rooting for you~!
glabel D_08050874
.asciz "\nこれからも　がんばってね。\nおうえん　してるからね～！\n\n"
.balign 4, 0

@ If you like, I could let you
@ <skip that game> if you want to...
@
@ "Please skip it."
@ "No, thank you."
glabel D_080508b0
.ascii "う～ん、もし　よければ　なんだけどね、\n"
.text_gold
.ascii "進めるようにしておく"
.text_normal
.asciz "けど…？\n\n　　　　　　　　「おねがいします」\n　　　　　　　　「けっこうです」"
.balign 4, 0

@ <Leave it to me!>
glabel D_08050944
.ascii "\n\n"
.text_large
.text_gold
.ascii "まかせとき！"
.text_small
.text_normal
.asciz ""
.balign 4, 0

@ Oh, is that so?
@ You're determined to beat
@ it with your own strength.
@ Excellent!
glabel D_08050964
.asciz "そうですか。\nじぶんの　チカラで\nがんばるんですね。\nエライ！！"
.balign 4, 0

@ I hope the next game will go
@ much better for you.
@ Tell me about it next time.
glabel D_080509a4
.asciz "\n次のゲーム　どんなのでしょうね。\nうまくできると　いいね～。\nではまた。"
.balign 4, 0

@ Well then, please
@ do your best!
glabel D_080509ec
.asciz "\n\nでは　がんばってくださいね～。\n\n"
.balign 4, 0

@ Were you practicing for the
@ <Perfect Campaign>?
@
@         "That's right."
@         "Not right now."
glabel D_08050a10
.text_gold
.ascii "パーフェクト　キャンペーン"
.text_normal
.asciz "　に　そなえて　れんしゅうですか？\n\n　　　　　　　　「そうなんです」\n　　　　　　　　「ちがいますヨ」"
.balign 4, 0

@ Just try your best and
@ go get that Perfect!
glabel D_08050a98
.asciz "\nがんばって　パーフェクト、\nとってくださいネ！\n\n"
.balign 4, 0

@ At long last...
@ You have completed
@ the Perfect Campaign!
glabel D_08050acc
.asciz "\nとうとう、\nパーフェクト　キャンペーンを\nコンプリートしたんだって！？"
.balign 4, 0

@ <Crazy awesome!!>
glabel D_08050b14
.text_large
.text_gold
.ascii "\n\nめちゃすごーい!!"
.text_small
.text_normal
.asciz ""
.balign 4, 0

@ Gameplay Logs
glabel D_08050b38
.asciz "ゲームプレイ履歴"
.balign 4, 0

glabel D_08050b4c
.asciz "  "
.balign 4, 0

glabel D_08050b50
.asciz "No. "
.balign 4, 0

glabel D_08050b58
.asciz "---"
.balign 4, 0

@ Average points: 
glabel D_08050b5c
.asciz "平均点 "
.balign 4, 0

@  (Out of 1000 points)
glabel D_08050b64
.asciz " (1000点満点)"
.balign 4, 0

@ Number of times played: 
glabel D_08050b74
.asciz "遊んだ回数 "
.balign 4, 0

@ (x) times
glabel D_08050b80
.asciz "回"
.balign 4, 0

@ (First OK: 
glabel D_08050b84
.asciz "  ( 初合格: "
.balign 4, 0

@ not yet
glabel D_08050b94
.asciz "まだ"
.balign 4, 0

@ th time
glabel D_08050b9c
.asciz "回目"
.balign 4, 0

@ First Superb: 
glabel D_08050ba4
.asciz "  初大合格: "
.balign 4, 0

@ not yet )
glabel D_08050bb4
.asciz "まだ )"
.balign 4, 0

@ th time )
glabel D_08050bbc
.asciz "回目 )"
.balign 4, 0

glabel D_08050bc4
.asciz ""
.balign 4, 0

glabel D_08050bc8
.asciz "???"
.balign 4, 0

glabel D_08050bcc
.asciz ""
.balign 4, 0

@ New Game
glabel D_08050bd0
.asciz "新ゲーム"
.balign 4, 0

glabel D_08050bdc
.asciz "ただいま「"
.balign 4, 0

@ Get a perfect on this
glabel D_08050be8
.asciz "」でパーフェクトを達成すると"
.balign 4, 0

@ game, and you'll recieve
glabel D_08050c08
.asciz "もれなく"
.balign 4, 0

glabel D_08050c14
.asciz "「"
.balign 4, 0

glabel D_08050c18
.asciz "」"
.balign 4, 0

@ 's song
glabel D_08050c1c
.asciz "の曲"
.balign 4, 0

@ recieved as a present!!
glabel D_08050c24
.asciz "をプレゼント!!"
.balign 4, 0

/* 08050c34 */ .word D_08c8ede0
/* 08050c38 */ .word D_06000000
/* 08050c3c */ .word 0xffffffff
/* 08050c40 */ .word D_08c8f214
/* 08050c44 */ .word D_0600e800
/* 08050c48 */ .word 0xffffffff
/* 08050c4c */ .word D_088fed8c
/* 08050c50 */ .word D_03004b64
/* 08050c54 */ .word 0x00000140
/* 08050c58 */ .word 0x00000000
/* 08050c5c */ .word 0x00000000
/* 08050c60 */ .word 0x00000000

/* 08050c64 */ .word D_08c8ede0
/* 08050c68 */ .word D_06000000
/* 08050c6c */ .word 0xffffffff
/* 08050c70 */ .word D_08c8f094
/* 08050c74 */ .word D_0600e800
/* 08050c78 */ .word 0xffffffff
/* 08050c7c */ .word D_088fed8c
/* 08050c80 */ .word D_03004b64
/* 08050c84 */ .word 0x00000140
/* 08050c88 */ .word 0x00000000
/* 08050c8c */ .word 0x00000000
/* 08050c90 */ .word 0x00000000

/* 08050c94 */ .word D_08c8ede0
/* 08050c98 */ .word D_06000000
/* 08050c9c */ .word 0xffffffff
/* 08050ca0 */ .word D_08c8ef24
/* 08050ca4 */ .word D_0600e800
/* 08050ca8 */ .word 0xffffffff
/* 08050cac */ .word D_088fed8c
/* 08050cb0 */ .word D_03004b64
/* 08050cb4 */ .word 0x00000140
/* 08050cb8 */ .word 0x00000000
/* 08050cbc */ .word 0x00000000
/* 08050cc0 */ .word 0x00000000

/* 08050cc4 */ .word D_08c98078
/* 08050cc8 */ .word D_06000000
/* 08050ccc */ .word 0xffffffff
/* 08050cd0 */ .word D_08c98448
/* 08050cd4 */ .word D_0600e800
/* 08050cd8 */ .word 0xffffffff
/* 08050cdc */ .word D_088ff2ac
/* 08050ce0 */ .word D_03004b64
/* 08050ce4 */ .word 0x00000140
/* 08050ce8 */ .word 0x00000000
/* 08050cec */ .word 0x00000000
/* 08050cf0 */ .word 0x00000000

/* 08050cf4 */ .word D_08c98078
/* 08050cf8 */ .word D_06000000
/* 08050cfc */ .word 0xffffffff
/* 08050d00 */ .word D_08c982d0
/* 08050d04 */ .word D_0600e800
/* 08050d08 */ .word 0xffffffff
/* 08050d0c */ .word D_088ff2ac
/* 08050d10 */ .word D_03004b64
/* 08050d14 */ .word 0x00000140
/* 08050d18 */ .word 0x00000000
/* 08050d1c */ .word 0x00000000
/* 08050d20 */ .word 0x00000000

/* 08050d24 */ .word D_08c98078
/* 08050d28 */ .word D_06000000
/* 08050d2c */ .word 0xffffffff
/* 08050d30 */ .word D_08c98188
/* 08050d34 */ .word D_0600e800
/* 08050d38 */ .word 0xffffffff
/* 08050d3c */ .word D_088ff2ac
/* 08050d40 */ .word D_03004b64
/* 08050d44 */ .word 0x00000140
/* 08050d48 */ .word 0x00000000
/* 08050d4c */ .word 0x00000000
/* 08050d50 */ .word 0x00000000

/* 08050d54 */ .word D_08c992d8
/* 08050d58 */ .word D_06000000
/* 08050d5c */ .word 0xffffffff
/* 08050d60 */ .word D_08c996f4
/* 08050d64 */ .word D_0600e800
/* 08050d68 */ .word 0xffffffff
/* 08050d6c */ .word D_088ff2ec
/* 08050d70 */ .word D_03004b64
/* 08050d74 */ .word 0x00000140
/* 08050d78 */ .word 0x00000000
/* 08050d7c */ .word 0x00000000
/* 08050d80 */ .word 0x00000000

/* 08050d84 */ .word D_08c992d8
/* 08050d88 */ .word D_06000000
/* 08050d8c */ .word 0xffffffff
/* 08050d90 */ .word D_08c99580
/* 08050d94 */ .word D_0600e800
/* 08050d98 */ .word 0xffffffff
/* 08050d9c */ .word D_088ff2ec
/* 08050da0 */ .word D_03004b64
/* 08050da4 */ .word 0x00000140
/* 08050da8 */ .word 0x00000000
/* 08050dac */ .word 0x00000000
/* 08050db0 */ .word 0x00000000

/* 08050db4 */ .word D_08c992d8
/* 08050db8 */ .word D_06000000
/* 08050dbc */ .word 0xffffffff
/* 08050dc0 */ .word D_08c99420
/* 08050dc4 */ .word D_0600e800
/* 08050dc8 */ .word 0xffffffff
/* 08050dcc */ .word D_088ff2ec
/* 08050dd0 */ .word D_03004b64
/* 08050dd4 */ .word 0x00000140
/* 08050dd8 */ .word 0x00000000
/* 08050ddc */ .word 0x00000000
/* 08050de0 */ .word 0x00000000

/* 08050de4 */ .word D_08c9f1e0
/* 08050de8 */ .word D_06000000
/* 08050dec */ .word 0xffffffff
/* 08050df0 */ .word D_08c9f4e4
/* 08050df4 */ .word D_0600e800
/* 08050df8 */ .word 0xffffffff
/* 08050dfc */ .word D_088ff44c
/* 08050e00 */ .word D_03004b64
/* 08050e04 */ .word 0x00000140
/* 08050e08 */ .word 0x00000000
/* 08050e0c */ .word 0x00000000
/* 08050e10 */ .word 0x00000000

/* 08050e14 */ .word D_08c9f1e0
/* 08050e18 */ .word D_06000000
/* 08050e1c */ .word 0xffffffff
/* 08050e20 */ .word D_08c9f394
/* 08050e24 */ .word D_0600e800
/* 08050e28 */ .word 0xffffffff
/* 08050e2c */ .word D_088ff44c
/* 08050e30 */ .word D_03004b64
/* 08050e34 */ .word 0x00000140
/* 08050e38 */ .word 0x00000000
/* 08050e3c */ .word 0x00000000
/* 08050e40 */ .word 0x00000000

/* 08050e44 */ .word D_08c9f1e0
/* 08050e48 */ .word D_06000000
/* 08050e4c */ .word 0xffffffff
/* 08050e50 */ .word D_08c9f2a0
/* 08050e54 */ .word D_0600e800
/* 08050e58 */ .word 0xffffffff
/* 08050e5c */ .word D_088ff44c
/* 08050e60 */ .word D_03004b64
/* 08050e64 */ .word 0x00000140
/* 08050e68 */ .word 0x00000000
/* 08050e6c */ .word 0x00000000
/* 08050e70 */ .word 0x00000000

/* 08050e74 */ .word D_08c91cd0
/* 08050e78 */ .word D_06000000
/* 08050e7c */ .word 0xffffffff
/* 08050e80 */ .word D_08c92084
/* 08050e84 */ .word D_0600e800
/* 08050e88 */ .word 0xffffffff
/* 08050e8c */ .word D_088fee0c
/* 08050e90 */ .word D_03004b64
/* 08050e94 */ .word 0x00000140
/* 08050e98 */ .word 0x00000000
/* 08050e9c */ .word 0x00000000
/* 08050ea0 */ .word 0x00000000

/* 08050ea4 */ .word D_08c91cd0
/* 08050ea8 */ .word D_06000000
/* 08050eac */ .word 0xffffffff
/* 08050eb0 */ .word D_08c91f04
/* 08050eb4 */ .word D_0600e800
/* 08050eb8 */ .word 0xffffffff
/* 08050ebc */ .word D_088fee0c
/* 08050ec0 */ .word D_03004b64
/* 08050ec4 */ .word 0x00000140
/* 08050ec8 */ .word 0x00000000
/* 08050ecc */ .word 0x00000000
/* 08050ed0 */ .word 0x00000000

/* 08050ed4 */ .word D_08c91cd0
/* 08050ed8 */ .word D_06000000
/* 08050edc */ .word 0xffffffff
/* 08050ee0 */ .word D_08c91e20
/* 08050ee4 */ .word D_0600e800
/* 08050ee8 */ .word 0xffffffff
/* 08050eec */ .word D_088fee0c
/* 08050ef0 */ .word D_03004b64
/* 08050ef4 */ .word 0x00000140
/* 08050ef8 */ .word 0x00000000
/* 08050efc */ .word 0x00000000
/* 08050f00 */ .word 0x00000000

/* 08050f04 */ .word D_08c9582c
/* 08050f08 */ .word D_06000000
/* 08050f0c */ .word 0xffffffff
/* 08050f10 */ .word D_08c95c8c
/* 08050f14 */ .word D_0600e800
/* 08050f18 */ .word 0xffffffff
/* 08050f1c */ .word D_088ff04c
/* 08050f20 */ .word D_03004b64
/* 08050f24 */ .word 0x00000140
/* 08050f28 */ .word 0x00000000
/* 08050f2c */ .word 0x00000000
/* 08050f30 */ .word 0x00000000

/* 08050f34 */ .word D_08c9582c
/* 08050f38 */ .word D_06000000
/* 08050f3c */ .word 0xffffffff
/* 08050f40 */ .word D_08c95b24
/* 08050f44 */ .word D_0600e800
/* 08050f48 */ .word 0xffffffff
/* 08050f4c */ .word D_088ff04c
/* 08050f50 */ .word D_03004b64
/* 08050f54 */ .word 0x00000140
/* 08050f58 */ .word 0x00000000
/* 08050f5c */ .word 0x00000000
/* 08050f60 */ .word 0x00000000

/* 08050f64 */ .word D_08c9582c
/* 08050f68 */ .word D_06000000
/* 08050f6c */ .word 0xffffffff
/* 08050f70 */ .word D_08c959ac
/* 08050f74 */ .word D_0600e800
/* 08050f78 */ .word 0xffffffff
/* 08050f7c */ .word D_088ff04c
/* 08050f80 */ .word D_03004b64
/* 08050f84 */ .word 0x00000140
/* 08050f88 */ .word 0x00000000
/* 08050f8c */ .word 0x00000000
/* 08050f90 */ .word 0x00000000

/* 08050f94 */ .word D_08cbcbd8
/* 08050f98 */ .word D_06000000
/* 08050f9c */ .word 0xffffffff
/* 08050fa0 */ .word D_08cbcf98
/* 08050fa4 */ .word D_0600e800
/* 08050fa8 */ .word 0xffffffff
/* 08050fac */ .word D_088fff4c
/* 08050fb0 */ .word D_03004b64
/* 08050fb4 */ .word 0x00000140
/* 08050fb8 */ .word 0x00000000
/* 08050fbc */ .word 0x00000000
/* 08050fc0 */ .word 0x00000000

/* 08050fc4 */ .word D_08cbcbd8
/* 08050fc8 */ .word D_06000000
/* 08050fcc */ .word 0xffffffff
/* 08050fd0 */ .word D_08cbce60
/* 08050fd4 */ .word D_0600e800
/* 08050fd8 */ .word 0xffffffff
/* 08050fdc */ .word D_088fff4c
/* 08050fe0 */ .word D_03004b64
/* 08050fe4 */ .word 0x00000140
/* 08050fe8 */ .word 0x00000000
/* 08050fec */ .word 0x00000000
/* 08050ff0 */ .word 0x00000000

/* 08050ff4 */ .word D_08cbcbd8
/* 08050ff8 */ .word D_06000000
/* 08050ffc */ .word 0xffffffff
/* 08051000 */ .word D_08cbcd28
/* 08051004 */ .word D_0600e800
/* 08051008 */ .word 0xffffffff
/* 0805100c */ .word D_088fff4c
/* 08051010 */ .word D_03004b64
/* 08051014 */ .word 0x00000140
/* 08051018 */ .word 0x00000000
/* 0805101c */ .word 0x00000000
/* 08051020 */ .word 0x00000000

/* 08051024 */ .word D_08c93cfc
/* 08051028 */ .word D_06000000
/* 0805102c */ .word 0xffffffff
/* 08051030 */ .word D_08c94064
/* 08051034 */ .word D_0600e800
/* 08051038 */ .word 0xffffffff
/* 0805103c */ .word 0x088ff02c
/* 08051040 */ .word D_03004b64
/* 08051044 */ .word 0x00000140
/* 08051048 */ .word 0x00000000
/* 0805104c */ .word 0x00000000
/* 08051050 */ .word 0x00000000

/* 08051054 */ .word D_08c93cfc
/* 08051058 */ .word D_06000000
/* 0805105c */ .word 0xffffffff
/* 08051060 */ .word D_08c93f48
/* 08051064 */ .word D_0600e800
/* 08051068 */ .word 0xffffffff
/* 0805106c */ .word 0x088ff02c
/* 08051070 */ .word D_03004b64
/* 08051074 */ .word 0x00000140
/* 08051078 */ .word 0x00000000
/* 0805107c */ .word 0x00000000
/* 08051080 */ .word 0x00000000

/* 08051084 */ .word D_08c93cfc
/* 08051088 */ .word D_06000000
/* 0805108c */ .word 0xffffffff
/* 08051090 */ .word D_08c93e18
/* 08051094 */ .word D_0600e800
/* 08051098 */ .word 0xffffffff
/* 0805109c */ .word 0x088ff02c
/* 080510a0 */ .word D_03004b64
/* 080510a4 */ .word 0x00000140
/* 080510a8 */ .word 0x00000000
/* 080510ac */ .word 0x00000000
/* 080510b0 */ .word 0x00000000

/* 080510b4 */ .word D_08cb28a4
/* 080510b8 */ .word D_06000000
/* 080510bc */ .word 0xffffffff
/* 080510c0 */ .word D_08cb2ccc
/* 080510c4 */ .word D_0600e800
/* 080510c8 */ .word 0xffffffff
/* 080510cc */ .word 0x088ffc4c
/* 080510d0 */ .word D_03004b64
/* 080510d4 */ .word 0x00000140
/* 080510d8 */ .word 0x00000000
/* 080510dc */ .word 0x00000000
/* 080510e0 */ .word 0x00000000

/* 080510e4 */ .word D_08cb28a4
/* 080510e8 */ .word D_06000000
/* 080510ec */ .word 0xffffffff
/* 080510f0 */ .word D_08cb2b54
/* 080510f4 */ .word D_0600e800
/* 080510f8 */ .word 0xffffffff
/* 080510fc */ .word 0x088ffc4c
/* 08051100 */ .word D_03004b64
/* 08051104 */ .word 0x00000140
/* 08051108 */ .word 0x00000000
/* 0805110c */ .word 0x00000000
/* 08051110 */ .word 0x00000000

/* 08051114 */ .word D_08cb28a4
/* 08051118 */ .word D_06000000
/* 0805111c */ .word 0xffffffff
/* 08051120 */ .word D_08cb2a08
/* 08051124 */ .word D_0600e800
/* 08051128 */ .word 0xffffffff
/* 0805112c */ .word 0x088ffc4c
/* 08051130 */ .word D_03004b64
/* 08051134 */ .word 0x00000140
/* 08051138 */ .word 0x00000000
/* 0805113c */ .word 0x00000000
/* 08051140 */ .word 0x00000000

/* 08051144 */ .word D_08cb38ac
/* 08051148 */ .word D_06000000
/* 0805114c */ .word 0xffffffff
/* 08051150 */ .word D_08cb3c48
/* 08051154 */ .word D_0600e800
/* 08051158 */ .word 0xffffffff
/* 0805115c */ .word 0x088ffc6c
/* 08051160 */ .word D_03004b64
/* 08051164 */ .word 0x00000140
/* 08051168 */ .word 0x00000000
/* 0805116c */ .word 0x00000000
/* 08051170 */ .word 0x00000000

/* 08051174 */ .word D_08cb38ac
/* 08051178 */ .word D_06000000
/* 0805117c */ .word 0xffffffff
/* 08051180 */ .word D_08cb3b10
/* 08051184 */ .word D_0600e800
/* 08051188 */ .word 0xffffffff
/* 0805118c */ .word 0x088ffc6c
/* 08051190 */ .word D_03004b64
/* 08051194 */ .word 0x00000140
/* 08051198 */ .word 0x00000000
/* 0805119c */ .word 0x00000000
/* 080511a0 */ .word 0x00000000

/* 080511a4 */ .word D_08cb38ac
/* 080511a8 */ .word D_06000000
/* 080511ac */ .word 0xffffffff
/* 080511b0 */ .word D_08cb39d0
/* 080511b4 */ .word D_0600e800
/* 080511b8 */ .word 0xffffffff
/* 080511bc */ .word 0x088ffc6c
/* 080511c0 */ .word D_03004b64
/* 080511c4 */ .word 0x00000140
/* 080511c8 */ .word 0x00000000
/* 080511cc */ .word 0x00000000
/* 080511d0 */ .word 0x00000000

/* 080511d4 */ .word D_08c89a70
/* 080511d8 */ .word D_06000000
/* 080511dc */ .word 0xffffffff
/* 080511e0 */ .word D_08c89dd4
/* 080511e4 */ .word D_0600e800
/* 080511e8 */ .word 0xffffffff
/* 080511ec */ .word 0x088fe8cc
/* 080511f0 */ .word D_03004b64
/* 080511f4 */ .word 0x00000140
/* 080511f8 */ .word 0x00000000
/* 080511fc */ .word 0x00000000
/* 08051200 */ .word 0x00000000

/* 08051204 */ .word D_08c89a70
/* 08051208 */ .word D_06000000
/* 0805120c */ .word 0xffffffff
/* 08051210 */ .word D_08c89cb0
/* 08051214 */ .word D_0600e800
/* 08051218 */ .word 0xffffffff
/* 0805121c */ .word 0x088fe8cc
/* 08051220 */ .word D_03004b64
/* 08051224 */ .word 0x00000140
/* 08051228 */ .word 0x00000000
/* 0805122c */ .word 0x00000000
/* 08051230 */ .word 0x00000000

/* 08051234 */ .word D_08c89a70
/* 08051238 */ .word D_06000000
/* 0805123c */ .word 0xffffffff
/* 08051240 */ .word D_08c89ba4
/* 08051244 */ .word D_0600e800
/* 08051248 */ .word 0xffffffff
/* 0805124c */ .word 0x088fe8cc
/* 08051250 */ .word D_03004b64
/* 08051254 */ .word 0x00000140
/* 08051258 */ .word 0x00000000
/* 0805125c */ .word 0x00000000
/* 08051260 */ .word 0x00000000

/* 08051264 */ .word D_08c9a4d4
/* 08051268 */ .word D_06000000
/* 0805126c */ .word 0xffffffff
/* 08051270 */ .word D_08c9a890
/* 08051274 */ .word D_0600e800
/* 08051278 */ .word 0xffffffff
/* 0805127c */ .word 0x088ff30c
/* 08051280 */ .word D_03004b64
/* 08051284 */ .word 0x00000140
/* 08051288 */ .word 0x00000000
/* 0805128c */ .word 0x00000000
/* 08051290 */ .word 0x00000000

/* 08051294 */ .word D_08c9a4d4
/* 08051298 */ .word D_06000000
/* 0805129c */ .word 0xffffffff
/* 080512a0 */ .word D_08c9a71c
/* 080512a4 */ .word D_0600e800
/* 080512a8 */ .word 0xffffffff
/* 080512ac */ .word 0x088ff30c
/* 080512b0 */ .word D_03004b64
/* 080512b4 */ .word 0x00000140
/* 080512b8 */ .word 0x00000000
/* 080512bc */ .word 0x00000000
/* 080512c0 */ .word 0x00000000

/* 080512c4 */ .word D_08c9a4d4
/* 080512c8 */ .word D_06000000
/* 080512cc */ .word 0xffffffff
/* 080512d0 */ .word D_08c9a610
/* 080512d4 */ .word D_0600e800
/* 080512d8 */ .word 0xffffffff
/* 080512dc */ .word 0x088ff30c
/* 080512e0 */ .word D_03004b64
/* 080512e4 */ .word 0x00000140
/* 080512e8 */ .word 0x00000000
/* 080512ec */ .word 0x00000000
/* 080512f0 */ .word 0x00000000

/* 080512f4 */ .word D_08c8ac68
/* 080512f8 */ .word D_06000000
/* 080512fc */ .word 0xffffffff
/* 08051300 */ .word 0x08c8b14c
/* 08051304 */ .word D_0600e800
/* 08051308 */ .word 0xffffffff
/* 0805130c */ .word 0x088feacc
/* 08051310 */ .word D_03004b64
/* 08051314 */ .word 0x00000140
/* 08051318 */ .word 0x00000000
/* 0805131c */ .word 0x00000000
/* 08051320 */ .word 0x00000000

/* 08051324 */ .word D_08c8ac68
/* 08051328 */ .word D_06000000
/* 0805132c */ .word 0xffffffff
/* 08051330 */ .word 0x08c8afd0
/* 08051334 */ .word D_0600e800
/* 08051338 */ .word 0xffffffff
/* 0805133c */ .word 0x088feacc
/* 08051340 */ .word D_03004b64
/* 08051344 */ .word 0x00000140
/* 08051348 */ .word 0x00000000
/* 0805134c */ .word 0x00000000
/* 08051350 */ .word 0x00000000

/* 08051354 */ .word D_08c8ac68
/* 08051358 */ .word D_06000000
/* 0805135c */ .word 0xffffffff
/* 08051360 */ .word 0x08c8ae7c
/* 08051364 */ .word D_0600e800
/* 08051368 */ .word 0xffffffff
/* 0805136c */ .word 0x088feacc
/* 08051370 */ .word D_03004b64
/* 08051374 */ .word 0x00000140
/* 08051378 */ .word 0x00000000
/* 0805137c */ .word 0x00000000
/* 08051380 */ .word 0x00000000

/* 08051384 */ .word 0x08cb5fdc
/* 08051388 */ .word D_06000000
/* 0805138c */ .word 0xffffffff
/* 08051390 */ .word 0x08cb6394
/* 08051394 */ .word D_0600e800
/* 08051398 */ .word 0xffffffff
/* 0805139c */ .word 0x088ffcac
/* 080513a0 */ .word D_03004b64
/* 080513a4 */ .word 0x00000140
/* 080513a8 */ .word 0x00000000
/* 080513ac */ .word 0x00000000
/* 080513b0 */ .word 0x00000000

/* 080513b4 */ .word 0x08cb5fdc
/* 080513b8 */ .word D_06000000
/* 080513bc */ .word 0xffffffff
/* 080513c0 */ .word 0x08cb6244
/* 080513c4 */ .word D_0600e800
/* 080513c8 */ .word 0xffffffff
/* 080513cc */ .word 0x088ffcac
/* 080513d0 */ .word D_03004b64
/* 080513d4 */ .word 0x00000140
/* 080513d8 */ .word 0x00000000
/* 080513dc */ .word 0x00000000
/* 080513e0 */ .word 0x00000000

/* 080513e4 */ .word 0x08cb5fdc
/* 080513e8 */ .word D_06000000
/* 080513ec */ .word 0xffffffff
/* 080513f0 */ .word 0x08cb60f0
/* 080513f4 */ .word D_0600e800
/* 080513f8 */ .word 0xffffffff
/* 080513fc */ .word 0x088ffcac
/* 08051400 */ .word D_03004b64
/* 08051404 */ .word 0x00000140
/* 08051408 */ .word 0x00000000
/* 0805140c */ .word 0x00000000
/* 08051410 */ .word 0x00000000

/* 08051414 */ .word 0x08cb7644
/* 08051418 */ .word D_06000000
/* 0805141c */ .word 0xffffffff
/* 08051420 */ .word 0x08cb7ab8
/* 08051424 */ .word D_0600e800
/* 08051428 */ .word 0xffffffff
/* 0805142c */ .word 0x088ffcec
/* 08051430 */ .word D_03004b64
/* 08051434 */ .word 0x00000140
/* 08051438 */ .word 0x00000000
/* 0805143c */ .word 0x00000000
/* 08051440 */ .word 0x00000000

/* 08051444 */ .word 0x08cb7644
/* 08051448 */ .word D_06000000
/* 0805144c */ .word 0xffffffff
/* 08051450 */ .word 0x08cb793c
/* 08051454 */ .word D_0600e800
/* 08051458 */ .word 0xffffffff
/* 0805145c */ .word 0x088ffcec
/* 08051460 */ .word D_03004b64
/* 08051464 */ .word 0x00000140
/* 08051468 */ .word 0x00000000
/* 0805146c */ .word 0x00000000
/* 08051470 */ .word 0x00000000

/* 08051474 */ .word 0x08cb7644
/* 08051478 */ .word D_06000000
/* 0805147c */ .word 0xffffffff
/* 08051480 */ .word 0x08cb77bc
/* 08051484 */ .word D_0600e800
/* 08051488 */ .word 0xffffffff
/* 0805148c */ .word 0x088ffcec
/* 08051490 */ .word D_03004b64
/* 08051494 */ .word 0x00000140
/* 08051498 */ .word 0x00000000
/* 0805149c */ .word 0x00000000
/* 080514a0 */ .word 0x00000000

/* 080514a4 */ .word 0x08c9d2e8
/* 080514a8 */ .word D_06000000
/* 080514ac */ .word 0xffffffff
/* 080514b0 */ .word 0x08c9d740
/* 080514b4 */ .word D_0600e800
/* 080514b8 */ .word 0xffffffff
/* 080514bc */ .word 0x088ff40c
/* 080514c0 */ .word D_03004b64
/* 080514c4 */ .word 0x00000140
/* 080514c8 */ .word 0x00000000
/* 080514cc */ .word 0x00000000
/* 080514d0 */ .word 0x00000000

/* 080514d4 */ .word 0x08c9d2e8
/* 080514d8 */ .word D_06000000
/* 080514dc */ .word 0xffffffff
/* 080514e0 */ .word 0x08c9d5c0
/* 080514e4 */ .word D_0600e800
/* 080514e8 */ .word 0xffffffff
/* 080514ec */ .word 0x088ff40c
/* 080514f0 */ .word D_03004b64
/* 080514f4 */ .word 0x00000140
/* 080514f8 */ .word 0x00000000
/* 080514fc */ .word 0x00000000
/* 08051500 */ .word 0x00000000

/* 08051504 */ .word 0x08c9d2e8
/* 08051508 */ .word D_06000000
/* 0805150c */ .word 0xffffffff
/* 08051510 */ .word 0x08c9d450
/* 08051514 */ .word D_0600e800
/* 08051518 */ .word 0xffffffff
/* 0805151c */ .word 0x088ff40c
/* 08051520 */ .word D_03004b64
/* 08051524 */ .word 0x00000140
/* 08051528 */ .word 0x00000000
/* 0805152c */ .word 0x00000000
/* 08051530 */ .word 0x00000000

/* 08051534 */ .word 0x08c9e338
/* 08051538 */ .word D_06000000
/* 0805153c */ .word 0xffffffff
/* 08051540 */ .word 0x08c9e744
/* 08051544 */ .word D_0600e800
/* 08051548 */ .word 0xffffffff
/* 0805154c */ .word 0x088ff42c
/* 08051550 */ .word D_03004b64
/* 08051554 */ .word 0x00000140
/* 08051558 */ .word 0x00000000
/* 0805155c */ .word 0x00000000
/* 08051560 */ .word 0x00000000

/* 08051564 */ .word 0x08c9e338
/* 08051568 */ .word D_06000000
/* 0805156c */ .word 0xffffffff
/* 08051570 */ .word 0x08c9e5c4
/* 08051574 */ .word D_0600e800
/* 08051578 */ .word 0xffffffff
/* 0805157c */ .word 0x088ff42c
/* 08051580 */ .word D_03004b64
/* 08051584 */ .word 0x00000140
/* 08051588 */ .word 0x00000000
/* 0805158c */ .word 0x00000000
/* 08051590 */ .word 0x00000000

/* 08051594 */ .word 0x08c9e338
/* 08051598 */ .word D_06000000
/* 0805159c */ .word 0xffffffff
/* 080515a0 */ .word 0x08c9e484
/* 080515a4 */ .word D_0600e800
/* 080515a8 */ .word 0xffffffff
/* 080515ac */ .word 0x088ff42c
/* 080515b0 */ .word D_03004b64
/* 080515b4 */ .word 0x00000140
/* 080515b8 */ .word 0x00000000
/* 080515bc */ .word 0x00000000
/* 080515c0 */ .word 0x00000000

/* 080515c4 */ .word 0x08cbdd28
/* 080515c8 */ .word D_06000000
/* 080515cc */ .word 0xffffffff
/* 080515d0 */ .word 0x08cbe0f8
/* 080515d4 */ .word D_0600e800
/* 080515d8 */ .word 0xffffffff
/* 080515dc */ .word 0x088fff6c
/* 080515e0 */ .word D_03004b64
/* 080515e4 */ .word 0x00000140
/* 080515e8 */ .word 0x00000000
/* 080515ec */ .word 0x00000000
/* 080515f0 */ .word 0x00000000

/* 080515f4 */ .word 0x08cbdd28
/* 080515f8 */ .word D_06000000
/* 080515fc */ .word 0xffffffff
/* 08051600 */ .word 0x08cbdf84
/* 08051604 */ .word D_0600e800
/* 08051608 */ .word 0xffffffff
/* 0805160c */ .word 0x088fff6c
/* 08051610 */ .word D_03004b64
/* 08051614 */ .word 0x00000140
/* 08051618 */ .word 0x00000000
/* 0805161c */ .word 0x00000000
/* 08051620 */ .word 0x00000000

/* 08051624 */ .word 0x08cbdd28
/* 08051628 */ .word D_06000000
/* 0805162c */ .word 0xffffffff
/* 08051630 */ .word 0x08cbde58
/* 08051634 */ .word D_0600e800
/* 08051638 */ .word 0xffffffff
/* 0805163c */ .word 0x088fff6c
/* 08051640 */ .word D_03004b64
/* 08051644 */ .word 0x00000140
/* 08051648 */ .word 0x00000000
/* 0805164c */ .word 0x00000000
/* 08051650 */ .word 0x00000000

/* 08051654 */ .word 0x08ca23c0
/* 08051658 */ .word D_06000000
/* 0805165c */ .word 0xffffffff
/* 08051660 */ .word 0x08ca29f0
/* 08051664 */ .word D_0600e800
/* 08051668 */ .word 0xffffffff
/* 0805166c */ .word 0x088ff5cc
/* 08051670 */ .word D_03004b64
/* 08051674 */ .word 0x00000140
/* 08051678 */ .word 0x00000000
/* 0805167c */ .word 0x00000000
/* 08051680 */ .word 0x00000000

/* 08051684 */ .word 0x08ca23c0
/* 08051688 */ .word D_06000000
/* 0805168c */ .word 0xffffffff
/* 08051690 */ .word 0x08ca27d0
/* 08051694 */ .word D_0600e800
/* 08051698 */ .word 0xffffffff
/* 0805169c */ .word 0x088ff5cc
/* 080516a0 */ .word D_03004b64
/* 080516a4 */ .word 0x00000140
/* 080516a8 */ .word 0x00000000
/* 080516ac */ .word 0x00000000
/* 080516b0 */ .word 0x00000000

/* 080516b4 */ .word 0x08ca23c0
/* 080516b8 */ .word D_06000000
/* 080516bc */ .word 0xffffffff
/* 080516c0 */ .word 0x08ca25b4
/* 080516c4 */ .word D_0600e800
/* 080516c8 */ .word 0xffffffff
/* 080516cc */ .word 0x088ff5cc
/* 080516d0 */ .word D_03004b64
/* 080516d4 */ .word 0x00000140
/* 080516d8 */ .word 0x00000000
/* 080516dc */ .word 0x00000000
/* 080516e0 */ .word 0x00000000

/* 080516e4 */ .word 0x08c96e80
/* 080516e8 */ .word D_06000000
/* 080516ec */ .word 0xffffffff
/* 080516f0 */ .word 0x08c972dc
/* 080516f4 */ .word D_0600e800
/* 080516f8 */ .word 0xffffffff
/* 080516fc */ .word 0x088ff0ac
/* 08051700 */ .word D_03004b64
/* 08051704 */ .word 0x00000140
/* 08051708 */ .word 0x00000000
/* 0805170c */ .word 0x00000000
/* 08051710 */ .word 0x00000000

/* 08051714 */ .word 0x08c96e80
/* 08051718 */ .word D_06000000
/* 0805171c */ .word 0xffffffff
/* 08051720 */ .word 0x08c9715c
/* 08051724 */ .word D_0600e800
/* 08051728 */ .word 0xffffffff
/* 0805172c */ .word 0x088ff0ac
/* 08051730 */ .word D_03004b64
/* 08051734 */ .word 0x00000140
/* 08051738 */ .word 0x00000000
/* 0805173c */ .word 0x00000000
/* 08051740 */ .word 0x00000000

/* 08051744 */ .word 0x08c96e80
/* 08051748 */ .word D_06000000
/* 0805174c */ .word 0xffffffff
/* 08051750 */ .word 0x08c96ff4
/* 08051754 */ .word D_0600e800
/* 08051758 */ .word 0xffffffff
/* 0805175c */ .word 0x088ff0ac
/* 08051760 */ .word D_03004b64
/* 08051764 */ .word 0x00000140
/* 08051768 */ .word 0x00000000
/* 0805176c */ .word 0x00000000
/* 08051770 */ .word 0x00000000

/* 08051774 */ .word 0x08c9b9fc
/* 08051778 */ .word D_06000000
/* 0805177c */ .word 0xffffffff
/* 08051780 */ .word 0x08c9be48
/* 08051784 */ .word D_0600e800
/* 08051788 */ .word 0xffffffff
/* 0805178c */ .word 0x088ff3ac
/* 08051790 */ .word D_03004b64
/* 08051794 */ .word 0x00000140
/* 08051798 */ .word 0x00000000
/* 0805179c */ .word 0x00000000
/* 080517a0 */ .word 0x00000000

/* 080517a4 */ .word 0x08c9b9fc
/* 080517a8 */ .word D_06000000
/* 080517ac */ .word 0xffffffff
/* 080517b0 */ .word 0x08c9bcd0
/* 080517b4 */ .word D_0600e800
/* 080517b8 */ .word 0xffffffff
/* 080517bc */ .word 0x088ff3ac
/* 080517c0 */ .word D_03004b64
/* 080517c4 */ .word 0x00000140
/* 080517c8 */ .word 0x00000000
/* 080517cc */ .word 0x00000000
/* 080517d0 */ .word 0x00000000

/* 080517d4 */ .word 0x08c9b9fc
/* 080517d8 */ .word D_06000000
/* 080517dc */ .word 0xffffffff
/* 080517e0 */ .word 0x08c9bb60
/* 080517e4 */ .word D_0600e800
/* 080517e8 */ .word 0xffffffff
/* 080517ec */ .word 0x088ff3ac
/* 080517f0 */ .word D_03004b64
/* 080517f4 */ .word 0x00000140
/* 080517f8 */ .word 0x00000000
/* 080517fc */ .word 0x00000000
/* 08051800 */ .word 0x00000000

/* 08051804 */ .word 0x08cb8de4
/* 08051808 */ .word D_06000000
/* 0805180c */ .word 0xffffffff
/* 08051810 */ .word 0x08cb9264
/* 08051814 */ .word D_0600e800
/* 08051818 */ .word 0xffffffff
/* 0805181c */ .word 0x088ffd0c
/* 08051820 */ .word D_03004b64
/* 08051824 */ .word 0x00000140
/* 08051828 */ .word 0x00000000
/* 0805182c */ .word 0x00000000
/* 08051830 */ .word 0x00000000

/* 08051834 */ .word 0x08cb8de4
/* 08051838 */ .word D_06000000
/* 0805183c */ .word 0xffffffff
/* 08051840 */ .word 0x08cb90e4
/* 08051844 */ .word D_0600e800
/* 08051848 */ .word 0xffffffff
/* 0805184c */ .word 0x088ffd0c
/* 08051850 */ .word D_03004b64
/* 08051854 */ .word 0x00000140
/* 08051858 */ .word 0x00000000
/* 0805185c */ .word 0x00000000
/* 08051860 */ .word 0x00000000

/* 08051864 */ .word 0x08cb8de4
/* 08051868 */ .word D_06000000
/* 0805186c */ .word 0xffffffff
/* 08051870 */ .word 0x08cb8f64
/* 08051874 */ .word D_0600e800
/* 08051878 */ .word 0xffffffff
/* 0805187c */ .word 0x088ffd0c
/* 08051880 */ .word D_03004b64
/* 08051884 */ .word 0x00000140
/* 08051888 */ .word 0x00000000
/* 0805188c */ .word 0x00000000
/* 08051890 */ .word 0x00000000

/* 08051894 */ .word 0x08cb9fd8
/* 08051898 */ .word D_06000000
/* 0805189c */ .word 0xffffffff
/* 080518a0 */ .word 0x08cba3ec
/* 080518a4 */ .word D_0600e800
/* 080518a8 */ .word 0xffffffff
/* 080518ac */ .word 0x088fff0c
/* 080518b0 */ .word D_03004b64
/* 080518b4 */ .word 0x00000140
/* 080518b8 */ .word 0x00000000
/* 080518bc */ .word 0x00000000
/* 080518c0 */ .word 0x00000000

/* 080518c4 */ .word 0x08cb9fd8
/* 080518c8 */ .word D_06000000
/* 080518cc */ .word 0xffffffff
/* 080518d0 */ .word 0x08cba28c
/* 080518d4 */ .word D_0600e800
/* 080518d8 */ .word 0xffffffff
/* 080518dc */ .word 0x088fff0c
/* 080518e0 */ .word D_03004b64
/* 080518e4 */ .word 0x00000140
/* 080518e8 */ .word 0x00000000
/* 080518ec */ .word 0x00000000
/* 080518f0 */ .word 0x00000000

/* 080518f4 */ .word 0x08cb9fd8
/* 080518f8 */ .word D_06000000
/* 080518fc */ .word 0xffffffff
/* 08051900 */ .word 0x08cba154
/* 08051904 */ .word D_0600e800
/* 08051908 */ .word 0xffffffff
/* 0805190c */ .word 0x088fff0c
/* 08051910 */ .word D_03004b64
/* 08051914 */ .word 0x00000140
/* 08051918 */ .word 0x00000000
/* 0805191c */ .word 0x00000000
/* 08051920 */ .word 0x00000000

/* 08051924 */ .word 0x08ca5684
/* 08051928 */ .word D_06000000
/* 0805192c */ .word 0xffffffff
/* 08051930 */ .word 0x08ca59d0
/* 08051934 */ .word D_0600e800
/* 08051938 */ .word 0xffffffff
/* 0805193c */ .word 0x088ff80c
/* 08051940 */ .word D_03004b64
/* 08051944 */ .word 0x00000140
/* 08051948 */ .word 0x00000000
/* 0805194c */ .word 0x00000000
/* 08051950 */ .word 0x00000000

/* 08051954 */ .word 0x08ca5684
/* 08051958 */ .word D_06000000
/* 0805195c */ .word 0xffffffff
/* 08051960 */ .word 0x08ca5884
/* 08051964 */ .word D_0600e800
/* 08051968 */ .word 0xffffffff
/* 0805196c */ .word 0x088ff80c
/* 08051970 */ .word D_03004b64
/* 08051974 */ .word 0x00000140
/* 08051978 */ .word 0x00000000
/* 0805197c */ .word 0x00000000
/* 08051980 */ .word 0x00000000

/* 08051984 */ .word 0x08ca5684
/* 08051988 */ .word D_06000000
/* 0805198c */ .word 0xffffffff
/* 08051990 */ .word 0x08ca5784
/* 08051994 */ .word D_0600e800
/* 08051998 */ .word 0xffffffff
/* 0805199c */ .word 0x088ff80c
/* 080519a0 */ .word D_03004b64
/* 080519a4 */ .word 0x00000140
/* 080519a8 */ .word 0x00000000
/* 080519ac */ .word 0x00000000
/* 080519b0 */ .word 0x00000000

/* 080519b4 */ .word 0x08cbb530
/* 080519b8 */ .word D_06000000
/* 080519bc */ .word 0xffffffff
/* 080519c0 */ .word 0x08cbb938
/* 080519c4 */ .word D_0600e800
/* 080519c8 */ .word 0xffffffff
/* 080519cc */ .word 0x088fff2c
/* 080519d0 */ .word D_03004b64
/* 080519d4 */ .word 0x00000140
/* 080519d8 */ .word 0x00000000
/* 080519dc */ .word 0x00000000
/* 080519e0 */ .word 0x00000000

/* 080519e4 */ .word 0x08cbb530
/* 080519e8 */ .word D_06000000
/* 080519ec */ .word 0xffffffff
/* 080519f0 */ .word 0x08cbb7bc
/* 080519f4 */ .word D_0600e800
/* 080519f8 */ .word 0xffffffff
/* 080519fc */ .word 0x088fff2c
/* 08051a00 */ .word D_03004b64
/* 08051a04 */ .word 0x00000140
/* 08051a08 */ .word 0x00000000
/* 08051a0c */ .word 0x00000000
/* 08051a10 */ .word 0x00000000

/* 08051a14 */ .word 0x08cbb530
/* 08051a18 */ .word D_06000000
/* 08051a1c */ .word 0xffffffff
/* 08051a20 */ .word 0x08cbb67c
/* 08051a24 */ .word D_0600e800
/* 08051a28 */ .word 0xffffffff
/* 08051a2c */ .word 0x088fff2c
/* 08051a30 */ .word D_03004b64
/* 08051a34 */ .word 0x00000140
/* 08051a38 */ .word 0x00000000
/* 08051a3c */ .word 0x00000000
/* 08051a40 */ .word 0x00000000

/* 08051a44 */ .word 0x08c92fc0
/* 08051a48 */ .word D_06000000
/* 08051a4c */ .word 0xffffffff
/* 08051a50 */ .word 0x08c93340
/* 08051a54 */ .word D_0600e800
/* 08051a58 */ .word 0xffffffff
/* 08051a5c */ .word 0x088ff00c
/* 08051a60 */ .word D_03004b64
/* 08051a64 */ .word 0x00000140
/* 08051a68 */ .word 0x00000000
/* 08051a6c */ .word 0x00000000
/* 08051a70 */ .word 0x00000000

/* 08051a74 */ .word 0x08c92fc0
/* 08051a78 */ .word D_06000000
/* 08051a7c */ .word 0xffffffff
/* 08051a80 */ .word 0x08c931c0
/* 08051a84 */ .word D_0600e800
/* 08051a88 */ .word 0xffffffff
/* 08051a8c */ .word 0x088ff00c
/* 08051a90 */ .word D_03004b64
/* 08051a94 */ .word 0x00000140
/* 08051a98 */ .word 0x00000000
/* 08051a9c */ .word 0x00000000
/* 08051aa0 */ .word 0x00000000

/* 08051aa4 */ .word 0x08c92fc0
/* 08051aa8 */ .word D_06000000
/* 08051aac */ .word 0xffffffff
/* 08051ab0 */ .word 0x08c930c4
/* 08051ab4 */ .word D_0600e800
/* 08051ab8 */ .word 0xffffffff
/* 08051abc */ .word 0x088ff00c
/* 08051ac0 */ .word D_03004b64
/* 08051ac4 */ .word 0x00000140
/* 08051ac8 */ .word 0x00000000
/* 08051acc */ .word 0x00000000
/* 08051ad0 */ .word 0x00000000

/* 08051ad4 */ .word 0x08cb4fbc
/* 08051ad8 */ .word D_06000000
/* 08051adc */ .word 0xffffffff
/* 08051ae0 */ .word 0x08cb542c
/* 08051ae4 */ .word D_0600e800
/* 08051ae8 */ .word 0xffffffff
/* 08051aec */ .word 0x088ffc8c
/* 08051af0 */ .word D_03004b64
/* 08051af4 */ .word 0x00000140
/* 08051af8 */ .word 0x00000000
/* 08051afc */ .word 0x00000000
/* 08051b00 */ .word 0x00000000

/* 08051b04 */ .word 0x08cb4fbc
/* 08051b08 */ .word D_06000000
/* 08051b0c */ .word 0xffffffff
/* 08051b10 */ .word 0x08cb52ac
/* 08051b14 */ .word D_0600e800
/* 08051b18 */ .word 0xffffffff
/* 08051b1c */ .word 0x088ffc8c
/* 08051b20 */ .word D_03004b64
/* 08051b24 */ .word 0x00000140
/* 08051b28 */ .word 0x00000000
/* 08051b2c */ .word 0x00000000
/* 08051b30 */ .word 0x00000000

/* 08051b34 */ .word 0x08cb4fbc
/* 08051b38 */ .word D_06000000
/* 08051b3c */ .word 0xffffffff
/* 08051b40 */ .word 0x08cb513c
/* 08051b44 */ .word D_0600e800
/* 08051b48 */ .word 0xffffffff
/* 08051b4c */ .word 0x088ffc8c
/* 08051b50 */ .word D_03004b64
/* 08051b54 */ .word 0x00000140
/* 08051b58 */ .word 0x00000000
/* 08051b5c */ .word 0x00000000
/* 08051b60 */ .word 0x00000000

/* 08051b64 */ .word 0x08c904a0
/* 08051b68 */ .word D_06000000
/* 08051b6c */ .word 0xffffffff
/* 08051b70 */ .word 0x08c90910
/* 08051b74 */ .word D_0600e800
/* 08051b78 */ .word 0xffffffff
/* 08051b7c */ .word 0x088fedcc
/* 08051b80 */ .word D_03004b64
/* 08051b84 */ .word 0x00000140
/* 08051b88 */ .word 0x00000000
/* 08051b8c */ .word 0x00000000
/* 08051b90 */ .word 0x00000000

/* 08051b94 */ .word 0x08c904a0
/* 08051b98 */ .word D_06000000
/* 08051b9c */ .word 0xffffffff
/* 08051ba0 */ .word 0x08c907a0
/* 08051ba4 */ .word D_0600e800
/* 08051ba8 */ .word 0xffffffff
/* 08051bac */ .word 0x088fedcc
/* 08051bb0 */ .word D_03004b64
/* 08051bb4 */ .word 0x00000140
/* 08051bb8 */ .word 0x00000000
/* 08051bbc */ .word 0x00000000
/* 08051bc0 */ .word 0x00000000

/* 08051bc4 */ .word 0x08c904a0
/* 08051bc8 */ .word D_06000000
/* 08051bcc */ .word 0xffffffff
/* 08051bd0 */ .word 0x08c90620
/* 08051bd4 */ .word D_0600e800
/* 08051bd8 */ .word 0xffffffff
/* 08051bdc */ .word 0x088fedcc
/* 08051be0 */ .word D_03004b64
/* 08051be4 */ .word 0x00000140
/* 08051be8 */ .word 0x00000000
/* 08051bec */ .word 0x00000000
/* 08051bf0 */ .word 0x00000000

/* 08051bf4 */ .word 0x08ca37cc
/* 08051bf8 */ .word D_06000000
/* 08051bfc */ .word 0xffffffff
/* 08051c00 */ .word 0x08ca3b88
/* 08051c04 */ .word D_0600e800
/* 08051c08 */ .word 0xffffffff
/* 08051c0c */ .word 0x088ff7cc
/* 08051c10 */ .word D_03004b64
/* 08051c14 */ .word 0x00000140
/* 08051c18 */ .word 0x00000000
/* 08051c1c */ .word 0x00000000
/* 08051c20 */ .word 0x00000000

/* 08051c24 */ .word 0x08ca37cc
/* 08051c28 */ .word D_06000000
/* 08051c2c */ .word 0xffffffff
/* 08051c30 */ .word 0x08ca3a08
/* 08051c34 */ .word D_0600e800
/* 08051c38 */ .word 0xffffffff
/* 08051c3c */ .word 0x088ff7cc
/* 08051c40 */ .word D_03004b64
/* 08051c44 */ .word 0x00000140
/* 08051c48 */ .word 0x00000000
/* 08051c4c */ .word 0x00000000
/* 08051c50 */ .word 0x00000000

/* 08051c54 */ .word 0x08ca37cc
/* 08051c58 */ .word D_06000000
/* 08051c5c */ .word 0xffffffff
/* 08051c60 */ .word 0x08ca38fc
/* 08051c64 */ .word D_0600e800
/* 08051c68 */ .word 0xffffffff
/* 08051c6c */ .word 0x088ff7cc
/* 08051c70 */ .word D_03004b64
/* 08051c74 */ .word 0x00000140
/* 08051c78 */ .word 0x00000000
/* 08051c7c */ .word 0x00000000
/* 08051c80 */ .word 0x00000000

/* 08051c84 */ .word 0x08ca48dc
/* 08051c88 */ .word D_06000000
/* 08051c8c */ .word 0xffffffff
/* 08051c90 */ .word 0x08ca4c84
/* 08051c94 */ .word D_0600e800
/* 08051c98 */ .word 0xffffffff
/* 08051c9c */ .word 0x088ff7ec
/* 08051ca0 */ .word D_03004b64
/* 08051ca4 */ .word 0x00000140
/* 08051ca8 */ .word 0x00000000
/* 08051cac */ .word 0x00000000
/* 08051cb0 */ .word 0x00000000

/* 08051cb4 */ .word 0x08ca48dc
/* 08051cb8 */ .word D_06000000
/* 08051cbc */ .word 0xffffffff
/* 08051cc0 */ .word 0x08ca4b08
/* 08051cc4 */ .word D_0600e800
/* 08051cc8 */ .word 0xffffffff
/* 08051ccc */ .word 0x088ff7ec
/* 08051cd0 */ .word D_03004b64
/* 08051cd4 */ .word 0x00000140
/* 08051cd8 */ .word 0x00000000
/* 08051cdc */ .word 0x00000000
/* 08051ce0 */ .word 0x00000000

/* 08051ce4 */ .word 0x08ca48dc
/* 08051ce8 */ .word D_06000000
/* 08051cec */ .word 0xffffffff
/* 08051cf0 */ .word 0x08ca4a00
/* 08051cf4 */ .word D_0600e800
/* 08051cf8 */ .word 0xffffffff
/* 08051cfc */ .word 0x088ff7ec
/* 08051d00 */ .word D_03004b64
/* 08051d04 */ .word 0x00000140
/* 08051d08 */ .word 0x00000000
/* 08051d0c */ .word 0x00000000
/* 08051d10 */ .word 0x00000000

/* 08051d14 */ .word 0x08ca0ee0
/* 08051d18 */ .word D_06000000
/* 08051d1c */ .word 0xffffffff
/* 08051d20 */ .word 0x08ca1324
/* 08051d24 */ .word D_0600e800
/* 08051d28 */ .word 0xffffffff
/* 08051d2c */ .word 0x088ff56c
/* 08051d30 */ .word D_03004b64
/* 08051d34 */ .word 0x00000140
/* 08051d38 */ .word 0x00000000
/* 08051d3c */ .word 0x00000000
/* 08051d40 */ .word 0x00000000

/* 08051d44 */ .word 0x08ca0ee0
/* 08051d48 */ .word D_06000000
/* 08051d4c */ .word 0xffffffff
/* 08051d50 */ .word 0x08ca11a8
/* 08051d54 */ .word D_0600e800
/* 08051d58 */ .word 0xffffffff
/* 08051d5c */ .word 0x088ff56c
/* 08051d60 */ .word D_03004b64
/* 08051d64 */ .word 0x00000140
/* 08051d68 */ .word 0x00000000
/* 08051d6c */ .word 0x00000000
/* 08051d70 */ .word 0x00000000

/* 08051d74 */ .word 0x08ca0ee0
/* 08051d78 */ .word D_06000000
/* 08051d7c */ .word 0xffffffff
/* 08051d80 */ .word 0x08ca103c
/* 08051d84 */ .word D_0600e800
/* 08051d88 */ .word 0xffffffff
/* 08051d8c */ .word 0x088ff56c
/* 08051d90 */ .word D_03004b64
/* 08051d94 */ .word 0x00000140
/* 08051d98 */ .word 0x00000000
/* 08051d9c */ .word 0x00000000
/* 08051da0 */ .word 0x00000000

/* 08051da4 */ .word 0x08c8d650
/* 08051da8 */ .word D_06000000
/* 08051dac */ .word 0xffffffff
/* 08051db0 */ .word 0x08c8da08
/* 08051db4 */ .word D_0600e800
/* 08051db8 */ .word 0xffffffff
/* 08051dbc */ .word 0x088fecec
/* 08051dc0 */ .word D_03004b64
/* 08051dc4 */ .word 0x00000140
/* 08051dc8 */ .word 0x00000000
/* 08051dcc */ .word 0x00000000
/* 08051dd0 */ .word 0x00000000

/* 08051dd4 */ .word 0x08c8d650
/* 08051dd8 */ .word D_06000000
/* 08051ddc */ .word 0xffffffff
/* 08051de0 */ .word 0x08c8d8a8
/* 08051de4 */ .word D_0600e800
/* 08051de8 */ .word 0xffffffff
/* 08051dec */ .word 0x088fecec
/* 08051df0 */ .word D_03004b64
/* 08051df4 */ .word 0x00000140
/* 08051df8 */ .word 0x00000000
/* 08051dfc */ .word 0x00000000
/* 08051e00 */ .word 0x00000000

/* 08051e04 */ .word 0x08c8d650
/* 08051e08 */ .word D_06000000
/* 08051e0c */ .word 0xffffffff
/* 08051e10 */ .word 0x08c8d7d0
/* 08051e14 */ .word D_0600e800
/* 08051e18 */ .word 0xffffffff
/* 08051e1c */ .word 0x088fecec
/* 08051e20 */ .word D_03004b64
/* 08051e24 */ .word 0x00000140
/* 08051e28 */ .word 0x00000000
/* 08051e2c */ .word 0x00000000
/* 08051e30 */ .word 0x00000000

/* 08051e34 */ .word 0x08c8c564
/* 08051e38 */ .word D_06000000
/* 08051e3c */ .word 0xffffffff
/* 08051e40 */ .word 0x08c8c95c
/* 08051e44 */ .word D_0600e800
/* 08051e48 */ .word 0xffffffff
/* 08051e4c */ .word 0x088feccc
/* 08051e50 */ .word D_03004b64
/* 08051e54 */ .word 0x00000140
/* 08051e58 */ .word 0x00000000
/* 08051e5c */ .word 0x00000000
/* 08051e60 */ .word 0x00000000

/* 08051e64 */ .word 0x08c8c564
/* 08051e68 */ .word D_06000000
/* 08051e6c */ .word 0xffffffff
/* 08051e70 */ .word 0x08c8c7e4
/* 08051e74 */ .word D_0600e800
/* 08051e78 */ .word 0xffffffff
/* 08051e7c */ .word 0x088feccc
/* 08051e80 */ .word D_03004b64
/* 08051e84 */ .word 0x00000140
/* 08051e88 */ .word 0x00000000
/* 08051e8c */ .word 0x00000000
/* 08051e90 */ .word 0x00000000

/* 08051e94 */ .word 0x08c8c564
/* 08051e98 */ .word D_06000000
/* 08051e9c */ .word 0xffffffff
/* 08051ea0 */ .word 0x08c8c694
/* 08051ea4 */ .word D_0600e800
/* 08051ea8 */ .word 0xffffffff
/* 08051eac */ .word 0x088feccc
/* 08051eb0 */ .word D_03004b64
/* 08051eb4 */ .word 0x00000140
/* 08051eb8 */ .word 0x00000000
/* 08051ebc */ .word 0x00000000
/* 08051ec0 */ .word 0x00000000

/* 08051ec4 */ .word 0x08ca66dc
/* 08051ec8 */ .word D_06000000
/* 08051ecc */ .word 0xffffffff
/* 08051ed0 */ .word 0x08ca69c8
/* 08051ed4 */ .word D_0600e800
/* 08051ed8 */ .word 0xffffffff
/* 08051edc */ .word 0x088ffa0c
/* 08051ee0 */ .word D_03004b64
/* 08051ee4 */ .word 0x00000140
/* 08051ee8 */ .word 0x00000000
/* 08051eec */ .word 0x00000000
/* 08051ef0 */ .word 0x00000000

/* 08051ef4 */ .word 0x08ca66dc
/* 08051ef8 */ .word D_06000000
/* 08051efc */ .word 0xffffffff
/* 08051f00 */ .word 0x08ca6868
/* 08051f04 */ .word D_0600e800
/* 08051f08 */ .word 0xffffffff
/* 08051f0c */ .word 0x088ffa0c
/* 08051f10 */ .word D_03004b64
/* 08051f14 */ .word 0x00000140
/* 08051f18 */ .word 0x00000000
/* 08051f1c */ .word 0x00000000
/* 08051f20 */ .word 0x00000000

/* 08051f24 */ .word 0x08ca66dc
/* 08051f28 */ .word D_06000000
/* 08051f2c */ .word 0xffffffff
/* 08051f30 */ .word 0x08ca676c
/* 08051f34 */ .word D_0600e800
/* 08051f38 */ .word 0xffffffff
/* 08051f3c */ .word 0x088ffa0c
/* 08051f40 */ .word D_03004b64
/* 08051f44 */ .word 0x00000140
/* 08051f48 */ .word 0x00000000
/* 08051f4c */ .word 0x00000000
/* 08051f50 */ .word 0x00000000

/* 08051f54 */ .word 0x08ca7cbc
/* 08051f58 */ .word D_06000000
/* 08051f5c */ .word 0xffffffff
/* 08051f60 */ .word 0x08ca82dc
/* 08051f64 */ .word D_0600e800
/* 08051f68 */ .word 0xffffffff
/* 08051f6c */ .word 0x088ffa2c
/* 08051f70 */ .word D_03004b64
/* 08051f74 */ .word 0x00000140
/* 08051f78 */ .word 0x00000000
/* 08051f7c */ .word 0x00000000
/* 08051f80 */ .word 0x00000000

/* 08051f84 */ .word 0x08ca7cbc
/* 08051f88 */ .word D_06000000
/* 08051f8c */ .word 0xffffffff
/* 08051f90 */ .word 0x08ca80c0
/* 08051f94 */ .word D_0600e800
/* 08051f98 */ .word 0xffffffff
/* 08051f9c */ .word 0x088ffa2c
/* 08051fa0 */ .word D_03004b64
/* 08051fa4 */ .word 0x00000140
/* 08051fa8 */ .word 0x00000000
/* 08051fac */ .word 0x00000000
/* 08051fb0 */ .word 0x00000000

/* 08051fb4 */ .word 0x08ca7cbc
/* 08051fb8 */ .word D_06000000
/* 08051fbc */ .word 0xffffffff
/* 08051fc0 */ .word 0x08ca7ecc
/* 08051fc4 */ .word D_0600e800
/* 08051fc8 */ .word 0xffffffff
/* 08051fcc */ .word 0x088ffa2c
/* 08051fd0 */ .word D_03004b64
/* 08051fd4 */ .word 0x00000140
/* 08051fd8 */ .word 0x00000000
/* 08051fdc */ .word 0x00000000
/* 08051fe0 */ .word 0x00000000

/* 08051fe4 */ .word 0x08ca94f0
/* 08051fe8 */ .word D_06000000
/* 08051fec */ .word 0xffffffff
/* 08051ff0 */ .word 0x08ca9afc
/* 08051ff4 */ .word D_0600e800
/* 08051ff8 */ .word 0xffffffff
/* 08051ffc */ .word 0x088ffa8c
/* 08052000 */ .word D_03004b64
/* 08052004 */ .word 0x00000140
/* 08052008 */ .word 0x00000000
/* 0805200c */ .word 0x00000000
/* 08052010 */ .word 0x00000000

/* 08052014 */ .word 0x08ca94f0
/* 08052018 */ .word D_06000000
/* 0805201c */ .word 0xffffffff
/* 08052020 */ .word 0x08ca98f8
/* 08052024 */ .word D_0600e800
/* 08052028 */ .word 0xffffffff
/* 0805202c */ .word 0x088ffa8c
/* 08052030 */ .word D_03004b64
/* 08052034 */ .word 0x00000140
/* 08052038 */ .word 0x00000000
/* 0805203c */ .word 0x00000000
/* 08052040 */ .word 0x00000000

/* 08052044 */ .word 0x08ca94f0
/* 08052048 */ .word D_06000000
/* 0805204c */ .word 0xffffffff
/* 08052050 */ .word 0x08ca96e4
/* 08052054 */ .word D_0600e800
/* 08052058 */ .word 0xffffffff
/* 0805205c */ .word 0x088ffa8c
/* 08052060 */ .word D_03004b64
/* 08052064 */ .word 0x00000140
/* 08052068 */ .word 0x00000000
/* 0805206c */ .word 0x00000000
/* 08052070 */ .word 0x00000000

/* 08052074 */ .word 0x08caaf8c
/* 08052078 */ .word D_06000000
/* 0805207c */ .word 0xffffffff
/* 08052080 */ .word 0x08cab5bc
/* 08052084 */ .word D_0600e800
/* 08052088 */ .word 0xffffffff
/* 0805208c */ .word 0x088ffaac
/* 08052090 */ .word D_03004b64
/* 08052094 */ .word 0x00000140
/* 08052098 */ .word 0x00000000
/* 0805209c */ .word 0x00000000
/* 080520a0 */ .word 0x00000000

/* 080520a4 */ .word 0x08caaf8c
/* 080520a8 */ .word D_06000000
/* 080520ac */ .word 0xffffffff
/* 080520b0 */ .word 0x08cab3ac
/* 080520b4 */ .word D_0600e800
/* 080520b8 */ .word 0xffffffff
/* 080520bc */ .word 0x088ffaac
/* 080520c0 */ .word D_03004b64
/* 080520c4 */ .word 0x00000140
/* 080520c8 */ .word 0x00000000
/* 080520cc */ .word 0x00000000
/* 080520d0 */ .word 0x00000000

/* 080520d4 */ .word 0x08caaf8c
/* 080520d8 */ .word D_06000000
/* 080520dc */ .word 0xffffffff
/* 080520e0 */ .word 0x08cab1a8
/* 080520e4 */ .word D_0600e800
/* 080520e8 */ .word 0xffffffff
/* 080520ec */ .word 0x088ffaac
/* 080520f0 */ .word D_03004b64
/* 080520f4 */ .word 0x00000140
/* 080520f8 */ .word 0x00000000
/* 080520fc */ .word 0x00000000
/* 08052100 */ .word 0x00000000

/* 08052104 */ .word 0x08cac550
/* 08052108 */ .word D_06000000
/* 0805210c */ .word 0xffffffff
/* 08052110 */ .word 0x08cac908
/* 08052114 */ .word D_0600e800
/* 08052118 */ .word 0xffffffff
/* 0805211c */ .word 0x088ffb0c
/* 08052120 */ .word D_03004b64
/* 08052124 */ .word 0x00000140
/* 08052128 */ .word 0x00000000
/* 0805212c */ .word 0x00000000
/* 08052130 */ .word 0x00000000

/* 08052134 */ .word 0x08cac550
/* 08052138 */ .word D_06000000
/* 0805213c */ .word 0xffffffff
/* 08052140 */ .word 0x08cac7e0
/* 08052144 */ .word D_0600e800
/* 08052148 */ .word 0xffffffff
/* 0805214c */ .word 0x088ffb0c
/* 08052150 */ .word D_03004b64
/* 08052154 */ .word 0x00000140
/* 08052158 */ .word 0x00000000
/* 0805215c */ .word 0x00000000
/* 08052160 */ .word 0x00000000

/* 08052164 */ .word 0x08cac550
/* 08052168 */ .word D_06000000
/* 0805216c */ .word 0xffffffff
/* 08052170 */ .word 0x08cac6ac
/* 08052174 */ .word D_0600e800
/* 08052178 */ .word 0xffffffff
/* 0805217c */ .word 0x088ffb0c
/* 08052180 */ .word D_03004b64
/* 08052184 */ .word 0x00000140
/* 08052188 */ .word 0x00000000
/* 0805218c */ .word 0x00000000
/* 08052190 */ .word 0x00000000

/* 08052194 */ .word 0x08cad9f4
/* 08052198 */ .word D_06000000
/* 0805219c */ .word 0xffffffff
/* 080521a0 */ .word 0x08cadff0
/* 080521a4 */ .word D_0600e800
/* 080521a8 */ .word 0xffffffff
/* 080521ac */ .word 0x088ffb2c
/* 080521b0 */ .word D_03004b64
/* 080521b4 */ .word 0x00000140
/* 080521b8 */ .word 0x00000000
/* 080521bc */ .word 0x00000000
/* 080521c0 */ .word 0x00000000

/* 080521c4 */ .word 0x08cad9f4
/* 080521c8 */ .word D_06000000
/* 080521cc */ .word 0xffffffff
/* 080521d0 */ .word 0x08caddf8
/* 080521d4 */ .word D_0600e800
/* 080521d8 */ .word 0xffffffff
/* 080521dc */ .word 0x088ffb2c
/* 080521e0 */ .word D_03004b64
/* 080521e4 */ .word 0x00000140
/* 080521e8 */ .word 0x00000000
/* 080521ec */ .word 0x00000000
/* 080521f0 */ .word 0x00000000

/* 080521f4 */ .word 0x08cad9f4
/* 080521f8 */ .word D_06000000
/* 080521fc */ .word 0xffffffff
/* 08052200 */ .word 0x08cadbe0
/* 08052204 */ .word D_0600e800
/* 08052208 */ .word 0xffffffff
/* 0805220c */ .word 0x088ffb2c
/* 08052210 */ .word D_03004b64
/* 08052214 */ .word 0x00000140
/* 08052218 */ .word 0x00000000
/* 0805221c */ .word 0x00000000
/* 08052220 */ .word 0x00000000

/* 08052224 */ .word 0x08caf878
/* 08052228 */ .word D_06000000
/* 0805222c */ .word 0xffffffff
/* 08052230 */ .word 0x08cafce8
/* 08052234 */ .word D_0600e800
/* 08052238 */ .word 0xffffffff
/* 0805223c */ .word 0x088ffb8c
/* 08052240 */ .word D_03004b64
/* 08052244 */ .word 0x00000140
/* 08052248 */ .word 0x00000000
/* 0805224c */ .word 0x00000000
/* 08052250 */ .word 0x00000000

/* 08052254 */ .word 0x08caf878
/* 08052258 */ .word D_06000000
/* 0805225c */ .word 0xffffffff
/* 08052260 */ .word 0x08cafb68
/* 08052264 */ .word D_0600e800
/* 08052268 */ .word 0xffffffff
/* 0805226c */ .word 0x088ffb8c
/* 08052270 */ .word D_03004b64
/* 08052274 */ .word 0x00000140
/* 08052278 */ .word 0x00000000
/* 0805227c */ .word 0x00000000
/* 08052280 */ .word 0x00000000

/* 08052284 */ .word 0x08caf878
/* 08052288 */ .word D_06000000
/* 0805228c */ .word 0xffffffff
/* 08052290 */ .word 0x08caf9f4
/* 08052294 */ .word D_0600e800
/* 08052298 */ .word 0xffffffff
/* 0805229c */ .word 0x088ffb8c
/* 080522a0 */ .word D_03004b64
/* 080522a4 */ .word 0x00000140
/* 080522a8 */ .word 0x00000000
/* 080522ac */ .word 0x00000000
/* 080522b0 */ .word 0x00000000

/* 080522b4 */ .word 0x08cb14f8
/* 080522b8 */ .word D_06000000
/* 080522bc */ .word 0xffffffff
/* 080522c0 */ .word 0x08cb1b08
/* 080522c4 */ .word D_0600e800
/* 080522c8 */ .word 0xffffffff
/* 080522cc */ .word 0x088ffbec
/* 080522d0 */ .word D_03004b64
/* 080522d4 */ .word 0x00000140
/* 080522d8 */ .word 0x00000000
/* 080522dc */ .word 0x00000000
/* 080522e0 */ .word 0x00000000

/* 080522e4 */ .word 0x08cb14f8
/* 080522e8 */ .word D_06000000
/* 080522ec */ .word 0xffffffff
/* 080522f0 */ .word 0x08cb18ec
/* 080522f4 */ .word D_0600e800
/* 080522f8 */ .word 0xffffffff
/* 080522fc */ .word 0x088ffbec
/* 08052300 */ .word D_03004b64
/* 08052304 */ .word 0x00000140
/* 08052308 */ .word 0x00000000
/* 0805230c */ .word 0x00000000
/* 08052310 */ .word 0x00000000

/* 08052314 */ .word 0x08cb14f8
/* 08052318 */ .word D_06000000
/* 0805231c */ .word 0xffffffff
/* 08052320 */ .word 0x08cb16f0
/* 08052324 */ .word D_0600e800
/* 08052328 */ .word 0xffffffff
/* 0805232c */ .word 0x088ffbec
/* 08052330 */ .word D_03004b64
/* 08052334 */ .word 0x00000140
/* 08052338 */ .word 0x00000000
/* 0805233c */ .word 0x00000000
/* 08052340 */ .word 0x00000000

/* 08052344 */ .word 0x08cbe458
/* 08052348 */ .word D_06000000
/* 0805234c */ .word 0xffffffff
/* 08052350 */ .word 0x08cbe730
/* 08052354 */ .word D_0600e800
/* 08052358 */ .word 0xffffffff
/* 0805235c */ .word 0x088fffec
/* 08052360 */ .word D_03004b64
/* 08052364 */ .word 0x00000140
/* 08052368 */ .word 0x00000000
/* 0805236c */ .word 0x00000000
/* 08052370 */ .word 0x00000000

/* 08052374 */ .word 0x08cbe458
/* 08052378 */ .word D_06000000
/* 0805237c */ .word 0xffffffff
/* 08052380 */ .word 0x08cbe634
/* 08052384 */ .word D_0600e800
/* 08052388 */ .word 0xffffffff
/* 0805238c */ .word 0x088fffec
/* 08052390 */ .word D_03004b64
/* 08052394 */ .word 0x00000140
/* 08052398 */ .word 0x00000000
/* 0805239c */ .word 0x00000000
/* 080523a0 */ .word 0x00000000

/* 080523a4 */ .word 0x08cbe458
/* 080523a8 */ .word D_06000000
/* 080523ac */ .word 0xffffffff
/* 080523b0 */ .word 0x08cbe54c
/* 080523b4 */ .word D_0600e800
/* 080523b8 */ .word 0xffffffff
/* 080523bc */ .word 0x088fffec
/* 080523c0 */ .word D_03004b64
/* 080523c4 */ .word 0x00000140
/* 080523c8 */ .word 0x00000000
/* 080523cc */ .word 0x00000000
/* 080523d0 */ .word 0x00000000

/* 080523d4 */ .word 0x08c9113c
/* 080523d8 */ .word D_06000000
/* 080523dc */ .word 0xffffffff
/* 080523e0 */ .word 0x08c913b4
/* 080523e4 */ .word D_0600e800
/* 080523e8 */ .word 0xffffffff
/* 080523ec */ .word 0x088fedec
/* 080523f0 */ .word D_03004b64
/* 080523f4 */ .word 0x00000140
/* 080523f8 */ .word 0x00000000
/* 080523fc */ .word 0x00000000
/* 08052400 */ .word 0x00000000

/* 08052404 */ .word 0x08c9113c
/* 08052408 */ .word D_06000000
/* 0805240c */ .word 0xffffffff
/* 08052410 */ .word 0x08c912dc
/* 08052414 */ .word D_0600e800
/* 08052418 */ .word 0xffffffff
/* 0805241c */ .word 0x088fedec
/* 08052420 */ .word D_03004b64
/* 08052424 */ .word 0x00000140
/* 08052428 */ .word 0x00000000
/* 0805242c */ .word 0x00000000
/* 08052430 */ .word 0x00000000

/* 08052434 */ .word 0x08c9113c
/* 08052438 */ .word D_06000000
/* 0805243c */ .word 0xffffffff
/* 08052440 */ .word 0x08c91208
/* 08052444 */ .word D_0600e800
/* 08052448 */ .word 0xffffffff
/* 0805244c */ .word 0x088fedec
/* 08052450 */ .word D_03004b64
/* 08052454 */ .word 0x00000140
/* 08052458 */ .word 0x00000000
/* 0805245c */ .word 0x00000000
/* 08052460 */ .word 0x00000000

@ Producer: "Have you considered going on tour?"
/* 08052464 */
.asciz "プロデューサー「うちで、ガンバってみない？」"
.balign 4, 0

@ Owner: "You've got a lot of talent, you know!"
/* 08052494 */
.asciz "オーナー「キミ、なかなか スジあるヨ」"
.balign 4, 0

@ Lady: "Do your best at the next show, too!"
/* 080524bc */
.asciz "おばちゃん「またつぎ、がんばりなよ！」"
.balign 4, 0

@ It's a live concert!
@ Your Sense of Rhythm
@ is good, so you get
@ to play in the band!
/* 080524e4 */
.asciz "ライブに出演だ！\nキミのリズム感は\nよいと思うから\nどうぞお気楽に～"
.balign 4, 0

@ Concert Hall
/* 08052528 */
.asciz "ライブ"
.balign 4, 0

@ If you have the time,
@ take a look. They're
@ the people who made
@ the game.
/* 08052530 */
.asciz "もし よかったら\n見てみてネ。\nこのゲームの\nスタッフたちです。"
.balign 4, 0

@ Credits
/* 08052570 */
.asciz "スタッフ"
.balign 4, 0

@ Our game comes with
@ free drum lessons!
@ You paid good money
@ for them, so why not?
/* 0805257c */
.asciz "メダルを あつめて\nドラムのレッスンを\nうけてみよう。\n上手になってネ！"
.balign 4, 0

@ Drum Lessons
/* 080525c4 */
.asciz "ドラムレッスン"
.balign 4, 0

@ Earn medals to
@ unlock special
@ games. See how
@ far you can get!
/* 080525d4 */
.asciz "メダルを あつめて\nとくべつなゲームに\n挑戦してみてネ！\nいくつかあるヨ。"
.balign 4, 0

@ Endless Games
/* 0805261c */
.asciz "ゲーム"
.balign 4, 0

@ Collect medals
@ to play with more
@ toys. Everyone
@ likes toys!
/* 08052624 */
.asciz "メダルを あつめて\n音のでるおもちゃで\nあそんでみてネ！\nいくつかあるヨ。"
.balign 4, 0

@ Rhythm Toys
/* 0805266c */
.asciz "おもちゃ"
.balign 4, 0

@ How's your mood
@ been lately?
@ Come here for
@ a consultation.
/* 08052678 */
.asciz "最近の調子 どう？\nなにか気になれば\nここで相談を\nしてみよう。"
.balign 4, 0

@ Cafe
/* 080526b8 */
.asciz "喫茶カウンセル"
.balign 4, 0


@ Today's trip was... an exhilarating drive!!
/* 080526c8 */
.asciz "今回のドライブ ： とっても爽快！！"
.balign 4, 0

@ Today's trip was... long and stressful.
/* 080526ec */
.asciz "今回のドライブ ： まだまだかかるなぁ"
.balign 4, 0

@ Today's trip was... pretty much a total wreck.
/* 08052714 */
.asciz "今回のドライブ ： んもぅ…"
.balign 4, 0

@ Remix 8
/* 08052730 */
.asciz "リミックス ８"
.balign 4, 0


@ Your dinosaur was... having too much fun!!
/* 08052740 */
.asciz "今回のきょうりゅう ： 楽しすぎ～！！"
.balign 4, 0

@ Your dinosaur was... feeling pretty lazy.
/* 08052768 */
.asciz "今回のきょうりゅう ： ほのぼの"
.balign 4, 0

@ Your dinosaur was... not very friendly.
/* 08052788 */
.asciz "今回のきょうりゅう ： いじわる"
.balign 4, 0

@ Remix 7
/* 080527a8 */
.asciz "リミックス ７"
.balign 4, 0


@ Your fishtank contains... something unbelievable!!
/* 080527b8 */
.asciz "今回の内容 ： アンビリーバボーなカンジ！！"
.balign 4, 0

@ Your fishtank contains... something unexpected!
/* 080527e4 */
.asciz "今回の内容 ： 意外なカンジ"
.balign 4, 0

@ Your fishtank contains... something lonely.
/* 08052800 */
.asciz "今回の内容 ： ややさみしいカンジ"
.balign 4, 0

@ Remix 6
/* 08052824 */
.asciz "リミックス ６"
.balign 4, 0


@ The couple's future... happily ever after!
/* 08052834 */
.asciz "今回のふたり ： 幸せになりました♪"
.balign 4, 0

@ The couple's future... an awkward wedding.
/* 08052858 */
.asciz "今回のふたり ： このさき、チョット不安かも…"
.balign 4, 0

@ The couple's future... forever apart!
/* 08052888 */
.asciz "今回のふたり ： ジャマされてしまった！"
.balign 4, 0

@ Remix 5
/* 080528b0 */
.asciz "リミックス ５"
.balign 4, 0


@ Your weather forecast... a happy, clear day!!
/* 080528c0 */
.asciz "今回の天気 ： ハッピーな晴れ！！"
.balign 4, 0

@ Your weather forecast... cloudy and gray.
/* 080528e4 */
.asciz "今回の天気 ： くもり"
.balign 4, 0

@ Your weather forecast... rain, rain and rain.
/* 080528fc */
.asciz "今回の天気 ： 雨"
.balign 4, 0

@ Remix 4
/* 08052910 */
.asciz "リミックス ４"
.balign 4, 0


@ Your love fortune... it's Lovey-Dovey!!
/* 08052920 */
.asciz "今回のラブ ： ラブラブでーす！！"
.balign 4, 0

@ Your love fortune... you'll be best friends♪
/* 08052944 */
.asciz "今回のラブ ： とってもフレンドリーな感じ♪"
.balign 4, 0

@ Your love fortune... your heart might break soon...
/* 08052970 */
.asciz "今回のラブ ： ブロークンハートかも…"
.balign 4, 0

@ Remix 3
/* 08052998 */
.asciz "リミックス ３"
.balign 4, 0


@ Your hype level was... a baseball tournament!!
/* 080529a8 */
.asciz "今回の熱気 ： すごい大会レベル！！"
.balign 4, 0

@ Your hype level was... a short round of catch.
/* 080529cc */
.asciz "今回の熱気 ： 楽しくキャッチボールレベル"
.balign 4, 0

@ Your hype level was... practicing alone.
/* 080529f8 */
.asciz "今回の熱気 ： ひとりで練習レベル"
.balign 4, 0

@ Remix 2
/* 08052a1c */
.asciz "リミックス ２"
.balign 4, 0


@ Your performance was like... a filling dinner!!
/* 08052a2c */
.asciz "今回のデキ ： なんと、 ディナークラス！！"
.balign 4, 0

@ Your performance was like... a breakfast.
/* 08052a58 */
.asciz "今回のデキ ： 朝食クラス"
.balign 4, 0

@ Your performance was like... a cat's snack.
/* 08052a74 */
.asciz "今回のデキ ： 猫のおやつクラス"
.balign 4, 0

@ Want to test your
@ merit? Your skill so
@ far speaks for
@ itself, you know! (NP)
/* 08052a94 */
.asciz "キミの実力を\n試してみてみる？\nこれまでの経験が\nモノを言うヨ～！"
.balign 4, 0

@ Remix 1
/* 08052ad4 */
.asciz "リミックス １"
.balign 4, 0


@ Bon dancing is awfully fun!
/* 08052ae4 */
.asciz "ボンダンスって すごく楽しいよネー！"
.balign 4, 0

@ Oh darn, it's raining.
/* 08052b08 */
.asciz "うーん、雨がふってきちゃった。"
.balign 4, 0

@ Just forget it...
/* 08052b28 */
.asciz "もういや…"
.balign 4, 0

@ It's time for the
@ Bon festival again!
@ We're all in high
@ spirits, yay! (NP)
/* 08052b34 */
.asciz "これが いまどきの\nぼんおどり！\nノリノリだヨ！\nイェーイ！"
.balign 4, 0

@ The☆Bon Dance
/* 08052b70 */
.asciz "ボンダンス"
.balign 4, 0


@ Whee! That was fun!
/* 08052b7c */
.asciz "あー、楽しかった！"
.balign 4, 0

@ Sparklers are kind of melancholic, aren't they?
/* 08052b90 */
.asciz "せんこう花火って、せつないね。"
.balign 4, 0

@ I'm cold...
/* 08052bb0 */
.asciz "さむいわ…"
.balign 4, 0

@ It's the traditional
@ Bon festival!
@ Clap your hands
@ and sing along!
/* 08052bbc */
.asciz "ぼんおどりの\nうたに あわせて\nパンッと 手を\nたたきましょう。"
.balign 4, 0

@ The☆Bon-Odori
/* 08052bf8 */
.asciz "ザ☆ぼんおどり"
.balign 4, 0


@ I won a trip to Rhythm Heaven!
/* 08052c08 */
.asciz "世界旅行 もらっちゃった！"
.balign 4, 0

@ Must study for next time... after a nap.
/* 08052c24 */
.asciz "次回に向けて 勉強、勉強…Zzz"
.balign 4, 0

@ This is way better than any gameshow.
/* 08052c44 */
.asciz "ま、 こんなものさ。"
.balign 4, 0

@ A gameshow that's
@ all style and no
@ substance... just
@ what viewers want.
/* 08052c58 */
.asciz "司会者の、\n「たたいた回数」を\n当てるカンタンな\nクイズです。"
.balign 4, 0

@ Quiz Show
/* 08052c94 */
.asciz "クイズ"
.balign 4, 0


@ Those rap boys have nothing on us!
/* 08052c9c */
.asciz "そうそう コレコレ、これやわー！！イェーイ！"
.balign 4, 0

@ We can't lose to the Rap Men...!
/* 08052cc8 */
.asciz "なんか ちょっと イマイチかも…！"
.balign 4, 0

@ That was not our best take...
/* 08052cec */
.asciz "こんなん ちゃうわぁ…"
.balign 4, 0

@ The rivals of the
@ Rap Men are here!
@ Be charmed by their
@ cute voices! (NP)
/* 08052d04 */
.asciz "あのラップメンに\nライバルが登場だ！\nキュートなボイスに\nもう メロメロ！"
.balign 4, 0

@ Rap Women
/* 08052d4c */
.asciz "ラップウイメン"
.balign 4, 0


@ The record company wants a word with you two!!
/* 08052d5c */
.asciz "これからも よろしく たのんまっせー！！"
.balign 4, 0

@ I think our tone was off.
/* 08052d84 */
.asciz "チェッ。 なんか 調子わるいわぁ。"
.balign 4, 0

@ Man, we're uncool.
/* 08052da8 */
.asciz "オレたち、 ダサいやん…"
.balign 4, 0

@ The Rap Men are here
@ with a cool rap.
@ Fitting, because they
@ are pretty cool too.
/* 08052dc0 */
.asciz "クールなふたり組が\nやってきた！\nアツいラップで\n大コーフンだぜ！"
.balign 4, 0

@ Rap Men
/* 08052e00 */
.asciz "ラップメン"
.balign 4, 0


@ We are super cosmic stars!!
/* 08052e0c */
.asciz "ボクたちは スーパーコスモスターさ！！"
.balign 4, 0

@ Is that all you guys have?
/* 08052e34 */
.asciz "あなたたちって こんなものなの？"
.balign 4, 0

@ M-mission failed!!
/* 08052e54 */
.asciz "お、おわりだー！！"
.balign 4, 0

@ We are emissaries
@ from deep space.
@ We come... in style.
@ (No practice)
/* 08052e68 */
.asciz "宇宙を代表\\する\nダンサーたち！\nキレた動きに\nくぎづけです！！"
.balign 4, 0

@ Cosmic Dance
/* 08052ea4 */
.asciz "コスモダンス"
.balign 4, 0


@ We are space superstars!!
/* 08052eb4 */
.asciz "ボクたちは スペーススーパースター！！"
.balign 4, 0

@ Someday we'll shine like the stars...
/* 08052edc */
.asciz "あの星のように かがやきたいな…"
.balign 4, 0

@ We danced right into a black hole!
/* 08052efc */
.asciz "ブ、 ブラックホールだー！！"
.balign 4, 0

@ This is zero gravity
@ outer space.
@ But, let's dance.
@ Let's Space Dance!
/* 08052f18 */
.asciz "ここは無重力の宇宙。\nでも、 おどろうヨ！\nレッツスペースダンス！"
.balign 4, 0

@ Space Dance
/* 08052f58 */
.asciz "スペースダンス"
.balign 4, 0


@ Woohoo! The crowd loves us!!
/* 08052f68 */
.asciz "やった！！ お客さん 楽しんでくれたー！！"
.balign 4, 0

@ This shouldn't have been a problem for us...
/* 08052f94 */
.asciz "ボクたち こんなもんじゃないはず…"
.balign 4, 0

@ The customers looked angry...
/* 08052fb8 */
.asciz "お客さん、 おこってたネ…"
.balign 4, 0

@ It's a sold out show
@ for the penguins'
@ opening night!
/* 08052fd4 */
.asciz "ペンギン君たちの\nショータイムが\nはじまるヨ！\nわーいわーい！"
.balign 4, 0

@ Showtime
/* 08053010 */
.asciz "ショータイム"
.balign 4, 0


@ Tram and Pauline, we're the perfect team!!
/* 08053020 */
.asciz "コンビネーション バッチシ！！"
.balign 4, 0

@ We could only get halfway there...
/* 08053040 */
.asciz "ちゅうとハンパでした…"
.balign 4, 0

@ Maybe we need to try a different act!
/* 08053058 */
.asciz "大しっぱいだ～！！"
.balign 4, 0

@ Tram and Pauline are
@ acrobatic foxes!
@ Quick, their show
@ is about to start!
/* 0805306c */
.asciz "こぎつねトラン、\nそしてポリンの\nアクロバティックショーがはじまるヨ！"
.balign 4, 0

@ Tram & Pauline
/* 080530b4 */
.asciz "トランとポリン"
.balign 4, 0


@ Want to hear about Daddy's big heist?
/* 080530c4 */
.asciz "みんな、 よかったネ！"
.balign 4, 0

@ I love you... and this cheese!
/* 080530dc */
.asciz "チーズ おいしいね。"
.balign 4, 0

@ The important thing is that we're together.
/* 080530f0 */
.asciz "チーズ 食べたいよ～…"
.balign 4, 0

@ I got a family now.
@ One last job, and
@ I'm out of this
@ business for good.
/* 08053108 */
.asciz "あなたはネズミ。\n大スキなチーズを\nめざして\nストップ＆ゴー！！"
.balign 4, 0

@ Rat Race
/* 08053148 */
.asciz "こっそり ラット"
.balign 4, 0


@ Together, we are unstoppable!!
/* 08053158 */
.asciz "最強メンバーのたんじょうだー！！"
.balign 4, 0

@ We're completely pooped!
/* 0805317c */
.asciz "ボロボロだァ～！"
.balign 4, 0

@ Toss Boys 2
/* 08053190 */
.asciz "トスボーイズ ２"
.balign 4, 0

@ Next, we'll become World Champion Tossers!!
/* 080531a0 */
.asciz "目標は、 トス世界選手権 優勝だー！！"
.balign 4, 0

@ We're good, but we can get better!
/* 080531c8 */
.asciz "まだまだもっと上手にできるはず！"
.balign 4, 0

@ No good, no good at all!!
/* 080531ec */
.asciz "ダメダメだァ～！"
.balign 4, 0

@ Practice your
@ tossing technique
@ with these three
@ close friends!
/* 08053200 */
.asciz "なかよし３人組、\n声をかけあいながら\nいつも楽しくトスの\n練習してます。"
.balign 4, 0

@ Toss Boys
/* 08053248 */
.asciz "トスボーイズ"
.balign 4, 0


@ Power Calligraphy 2
/* 08053258 */
.asciz "リズムお習字 ２"
.balign 4, 0

@ Hooray for Japanese calligraphy!!
/* 08053268 */
.asciz "お習字って ノリノリだネ！！"
.balign 4, 0

@ Who says calligraphy isn't fun?
/* 08053284 */
.asciz "お習字を もっと楽しもう！"
.balign 4, 0

@ Maybe I should stick with pencils...
/* 080532a0 */
.asciz "ふ～…  アカンわ。"
.balign 4, 0

@ Write Japanese
@ with the brush.
@ (You only have to
@ do the fun parts.)
/* 080532b4 */
.asciz "筆を使って日本語を\n書きます。\nあなたがするのは\nオイシイとこだけ。"
.balign 4, 0

@ Power Calligraphy
/* 080532f8 */
.asciz "リズムお習字"
.balign 4, 0


@ Just leave the fireworks to me!!
/* 08053308 */
.asciz "花火のことならオレにまかせろ！！"
.balign 4, 0

@ I think I put on a pretty good show!
/* 0805332c */
.asciz "なかなかのデキだぜ！"
.balign 4, 0

@ Hack cough... where'd everyone go?!
/* 08053344 */
.asciz "ゲホゲホッ… 失敗。"
.balign 4, 0

@ If it's summer, that
@ means it's time for
@ fireworks. The colors
@ are amazing!
/* 08053358 */
.asciz "夏といえばさ、\nやっぱ花火かな？\n色あざやかに\n打ち上げよう！"
.balign 4, 0

@ Fireworks
/* 08053394 */
.asciz "花火"
.balign 4, 0


@ That one's a perfect 10!
/* 0805339c */
.asciz "まん点！！"
.balign 4, 0

@ Now you just need to practice the landing...
/* 080533a8 */
.asciz "着地は失敗しちゃった…"
.balign 4, 0

@ I want to go back to the moon!
/* 080533c0 */
.asciz "月に帰りた～い！"
.balign 4, 0

@ White rabbit, jump
@ to the beat and
@ cross the sea!
@ (No practice.)
/* 080533d4 */
.asciz "ジャンプが得意な\n白いウサギさん。\nビートにのって\n海をわたろう！"
.balign 4, 0

@ Bunny Hop
/* 08053414 */
.asciz "ウサギとび"
.balign 4, 0


@ Hooray! I'm not lonely any more!
/* 08053420 */
.asciz "わーい、 わたし もう さみしくないヨ！"
.balign 4, 0

@ I'd be even more happy if more flowers bloomed...
/* 08053448 */
.asciz "もっと 花がさくと うれしいな～。"
.balign 4, 0

@ I don't like this! It was better when I was alone!
/* 0805346c */
.asciz "こんなのヤダ～、 こわいヨ～！"
.balign 4, 0

@ Nothing brightens up
@ a sad face like a
@ beautiful flower!
@ Let's see some magic!
/* 0805348c */
.asciz "あなたはまほう使い。\nさみしがりやの\nおじょうちゃんに花を\nプレゼントしよう。"
.balign 4, 0

@ Wizard's Waltz
/* 080534d8 */
.asciz "まほうつかい"
.balign 4, 0


@ The Hare-force will march on to victory!
/* 080534e8 */
.asciz "ごほうびに、こんなのもらってしまった！！"
.balign 4, 0

@ Hmph! You've gotta march cooler than that!
/* 08053514 */
.asciz "ぐっ！ もっとカッコよくおどらなければ！"
.balign 4, 0

@ Th-this could be the end of the Marchers!
/* 0805353c */
.asciz "こ、これでは、イカン！う～む…"
.balign 4, 0

@ Now let's march to
@ a different beat.
@ Listen to the cues
@ and hop to it! (NP)
/* 0805355c */
.asciz "行進をするのだ。\nこんどのは ちょっと\nテクニカルだ！\nがんばりたまえ。"
.balign 4, 0

@ Marcher 2
/* 080535a4 */
.asciz "マーチャ ２"
.balign 4, 0


@ The alien rescue was a huge success!
/* 080535b0 */
.asciz "宇宙人の救出、大成功！！"
.balign 4, 0

@ Today's duty is cleaning～♪
/* 080535cc */
.asciz "今日の任務は、おそうじでーす♪"
.balign 4, 0

@ Aaah! We got left behind!
/* 080535ec */
.asciz "わぁっ！おいてけぼりされた！"
.balign 4, 0

@ Following orders as a
@ unit builds a sense
@ of camaraderie.
@ Also, rhythm.
/* 0805360c */
.asciz "行進をするのだ。\nかってな行動はチームをダメにする！\nがんばりたまえ。"
.balign 4, 0

@ Marching Orders
/* 08053654 */
.asciz "マーチャ"
.balign 4, 0


@ With tap, we can do anything!
/* 08053660 */
.asciz "この気持ち、とまらなーい！"
.balign 4, 0

@ Hm... feels a little off.
/* 0805367c */
.asciz "う～ん… すこし ちがうカンジ…"
.balign 4, 0

@ We're tapped out!
/* 0805369c */
.asciz "ガーン！"
.balign 4, 0

@ The monkeys have
@ powered up! Can you
@ keep up? Don't lose!
@ (No practice.)
/* 080536a8 */
.asciz "サルがパワーアップ！\nあなたは かれらに\nついていけるか！？\nまけるな～！"
.balign 4, 0

@ Turbo Tap Trial
/* 080536f0 */
.asciz "スーパータップ"
.balign 4, 0


@ It feels good to belong!
/* 08053700 */
.asciz "気分は もう、サイコー！！"
.balign 4, 0

@ Pretty good...for a human.
/* 0805371c */
.asciz "ちょっと、 ヘンなトコあったけどネ！"
.balign 4, 0

@ Disappointing...
/* 08053740 */
.asciz "無念だわ。"
.balign 4, 0

@ Think you've got
@ what it takes to
@ tap-dance with
@ the monkeys?
/* 0805374c */
.asciz "あなたは女の子。\nとなりのサルたちに\n合わせてタップを\nきざむッス！"
.balign 4, 0

@ Tap Trial
/* 08053790 */
.asciz "タップダンズ"
.balign 4, 0


@ Look mom, I finally made it!
/* 080537a0 */
.asciz "みんな、見て見てー！"
.balign 4, 0

@ I'll make the big leagues yet!
/* 080537b8 */
.asciz "こんなところで 終われない！"
.balign 4, 0

@ What do you think you're doing?!
/* 080537d4 */
.asciz "ナニスルノデスカー！"
.balign 4, 0

@ Close your eyes.
@ Free your mind.
@ Hit the ball.
@ Don't cry. (NP)
/* 080537ec */
.asciz "ズームをきにするな！\n心でボールを打て！\n視覚に頼るな！\n涙もふくな～！"
.balign 4, 0

@ Spaceball 2
/* 08053834 */
.asciz "エアーバッター ２"
.balign 4, 0


@ Look what I got!
/* 08053848 */
.asciz "こんなの もらっちゃったー！"
.balign 4, 0

@ Practice is the key to reaching new heights!
/* 08053864 */
.asciz "さらに上を目指して練習だ！"
.balign 4, 0

@ I hope this makes it up to you.
/* 08053880 */
.asciz "これで ゆるしてください。"
.balign 4, 0

@ Don't worry about
@ the zoom! Follow
@ the trajectories
@ in your heart!
/* 0805389c */
.asciz "ズームをきにするな！\n心でボールを打て！\n視覚に頼るな！\nどんと行け～！"
.balign 4, 0

@ Spaceball
/* 080538e4 */
.asciz "エアーバッター"
.balign 4, 0


@ The feeling of a sharp blade is unbeatable!!
/* 080538f4 */
.asciz "切れあじ、 サイコーだ！！"
.balign 4, 0

@ Must concentrate more!
/* 08053910 */
.asciz "さらに精進（しょうじん）すべし！"
.balign 4, 0

@ You have bested me!
/* 08053934 */
.asciz "刃こぼれしちまった！"
.balign 4, 0

@ Run! They're coming!
@ You're a samurai, so
@ you can stay behind
@ and stop them. (NP)
/* 0805394c */
.asciz "そこのけ そこのけ\n奴らが通る。\nおぬしは サムライ、\n斬り捨て 御免！"
.balign 4, 0

@ Samurai Slice
/* 08053990 */
.asciz "ゐあひ斬り"
.balign 4, 0

@ Time out!  In the corner, all of you!
/* 0805399c */
.asciz "みんな、反省してネ！"
.balign 4, 0

@ “Let me go, please~?”
/* 080539b4 */
.asciz "おばけ「ナ、ナンダヨ～」"
.balign 4, 0

@ Wow! Put down the bow, and help me clean up.
/* 080539d0 */
.asciz "うわー！ やられほうだいだ！"
.balign 4, 0

@ Those ghosts are at
@ it again! Grab your
@ arrows and aim
@ for their souls! (NP)
/* 080539ec */
.asciz "白いヤツが こちらを\nナメきっている！\nムカムカーッ！！\nこらしめちゃおう！"
.balign 4, 0

@ Sneaky Spirits 2
/* 08053a38 */
.asciz "しろいおばけ ２"
.balign 4, 0


@ No ghost escapes on your watch!
/* 08053a48 */
.asciz "いっぱい しとめた！！"
.balign 4, 0

@ You got one!
/* 08053a60 */
.asciz "しとめた！"
.balign 4, 0

@ Escaped ghosts are nothing but trouble.
/* 08053a6c */
.asciz "逃げたヤツにイタズラされた！"
.balign 4, 0

@ Ghosts are trying
@ to escape their
@ haunted house! Grab
@ your trusty bow!
/* 08053a8c */
.asciz "白いヤツが こちらを\nバカにしている！\nムキーッ！！\nこらしめちゃおう！"
.balign 4, 0

@ Sneaky Spirits
/* 08053ad4 */
.asciz "しろいおばけ"
.balign 4, 0


@ Thou art strong. Live happily!
/* 08053ae4 */
.asciz "オヌシは強い。お幸せに…！"
.balign 4, 0

@ You have courage. Work harder!
/* 08053b00 */
.asciz "うむ、スジは良いな。がんばれ！"
.balign 4, 0

@ Don't lose! People depend on you!
/* 08053b20 */
.asciz "まけるな！ おまえが頼りなのだー！！"
.balign 4, 0

@ Watch out! I'm a
@ warrior just like
@ my ancestors!
@ (No practice.)
/* 08053b44 */
.asciz "オレのじいちゃんの\nじいちゃんの\nじいちゃんは\n忍者なんだぜ。"
.balign 4, 0

@ Ninja Reincarnate
/* 08053b80 */
.asciz "忍者の子孫"
.balign 4, 0


@ He told me “great job!"
/* 08053b8c */
.asciz "アッパレって 言われちゃったゼ！！"
.balign 4, 0

@ Forgive me, my lord!
/* 08053bb0 */
.asciz "トノ！ ごめんなさ～い。"
.balign 4, 0

@ No! The feudal lord has fainted!
/* 08053bc8 */
.asciz "ゲッ！ トノが きぜつしてる！！"
.balign 4, 0

@ It's an enemy raid!
@ Take on their
@ challenge with both
@ of your hands. (NP)
/* 08053be8 */
.asciz "敵襲(てきしゅう)だ！\n十\\字ボタンとAボタンで応戦(おうせん)だ！\nフジヤマ（ふじさん）！！"
.balign 4, 0

@ Ninja Bodyguard
/* 08053c40 */
.asciz "忍者"
.balign 4, 0


@ Way too easy for us♪
/* 08053c48 */
.asciz "らくちん らくちん♪"
.balign 4, 0

@ Whew, that was hard!
/* 08053c5c */
.asciz "なかなか がんばっていたネ！"
.balign 4, 0

@ Ouch! I think I've sprained something.
/* 08053c78 */
.asciz "エーン！ しっぱい！！"
.balign 4, 0

@ Protect those balls!
@ They're our good
@ friends, and they
@ need our help! (NP)
/* 08053c90 */
.asciz "とんでくる丸い玉。\nほんとにイイやつ\nなんですヨ～。\n落とさないでネ！"
.balign 4, 0

@ Bouncy Road 2
/* 08053cd4 */
.asciz "ホッピングロード２"
.balign 4, 0


@ This is super simple♪
/* 08053ce8 */
.asciz "かんたん かんたん♪"
.balign 4, 0

@ We're good partners!
/* 08053cfc */
.asciz "けっこうな コンビネーションだったネ！"
.balign 4, 0

@ This is tough!
/* 08053d24 */
.asciz "なかなか ムズカシー！"
.balign 4, 0

@ The bouncing balls
@ need your help.
@ They're good to us,
@ so don't drop them!
/* 08053d3c */
.asciz "とんでくる丸い玉。\nあれはイイやつです。\n落とさないでネ！"
.balign 4, 0

@ Bouncy Road
/* 08053d78 */
.asciz "ホッピングロード"
.balign 4, 0


@ This medicine will save lives!!
/* 08053d8c */
.asciz "ものすごいクスリができた！！"
.balign 4, 0

@ Unwanted results are a step towards success!
/* 08053dac */
.asciz "失敗は成功のもとカモ！"
.balign 4, 0

@ They'll cut my funding...
/* 08053dc4 */
.asciz "研究は失敗だ。"
.balign 4, 0

@ <Memo from Assistant>
@ We have quite a germ
@ outbreak on our
@ hands. Help us! (NP)
/* 08053dd4 */
.asciz "助手からの知らせ\n「大変です！\nバイキン発生です！！\n先生、たすけて～」"
.balign 4, 0

@ Sick Beats
/* 08053e1c */
.asciz "バイキン はかせ"
.balign 4, 0


@ The air tastes as good as my produce!
/* 08053e2c */
.asciz "スッキリそうかい！ 空気がうますぎ！！"
.balign 4, 0

@ I guess I could market these as “organic.”
/* 08053e54 */
.asciz "しかしなんで うちのヤサイだけに 毛が…？"
.balign 4, 0

@ Note to self: sell all veggies before five o'clock.
/* 08053e80 */
.asciz "なんで 毛が はえるんだー！？"
.balign 4, 0

@ The hairs are gone,
@ but their heirs
@ are a huge pain!
@ (No practice.)
/* 08053ea0 */
.asciz "またしても生えてくる\nうっとうしい「毛」！\nぬいちゃえ、 \nぬいちゃえ！"
.balign 4, 0

@ Rhythm Tweezers 2
/* 08053ee8 */
.asciz "リズム脱毛 ２"
.balign 4, 0


@ Fresh and so clean! The air is delicious!
/* 08053ef8 */
.asciz "スッキリそうかい！ 空気がうまい！！"
.balign 4, 0

@ Why do our vegetables grow hair...?
/* 08053f1c */
.asciz "なんで うちのヤサイは 毛がはえるんだ？"
.balign 4, 0

@ I can't sell this!
/* 08053f44 */
.asciz "これじゃ 売りものに ならん！"
.balign 4, 0

@ These weird hairs
@ keep growing!
@ Pluck'em,
@ pluck'em!
/* 08053f64 */
.asciz "どんどん生えてくる\nうっとうしい「毛」！\nぬいちゃえ、 \nぬいちゃえ！"
.balign 4, 0

@ Rhythm Tweezers
/* 08053fa8 */
.asciz "リズム脱毛"
.balign 4, 0


@ You're friends with the stars!
/* 08053fb4 */
.asciz "星たちと おともだちだヨ！"
.balign 4, 0

@ The night wind feels so nice~
/* 08053fd0 */
.asciz "夜風が とっても きもちいいな。"
.balign 4, 0

@ Eek! You messed up!
/* 08053ff0 */
.asciz "うひゃー！ しっぱいしちゃった！！"
.balign 4, 0

@ It's a beautiful night.
@ We just have to
@ watch out for those
@ fish! (No practice.)
/* 08054014 */
.asciz "音楽にあわせて\nジャンプしてネ！\nビリビリウオに\n気をつけよう。"
.balign 4, 0

@ Night Walk 2
/* 08054054 */
.asciz "ナイトウォーク ２"
.balign 4, 0


@ The stars welcome you!
/* 08054068 */
.asciz "星たちが かんげいしてるヨ！"
.balign 4, 0

@ Night sky walks are so fun.
/* 08054084 */
.asciz "夜空の おさんぽ、 たのしいな。"
.balign 4, 0

@ Try harder next time.
/* 080540a4 */
.asciz "つぎは もっと がんばってネ…"
.balign 4, 0

@ Jump with the music!
@ The stars will gather
@ and put a spring in
@ your step. (NP)
/* 080540c4 */
.asciz "音楽にあわせて\nジャンプしてネ！\n星たちが あつまって\nあなたも夜空へ…"
.balign 4, 0

@ Night Walk
/* 0805410c */
.asciz "ナイトウォーク"
.balign 4, 0


@ That's how you become employee of the year!
/* 0805411c */
.asciz "赤いモノを じゃんじゃん生産しちゃうヨ！！"
.balign 4, 0

@ Let's keep the production lines moving!
/* 08054148 */
.asciz "もっともっと 赤いモノを 生産だ！"
.balign 4, 0

@ At this rate, we'll go out of business.
/* 0805416c */
.asciz "赤いモノ、もっと生産しなきゃ…"
.balign 4, 0

@ Orders keep coming
@ for our widgets! Use
@ both hands to meet
@ our quotas! (NP)
/* 0805418c */
.asciz "これぞ左右独立！\nテンポよく こなして\nレッツ ポリリズム！\nイェーイ！"
.balign 4, 0

@ Polyrhythm 2
/* 080541d0 */
.asciz "ポリリズム ２"
.balign 4, 0


@ Widgets, Inc. is a huge success!
/* 080541e0 */
.asciz "赤いモノを 生産しまくりだネ！！"
.balign 4, 0

@ You can't beat running your own business.
/* 08054200 */
.asciz "どんどん 赤いモノを 生産だ！"
.balign 4, 0

@ Maybe I should be a craftsman...
/* 08054220 */
.asciz "赤いモノ、量産は たいへんだなぁ…"
.balign 4, 0

@ Master pressing
@ different buttons
@ at the same time! It
@ should be easy... (NP)
/* 08054244 */
.asciz "十\\字ボタンとＡボタンの同時押しをマスターだ！けっこうカンタンだ。たぶん…"
.balign 4, 0

@ Polyrhythm
/* 08054290 */
.asciz "ポリリズム"
.balign 4, 0


@ The Clappy Trio is still in perfect sync!
/* 0805429c */
.asciz "息ピッタリでーす！ イェーイ！"
.balign 4, 0

@ I need just a little more practice...
/* 080542bc */
.asciz "あとチョットなんだけどね…"
.balign 4, 0

@ Oh no! I've done it again!
/* 080542d8 */
.asciz "キャー！ ゆるしてー！！"
.balign 4, 0

@ The Clappy Trio
@ is on a world tour!
@ Their new style is
@ just too cool! (NP)
/* 080542f0 */
.asciz "ラフだった彼らが\nバリっとスーツを\n着てきたヨ！\nカッコイイ！！"
.balign 4, 0

@ The Snappy Trio
/* 08054330 */
.asciz "バリバリ三人衆"
.balign 4, 0


@ Trio-riffic!
/* 08054340 */
.asciz "この三人衆、 息ピッタリだ！！"
.balign 4, 0

@ Please show up for more of our practice sessions.
/* 08054360 */
.asciz "満足するのは まだ早いかもね。"
.balign 4, 0

@ The trio just went solo!
/* 08054380 */
.asciz "仲間が帰っちゃった！"
.balign 4, 0

@ The world-famous
@ Clappy Trio never
@ misses a beat. Watch
@ the other two!
/* 08054398 */
.asciz "順番に拍手をするヨ！\nあなたは３番目。\n前の2人をよく見てネ！"
.balign 4, 0

@ The Clappy Trio
/* 080543d4 */
.asciz "パチパチ三人衆"
.balign 4, 0


@ This is how you do it, baby!
/* 080543e4 */
.asciz "ざっと こんなモンだぜー！！"
.balign 4, 0

@ Well, that's good enough. So let's eat!
/* 08054400 */
.asciz "ま、さておき。 ごはん 食べよう！"
.balign 4, 0

@ What was wrong with the tempo?!
/* 08054424 */
.asciz "テンポが なんだー！！"
.balign 4, 0

@Let's punch to the
@ rhythm again...
@ But watch for the
@ tempo change! (NP)
/* 0805443c */
.asciz "とんでくるモノを\nAボタンでパンチ！\nでも、 スピードが\nヘンテコだヨ。"
.balign 4, 0

@ Karate Man 2
/* 08054480 */
.asciz "カラテ家 ２"
.balign 4, 0


@ You sent all of this flying!!
/* 0805448c */
.asciz "こんなに ブッとばしちゃった！！"
.balign 4, 0

@ Let's break for lunch!
/* 080544ac */
.asciz "とりあえず、ごはん 食べとこう！"
.balign 4, 0

@ There's always tomorrow.
/* 080544cc */
.asciz "明日が あるさ。"
.balign 4, 0

@ This is karate
@ training at its most
@ intense! (Or, at its
@ most unorthodox...)
/* 080544dc */
.asciz "とんでくるモノを\nAボタンでパンチ！\nよくあるゲーム？\n…かもね。"
.balign 4, 0

@ Karate Man
/* 0805451c */
.asciz "カラテ家"


/* 08054525 */ .byte 0x09, 0x06, 0x09
/* 08054528 */ .word 0xff0b090a
/* 0805452c */ .word 0x0b0902ff
/* 08054530 */ .word 0x020a0902
/* 08054534 */ .word 0x09020909
/* 08054538 */ .word 0x07090208
/* 0805453c */ .word 0xff060902
/* 08054540 */ .word 0x0a080608
/* 08054544 */ .word 0xffff0b08
/* 08054548 */ .word 0x020b0802
/* 0805454c */ .word 0x08020a08
/* 08054550 */ .word 0x08080209
/* 08054554 */ .word 0x02070802
/* 08054558 */ .word 0x07ff0608
/* 0805455c */ .word 0x070a0706
/* 08054560 */ .word 0x02ffff0b
/* 08054564 */ .word 0x07020b07
/* 08054568 */ .word 0x0907020a
/* 0805456c */ .word 0x02080702
/* 08054570 */ .word 0x07020707
/* 08054574 */ .word 0x0606ff06
/* 08054578 */ .word 0x0b060a06
/* 0805457c */ .word 0x0602ffff
/* 08054580 */ .word 0x0a06020b
/* 08054584 */ .word 0x02090602
/* 08054588 */ .word 0x06020806
/* 0805458c */ .word 0x06060207
/* 08054590 */ .word 0x050605ff
/* 08054594 */ .word 0xff0b050a
/* 08054598 */ .word 0x0b0502ff
/* 0805459c */ .word 0x020a0502
/* 080545a0 */ .word 0x05020905
/* 080545a4 */ .word 0x07050208
/* 080545a8 */ .word 0xff060502
/* 080545ac */ .word 0x0a040604
/* 080545b0 */ .word 0xffff0b04
/* 080545b4 */ .word 0x020b0402
/* 080545b8 */ .word 0x04020a04
/* 080545bc */ .word 0x08040209
/* 080545c0 */ .word 0x02070402
/* 080545c4 */ .word 0x03ff0604
/* 080545c8 */ .word 0x030a0306
/* 080545cc */ .word 0x02ffff0b
/* 080545d0 */ .word 0x03020b03
/* 080545d4 */ .word 0x0903020a
/* 080545d8 */ .word 0x02080302
/* 080545dc */ .word 0x03020703
/* 080545e0 */ .word 0x0602ff06
/* 080545e4 */ .word 0x08020702
/* 080545e8 */ .word 0x0a020902
/* 080545ec */ .word 0x0b01ffff
/* 080545f0 */ .word 0x0102ffff
/* 080545f4 */ .word 0x0609ff0b
/* 080545f8 */ .word 0x0b090909
/* 080545fc */ .word 0x0904ffff
/* 08054600 */ .word 0x0608ff0b
/* 08054604 */ .word 0x0b080908
/* 08054608 */ .word 0x0804ffff
/* 0805460c */ .word 0x0607ff0b
/* 08054610 */ .word 0x0b070907
/* 08054614 */ .word 0x0704ffff
/* 08054618 */ .word 0x0606ff0b
/* 0805461c */ .word 0x0b060906
/* 08054620 */ .word 0x0604ffff
/* 08054624 */ .word 0x0605ff0b
/* 08054628 */ .word 0x0b050905
/* 0805462c */ .word 0x0504ffff
/* 08054630 */ .word 0x0604ff0b
/* 08054634 */ .word 0x0b040904
/* 08054638 */ .word 0x0404ffff
/* 0805463c */ .word 0x0603ff0b
/* 08054640 */ .word 0x0b030903
/* 08054644 */ .word 0x0304ffff
/* 08054648 */ .word 0x0602ff0b
/* 0805464c */ .word 0xffff0902
/* 08054650 */ .word 0xff0b0204
/* 08054654 */ .word 0xffff0a01
/* 08054658 */ .word 0xff0a0102
/* 0805465c */ .word 0x08090609
/* 08054660 */ .word 0xffff0b09
/* 08054664 */ .word 0xff0a0904
/* 08054668 */ .word 0x08080608
/* 0805466c */ .word 0xffff0b08
/* 08054670 */ .word 0xff0a0804
/* 08054674 */ .word 0x08070607
/* 08054678 */ .word 0xffff0b07
/* 0805467c */ .word 0xff0a0704
/* 08054680 */ .word 0x08060606
/* 08054684 */ .word 0xffff0b06
/* 08054688 */ .word 0xff0a0604
/* 0805468c */ .word 0x08050605
/* 08054690 */ .word 0xffff0b05
/* 08054694 */ .word 0xff0a0504
/* 08054698 */ .word 0x08040604
/* 0805469c */ .word 0xffff0b04
/* 080546a0 */ .word 0xff0a0404
/* 080546a4 */ .word 0x08030603
/* 080546a8 */ .word 0xffff0b03
/* 080546ac */ .word 0xff0a0304
/* 080546b0 */ .word 0x08020602
/* 080546b4 */ .word 0x0204ffff
/* 080546b8 */ .word 0x0901ff0a
/* 080546bc */ .word 0x0102ffff
/* 080546c0 */ .word 0x0609ff09
/* 080546c4 */ .word 0x0b090709
/* 080546c8 */ .word 0x0904ffff
/* 080546cc */ .word 0x0608ff09
/* 080546d0 */ .word 0x0b080708
/* 080546d4 */ .word 0x0804ffff
/* 080546d8 */ .word 0x0607ff09
/* 080546dc */ .word 0x0b070707
/* 080546e0 */ .word 0x0704ffff
/* 080546e4 */ .word 0x0606ff09
/* 080546e8 */ .word 0x0b060706
/* 080546ec */ .word 0x0604ffff
/* 080546f0 */ .word 0x0605ff09
/* 080546f4 */ .word 0x0b050705
/* 080546f8 */ .word 0x0504ffff
/* 080546fc */ .word 0x0604ff09
/* 08054700 */ .word 0x0b040704
/* 08054704 */ .word 0x0404ffff
/* 08054708 */ .word 0x0603ff09
/* 0805470c */ .word 0x0b030703
/* 08054710 */ .word 0x0304ffff
/* 08054714 */ .word 0x0602ff09
/* 08054718 */ .word 0xffff0702
/* 0805471c */ .word 0xff090204
/* 08054720 */ .word 0xffff0801
/* 08054724 */ .word 0xff080102
/* 08054728 */ .word 0x0b090609
/* 0805472c */ .word 0x0904ffff
/* 08054730 */ .word 0x0608ff08
/* 08054734 */ .word 0xffff0b08
/* 08054738 */ .word 0xff080804
/* 0805473c */ .word 0x0b070607
/* 08054740 */ .word 0x0704ffff
/* 08054744 */ .word 0x0606ff08
/* 08054748 */ .word 0xffff0b06
/* 0805474c */ .word 0xff080604
/* 08054750 */ .word 0x0b050605
/* 08054754 */ .word 0x0504ffff
/* 08054758 */ .word 0x0604ff08
/* 0805475c */ .word 0xffff0b04
/* 08054760 */ .word 0xff080404
/* 08054764 */ .word 0x0b030603
/* 08054768 */ .word 0x0304ffff
/* 0805476c */ .word 0x0602ff08
/* 08054770 */ .word 0x0204ffff
/* 08054774 */ .word 0x0601ff08
/* 08054778 */ .word 0xffff0b09
/* 0805477c */ .word 0x04070904
/* 08054780 */ .word 0x09040809
/* 08054784 */ .word 0x0a090409
/* 08054788 */ .word 0xff0b0904
/* 0805478c */ .word 0xff060804
/* 08054790 */ .word 0x07090609
/* 08054794 */ .word 0x09090809
/* 08054798 */ .word 0x0b080a09
/* 0805479c */ .word 0xffff0b09
/* 080547a0 */ .word 0x04070804
/* 080547a4 */ .word 0x08040808
/* 080547a8 */ .word 0x0a080409
/* 080547ac */ .word 0xff0b0804
/* 080547b0 */ .word 0xff060704
/* 080547b4 */ .word 0x07010608
/* 080547b8 */ .word 0x08080708
/* 080547bc */ .word 0x0a080908
/* 080547c0 */ .word 0x0b080b07
/* 080547c4 */ .word 0x0704ffff
/* 080547c8 */ .word 0x08070407
/* 080547cc */ .word 0x04090704
/* 080547d0 */ .word 0x07040a07
/* 080547d4 */ .word 0x0604ff0b
/* 080547d8 */ .word 0x0607ff06
/* 080547dc */ .word 0x08070707
/* 080547e0 */ .word 0x0a070907
/* 080547e4 */ .word 0x0b070b06
/* 080547e8 */ .word 0x0604ffff
/* 080547ec */ .word 0x08060407
/* 080547f0 */ .word 0x04090604
/* 080547f4 */ .word 0x06040a06
/* 080547f8 */ .word 0x0504ff0b
/* 080547fc */ .word 0x0606ff06
/* 08054800 */ .word 0x08060706
/* 08054804 */ .word 0x0a060906
/* 08054808 */ .word 0x0b060b05
/* 0805480c */ .word 0x0504ffff
/* 08054810 */ .word 0x08050407
/* 08054814 */ .word 0x04090504
/* 08054818 */ .word 0x05040a05
/* 0805481c */ .word 0x0404ff0b
/* 08054820 */ .word 0x0605ff06
/* 08054824 */ .word 0x08050705
/* 08054828 */ .word 0x0a050905
/* 0805482c */ .word 0x0b050b04
/* 08054830 */ .word 0x0404ffff
/* 08054834 */ .word 0x08040407
/* 08054838 */ .word 0x04090404
/* 0805483c */ .word 0x04040a04
/* 08054840 */ .word 0x0304ff0b
/* 08054844 */ .word 0x0604ff06
/* 08054848 */ .word 0x08040704
/* 0805484c */ .word 0x0a040904
/* 08054850 */ .word 0x0b040b03
/* 08054854 */ .word 0x0304ffff
/* 08054858 */ .word 0x08030407
/* 0805485c */ .word 0x04090304
/* 08054860 */ .word 0x03040a03
/* 08054864 */ .word 0x0102ff0b
/* 08054868 */ .word 0x0601ff06
/* 0805486c */ .word 0x08010701
/* 08054870 */ .word 0x0a010901
/* 08054874 */ .word 0xffff0b01
/* 08054878 */ .word 0x04070204
/* 0805487c */ .word 0x02040802
/* 08054880 */ .word 0x0a020409
/* 08054884 */ .word 0xff0b0204
/* 08054888 */ .word 0xff0b0202
/* 0805488c */ .word 0x07030603
/* 08054890 */ .word 0x09030803
/* 08054894 */ .word 0x0b030a03
/* 08054898 */ .word 0x0904ffff
/* 0805489c */ .word 0x0204ff06
/* 080548a0 */ .word 0x0000ff06
/* 080548a4 */ .word 0x30013002
/* 080548a8 */ .word 0x35013105
/* 080548ac */ .word 0x93838983
/* 080548b0 */ .word 0x02204e83
/* 080548b4 */ .word 0x05320132
/* 080548b8 */ .word 0x83370133
/* 080548bc */ .word 0x8343836e
/* 080548c0 */ .word 0x8378838c
/* 080548c4 */ .word 0x0000008b
/* 080548c8 */ .word 0x30013002
/* 080548cc */ .word 0x35013105
/* 080548d0 */ .word 0x93838983
/* 080548d4 */ .word 0x02204e83
/* 080548d8 */ .word 0x05320132
/* 080548dc */ .word 0x95370133
/* 080548e0 */ .word 0x007d96bd
/* 080548e4 */ .word 0x00000000
/* 080548e8 */ .word 0x01fe0100
/* 080548ec */ .word 0xff180218
/* 080548f0 */ .word 0x02010500
/* 080548f4 */ .word 0x02030202
/* 080548f8 */ .word 0x02050204
/* 080548fc */ .word 0x02070206
/* 08054900 */ .word 0x05080508
/* 08054904 */ .word 0x02060207
/* 08054908 */ .word 0x02040205
/* 0805490c */ .word 0x02020203
/* 08054910 */ .word 0x05000201
/* 08054914 */ .word 0x050204ff
/* 08054918 */ .word 0x07020602
/* 0805491c */ .word 0x08050802
/* 08054920 */ .word 0x06020705
/* 08054924 */ .word 0x04020502
/* 08054928 */ .word 0x0b020c02
/* 0805492c */ .word 0x09020a02
/* 08054930 */ .word 0x0a050905
/* 08054934 */ .word 0x0c020b02
/* 08054938 */ .word 0x2800ff02
/* 0805493c */ .word 0x03020301
/* 08054940 */ .word 0x03040303
/* 08054944 */ .word 0x010300ff
/* 08054948 */ .word 0x03030203
/* 0805494c */ .word 0x0000ff03

.end
