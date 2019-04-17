; カンフーマンの入力コマンド定義ファイルです。
; コマンドの入力キーを設定するパートと、技を実行するための条件を設定するパートに分かれています。
;------------------------------------------------------------------------------
;==============================================================================
; 入力キーの設定パート
;==============================================================================
;------------------------------------------------------------------------------
;■設定はこの形が決まり事です。詳細は以下参照。
;
;[Command]
;name = "***"
;command = ###
;time = &&&
;
;■コマンドの名前：「name = "***"」という風に入れます。***に文字を入れてください。
; 　　　　　　　　アルファベットは大文字と小文字でも区別されます。日本語も可能です。
;
;■指定方法：「command = ###」という風に入れます。
;　　　　　　###に下記のキーを組み合わせ入力するコマンドを設定してください。
;
;　　方向キー：　B, DB, D, DF, F, UF, U, UB　（全て大文字で）
;　　　　　　　　B=Back（後）・D=Down（下）・F=Forward（前）・U=Up（上）になっています。
;
;　　ボタン　：　a, b, c, x, y, z, s 　　　　（全て小文字で）
; 
;　※特殊文字
;
;　　スラッシュ（ / ）：ボタンを押しっぱなしにする場合はこれを入れます。
;　　　　　　　　例：command = /F　　　（前キーを押したままにする）
;　　　　　　　　　　command = /B,y　　（後キーを押したままＹボタンを入力）
;
;　　チルダ　　（ ~ ）：ボタンが離される事を認識させる場合はこれを入れます。
;　　　　　　　　例：command = ~c　　　（Ｃボタンを離す）
;　　　　　　　　　　command = ~DB,DF,x（斜め後下を離して斜め前下=>Ｘボタンの順番に入力）
;
;　　　　　　　　※数値を追加する事で、ボタンを離すまでの時間、いわゆる『溜め』を設定出来ます。
;　　　　　　　　例：command = ~20z　　（Ｚボタンを押したままにし、２０フレーム後に離す）
;　　　　　　　　　　command = ~40B,F,b（後キーを押したままにし、４０フレーム後に離して前キー=>Ｂボタンの順番に入力）
;
;　　ドル　　　（ $ ）：複数の方向キー要素を入力出来るようにする場合はこれを入れます。
;　　　　　　　　例：command = $U　　　（上・斜め前上・斜め後上のどれからで始めても良い）
;　　　　　　　　　　command = $DF 　　（下・斜め前下・前のどれからで始めても良い）
;
;　　プラス　　（ + ）：ボタンを同時押しする場合はこれを入れます。
;　　　　　　　　例：command = a+b 　　（ＡボタンとＢボタンを同時押しします）
;　　　　　　　　　　command = x+y+z 　（ＸボタンとＹボタンとＺボタンを同時押しします）
;　　　　　　　　　　command = F+c 　　（前キーとＣボタンを同時押しします）
;
;　※これらの特殊文字は、組み合わせて使用する事も可能です。
;　　　　　　　　例：command = ~30$D,a+b
;　　　　　　　　　　　　　（下要素を３０フレーム溜めて離した後にＡボタンとＢボタンを同時押しします）
;
;■入力コマンド受付時間：「time = &&&」という風に入れます。オプションなので省略可能。
;　　　　　　　　　　　　&&&にコマンドを入力出来る時間を入れてください。時間はフレーム数です（１フレーム＝1/60秒）。
;　　　　　　　　例：time = 24　（入力受付時間を２４フレーム（0.4秒）に設定）
;
; 後は実際に登録されているものを参照してください。
;==============================================================================
[Command]
name = "AI0"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI1"
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b
time = 0
[Command]
name = "AI2"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI3"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI4"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI5"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI6"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI7"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F
time = 0
[Command]
name = "AI8"
command = D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D
time = 0
[Command]
name = "AI9"
command = B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B
time = 0
[Command]
name = "AI10"
command = U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U
time = 0
[Command]
name = "AI11"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI12"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI13"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI14"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI15"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI16"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI17"
command = a,B,c,x,y,z,s,B,D,F,U,a,b,c,x,y,z,s,s
time = 0
[Command]
name = "AI18"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI19"
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b
time = 0
[Command]
name = "AI20"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI21"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI22"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI23"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI24"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI25"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F
time = 0
[Command]
name = "AI26"
command = D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D
time = 0
[Command]
name = "AI27"
command = B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B
time = 0
[Command]
name = "AI28"
command = U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U
time = 0
[Command]
name = "AI29"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI30"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI31"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI32"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI33"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI34"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI35"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI36"
command = z,z,z,z,z,z,a,a,a,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI37"
command = z,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,z,z,z
time = 0
[Command]
name = "AI38"
command = z,z,z,z,z,a,a,a,z,z,z,z,z,a,a,a,z,z,z
time = 0
[Command]
name = "AI39"
command = z,z,z,z,z,a,a,a,z,z,z,z,z,z,a,a,z,z,z
time = 0
[Command]
name = "AI40"
command = z,z,z,z,a,a,a,z,z,z,z,a,z,z,a,a,z,z,z
time = 0
[Command]
name = "AI41"
command = z,z,z,a,z,z,z,z,z,z,z,z,z,a,a,z,z,z,z
time = 0
[Command]
name = "AI42"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI43"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,a,a,z
time = 0
[Command]
name = "AI44"
command = z,z,a,a,a,a,z,z,z,z,z,z,z,z,z,a,a,a,z
time = 0
[Command]
name = "AI45"
command = z,z,z,z,z,z,a,a,z,z,z,z,z,a,a,a,a,z,z
time = 0
[Command]
name = "AI46"
command = z,z,z,z,z,z,z,z,a,a,a,a,a,a,z,z,z,z,z
time = 0
[Command]
name = "AI47"
command = z,z,z,a,a,a,a,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI48"
command = z,z,z,z,z,a,a,a,z,z,z,a,a,a,z,z,a,z,a
time = 0
[Command]
name = "AI49"
command = z,z,z,z,a,a,a,z,z,z,z,z,a,a,a,z,z,z,z
time = 0
[Command]
name = "AI50"
command = z,z,z,a,a,z,z,z,z,z,z,z,z,z,a,a,z,z,z
time = 0
;------------------------------------------------------------------------------
;-| 超必殺技 |-----------------------------------------------------------------

[Command]
name = "マリオファイナル"    
command = D,F,b
time = 30


;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------


[Command]
name = "上スマ"    
command = U,a
time = 5

[Command]
name = "前スマ"    
command = F,a
time = 5

[Command]
name = "下スマ"    
command = D,a
time = 10




[Command]
name = "ポンプ"    
command = /D,b
time = 25


[Command]
name = "スーパーマント"    
command = /F,b
time = 25


[Command]
name = "スーパージャンプパンチ"    
command = /U,b
time = 25


[Command]
name = "下a"    
command = /D,a
time = 25


[Command]
name = "前a"    
command = /F,a
time = 25


[Command]
name = "後a"    
command = /B,a
time = 25


[Command]
name = "上a"    
command = /U,a
time = 25

[Command]
name = "前転"
command = F
time = 10

[Command]
name = "後転"
command = B
time = 10

[Command]
name = "その場回避"
command = D
time = 10

[Command]
name = "空中回避"
command = c
time = 1






[Command]
name = "ショートジャンプ"
command = U
time = 1

;------------------------------------------------------------------------------
;-| キー２回連続入力 |---------------------------------------------------------
[Command]
name = "FF"     ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = F, F
time = 10

[Command]
name = "BB"     ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = y
time = 10

;------------------------------------------------------------------------------
;-| 同時押し |-----------------------------------------------------------------
[Command]
name = "recovery"   ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = c
time = 1

[Command]
name = "recovery"   ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = a+b
time = 1
;================================================

[Command]
name="holda"
command=/a
time=1
[Command]
name="holdb"
command=/b
time=1
[Command]
name="holdc"
command=/c
time=1
[Command]
name="holdx"
command=/x
time=1
[Command]
name="holdy"
command=/y
time=1
[Command]
name="holdz"
command=/z
time=1
[Command]
name="start"
command=s
time=1

;------------------------------------------------------------------------------
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


;================================================

;-| Single Dir |------------------------------------------------------------
[Command]
name = "fwd" ;Required (do not remove)
command = $F
time = 1

[Command]
name = "downfwd"
command = $DF
time = 1

[Command]
name = "down" ;Required (do not remove)
command = $D
time = 1

[Command]
name = "downback"
command = $DB
time = 1

[Command]
name = "back" ;Required (do not remove)
command = $B
time = 1

[Command]
name = "upback"
command = $UB
time = 1

[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "upfwd"
command = $UF
time = 1

[Command]
name = "airjump"
command = U
time = 1

;-| Hold Button |--------------------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_s"
command = /s
time = 1
;------------------------------------------------------------------------------
;-| ボタン単発 |---------------------------------------------------------------
[Command]
name = "a"
command = a
time = 30

[Command]
name = "z"
command = z
time = 30

[Command]
name = "b"
command = b
time = 30

[Command]
name = "y"
command = y
time = 25

[Command]
name = "c"
command = c
time = 25

[Command]
name = "x"
command = x
time = 25

[command]
name="fwd"
command=F
time=1
[command]
name="back"
command=B
time=1
[command]
name="up"
command=U
time=1
[command]
name="down"
command=D
time=1
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

;==============================================================


[Statedef -1]


;------------------------------------------------------------------------------

[State -1, マリオファイナル]
type = ChangeState
value = 3000
triggerall =NumHelper(3000) = 0
triggerall =NumHelper(3100) = 0
triggerall = var(59) != 1
triggerall = command = "マリオファイナル"
triggerall = power >= 3000
trigger1 = ctrl = 1
;------------------------------------------------------------------------------
[State -1,ポンプ_S最大溜め]
type = ChangeState
value = 920
triggerall = var(59) != 1
triggerall =var(0) = 4
triggerall = command = "ポンプ"
trigger1 = statetype = C
trigger1 = ctrl 
;------------------------------------------------------------------------------
[State -1,ポンプ_S]
type = ChangeState
value = 900
triggerall = var(59) != 1
triggerall =var(0) != 4
triggerall = command = "ポンプ"
trigger1 = statetype = C
trigger1 = ctrl 

;------------------------------------------------------------------------------

[State -1,スーパーマント]
type = ChangeState
value = 800
triggerall = var(59) != 1
triggerall = command = "スーパーマント"
trigger1 = statetype = S
trigger1 = ctrl 


;------------------------------------------------------------------------------


[State -1,スーパーマント]
type = ChangeState
value = 850
triggerall = var(59) != 1
triggerall = command = "スーパーマント"
trigger1 = statetype = A
trigger1 = ctrl 

;--------------------------------------------------------------------------------

[State -1,スーパージャンプパンチ_S]
type = ChangeState
value = 700
triggerall = var(59) != 1
triggerall = command = "スーパージャンプパンチ"
triggerall = statetype = S
trigger1 = stateno = 40
trigger2 = stateno = [120,155]
trigger3 = stateno = 2200
trigger3 = movecontact 
;--------------------------------------------------------------------------------

[State -1,スーパージャンプパンチ_A]
type = ChangeState
value = 750
triggerall = var(59) != 1
triggerall = command = "スーパージャンプパンチ"
triggerall = statetype = A
trigger1 = ctrl 
;-------------------------------------------------------
[State -1,スライディング]
type = ChangeState
value = 2200
triggerall = var(59) != 1
triggerall = command = "前a"
triggerall = statetype = S
triggerall = stateno = 100
trigger1 = ctrl 
;-------------------------------------------------------
[State -1,上スマ]
type = ChangeState
value = 1000
triggerall = var(59) != 1
triggerall = command = "上スマ"
triggerall = statetype = S
trigger1 = stateno = 40
trigger2 = stateno = [120,155]
;-------------------------------------------------------
[State -1,下スマ]
type = ChangeState
value = 2300
triggerall = var(59) != 1
triggerall = command = "下スマ"
triggerall = statetype = S
trigger1 = ctrl 
;-------------------------------------------------------
[State -1,前スマ]
type = ChangeState
value = 2500
triggerall = var(59) != 1
triggerall = command = "前スマ"
triggerall = statetype = S
trigger1 = ctrl 
;---------------------------------------------------------------------

[State -1,マリオサイクロン_S]
type = ChangeState
value = 500
triggerall = var(59) != 1
triggerall = command = "下a"
triggerall = statetype = C
trigger1 = ctrl 
;---------------------------------------------------------------------
[State -1,メテオナックル_A]
type = ChangeState
value = 1500
triggerall = var(59) != 1
triggerall = command = "前a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 300
trigger2 = MoveHit >= 1
trigger3 = stateno = 250
trigger3 = MoveHit >= 1
;---------------------------------------------------------------------
[State -1,マリオサイクロン_A]
type = ChangeState
value = 550
triggerall = var(59) != 1
triggerall = command = "下スマ"
trigger1 = statetype = A
trigger1 = ctrl 
;---------------------------------------------------------------------

[State -1,上a_A]
type = ChangeState
value = 2100
triggerall = var(59) != 1
triggerall = command = "上a"
triggerall = statetype = A
trigger1 = ctrl 
trigger2 = stateno = 300
trigger2 = MoveHit >= 1

;---------------------------------------------------------------------
[State -1,後ろa_A]
type = ChangeState
value = 300
triggerall = var(59) != 1
triggerall = command = "後a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 2100
trigger2 = MoveHit >= 1
;-------------------------------------------------------
[State -1,前a]
type = ChangeState
value = 2400
triggerall = var(59) != 1
triggerall = command = "前a"
triggerall = statetype = S
trigger1 = ctrl 
;---------------------------------------------------------------------

[State -1,上a]
type = ChangeState
value = 2000
triggerall = var(59) != 1
triggerall = command = "上a"
triggerall = statetype = S
trigger1 = stateno = 40
trigger2 = stateno = [120,155]
;------------------------------------------------------------------
[State -1, ダッシュ投げ]
type = ChangeState
value = 1100
triggerall = var(59) != 1
triggerall = command = "z"
triggerall = stateno = 100
trigger1 = statetype = S
trigger1 = ctrl = 1
;--------------------------------------------------------------------------
;その場回避
[State -1, Shield]
type = ChangeState
value = 1600
triggerall = NumHelper(999) = 0 
triggerall = var(59) = 0
triggerall = command = "その場回避"
triggerall = statetype = S || statetype = C
triggerall = Pos Y = 0
triggerall = stateno != 100
trigger1 = stateno = [120,155]
trigger2 = stateno = [900,910]
;------------------------------------------------------------------------------
[State -1, 前転]
type = ChangeState
value = 2600
triggerall = var(59) != 1
triggerall = command = "前転"
triggerall = statetype = S || statetype = C
triggerall = Pos Y = 0
triggerall = stateno != 100
trigger1 = stateno = [120,155]
trigger2 = stateno = [900,910]
;------------------------------------------------------------------------------
[State -1,後転]
type = ChangeState
value = 2650
triggerall = var(59) != 1
triggerall = command = "後転"
triggerall = statetype = S || statetype = C
triggerall = Pos Y = 0
triggerall = stateno != 100
trigger1 = stateno = [120,155]
trigger2 = stateno = [900,910]
;---------------------------------------------------------------------
;ダッシュ
[State -1, Dash]
type = ChangeState
value = 100
triggerall = var(59) != 1
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;バックステップ
[State -1, Back Step]
type = ChangeState
value = 105
triggerall = var(59) != 1
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;-----------------------------------------------------------------------------
[State -1, 通常a]
type = ChangeState
value = 200
triggerall = var(59) != 1
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
;------------------------------------------------------
[State -1, 追加a_01]
type = ChangeState
value = 210
triggerall = var(59) != 1
triggerall = command = "a"
triggerall = stateno = 200
trigger1 = movecontact 
trigger2 = AnimTime >= 10 
;------------------------------------------------------
[State -1, 追加a_02]
type = ChangeState
value = 220
triggerall = var(59) != 1
triggerall = command = "a"
triggerall = stateno = 210
trigger1 = movecontact 
trigger2 = AnimTime >= 10 

;--------------------------------------------------------------------------------

[State -1, 空中a]
type = ChangeState
value = 250
triggerall = var(59) != 1
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1

[State -1, ファイアボール_S]
type = ChangeState
value = 600
triggerall = var(59) != 1
triggerall = command = "b"
triggerall =NumHelper(600) = [0,1]
trigger1 = statetype = S
trigger1 = ctrl

;-----------------------------------------------------------------------------


[State -1, ファイアボール_A]
type = ChangeState
value = 650
triggerall = var(59) != 1
triggerall = command = "b"
triggerall =NumHelper(600) = [0,1]
trigger1 = statetype = A
trigger1 = ctrl
;--------------------------------------------------------------------------------

[State -1, 投げ]
type = ChangeState
value = 1100
triggerall = var(59) != 1
triggerall = command = "z"
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = [120,155]
;------------------------------------------------
;挑発
[State -1, Shield]
type = ChangeState
value = 185
triggerall = NumHelper(999) = 0 
triggerall = var(59) = 0
triggerall = statetype = S
triggerall = ctrl
triggerall = Alive
trigger1 = command = "start"

;--------------------------------------------------------------------------
;空中回避
[State -1, Shield]
type = ChangeState
value = 1700
triggerall = Alive && var(10) = 0
triggerall = NumHelper(999) = 0 
triggerall = var(59) = 0
triggerall = statetype = A
triggerall = ctrl
triggerall = Alive && var(10) = 0
trigger1 = command = "空中回避"
;--------------------------------------------------------------------------------

;シールド
[State -1, Shield]
type = ChangeState
value = 130
triggerall = NumHelper(999) = 0 
triggerall = var(59) = 0
triggerall = statetype = S
triggerall = ctrl
triggerall = Alive
triggerall = Pos Y >= 0
trigger1 = command = "hold_c"
;--------------------------------------------------------------------------------

[State -1,シールド_A]
type = ChangeState
value = 132
triggerall = Alive && var(10) = 0
triggerall = NumHelper(999) = 0 
triggerall = var(59) = 0
triggerall = command = "hold_c"
trigger1 = statetype = A
trigger1 = ctrl 

;--------------------------------------------------------------------------------

[State -1,シールド_C]
type = ChangeState
value = 131
triggerall = NumHelper(999) = 0 
triggerall = var(59) = 0
triggerall = command = "hold_c"
trigger1 = statetype = C
trigger1 = ctrl 
;--------------------------------------------------------------------------------


