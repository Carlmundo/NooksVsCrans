

;-| 超必殺技 |--------------------------------------------------------
;ここには超必殺技を記述してください、同じ名前を「name =」欄に書けますが
;コマンドは絶対に違ったものにしてください。
;カンフーマンは弱パンチと強パンチで技が出せるように同じ名前のコマンドで
;内容が弱と強になっています。
;「time=20」と書くことで「コマンドを20フレーム以内に入力」と設定できます。

[Command]
name = "DB_abc"
command = ~D, DB, B,a+b
time = 30

[Command]
name = "DB_xyz"
command = ~D, DF, F, a+b
time = 30

[Command]
name = "DF_xyz"
command = ~D, DF, F, x+y
time = 30

[Command]
name = "DF_*z"
command = ~D, DB, B, x+y
time = 30

;[Command]
;name = "BT"
;command = ~D, DF, F,a+x
;time = 30

[Command]
name = "FD_abc"
command = s
time = 30



;[Command]
;name = "Hack"
;command =~D, DF, F,a+x
;time = 30






;-| 必殺技 |------------------------------------------------------


[Command]
name = "BCF_x"
command = ~F, DF, F, x
time = 25
[Command]
name = "BCF_x"
command = ~F, DF, F, y
time = 25
[Command]
name = "BCF_x"
command = ~F, DF, F, z
time = 25

[Command]
name = "CF_z"
command = ~D, DB, B, x
time = 25
[Command]
name = "CF_z"
command = ~D, DB, B, y
time = 25
[Command]
name = "CF_z"
command = ~D, DB, B, z
time = 25

[Command]
name = "CF_x"
command = ~D, DF, F, x
time = 25
[Command]
name = "CF_x"
command = ~D, DF, F, y
time = 25
[Command]
name = "CF_x"
command = ~D, DF, F, z
time = 25


[Command]
name = "CB_x"
command = ~D, DF, F, a
time = 25
[Command]
name = "CB_x"
command = ~D, DF, F, b
time = 25
[Command]
name = "CB_x"
command =~D, DF, F, c
time = 25

[Command]
name = "CB_a"
command = ~D, DB, B, a
time = 25
[Command]
name = "CB_b"
command = ~D, DB, B, b
time = 25
[Command]
name = "CB_c"
command = ~D, DB, B, c
time = 25

;[Command]
;name = "BCF_y"
;command = ~B,D, F, y

;[Command]
;name = "BCF_z"
;command = ~B,D, F, z

;[Command]
;name = "FC_x"
;command = ~F,D, x

;[Command]
;name = "FC_y"
;command = ~F,D, y

;[Command]
;name = "FC_z" 
;command = ~F,D, z

;[Command]
;name = "BDB_a" 
;command = a+x
;time=30


[Command]
name = "/a" 
command = /a
time = 1

[Command]
name = "/b" 
command = /b
time = 1

[Command]
name = "/c" 
command = /c
time = 1

[Command]
name = "~a" 
command = ~a
time = 1

[Command]
name = "~b" 
command = ~b
time = 1

[Command]
name = "~c" 
command = ~c
time = 1



[Command]
name = "CF_y"
command = ~D, DF, F, y




;[Command]
;name = "CF_a"
;command = ~D, DF, F, a

;[Command]
;name = "CF_b"
;command = ~D, DF, F, b

;[Command]
;name = "CF_c"
;command = ~D, DF, F, c




;[Command]
;name = "FF_ab"
;command = F, F, a+b

;[Command]
;name = "FF_a"
;command = F, F, a

;[Command]
;name = "FF_b"
;command = F, F, b

;[Command]
;name = "getup"
;command = F, D, B, a

;[Command]
;name = "getup"
;command = F, D, B, b

;[Command]
;name = "getup"
;command = F, D, B, c

;[Command]
;name = "tri"
;command = b+y

;※※※※※※※※※※※※※※※※※※※※ダッシュ攻撃コマンド

[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_c"
command = /F,c
time = 1

;※※※※※※※※※※※※※※※※※※※※ハイジャンプコマンド
;×下をちょっと押して上を押す、と言う意味。
[Command]
name = "h_jump"    
;command = ~1$D,$U
command = a+b+c
time = 10

;※※※※※※※※※※※※※※※※※※※※後避け
;後を押しながらx+y+z、という意味
[Command]
name = "away-b"    
command = /B,b+y
time = 10

;※※※※※※※※※※※※※※※※※※※※前避け
;x+y+z、という意味
[Command]
name = "away-f"    
command = b+y
time = 10

[Command]
name = "cz"    
command = c+z
time = 10

[Command]
name = "ax"    
command = a+x
time = 10

;-| ２回押し技 |-----------------------------------------------------------
[Command]
name = "FF"     
command = F, F
time = 10

[Command]
name = "BB"     
command = B, B
time = 10

;-| ２・３個の同時押し技 |-----------------------------------------------
[Command]
name = "recovery"
command = x+y+z
time = 1

;-| ２・３個の同時押し技 |-----------------------------------------------
[Command]
name = "x+y+z"
command = x+y+z
time = 1

;-| ２・３個の同時押し技 |-----------------------------------------------
[Command]
name = "a+b+c"
command = a+b+c
time = 1

;-| 方向とボタンで出す技 |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| ボタン設定（いじらない）|---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

;-| 押しっぱなし設定（いじらない）-------------------------------------------------------
[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup" 
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

[Command]
name = "holdx"
command = /$x
time = 1

[Command]
name = "holdy"
command = /$y
time = 1


[Command]
name = "DU"
command = D, U
time = 20

; 下の記述↓は絶対に消さないでください。
[Statedef -1]
;===========================================================================


;---------------------------------------------------------------------------
;カウンター
;---------------------------------------------------------------------------
;[State -1, ]
;type = VarSet
;var(16) = 900
;var(17) = 1
;triggerall = stateno = [150,159]
;triggerall = stateType != A
;trigger1 = (command = "CF_a")||(command = "CF_b")||(command = "CF_c")
;trigger2 = var(59) = 1
;trigger2 = P2BodyDist X < 50
;trigger2 = EnemyNear,MoveType != A
;trigger3 = var(58) = 1
;trigger3 = (command = "a") || (command = "b") || (command = "c") || (command = "x") || (command = "y") || (command = "z")

;[State -1, ]
;type = VarSet
;var(16) = 640
;var(17) = 1
;triggerall = stateno = [150,159]
;triggerall = stateType = A
;trigger1 = (command = "CF_a")||(command = "CF_b")||(command = "CF_c")
;trigger2 = var(59) = 1
;trigger2 = P2BodyDist X < 50
;trigger2 = EnemyNear,MoveType != A
;trigger3 = var(58) = 1
;trigger3 = (command = "a") || (command = "b") || (command = "c") || (command = "x") || (command = "y") || (command = "z")




;===========================================================================
;===========================================================================
;===========================================================================
;超必ｈ４侵入
;[State -1, h4]
;type = ChangeState
;value = 3020
;triggerall = command = "Hack"
;triggerall = power >= 1000
;triggerall = statetype != A
;trigger1 = ctrl
;trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;バレットタイム
;[State -1]
;type = ChangeState
;value = 3005
;triggerall = command = "BT"
;triggerall = power >= 1000
;triggerall = statetype != A
;trigger1 = ctrl
;trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;超必_アップグレード
[State -1]
type = ChangeState
value = 3070
triggerall = command = "FD_abc"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;超必_ヘリ＆ガトリング砲
;[State -1, h3]
;type = ChangeState
;value = 3040
;triggerall = command = "DB_abc"
;triggerall = power >= 1000
;triggerall = statetype = A
;trigger1 = ctrl
;trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;超必_ヘリ＆ガトリング砲
[State -1, h3]
type = ChangeState
value = 3400
triggerall = command = "DB_abc"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;超必ｈ３乱舞
[State -1, h3]
type = ChangeState
value = 3010
triggerall = command = "DB_xyz"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------
;超必ｈ１ダブルガン
[State -1, h1]
type = ChangeState
value = 3000
triggerall = command = "DF_xyz"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;超必ｈ２ダブルガン
[State -1, h2]
type = ChangeState
value = 3001
triggerall = command = "DF_*z"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;===========================================================================

;---------------------------------------------------------------------------
;必殺７ガン空中
;[State -1, s7]
;type = ChangeState
;value = 1070
;triggerall = command = "CF_x"
;triggerall = statetype = A
;trigger1 = ctrl
;trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------
;必殺７ガン空中
;[State -1, s7]
;type = ChangeState
;value = 1070
;triggerall = command = "CF_y"
;triggerall = statetype = A
;trigger1 = ctrl
;trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------
;必殺７ガン空中
;[State -1, s7]
;type = ChangeState
;value = 1070
;triggerall = command = "CF_z"
;triggerall = statetype = A
;trigger1 = ctrl
;trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;必殺３マシンガン（弱）
[State -1, s3l]
type = ChangeState
value = 1032
triggerall = command = "BCF_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;必殺３マシンガン（弱）
[State -1, s3l]
type = ChangeState
value = 1060
triggerall = command = "cz"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;必殺３マシンガン（中）
;[State -1, s3m]
;type = ChangeState
;value = 1031
;triggerall = command = "BCF_y"
;triggerall = statetype != A
;trigger1 = ctrl
;trigger2 = (stateno = 100) || (stateno = 105)
;trigger3 = (stateno = [200,299]) || (stateno = [400,499])
;trigger3 = movecontact
;trigger4 = (stateno = [1060,1062]) && (movecontact)

;---------------------------------------------------------------------------
;必殺３マシンガン（強）
;[State -1, s3s]
;type = ChangeState
;value = 1030
;triggerall = command = "BCF_z"
;triggerall = statetype != A
;trigger1 = ctrl
;trigger2 = (stateno = 100) || (stateno = 105)
;trigger3 = (stateno = [200,299]) || (stateno = [400,499])
;trigger3 = movecontact
;trigger4 = (stateno = [1060,1062]) && (movecontact)

;---------------------------------------------------------------------------
;必殺３マシンガン（追加弱）
;[State -1, s3l plus]
;type = varset 
;triggerall = command = "FC_x" 
;trigger1 = stateno = [1030,1032] 
;var(2) = 1 ;

;[State -1, s3l plus] 
;type = ChangeState 
;triggerall = var(2) = 1 
;triggerall = statetype != A 
;trigger1 = (stateno = 1030 && Animelemtime(9) = 4)
;trigger2 = (stateno = 1031 && Animelemtime(9) = 4)
;trigger3 = (stateno = 1032 && Animelemtime(9) = 4) 
;value = 1042 

;---------------------------------------------------------------------------
;必殺３マシンガン（追加中）
;[State -1, s3m plus]
;type = varset 
;triggerall = command = "FC_y" 
;trigger1 = stateno = [1030,1032] 
;var(2) = 2 

;[State -1, s3m plus] 
;type = ChangeState 
;triggerall = var(2) = 2 
;triggerall = statetype != A 
;trigger1 = (stateno = 1030 && Animelemtime(9) = 4)
;trigger2 = (stateno = 1031 && Animelemtime(9) = 4)
;trigger3 = (stateno = 1032 && Animelemtime(9) = 4) 
;value = 1041 

;---------------------------------------------------------------------------
;必殺３マシンガン（追加強）
;[State -1, s3s plus]
;type = varset 
;triggerall = command = "FC_z" 
;trigger1 = stateno = [1030,1032] 
;var(2) = 3 

;[State -1, s3s plus] 
;type = ChangeState 
;triggerall = var(2) = 3 
;triggerall = statetype != A 
;trigger1 = (stateno = 1030 && Animelemtime(9) = 4)
;trigger2 = (stateno = 1031 && Animelemtime(9) = 4)
;trigger3 = (stateno = 1032 && Animelemtime(9) = 4) 
;value = 1040 

;---------------------------------------------------------------------------
;必殺８マト避けb
;[State -1, s8]
;type = ChangeState
;value = 1080
;triggerall = var(9) = 0
;triggerall = command = "BDB_a"
;triggerall = statetype != A
;trigger1 = ctrl
;trigger2 = (stateno = 100) || (stateno = 105)
;trigger3 = (stateno = [200,299]) || (stateno = [400,499])
;trigger4 = (stateno = [1060,1062])

;---------------------------------------------------------------------------
;必殺４ガン（弱）
[State -1, s4l]
type = ChangeState
value = 1050
triggerall = command = "CF_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;必殺４ガン（中）
;[State -1, s4m]
;type = ChangeState
;value = 1051
;triggerall = command = "CF_y"
;triggerall = statetype != A
;trigger1 = ctrl
;trigger2 = (stateno = 100) || (stateno = 105)
;trigger3 = (stateno = [200,299]) || (stateno = [400,499])
;trigger3 = movecontact
;trigger4 = (stateno = [1060,1062]) && (movecontact)

;---------------------------------------------------------------------------
;必殺４ガン（強）
[State -1, s4s]
type = ChangeState
value = 1052
triggerall = command = "CF_z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;必殺６掌底（弱）
[State -1, s6l]
type = ChangeState
value = 1500
triggerall = command = "CB_x"
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;必殺６掌底（中）
;[State -1, s6m]
;type = ChangeState
;value = 1061
;triggerall = command = "CB_y"
;triggerall = statetype != A
;trigger1 = ctrl
;trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;必殺６掌底（強）
;[State -1, s6s]
;type = ChangeState
;value = 1062
;triggerall = command = "CB_z"
;triggerall = statetype != A
;trigger1 = ctrl
;trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;必殺１キック（弱）
[State -1, s1l]
type = ChangeState
value = 1000
triggerall = command = "CB_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;必殺１キック（中）
[State -1, s1m]
type = ChangeState
value = 1003
triggerall = command = "CB_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;必殺１キック（強）
[State -1, s1s]
type = ChangeState
value = 1005
triggerall = command = "CB_c"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = var(59)!=1
triggerall = roundstate=2
triggerall = command = "c"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = statetype = S
triggerall = p2bodydist X <= 15
triggerall = ctrl
triggerall = stateno != [100,101]
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;===========================================================================
;レバー前入れ強攻撃（ソバット）
[State -1]
type = ChangeState
value = 300
triggerall = command != "holddown"
trigger1 = statetype = S ;立ち
trigger1 = stateno != 100 ;ダッシュ中かどうか
trigger1 = command = "fwd_c"
trigger1 = ctrl
;---------------------------------------------------------------------------
;ダッシュ攻撃（ソバット）
;[State -1]
;type = ChangeState
;value = 305
;triggerall = command != "holddown"
;trigger1 = stateno = 100 ;ダッシュ中
;trigger1 = command = "fwd_a"
;trigger1 = ctrl
;trigger2 = stateno = 100
;trigger2 = command = "fwd_b"
;trigger2 = ctrl
;trigger3 = stateno = 100
;trigger3 = command = "fwd_c"
;trigger3 = ctrl

;---------------------------------------------------------------------------
;ハイジャンプ
;[State -1, Run Fwd]
;type = ChangeState
;value = 840
;trigger1 = command = "h_jump"
;trigger1 = statetype != A
;trigger1 = ctrl

;---------------------------------------------------------------------------
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中前ダッシュ
;普通のステート、この中では一番簡単なステート
;ただし空中ダッシュを連続でできないように「stateno ! = 2300」としています
;詳細はairdash.cnsで

[State -1, airrun]
type = ChangeState
value = 2300
triggerall = var(59) = 0
triggerall = statetype = A
trigger1 = command = "FF"
trigger1 = ctrl
trigger1 = stateno != 2300

;---------------------------------------------------------------------------
;空中後ろダッシュ
;普通のステート、この中では一番簡単なステート
;ただし空中ダッシュを連続でできないように「stateno ! = 2301」としています
;詳細はairdash.cnsで

[State -1, airrun]
type = ChangeState
value = 2301
trigger1 = command = "BB"
triggerall = statetype = A
trigger1 = ctrl
trigger1 = stateno != 2301

;---------------------------------------------------------------------------
;アドバンシングガード
;[State -1]
;type = ChangeState
;value = 830
;;triggerall = var(59) = 0
;triggerall = roundstate = 2
;triggerall = command = "x+y+z"
;triggerall = prevstateno != [830,831]
;trigger1 = stateno = 150 || stateno = 151 || stateno = 152 || stateno = 153
;ignorehitpause = 1

;---------------------------------------------------------------------------
;パワー溜め
;新しく「holdx」「holdy」というコマンドを作ります
;あわせるとXとYを同時に押すとってことです。
;パワーがＭＡＸなのに溜めるのは変なのでトリガーにpower != 3000を付けます。
;詳細はpower.cnsで

;[State -1, Run Back]
;type = ChangeState
;value = 2000
;triggerall = power != 3000
;trigger1 = command = "holdx"
;trigger1 = command = "holdy"
;trigger1 = statetype = S
;trigger1 = ctrl

;---------------------------------------------------------------------------
;ストライカー
[State 2000,1];←ヘルパーを呼び出す
type = Helper
triggerall=NumHelper(2000)=0
triggerall = power >= 500
trigger1 = command = "ax"
id = 2000
name = "trinity"
sprpriority = 4
pos = -300,-150;-300,-150
postype = p2
facing = 1
stateno = 2010;←呼び出されたヘルパーはこのステートから始まる
helpertype = normal
keyctrl = 0          
ownpal = 0


;---------------------------------------------------------------------------

;後避け
;とても簡単なステートです。
;ここでやってる特殊なことは「効率化」です。
;詳細はaway.cnsで

[State -1, Away]
type = ChangeState
value = 115
triggerall = command = "away-b"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact

;---------------------------------------------------------------------------

;前避け
;とても簡単なステートです。
;ここでやってる特殊なことは「効率化」です。
;詳細はaway.cnsで

[State -1, Away]
type = ChangeState
value = 110
triggerall = command = "away-f"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact

;---------------------------------------------------------------------------


;---------------------------------------------------------------------------

;起き上がり
;[State -1, getup]
;type = ChangeState
;value = 5125
;triggerall = command = "getup"
;triggerall = command != "holddown"
;trigger1 = stateno = 5110
;trigger1 = statetype = L
;trigger1 = time > 5

;---------------------------------------------------------------------------




;===========================================================================
;---------------------------------------------------------------------------





;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger5 = prevstateno != 200

;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = var(59) != 1
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,409])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100

;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = var(59) != 1
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [230,249])&& movecontact
trigger4 = (stateno = [400,419])&& movecontact
trigger5 = (stateno = [430,449])&& movecontact
trigger6 = stateno = 100

;---------------------------------------------------------------------------

;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(59) != 1
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [400,409])&& movecontact
trigger4 = stateno = 100

;Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = var(59) != 1
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,419])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100

;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = var(59) != 1
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,249])&& movecontact
trigger3 = (stateno = [400,449])&& movecontact
trigger4 = stateno = 100

;---------------------------------------------------------------------------
;挑発
;[State -1, Taunt]
;type = ChangeState
;value = 195
;trigger1 = statetype != A
;trigger1 = command = "start"
;trigger1 = ctrl

;---------------------------------------------------------------------------

;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl  

;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = var(59) != 1
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,409])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact   

;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = var(59) != 1
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [230,249])&& movecontact
trigger4 = (stateno = [400,419])&& movecontact
trigger5 = (stateno = [430,449])&& movecontact 

;---------------------------------------------------------------------------

;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(59) != 1
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [400,409])&& movecontact  

;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = var(59) != 1
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,419])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100  

;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = var(59) != 1
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,249])&& movecontact
trigger3 = (stateno = [400,449])&& movecontact  

;---------------------------------------------------------------------------

;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 100000

;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = var(59) != 1
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,609])&& movecontact
trigger3 = (stateno = [630,639])&& movecontact
trigger4 = stateno = 100000

;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = var(59) != 1
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,619])&& movecontact
trigger3 = (stateno = [630,649])&& movecontact
trigger4 = stateno = 100000

;---------------------------------------------------------------------------

;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(59) != 1
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,609])&& movecontact
trigger3 = stateno = 100000

;Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = var(59) != 1
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,619])&& movecontact
trigger3 = (stateno = [630,639])&& movecontact
trigger4 = stateno = 100000

;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = var(59) != 1
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,649])&& movecontact
trigger4 = stateno = 100000

;---------------------------------------------------------------------------
;立ち強パンチ追加攻撃１
;[State -1, Stand Strong Punch2]
;type = ChangeState
;value = 221
;triggerall = command = "x"
;triggerall = command != "holddown"
;triggerall = statetype = S 
;trigger1 = (movecontact) && (stateno = 220)

;---------------------------------------------------------------------------
;立ち弱パンチ追加攻撃１
[State -1, Stand Light Punch1]
type = ChangeState
value = 201
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype = S 
trigger1 = ctrl
trigger2 = (movecontact) && (stateno = 200)

;---------------------------------------------------------------------------
;立ち弱パンチ追加攻撃２
[State -1, Stand Light Punch2]
type = ChangeState
value = 202
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype = S 
trigger1 = ctrl
trigger2 = (movecontact) && (stateno = 201)

;---------------------------------------------------------------------------


;Super Jump
[State -1, super jump ]
type = ChangeState
value = 9996
trigger1 = command = "DU"
trigger1 = ctrl ; these means that you can make the move when you control the char
trigger1 = statetype != A ; these is to make that you cant use the superjump while you are in the air
; If you want to make a launcher you can use these 
;trigger2 = (stateno = yyy) && (movehit) && (command = "holdup") ;yyy right here is the stateno for your lancher

[State -3,veladd]
type = Veladd
triggerall =command = "holdfwd"
triggerall = prevstateno = 9996 ; the superjumo state
trigger1 = stateno = 50; jump state
x = .2 ; maybe you need to modify these value

[State state-3,veladd]
type = Veladd
triggerall =command = "holdback"
triggerall = prevstateno = 9996
trigger1 = stateno = 50
x = -.2