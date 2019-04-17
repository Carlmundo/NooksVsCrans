;--------------------------------------------------------



;AIフラグ
[Command]
name    = "AI"
command = B,B,B,B,a+b+s
time    = 0
[Command]
name    = "AI1"
command = B,B,B,B,a+b+c+s
time    = 0
[Command]
name    = "AI2"
command = B,B,B,B,a+b+c
time    = 0
[Command]
name    = "AI3"
command = B,B,B,B,a+c
time    = 0
[Command]
name    = "AI4"
command = B,B,B,a+b+c
time    = 0
[Command]
name    = "AI5"
command = B,B,B,F,a+b+c
time    = 0
[Command]
name    = "AI6"
command = B,B,B,U,a+b+c
time    = 0
[Command]
name    = "AI7"
command = B,B,B,D,a+b+c
time    = 0
[Command]
name    = "AI8"
command = B,B,D,B,a+b+c
time    = 0
[Command]
name    = "AI9"
command = B,U,B,B,a+b+c
time    = 0
[Command]
name    = "AI10"
command = B,D,B,B,a+b+c
time    = 0
[Command]
name    = "AI11"
command = F,B,B,B,a+b+c
time    = 0
[Command]
name    = "AI12"
command = B,B,F,B,a+b+c
time    = 0
[Command]
name    = "AI13"
command = B,F,B,F,a+b+c
time    = 0
[Command]
name    = "AI14"
command = B,B,D,B,a+b+s
time    = 0
[Command]
name    = "AI15"
command = F,B,B,B,a+b+c
time    = 0
[Command]
name    = "AI16"
command = B,B,D,F,a+b+c+s
time    = 0
[Command]
name    = "AI17"
command = B,B,D,F,x+y+b+s
time    = 0
[Command]
name    = "AI18"
command = B,B,D,F,x+y+b+s
time    = 0
[Command]
name    = "AI19"
command = B,B,D,F,x+a+b+s
time    = 0
[Command]
name    = "AI20"
command = B,B,D,F,x+y+s
time    = 0
[Command]
name    = "AI21"
command = B,B,D,F,x+y+c+s
time    = 0
[Command]
name    = "AI22"
command = U,F,B,B,B,a+b+c+s
time    = 0
[Command]
name    = "AI23"
command = U,B,B,D,F,a+b+c+s
time    = 0
[Command]
name    = "AI24"
command = U,B,B,D,F,x+y+b+s
time    = 0
[Command]
name    = "AI25"
command = U,B,B,D,F,x+y+b
time    = 0
[Command]
name    = "AI26"
command = U,B,B,D,F,x+a+b+s
time    = 0
[Command]
name    = "AI27"
command = U,B,B,D,F,x+y+s
time    = 0
[Command]
name    = "AI28"
command = U,B,B,D,F,x+y+c+s
time    = 0

















;\\\\\\\\\\\\\\\\\\\\\\\\\\
;\\\\\\\\\\\\\\\\\\\\\\\\
;\\\\\\\\\\\\\\\\\\\\\\\\
----------------------
;-|必殺技 |-----------------------------------------------------------------



[Command]
name = "kaihi"  ;回避
command = b+x
;;;time = 1



[Command]
name = "TripleKFPalm"
command = ~D, DB, B, D, DB, B, y
time = 40





[Command]
name = "syoryu"
command = ~F, D, DF, x
time = 20




[Command];;;;ゾッド
name = "h1"
command = ~D, DF, F, D, DF, F, a
time = 40



[Command];;;髑髏騎士
name = "h2"
command = ~D, DB, B, D, DB, B, a
time = 40


[Command]
name = "schierke"
command = ~D, DF, F, D, DF, F, b
time = 40




[Command]
name = "kyou"
command = ~D, DB, B, D, DB, B, x
time = 40





[Command]
name = "taihou"
command = ~D, DF, F, D, DF, F, y
time = 40









;------------------------------------------------------------------------------
;-| キー２回連続入力 |---------------------------------------------------------
;;[Command]
;;name = "FF"     ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
;;command = F, F
;;time = 10

[Command]
name = "BB"     ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = B, B
time = 10

;------------------------------------------------------------------------------
;-| 同時押し |-----------------------------------------------------------------
[Command]
name = "recovery"   ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = x+y
time = 1

[Command]
name = "recovery"   ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = a+b
time = 1


;------------------------------------------------------------------------------
;-| 方向キー＋ボタン |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;------------------------------------------------------------------------------
;-| ボタン単発 |---------------------------------------------------------------
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

;------------------------------------------------------------------------------
;-| 方向キー押しっぱなし |-----------------------------------------------------
[Command]
name = "holdfwd"   ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = /$F
time = 1

[Command]
name = "holdback"  ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = /$B
time = 1

[Command]
name = "holdup"    ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = /$U
time = 1

[Command]
name = "holddown"  ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = /$D
time = 1

;------------------------------------------------------------------------------
;==============================================================================
; 技を実行するための条件の設定（ステートエントリーパート）
;==============================================================================
;------------------------------------------------------------------------------
; ここから下は「どのコマンドでどの番号のステートをどういう条件で出せるか」を設定する場所です。
;（ステートに関してはCNSファイルを参照）
; 
;■設定は基本的にこの形になります。
;
; [State -1, Label]                  ;「Label」の部分はただのラベルです。何でも良いです。それ以外は変更不可。
; type = ChangeState                 ;「別のステートに変更する」という意味のステートコントローラ
; value = new_state_number           ;出したい技のステート番号を入れます
; trigger1 = command = command_name  ;入力キー設定パートで登録したコマンドの名前をどれか入れます
; . . .  (any additional triggers)   ;trigger（条件を指定するトリガー）を追加出来ます
;
;■triggerに使える基本的な条件（通常は「トリガー」と呼ばれています）
;
;   - StateType    - キャラクターがどの状態の時にそのステートを出せるかどうかを決められます。
;                    S=立った状態・C=座った状態・A=空中にいる状態・L=横に倒れた状態、の４つが決まり事です。
;                    CNSのStatedefの下にある「Type = *」の項目が状態の意味なので、これをこのトリガーで判断します。
;
;   - Ctrl         - コントロールが可能か不可能かどちらかの時にそのステートを出せるかどうかを決められます。
;                    0=コントロール不可能状態・1=コントロール可能状態、ですが通常は Ctrl = 1 ( = 1 省略可能)が基本。
;
;   - StateNo      - 別の番号のステートから出せる事が可能になります。
;                    これを応用してスーパーキャンセルも可能です。
;
;   - MoveContact  - 物理攻撃が相手に当たった時（攻撃がヒットした時、もしくはガードされた時）に、
;                    そのステートを出せるかどうかを決められます。２種類４パターンあります。
;                    MoveContact or MoveContact = 1  （攻撃が当たった時）
;                    !MoveContact or MoveContact = 0 （攻撃が当たってない時）
;                    これを応用してスーパーキャンセルも可能です。
;
;　※上の４つ以外にもありますが、他のトリガーはM.U.G.E.N本体docsフォルダの中の
;　　CNSドキュメンテーションを参照してください。
;
;■ステートエントリーの順序
;
; ChangeStateの登録の順番は重要です。上に来れば来るほどコマンド入力の優先度が高くなります。
;
; 引用になりますが、例えば「波動拳コマンドのChangeState（↓＼→＋パンチ）」を
;「昇龍拳コマンドのChangeState（→↓＼＋パンチ）」よりも上に登録した場合、
; ゲーム中では昇龍拳を出そうとしても波動拳が誤って暴発しやすくなってしまいます。
; 防止するためには、「波動拳のChangeState」を「昇龍拳のChangeState」よりも下に登録しなくてはなりません。
;「レバーを前に入れて出す特殊技」と「投げ技」の関係なども同様です。
;
; 順番をよく考えて登録しましょう。
;
;■[Statedef -1]とは？
;
; この部分はCNSプログラミングの拡張部分の、常時監視ステートになります。
; どのいかなる状態でも設定した記述が常に有効になるステートです（CNSの[Statedef -2]と似たような部分）。
;
; 必要な記述と行なので、絶対に消さないでください。
;
;==============================================================================
;------------------------------------------------------------------------------
; 次の行は絶対に消さないでください。必須の項目です。

[Statedef -1]

;==============================================================================
;------------------------------------------------------------------------------

;AI---------------------------------------------------
;AI VarSet
[State -1, AI]
type = VarSet
triggerall = var(59) = 0
trigger1  = command = "AI"
trigger2  = command = "AI1"
trigger3  = command = "AI2"
trigger4  = command = "AI3"
trigger5  = command = "AI4"
trigger6  = command = "AI5"
trigger7  = command = "AI6"
trigger8  = command = "AI7"
trigger9  = command = "AI8"
trigger10  = command = "AI9"
trigger11  = command = "AI10"
trigger12  = command = "AI11"
trigger13  = command = "AI12"
trigger14  = command = "AI13"
trigger15  = command = "AI14"
trigger16  = command = "AI15"
trigger17  = command = "AI16"
trigger18  = command = "AI17"
trigger19  = command = "AI18"
trigger20  = command = "AI19"
trigger21  = command = "AI20"
trigger22  = command = "AI21"
trigger23  = command = "AI22"
trigger24  = command = "AI23"
trigger25  = command = "AI24"
trigger26  = command = "AI25"
trigger27  = command = "AI26"
trigger28  = command = "AI27"
trigger29  = command = "AI28"
v =  59
value = 3






;ガード Lv設定
[State -1, AI]
type = VarSet
triggerall = var(58) = 0
trigger1  = var(59) > 0
v =  58
value = 3  ;0～5で調節できます

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;





;ゾッド
[State -1]
type = ChangeState
value = 6005
triggerall   = var(59)  > 2
triggerall = roundstate = 2
triggerall = power >= 2000 
triggerall = statetype != A
triggerall   = p2statetype != L
triggerall = NumHelper(6010) <  1
triggerall = p2life > 1
trigger1 = random < 250
trigger1 = ctrl






;髑髏騎士
[State -1]
type = ChangeState
value = 5720
triggerall   = var(59)  > 2
triggerall = roundstate = 2
triggerall = power >= 2000 
triggerall = statetype != A
triggerall   = p2statetype != L
triggerall = NumHelper(5721) <  1
triggerall = p2life > 1
trigger1 = random < 250
trigger1 = ctrl




;炎の車輪
[State -1]
type = ChangeState
value = 7799
triggerall = power >= 2000
triggerall = p2life > 1
triggerall   = var(59)  > 1
triggerall = statetype != A
triggerall = NumHelper(7800) <  1
triggerall = NumHelper(7802) <  1
trigger1 = ctrl
trigger1 = random < 250



;狂戦士
[State -1]
type = ChangeState
value = 5730
triggerall   = var(59)  > 1
triggerall = roundstate = 2
triggerall = power >= 3000 
triggerall = statetype != A
triggerall = p2life > 1
trigger1 = random < 50
trigger1 = ctrl






;大砲
[State -1]
type = ChangeState
value = 5429
triggerall = power >= 1000
triggerall   = var(59)  > 1
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = p2statetype = A
triggerall = p2stateno != 5120
triggerall= p2stateno != 5160
triggerall= p2stateno !=  5080
triggerall= p2stateno !=  5150
triggerall = p2life > 1
trigger1 = ctrl
trigger1 = p2bodydist X > 140
trigger1 = random < 200



;百人斬り
[State -1, Smash Kung Fu Upper]
type = ChangeState
value = 60000
triggerall   = var(59) > 0
triggerall = statetype != A ;「 != 」は否定（～では無い時）の意味の条件になります
triggerall = power >= 1000
triggerall = stateno != 800    ;投げ
triggerall = stateno != 810    ;投げ
triggerall = ctrl 
triggerall   = P2movetype  = A
triggerall = p2bodydist X < 150
triggerall = p2statetype != L
triggerall = p2life > 1
triggerall = p2stateno != 5120
trigger1 = random < 200











;昇竜
[State -1]
type = ChangeState
value = 7820
triggerall   = var(59) > 1
triggerall = statetype != A
triggerall = stateno != 800    ;投げ
triggerall = stateno != 810    ;投げ
triggerall = p2stateno != 5120
triggerall = ctrl 
triggerall   = P2movetype  = A
triggerall = p2bodydist X < 80
triggerall = p2statetype != L
trigger1 = random < 150
trigger1 = p2life > 1

trigger2  = P2movetype  = A
trigger2 = p2bodydist X < 50
trigger2 = stateno = 200
trigger2   = random < 200

trigger3 = stateno = 7830
trigger3  = animtime = 0
trigger3  = p2bodydist X < 100
trigger3   = P2movetype  = A







;しゃがみパンチ
[State -1]
type = ChangeState
value = 400
triggerall = var(59) > 1
triggerall = statetype != A
triggerall = p2bodydist X < 40
triggerall = p2stateno != 5120
triggerall = p2statetype != L
triggerall = roundstate = 2
triggerall = p2life > 1
trigger1 = ctrl
trigger1   = p2statetype != A       ; Not Lie down
trigger1   = random < 900

trigger2 = stateno = 5120
trigger2  = p2bodydist X < 40
trigger2  = animtime = 0

trigger3 = stateno = 7830
trigger3  = animtime = 0
trigger3  = p2bodydist X < 40







;パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 200
triggerall = var(59) > 1
triggerall = statetype != A
triggerall = p2bodydist X < 60
triggerall = p2stateno != 5120
triggerall = p2statetype != L
triggerall = roundstate = 2
triggerall = p2life > 1
trigger1 = ctrl
trigger1   = p2statetype != A       ; Not Lie down
trigger1   = random < 120





;斬り1　弱
[State -1, Stand Strong Punch]
type = ChangeState
value = 6200
triggerall = var(59) > 1
triggerall = statetype != A
triggerall = p2bodydist X > 40
triggerall = p2bodydist X < 140
triggerall = p2stateno != 5120
triggerall = p2statetype != L
triggerall = roundstate = 2
triggerall = p2life > 1
trigger1 = ctrl
trigger1   = p2statetype != A       ; Not Lie down
trigger1   = random < 100
trigger2 = stateno = 6201
trigger2 = Animelem = 6

trigger3 = stateno = 5120
trigger3  = p2bodydist X > 30
trigger3  = p2bodydist X < 60
trigger3  = animtime = 0






;斬り2　弱
[State -1, Stand Strong Punch]
type = ChangeState
value = 6201
triggerall = var(59) > 1
triggerall = statetype != A
triggerall = p2bodydist X > 40
triggerall = p2bodydist X < 140
triggerall = p2stateno != 5120
triggerall = p2statetype != L
trigger1 = p2life > 1
trigger1 = ctrl
trigger1   = p2statetype != A       ; Not Lie down
trigger1   = random < 100
trigger2 = stateno = 6200
trigger2 = Animelem = 6












;しゃがみ強パンチ　　しゃがみ斬り　　対空
[State -1, Stand Strong Punch]
type = ChangeState
value = 410
triggerall = var(59) > 1
triggerall = statetype != A
triggerall = p2bodydist X >  -100
triggerall = p2bodydist X < 100
triggerall = p2stateno != 5120
triggerall  = p2statetype = A
trigger1 = p2life > 1
trigger1 = !inguarddist
trigger1 = ctrl
trigger1   = p2statetype != L       ; Not Lie down
trigger1   = random < 40
trigger2 = stateno = 6005
trigger2  = animtime = 0







;立ち強パンチ　　立ち斬り1
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = var(59) > 1
triggerall = statetype != A
triggerall = p2stateno != 5120

trigger1 = p2bodydist X >  100
trigger1 = p2bodydist X < 150
trigger1 = p2life > 1
trigger1 = ctrl
trigger1   = p2statetype != L       ; Not Lie down
trigger1   = random < 20








;しゃがみ突き斬り
[State -1, Stand Strong Punch]
type = ChangeState
value = 440
triggerall = var(59) > 1
triggerall = statetype != A
triggerall = p2stateno != 5120
triggerall = p2stateno != 5050
triggerall = p2stateno != 5061
triggerall = p2stateno != 5080
triggerall = p2stateno != 5090
triggerall = p2stateno != 5100
triggerall = p2stateno != 5160
triggerall = p2stateno != 5170
triggerall = p2stateno != 6001
triggerall   = p2statetype != L       ; Not Lie down

trigger1 = p2bodydist X > 200
trigger1 = p2life > 1
trigger1 = ctrl
trigger1   = p2statetype != A       ; Not Lie down
trigger1   = p2statetype != L       ; Not Lie down
trigger1   = random < 250


trigger2 = p2bodydist X > 140
trigger2 = stateno = 6200
trigger2 = p2life > 1
;;;;;trigger2 = movehit

trigger3 = p2bodydist X > 140
trigger3 = stateno = 6201
trigger3 = p2life > 1
;;;;;trigger3 = movehit






;立ち強きっく　　立ち斬り2    対空
[State -1, Stand Strong Punch]
type = ChangeState
value = 240
triggerall = var(59) > 1
triggerall = statetype != A
triggerall = p2stateno != 5120
triggerall  = p2statetype = A

trigger1 = p2bodydist X > 151
trigger1 = p2life > 1
trigger1 = !inguarddist
trigger1 = ctrl
trigger1   = p2statetype != L       ; Not Lie down
trigger1   = random < 20





;立ち強きっく　　立ち斬り2
[State -1, Stand Strong Punch]
type = ChangeState
value = 240
triggerall = var(59) > 1
triggerall = statetype != A
triggerall = p2stateno != 5120

trigger1 = p2bodydist X > 151
trigger1 = p2life > 1
trigger1 = !inguarddist
trigger1 = ctrl
trigger1   = p2statetype != L       ; Not Lie down
trigger1   = random < 20

;;;trigger2   = random < 100
trigger2 = stateno = 440
trigger2 = p2life > 1
trigger2 = movehit
trigger2 = Animelem = 7




;ジャンプ強キック
[State -1,1]
type = ChangeState
value = 640
triggerall = var(59) > 1
triggerall = statetype = A
triggerall   = p2statetype != L       ; Not Lie down
trigger1 = ctrl 
trigger1 = p2bodydist X > 80
trigger1 = p2bodydist X < 150




;ジャンプ強パンチ
[State -1,1]
type = ChangeState
value = 610
triggerall = var(59) > 1
triggerall = statetype = A
triggerall   = p2statetype != L       ; Not Lie down
trigger1 = p2statetype != A
trigger1 = ctrl 
trigger1 = p2bodydist X < 100
trigger1 = p2bodydist X > -100

trigger2 = stateno = 5200
trigger2  = p2bodydist X < 100

trigger3 = stateno = 5300
trigger3  = p2bodydist X < 100














[State -1,しゃがみガード]
Type = ChangeState
Value = 131
Triggerall = var(59) > 0
TriggerAll = StateType != A
Triggerall = inguarddist
Triggerall = Ctrl 
Triggerall = p2Statetype != A

Trigger1 = Random = [0,300]
Trigger1 = var(58) = 1
Trigger2 = Random = [0,700]
Trigger2 = var(58) = 2
Trigger3 = Random = [0,350]
Trigger3 = var(58) = 3
Trigger4 = Random = [0,700]
Trigger4 = var(58) = 4
Trigger5 = Random = [0,990]
Trigger5 = var(58) > 4


[State -1,立ちガード]
Type = ChangeState
Value = 130
Triggerall = var(59) > 0
TriggerAll = StateType != A
Triggerall = inguarddist
Triggerall = Ctrl 
Triggerall = p2Statetype = A
Trigger1 = Random = [0,300]
Trigger1 = var(58) = 1
Trigger2 = Random = [0,700]
Trigger2 = var(58) = 2
Trigger3 = Random = [0,350]
Trigger3 = var(58) = 3
Trigger4 = Random = [0,700]
Trigger4 = var(58) = 4
Trigger5 = Random = [0,970]
Trigger5 = var(58) > 4


[State -1,空中ガード]
Type = ChangeState
value = 132
Triggerall = var(59) > 0
TriggerAll = StateType = A
Triggerall = inguarddist
Triggerall = Ctrl
Trigger1 = Random = [0,300]
Trigger1 = var(58) = 1
Trigger2 = Random = [0,700]
Trigger2 = var(58) = 2
Trigger3 = Random = [0,350]
Trigger3 = var(58) = 3
Trigger4 = Random = [0,700]
Trigger4 = var(58) = 4
Trigger5 = Random = [0,970]
Trigger5 = var(58) > 4






;バックステップ
[State -1, Back Step]
type = ChangeState
value = 105
triggerall = var(59) > 0
triggerall = p2statetype = L
triggerall = p2bodydist X < 60

trigger1 = p2life > 1
trigger1   = statetype != A
trigger1 = ctrl






;回避
[State -1]
type = ChangeState
value = 7830
triggerall   = var(59)  > 0
triggerall = p2life > 0
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = roundstate = 2

trigger1   = P2movetype  = A
trigger1 = ctrl
trigger1 = p2bodydist X > 150
trigger1   = random < 100
trigger1 = enemy, numhelper > 0


trigger2 = p2bodydist X > 200
trigger2   = random < 10
trigger2   = P2movetype  = A
trigger2 = ctrl

trigger3 = p2bodydist X < 50
trigger3 = stateno = 6200

trigger4 = p2bodydist X < 50
trigger4 = stateno = 6201

trigger5   = P2movetype  = A
trigger5 = p2bodydist X < 20
trigger5 = stateno = 100

trigger6   = P2movetype  = A
trigger6 = ctrl
trigger6 = p2bodydist X > 150
trigger6   = random < 100
trigger6 = enemy, Numproj > 0

trigger7   = P2movetype  = A
trigger7 = p2bodydist X < 150
trigger7 = stateno = 6200

trigger8  = P2movetype  = A
trigger8 = p2bodydist X < 150
trigger8 = stateno = 6201

trigger9 = stateno = 6040
trigger9 = enemy, numhelper > 0











;回避2222
[State -1]
type = ChangeState
value = 7830
triggerall   = var(59)  > 0
triggerall = p2life > 0
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = roundstate = 2

trigger1 = stateno = 6040
trigger1 = enemy, Numproj > 0


;----------------------------------------------------------------------
;----------------------------------------------------------------------
;----------------------------------------------------------------------
;----------------------------------------------------------------------
;----------------------------------------------------------------------
;----------------------------------------------------------------------
;----------------------------------------------------------------------
;----------------------------------------------------------------------

































;;昇竜
[State -1, syoryu]
type = ChangeState
value = 7820
triggerall   = var(59)  = [0,1]
triggerall = command = "syoryu"
triggerall = statetype != A
triggerall = stateno != 6001
triggerall = stateno != 6005
triggerall = stateno != 6010
triggerall = stateno != 6011
triggerall = stateno != 6012
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = MoveContact 







;;狂戦士
[State -1, kyou]
type = ChangeState
value = 5730
triggerall   = var(59)  = [0,1]
triggerall = command = "kyou"
triggerall = power >= 3000
triggerall = statetype != A
triggerall = stateno != 6001
triggerall = stateno != 6005
triggerall = stateno != 6010
triggerall = stateno != 6011
triggerall = stateno != 6012
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA ;キャラクター本体の地上攻撃判定が出ている時の条件（詳細はdocs参照）
trigger2 = MoveContact 




;;髑髏騎士
[State -1, h2]
type = ChangeState
value = 5720
triggerall   = var(59)  = [0,1]
triggerall = command = "h2"
triggerall = power >= 2000
triggerall = statetype != A
triggerall = stateno != 6001
triggerall = stateno != 6005
triggerall = stateno != 6010
triggerall = stateno != 6011
triggerall = stateno != 6012
triggerall = NumHelper(5721) <  1

trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA ;キャラクター本体の地上攻撃判定が出ている時の条件（詳細はdocs参照）
trigger2 = MoveContact 





;百人斬り（ゲージレベル１）
[State -1, TripleKFPalm]
type = ChangeState
value = 60000
triggerall   = var(59)  = [0,1]

triggerall = command = "TripleKFPalm"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = stateno != 6001
triggerall = stateno != 6005
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA ;キャラクター本体の地上攻撃判定が出ている時の条件（詳細はdocs参照）
trigger2 = MoveContact 




;;シールケの魔法-炎の車輪
[State -1, schierke]
type = ChangeState
value = 7799
triggerall   = var(59)  = [0,1]
triggerall = command = "schierke"
triggerall = power >= 2000
triggerall = statetype != A
triggerall = stateno != 6001
triggerall = stateno != 6005
triggerall = stateno != 6010
triggerall = stateno != 6011
triggerall = stateno != 6012
triggerall = stateno != 7800
triggerall = stateno != 7801
triggerall = stateno != 7802
triggerall = stateno != 7803
triggerall = stateno != 7799
triggerall = NumHelper(7800) <  1
triggerall = NumHelper(7802) <  1

trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA ;キャラクター本体の地上攻撃判定が出ている時の条件（詳細はdocs参照）
trigger2 = MoveContact 




;;ゾッド
[State -1, h1]
type = ChangeState
value = 6005
triggerall   = var(59)  = [0,1]

triggerall = command = "h1"
triggerall = power >= 2000
triggerall = statetype != A
triggerall = stateno != 6001
triggerall = stateno != 6005
triggerall = stateno != 6010
triggerall = stateno != 6011
triggerall = stateno != 6012
triggerall = NumHelper(6010) <  1

trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA ;キャラクター本体の地上攻撃判定が出ている時の条件（詳細はdocs参照）
trigger2 = MoveContact 







;;;大砲
[State -1, taihou]
type = ChangeState
value = 5429
triggerall   = var(59)  = [0,1]
triggerall = power >= 1000
triggerall = command = "taihou"
triggerall = statetype != A
triggerall = stateno != 6001
triggerall = stateno != 6005
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA ;キャラクター本体の地上攻撃判定が出ている時の条件（詳細はdocs参照）
trigger2 = MoveContact 









; ※パワーゲージは「スーパーコンボゲージ」や「超必殺技ゲージ」とも呼ばれている部分です。
;------------------------------------------------------------------------------
;===========================================================================
;------------------------------------------------------------------------------


;==============================================================================
;------------------------------------------------------------------------------
;ダッシュ
;[State -1, Dash]
;type = ChangeState
;value = 100
;triggerall   = var(59)  = [0,1]

;trigger1 = command = "FF"
;trigger1 = statetype = S
;trigger1 = ctrl



;バックステップ
[State -1, Back Step]
type = ChangeState
value = 105
triggerall   = var(59)  = [0,1]

trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;------------------------------------------------------------------------------
;投げ
;[State -1, Kung Fu Throw]
;type = ChangeState
;value = 800
;triggerall   = var(59)  = [0,1]

;triggerall = command = "y"
;triggerall = statetype = S
;triggerall = ctrl
;triggerall = stateno != 100
;trigger1 = command = "holdfwd"
;trigger1 = p2bodydist X < 3
;trigger1 = (p2statetype = S) || (p2statetype = C)
;trigger1 = p2movetype != H
;trigger2 = command = "holdback"
;trigger2 = p2bodydist X < 5
;trigger2 = (p2statetype = S) || (p2statetype = C)
;trigger2 = p2movetype != H

;==============================================================================








;斬り1
[State -1, Stand Light Punch]
type = ChangeState
value = 6200
triggerall   = var(59)  = [0,1]
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 6201) && time > 11





;斬り2
[State -1, Stand Light Punch]
type = ChangeState
value = 6201
triggerall   = var(59)  = [0,1]

triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 6200) && time > 11








:回避
[State -1]
type = ChangeState
value = 7830
triggerall   = var(59)  = [0,1]
triggerall = command = "kaihi"
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl 
trigger2 = (stateno = 6200) && time > 6
trigger3 = (stateno = 6201) && time > 6
trigger4 = (stateno = 400) && time > 1













;------------------------------------------------------------------------------
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall   = var(59)  = [0,1]
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6 ;７フレーム以上になったら有効

trigger3 = (stateno = 6200) && time > 6
trigger4 = (stateno = 6201) && time > 6








;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall   = var(59)  = [0,1]
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5 ; 「 && 」は両方が同時に成立( and )する時の意味です
trigger3 = (stateno = 230) && time > 6

;------------------------------------------------------------------------------

;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall   = var(59)  = [0,1]

triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;------------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall   = var(59)  = [0,1]

triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall   = var(59)  = [0,1]
triggerall = command = "x"
triggerall = command = "holddown"

trigger1 = statetype = C
trigger1 = ctrl








;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall   = var(59)  = [0,1]

triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;------------------------------------------------------------------------------

;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall   = var(59)  = [0,1]

triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall   = var(59)  = [0,1]

triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600|| stateno = 640|| stateno = 610
trigger2 = statetime >= 7

;空中強パンチ
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall   = var(59)  = [0,1]

triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 640 ;;;|| stateno = 630
trigger2 = movecontact

;------------------------------------------------------------------------------

;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall   = var(59)  = [0,1]

triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610 ;;;;|| stateno = 630
trigger2 = movecontact

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
