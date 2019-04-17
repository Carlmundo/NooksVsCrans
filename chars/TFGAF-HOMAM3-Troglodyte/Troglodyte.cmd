;1010
;1020	ball
;'1000 ball
;1100 kick
;1300 throw
;1500 1400 	465
;--------------------------------------------------------------------------
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------
; Note: The commands are CASE-SENSITIVE, and so are the command names.
; The eight directions are:
;   B, DB, D, DF, F, UF, U, UB     (all CAPS)
;   corresponding to back, down-back, down, downforward, etc.
; The six buttons are:
;   a, b, c, x, y, z               (all lower case)
;   In default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you use a and b.
;   For 6 button characters, use abc for kicks and xyz for punches.
;
; Each [Command] section defines a command that you can use for
; state entry, as well as in the CNS file.
; The command section should look like:
;
;   [Command]
;   name = some_name
;   command = the_command
;   time = time (optional -- defaults to 15 if omitted)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas.
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held down
;          egs. command = /D       ;hold the down direction
;               command = /DB, a   ;hold down-back while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;   dollar ($) - Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+) - Buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   You can combine them:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;   It's recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This matches the way most
;   popular fighting games implement their command detection.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands examples are given below.
;
; [Command] ;Quarter circle forward + x
; name = "QCF_x"
; command = ~D, DF, F, x
;
; [Command] ;Half circle back + a
; name = "HCB_a"
; command = ~F, DF, D, DB, B, a
;
; [Command] ;Two quarter circles forward + y
; name = "2QCF_y"
; command = ~D, DF, F, D, DF, F, y
;
; [Command] ;Tap b rapidly
; name = "5b"
; command = b, b, b, b, b
; time = 30
;
; [Command] ;Charge back, then forward + z
; name = "charge_B_F_z"
; command = ~60$B, F, z
; time = 10
; 
; [Command] ;Charge down, then up + c
; name = "charge_D_U_c"
; command = ~60$D, U, c
; time = 10
; 
;-| AI |--------------------------------------------------------FIDO A
[Command]
name = "ai"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai1"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai2"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai3"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai4"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai5"
command = x,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai6"
command = x,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai7"
command = x,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai8"
command = y,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai9"
command = y,y,y,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai10"
command =  y,y,F,F,F,y,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai11"
command = F,F,x,z,a,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai12"
command = a,F,F,F,x,F,F,F,b,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai13"
command = b,b,b,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai14"
command = F,F,b,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai15"
command = F,b,F,F,b,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai16"
command = F,F,c,c,c,F,F,F,F,F,F,F,c,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai17"
command = c,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,c,c,F,a+b
time = 1
[Command]
name = "ai18"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,c,F,F,F,F,F,F,F,c,c,a+b
time = 1
[Command]
name = "ai19"
command = c,F,F,z,F,F,a,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai20"
command = c,F,F,F,F,b,F,F,F,F,a,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai21"
command = a,F,F,F,F,F,F,z,F,F,F,F,F,b,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai22"
command = b,a,z,x,c,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai23"
command = x,c,x,x,x,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai24"
command = x,x,x,z,z,z,z,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai25"
command = z,z,z,z,z,z,z,z,a,a,a,a,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai26"
command = a,a,a,a,a,a,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai27"
command = a,a,a,F,F,F,F,F,a,a,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai28"
command = a+b,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai29"
command =  z+b,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1

;-| Super Motions |--------------------------------------------------------
;JUMPING SYSTEM
;[Command]
;name = "longjump"
;command = D, $U
;time = 18

;[Command]
;name = "long_jump"
;command = D, $U
;time = 18

;--------------------------------------------------------------------------
;SPECIAL_04_A
[Command]
Name = "1700"
command = ~D,DB, B, x
Time = 15

[Command]
Name = "1700"
command = ~D,DB, B, y
Time = 15

[Command]
Name = "1700"
command = ~D,DB, B, z
Time = 15

[Command]
Name = "1700"
command = ~D, B, x
Time = 15

[Command]
Name = "1700"
command = ~D, B, y
Time = 15

[Command]
Name = "1700"
command = ~D, B, z
Time = 15




[Command]
name = "1800"
command = ~D,DF, F, a
time = 15

;SPECIAL_01B
[Command]
name = "1800"
command = ~D,DF, F, b
time = 15

;SPECIAL_01C
[Command]
name = "1800"
command = ~D,DF, F, c
time = 15

[Command]
name = "1800"
command = ~D, F, a
time = 15

;SPECIAL_01B
[Command]
name = "1800"
command = ~D, F, b
time = 15

;SPECIAL_01C
[Command]
name = "1800"
command = ~D, F, c
time = 15

;--------------------------------------------------------------------------
;HYPER

;--------------------------------------------------------------------------
;SUPER
[Command]
name = "super_02A"
command = x+y+z
time = 35

;superL_02A
[Command]
name = "super_02A"
command = a+b+c
time = 30

;--------------------------------------------------------------------------
;SPECIAL_01A
[Command]
name = "special_01A"
command = ~D,DF, F, x
time = 15

;SPECIAL_01B
[Command]
name = "special_01B"
command = ~D,DF, F, y
time = 15

;SPECIAL_01C
[Command]
name = "special_01C"
command = ~D,DF, F, z
time = 15

[Command]
name = "special_01A"
command = ~D, F, x
time = 15

;SPECIAL_01B
[Command]
name = "special_01B"
command = ~D, F, y
time = 15

;SPECIAL_01C
[Command]
name = "special_01C"
command = ~D, F, z
time = 15

;--------------------------------------------------------------------------
;SPECIAL_01A


;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "rolling"
command = x+a
time = 1

[Command]
name = "recovery"			;Required (do not remove)
command = x+c
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "throw_01F"
command = /$F,y
time = 1
[Command]
name = "throw_01B"
command = /$B,y
time = 1

[Command]
name = "throw_02F"
command = /$F,z
time = 1
[Command]
name = "throw_02B"
command = /$B,z
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "up"
command = U
time = 1

[Command]
name = "down"
command = D
time = 1

[Command]
name = "fwd"
command = F
time = 1

[Command]
name = "back"
command = B
time = 1

[Command]
name = "upback"
command = UB
time = 1

[Command]
name = "downback"
command = DB
time = 1

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

;-| Hold button |--------------------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 2

[Command]
name = "hold_y"
command = /y
time = 2

[Command]
name = "hold_z"
command = /z
time = 2

[Command]
name = "hold_a"
command = /a
time = 2

[Command]
name = "hold_b"
command = /b
time = 2

[Command]
name = "hold_c"
command = /c
time = 2

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd"				;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback"				;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" 				;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown"				;Required (do not remove)
command = /$D
time = 1

[Command]
name = "block_air"
command = ~$D~
time = 1

[Command]
name = "block_air"
command = ~$F~
time = 1

;---------------------------------------------------------------------------
; 2. State entry
; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]
;AI
[State -1]
type = VarSet
trigger1 = Command = "ai"
trigger2 = Command = "ai1"
trigger3 = Command = "ai2"
trigger4 = Command = "ai3"
trigger5 = Command = "ai4"
trigger6 = Command = "ai5"
trigger7 = Command = "ai6"
trigger8 = Command = "ai7"
trigger9 = Command = "ai8"
trigger10 = Command = "ai9"
trigger11 = Command = "ai10"
trigger12 = Command = "ai11"
trigger13 = Command = "ai12"
trigger14 = Command = "ai13"
trigger15 = Command = "ai14"
trigger16 = Command = "ai15"
trigger17 = Command = "ai16"
trigger18 = Command = "ai17"
trigger19 = Command = "ai18"
trigger20 = Command = "ai19"
trigger21 = Command = "ai20"
trigger22 = Command = "ai21"
trigger23 = Command = "ai22"
trigger24 = Command = "ai23"
trigger25 = Command = "ai24"
trigger26 = Command = "ai25"
trigger27 = Command = "ai26"
trigger28 = Command = "ai27"
trigger29 = Command = "ai28"
trigger30 = Command = "ai29"
ignorehitpause = 1
var(25) = 1

;==========================================================================================
;--------------------------------------------------------------------------
;HYPER

;==========================================================================================
;--------------------------------------------------------------------------
;SUPER
;SUPER_01_A


;SUPER_02_A
[State -1, 2020]
type = ChangeState
value = 2020
triggerall = command = "super_02A" &&  statetype != A && power >= 1000 && var(25) = 0
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno =200 || stateno =205 || stateno =210 || stateno =220 || stateno =300 || stateno =305 || stateno =320||stateno=310


;==========================================================================================
;--------------------------------------------------------------------------
;SPECIAL
;SPECIAL_01_A
[State -1, 1000]
type = ChangeState
value = 1000
trigger1 = command = "special_01A" &&  statetype != A && ctrl
trigger2 = command = "special_01A" &&  movecontact
trigger2 = stateno =200 || stateno =205 || stateno =210 || stateno =220 || stateno =300 || stateno =305 || stateno =320 
trigger3 = command = "special_01A" &&  movecontact
trigger3 = stateno =200 || stateno =205 || stateno =210 || stateno =220 || stateno =300 || stateno =305 || stateno =320

;SPECIAL_01_B AIAIAI
[State -1, 1010]
type = ChangeState
value = 1000
triggerall = var(25) = 1 && numproj = 0 && P2statetype != L && movetype != H && statetype != A
trigger1 = ctrl && P2bodydist X >= 200 && movetype != H && random <= 20
trigger2 = movecontact && movetype != H && random <= 40 && P2statetype != A
trigger3 = ctrl && P2statetype != A && random <= 5 && P2bodydist X = [20,120] 
trigger3 = stateno =200 || stateno =205 || stateno =210 || stateno =220 || stateno =300 || stateno =305 || stateno =320

;SPECIAL_01_B
[State -1, 1010]
type = ChangeState
value = 1010
trigger1 = command = "special_01B" &&  statetype != A && ctrl
trigger2 = command = "special_01B" &&  movecontact
trigger2 = stateno =200 || stateno =205 || stateno =210 || stateno =220 || stateno =300 || stateno =305 || stateno =320
trigger3 = command = "special_01B" &&  movecontact
trigger3 = stateno =200 || stateno =205 || stateno =210 || stateno =220 || stateno =300 || stateno =305 || stateno =320

;SPECIAL_01_C
[State -1, 1020]
type = ChangeState
value = 1020
trigger1 = command = "special_01C" &&  statetype != A && ctrl
trigger2 = command = "special_01C" &&  movecontact
trigger2 = stateno =200 || stateno =205 || stateno =210 || stateno =220 || stateno =300 || stateno =305 || stateno =320
trigger3 = command = "special_01C" &&  movecontact
trigger3 = stateno =200 || stateno =205 || stateno =210 || stateno =220 || stateno =300 || stateno =305 || stateno =320

;SPECIAL_01_C AIAIAI
[State -1, 1020]
type = ChangeState
value = 1020
triggerall = var(25) = 1 && numproj = 0 && P2statetype != L && movetype != H && statetype != A
trigger1 = ctrl && P2bodydist X >= 200 && movetype != H && random <= 5
trigger2 = movecontact && movetype != H && random <= 10 && P2statetype != A
trigger2 = stateno =200 || stateno =205 || stateno =210 || stateno =220 || stateno =300 || stateno =305 || stateno =320
;
trigger3 = ctrl && P2name ="ryu"&& (P2stateno=1100||P2stateno=1110||P2stateno=1120||P2stateno=1000||P2stateno=1010||P2stateno=1020)
trigger4 = ctrl &&  P2name ="ken"&& ( P2stateno=1100||P2stateno=1110||P2stateno=1120 )
trigger5 = ctrl &&  P2name ="chunli"&&(P2stateno=1200||P2stateno=1201||P2stateno=1202)
trigger6 = ctrl &&  P2name ="guile"&&(P2stateno=1000||P2stateno=1010||stateno=1020)
trigger7 = ctrl &&  P2name ="dhalsim"&&(P2stateno=1000||P2stateno=1010||P2stateno=1020)
trigger8 = ctrl &&  P2name ="deejay"&&(P2stateno=1000||P2stateno=1010||P2stateno=1020)
trigger9 = ctrl &&  P2name ="sagat"&&(P2stateno=1100||P2stateno=1110||P2stateno=1120||P2stateno=1000||P2stateno=1010||P2stateno=1020)
;
value = 120

;--------------------------------------------------------------------------
;SPECIAL_02
;SPECIAL_02_A

[State -1, throw]
type = ChangeState
value = 1700
triggerall = command = "1700" &&  statetype != A  
trigger1 = ctrl

[State -1, throw]
type = ChangeState
value = 1800
triggerall = command = "1800" &&  statetype != A  
trigger1 = ctrl

;--------------------------------------------------------------------------
;SPECIAL_06_A

;--------------------------------------------------------------------------
;SPECIAL_07_A


;-----------------------------------------------------------------------------------------------------------------------------------
;EX and NORMAL change state
[State -1, 14444]
type = ChangeState
value = 14444
trigger1 = command = "b" &&  command = "y" && ctrl && statetype != A && var(14) = 0

[State -1, 44444]
type = ChangeState
value = 44444
trigger1 = command = "b" &&  command = "y" && ctrl && statetype != A && var(14) = 1













































































;---------------------------------------------------------------------



































;---------------------------------------------------------------------



































;==========================================================================================
;--------------------------------------------------------------------------
;basic PK
;--------------------------------------------------------------------------
;SF HP
[State -1, 410]
type = ChangeState
value = 410
triggerall = var(14) = 0
trigger1 = command = "z" && command = "holdfwd" &&  statetype = S && ctrl 

;SF HP AIAIAI
[State -1, 410]
type = ChangeState
value = 410
triggerall = var(25) = 1  && statetype != A && P2statetype !=L && movetype != H
trigger1 = ctrl && random <= 50 && P2movetype = H && P2bodydist X = [26,110]

;SF/B HK
[State -1, 430]
type = ChangeState
value = 430
trigger1 = command = "c" && command = "holdfwd" &&  statetype = S && ctrl && p2bodydist X <= 45
;SF/B HK
[State -1, 465]
type = ChangeState
value = 465
trigger1 = command = "c" && command = "holdback" &&  statetype = S && ctrl && p2bodydist X <= 25

;SF/B MK
[State -1, 430]
type = ChangeState
value = 425
triggerall = var(14) = 0
trigger1 = command = "b" && command = "holdfwd" &&  statetype = S && ctrl 
;SF/B MK
[State -1, 465]
type = ChangeState
value = 460
triggerall = var(14) = 0
trigger1 = command = "b" && command = "holdback" &&  statetype = S && ctrl 

;SF/B LK
[State -1, 420]
type = ChangeState
value = 420
triggerall = var(14) = 0
trigger1 = command = "a" && command = "holdfwd" &&  statetype = S && ctrl 
trigger2 = command = "a" && command = "holdback" &&  statetype = S && ctrl 

;--------------------------------------------------------------------------
;C LP
[State -1, 300]
type = ChangeState
value = 300
triggerall = command = "x" && command = "holddown" &&  statetype = C
trigger1 = ctrl
trigger2 = stateno = 300 && MoveContact
trigger3 = stateno = 300 && time >= 7
;C MP
[State -1, 305]
type = ChangeState
value = 305
triggerall = command = "y" && command = "holddown" &&  statetype = C
trigger1 = ctrl

;C HP
[State -1, 310]
type = ChangeState
value = 310
triggerall = command = "z" && command = "holddown" &&  statetype = C
trigger1 = ctrl

;C HP AIAIAI
[State -1, 310]
type = ChangeState
value = 310
triggerall = var(25) = 1 &&  statetype != A && P2statetype = A && P2bodydist X <= 10 
trigger1 = ctrl && random <= 30 && movetype != H

;C LK
[State -1, 320]
type = ChangeState
value = 320
triggerall = command = "a" && command = "holddown" &&  statetype = C
trigger1 = ctrl
trigger2 = stateno = 320 && MoveContact
trigger3 = stateno = 320 && time >= 7
;C MK
[State -1, 325]
type = ChangeState
value = 325
triggerall = command = "b" && command = "holddown" &&  statetype = C
trigger1 = ctrl

;C MK AIAIAI
[State -1, 325]
type = ChangeState
value = 325
triggerall = var(25) = 1  && statetype != A && P2statetype !=L && movetype != H
trigger1 = ctrl && random <= 100 && P2bodydist X = [26,110]

;C HK
[State -1, 330]
type = ChangeState
value = 330
triggerall = command = "c" && command = "holddown" &&  statetype = C
trigger1 = ctrl

;--------------------------------------------------------------------------
;NEAR STAND LP
[State -1, 200]
type = ChangeState
value = 200
triggerall = command = "x" && command != "holddown" && p2bodydist X <= 25 && statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact

;NEAR STAND MP
[State -1, 205]
type = ChangeState
value = 205
triggerall = command = "y" && command != "holddown" && p2bodydist X <= 25 && statetype = S
trigger1 = ctrl

;NEAR STAND HP
[State -1, 210]
type = ChangeState
value = 210
triggerall = command = "z" && command != "holddown" && p2bodydist X <= 25 && statetype = S
trigger1 = ctrl

;NEAR STAND HP AIAIAI
[State -1, 210]
type = ChangeState
value = 210
triggerall = var(25) = 1 && p2bodydist X <= 25 && statetype != A && P2statetype !=L && movetype != H
trigger1 = ctrl && random <= 50

;NEAR STAND LK
[State -1, 220]
type = ChangeState
value = 220
triggerall = command = "a" && command != "holddown" && p2bodydist X <= 25 && statetype = S
trigger1 = ctrl

;NEAR STAND MK
[State -1, 225]
type = ChangeState
value = 225
triggerall = command = "b" && command != "holddown" && p2bodydist X <= 25 && statetype = S
trigger1 = ctrl

;NEAR STAND HK
[State -1, 230]
type = ChangeState
value = 230
triggerall = var(14) = 0
triggerall = command = "c" && command != "holddown" && p2bodydist X <= 25 && statetype = S
trigger1 = ctrl

;==========================================================================================
;FAR STAND
;FAR STAND LP
[State -1, 240]
type = ChangeState
value = 240
triggerall = var(14) = 0
triggerall = command = "x" && command != "holddown" && p2bodydist X > 25 && statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact

;FAR STAND MP
[State -1, 245]
type = ChangeState
value = 245
triggerall = command = "y" && command != "holddown" && p2bodydist X > 25 && statetype = S
trigger1 = ctrl

;FAR STAND HP
[State -1, 250]
type = ChangeState
value = 250
triggerall = var(14) = 0
triggerall = command = "z" && command != "holddown" && p2bodydist X > 25 && statetype = S 
trigger1 = ctrl

;FAR STAND LK
[State -1, 260]
type = ChangeState
value = 260
triggerall = command = "a" && command != "holddown" && p2bodydist X > 25 && statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact

;FAR STAND MK
[State -1, 265]
type = ChangeState
value = 265
triggerall = command = "b" && command != "holddown" && p2bodydist X > 25 && statetype = S
trigger1 = ctrl

;FAR STAND HK
[State -1, 270]
type = ChangeState
value = 270
triggerall = var(14) = 0
triggerall = command = "c" && command != "holddown" && p2bodydist X > 25 && statetype = S
trigger1 = ctrl

;==========================================================================================
;F/B JUMP LIGHT PUNCH
[State -1, 340]
type = ChangeState
value = 340
triggerall = command = "x" && statetype = A && vel X != 0 && var(14) = 0
trigger1 = ctrl

;F/B JUMP M PUNCH
[State -1, 345]
type = ChangeState
value = 345
triggerall = command = "y" && statetype = A && vel X != 0
trigger1 = ctrl

;F/B JUMP H PUNCH
[State -1, 350]
type = ChangeState
value = 350
triggerall = command = "z" && statetype = A && vel X != 0
trigger1 = ctrl

;F/B JUMP LIGHT K
[State -1, 355]
type = ChangeState
value = 355
triggerall = command = "a" && statetype = A && vel X != 0
trigger1 = ctrl

;F/B JUMP MK
[State -1, 360]
type = ChangeState
value = 360
triggerall = command = "b" && statetype = A && vel X != 0
trigger1 = ctrl

;F/B JUMP HK
[State -1, 365]
type = ChangeState
value = 365
triggerall = command = "c" && statetype = A && vel X != 0
trigger1 = ctrl


;==========================================================================================
;JUMP LIGHT PUNCH
[State -1, 370]
type = ChangeState
value = 370
triggerall = command = "x" && statetype = A && vel X = 0
trigger1 = ctrl

;JUMP M PUNCH
[State -1, 375]
type = ChangeState
value = 375
triggerall = command = "y" && statetype = A && vel X = 0
trigger1 = ctrl

; JUMP H PUNCH
[State -1, 380]
type = ChangeState
value = 380
triggerall = command = "z" && statetype = A && vel X = 0
trigger1 = ctrl

; JUMP LIGHT K
[State -1, 385]
type = ChangeState
value = 385
triggerall = command = "a" && statetype = A && vel X = 0
trigger1 = ctrl

; JUMP MK
[State -1, 390]
type = ChangeState
value = 390
triggerall = command = "b" && statetype = A && vel X = 0
trigger1 = ctrl

; JUMP HK
[State -1, 395]
type = ChangeState
value = 395
triggerall = command = "c" && statetype = A && vel X = 0
trigger1 = ctrl


;==========================================================================================
;EX var(14) = 1
;FAR STAND LP
[State -1, 241]
type = ChangeState
value = 241
triggerall = var(14) = 1
triggerall = command = "x" && command != "holddown" && p2bodydist X > 25 && statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 241 && movecontact
trigger4 = stateno = 241 && time >= 5

;FAR STAND HP
[State -1, 251]
type = ChangeState
value = 251
triggerall = var(14) = 1
triggerall = command = "z"  && p2bodydist X > 25 && statetype = S
trigger1 = ctrl

;SB MK
[State -1, 430]
type = ChangeState
value = 206
triggerall = var(14) = 1
trigger1 = command = "b" && command = "holdfwd" &&  statetype = S && ctrl 
trigger2 = command = "b" && command = "holdback" &&  statetype = S && ctrl 

;NEAR STAND HK
[State -1, 231]
type = ChangeState
value = 231
triggerall = command = "c" && command != "holddown" && p2bodydist X <= 25 && statetype = S
trigger1 = ctrl

;FAR STAND HK
[State -1, 271]
type = ChangeState
value = 271
triggerall = command = "c" && command != "holddown" && p2bodydist X > 25 && statetype = S
trigger1 = ctrl

;F/B JUMP LIGHT PUNCH
[State -1, 341]
type = ChangeState
value = 341
triggerall = command = "x" && statetype = A && vel X != 0 && var(14) = 1
trigger1 = ctrl

;---------------------------------------------------------------------------
;==========================================================================================
;Auto Guard 一般要放在 state -1 的最上位置
[State -1, auto];這是用來控制人物蹲下擋的
type = ChangeState
triggerall = P2stateno != 1301
triggerall = statetype != A && var(25) = 1 && movetype != H && ctrl = 1 && P2MoveType = A
triggerall = P2BodyDist X <= 200 && P2statetype = S			;距離彼近時
;
trigger1 = PrevStateNo != 151					;而之前又不是擋
trigger2 = PrevStateNo != 152
trigger3 = PrevStateNo != 153
value = 120							;就蹲下預備防禦

[State -1];這是用來控制人物蹲下擋的
type = ChangeState
triggerall = P2stateno != 1301
triggerall = statetype != A && var(25) = 1 && movetype != H && ctrl = 1 && P2MoveType = A
triggerall = P2BodyDist X <= 300 && P2statetype = S 				;距離彼近時
;
trigger1 = P2name ="ryu"&& (P2stateno=1100||P2stateno=1110||P2stateno=1120||P2stateno=1000||P2stateno=1010||P2stateno=1020)
trigger2 = P2name ="ken"&& ( P2stateno=1100||P2stateno=1110||P2stateno=1120 )
trigger3 = P2name ="chunli"&&(P2stateno=1200||P2stateno=1201||P2stateno=1202)
trigger4 = P2name ="guile"&&(P2stateno=1000||P2stateno=1010||stateno=1020)
trigger5 = P2name ="dhalsim"&&(P2stateno=1000||P2stateno=1010||P2stateno=1020)
trigger6 = P2name ="deejay"&&(P2stateno=1000||P2stateno=1010||P2stateno=1020)
trigger7 = P2name ="sagat"&&(P2stateno=1100||P2stateno=1110||P2stateno=1120||P2stateno=1000||P2stateno=1010||P2stateno=1020)
;
value = 120

;walk AI
[state -1,walk]
type = ChangeState
triggerall = ctrl = 1 && movetype != H && P2movetype != A
trigger1 = P2bodyDist X = [10,150]						;通常會在要在目標位置加減 10-20 作為空間
trigger1 = Anim != 5
trigger1 = StateNo = 0
trigger1 = Pos Y = 0							;確保是在地上
trigger1 = P2movetype != A
value = 20

[state -1,bak]
type = ChangeState
triggerall = ctrl = 1 && movetype != H && P2movetype != A
trigger1 = P2bodyDist X = [151,200]					;通常會在要在目標位置加減 10-20 作為空間
trigger1 = Anim != 5
trigger1 = StateNo = 0
trigger1 = Pos Y = 0							;確保是在地上
value = 20

