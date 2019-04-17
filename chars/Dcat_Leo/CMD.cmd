; The CMD file.
;
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

;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 30

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

;-| Super Motions |--------------------------------------------------------
[Command]
name="TORNADO"
command=~D,DF,F,D,DF,F,a
time=30

[Command]
name="TORNADO"
command=~D,DF,F,D,DF,F,b
time=30

[Command]
name="TORNADO"
command=~D,DF,F,D,DF,F,c
time=30

[Command]
name="ROTO_CUTTER"
command=~D,DF,F,D,DF,F,x
time=30

[Command]
name="ROTO_CUTTER"
command=~D,DF,F,D,DF,F,y
time=30

[Command]
name="ROTO_CUTTER"
command=~D,DF,F,D,DF,F,z
time=30

[Command]
name="FINAL_SLASH"
command=~D, B, F, a
time=30

[Command]
name="FINAL_SLASH"
command=~D, B, F, b
time=30

[Command]
name="FINAL_SLASH"
command=~D, B, F, c


;-| Special Motions |------------------------------------------------------
[Command]
name = "SHOULDCHARGE1"
command = ~D, DF, F, x
time=30

[Command]
name = "SHOULDCHARGE2"
command = ~D, DF, F, y
time=30

[Command]
name = "SHOULDCHARGE3"
command = ~D, DF, F, z
time=30

[command]
name = "EX_SHOULDER1"
command = ~DF, F, x+y
time = 15

[command]
name = "EX_SHOULDER2"
command = ~DF, F, x+z
time = 15

[command]
name = "EX_SHOULDER2"
command = ~DF, F, y+z
time = 15

[Command]
name = "KATUPPER_1"
command = ~D, B, x
time=15

[Command]
name = "KATUPPER_2"
command = ~D, B, y
time=15

[Command]
name = "KATUPPER_3"
command = ~D, B, z
time=15

[Command]
name = "EX_KATUPPER1"
command = ~D, DB, B, x+y
time=14

[Command]
name = "EX_KATUPPER1"
command = ~D, DB, ~B, y+x
time=14

[Command]
name = "EX_KATUPPER1"
command = ~D, DB, B, z+x
time=14

[Command]
name = "EX_KATUPPER1"
command = ~D, DB, ~B, x+z
time=14

[Command]
name = "EX_KATUPPER2"
command = ~D, DB, B, z+y
time=14

[Command]
name = "EX_KATUPPER2"
command = ~D, DB, ~B, y+z
time=14



[Command]
name = "QCF_a"
command = ~D, DF, F, a
time=20


[Command]
name = "QCF_b"
command = ~D, DF, F, b
time=20


; DIVE KICK
;================
[command]
name = "DiveKick"
command = /D, c
time = 15
[command]
name = "DiveKick"
command =~D,F,c
time = 15
[command]
name = "DiveKick"
command = ~D, DF, F, c
time = 15
; EX DIVE KICK
;================
[command]
name = "EX_DiveKick"
command = /D, a+b
time = 15
[command]
name = "EX_DiveKick"
command = /D, b+c
time = 15
[command]
name = "EX_DiveKick"
command = /D, a+c
time = 15
[command]
name = "EX_DiveKick"
command = ~DF, F, a+b
time = 15
[command]
name = "EX_DiveKick"
command = ~DF, F, b+c
time = 15
[command]
name = "EX_DiveKick"
command =~DF, F, a+c
time = 15
[command]
name = "EX_DiveKick"
command =~D,F,a+b
time = 15
[command]
name = "EX_DiveKick"
command =~D,F,b+c
time = 15
[command]
name = "EX_DiveKick"
command =~D,F,a+c
time = 15



;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10


[Command]
name = "super jump"
command = $D, $U
time = 15

;-| 2/3 Button Combination |-----------------------------------------------


[Command]
name = "guardpush"
command = x+y
time = 4

[Command]
name = "guardpush"
command = y+z
time = 4

[Command]
name = "guardpush"
command = x+z
time = 4

[Command]
name = "guardpush"
command = x+y+z
time = 4 


[Command]
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
time = 1


[Command]
name = "x+a" 
command = x+a
time = 1

[Command]
name = "x+a" 
command = a+x
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
time = 1

;-| Single Button |---------------------------------------------------------
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
name = "s"
command = s
time = 1

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

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
time = 1

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.  
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------
;SUPERS
;---------------------------------------------------------------------------
; FINAL SLASH Super 
[State -1, FINAL SLASH Super]
type = ChangeState
value = 3000
triggerall= command= "FINAL_SLASH" && power>=3000
triggerall = command != "holddown"
trigger1 = statetype!=A
trigger1 = ctrl
trigger2 = stateno=200&&movecontact
trigger3 = stateno=210&&movecontact
trigger4 = stateno=220&&movecontact
trigger5 = stateno=230&&movecontact
trigger6 = stateno=240&&movecontact
trigger7 = stateno=241&&movecontact
trigger8 = stateno=250&&movecontact
trigger9 = stateno=400&&movecontact
trigger10= stateno=410&&movecontact
trigger11= stateno=430&&movecontact
trigger12= stateno=440&&movecontact
trigger13= stateno=450&&movecontact
trigger13= animelemtime(6)>=0
trigger14= stateno=1000&&movecontact
trigger15= stateno=1010&&movecontact
trigger16= stateno=1011&&movecontact

; TORNADO SPINNING KICK Super 
[State -1, TORNADO SPINNING KICK Super]
type = ChangeState
value = 3200
triggerall= command= "TORNADO" && power>=1000
triggerall = command != "holddown"
trigger1= statetype!=A
trigger1 = ctrl
trigger2 = stateno=200&&movecontact
trigger3 = stateno=210&&movecontact
trigger4 = stateno=220&&movecontact
trigger5 = stateno=230&&movecontact
trigger6 = stateno=240&&movecontact
trigger7 = stateno=241&&movecontact
trigger8 = stateno=250&&movecontact
trigger9 = stateno=400&&movecontact
trigger10= stateno=410&&movecontact
trigger11= stateno=430&&movecontact
trigger12= stateno=440&&movecontact
trigger13= stateno=450&&movecontact
trigger13= animelemtime(7)>=0
trigger14= stateno=1000&&movecontact
trigger15= stateno=1010&&movecontact
trigger16= stateno=1011&&movecontact

[State -1, ROTO CUTTER Super]
type = ChangeState
value = 3100
triggerall= command= "ROTO_CUTTER" && power>=1000
triggerall= command != "holddown"
triggerall = command!="EX_SHOULDER1"
triggerall = command!="EX_SHOULDER2"
triggerall= statetype!=A
trigger1 = statetype=S||statetype=C
trigger1 = ctrl
trigger2 = stateno=200&&movecontact
trigger3 = stateno=210&&movecontact
trigger4 = stateno=220&&movecontact
trigger5 = stateno=230&&movecontact
trigger6 = stateno=240&&movecontact
trigger7 = stateno=241&&movecontact
trigger8 = stateno=250&&movecontact
trigger9 = stateno=400&&movecontact
trigger10= stateno=410&&movecontact
trigger11= stateno=430&&movecontact
trigger12= stateno=440&&movecontact
trigger13= stateno=450&&movecontact
trigger13= animelemtime(7)>=0
trigger14= stateno=1000&&movecontact
trigger15= stateno=1010&&movecontact
trigger16= stateno=1011&&movecontact

; SPARK PLUG Super 
[State -1, SPARK PLUG Super]
type = ChangeState
value =ifelse((prevstateno=55&&time<=20||stateno=56&&time<=14||prevstateno=56&&time<=20),1020,3300)
triggerall=command= "TORNADO" && power>=1000
triggerall=command!= "FINAL_SLASH"
triggerall= statetype!=S&&statetype!=C
trigger1= statetype =A
trigger1 = ctrl
trigger2= stateno=600&&movecontact
trigger3= stateno=610&&movecontact
trigger4= stateno=620&&movecontact
trigger5= stateno=630&&movecontact
trigger6= stateno=640&&movecontact
trigger7= (stateno=[650,651])&&movecontact
trigger8= stateno=1050&&movecontact
trigger9= stateno=1060&&movecontact
trigger10=StateNo=3101&&MoveContact
trigger10=(anim=3101&&movehit&&animelemtime(25)>=1)
;---------------------------------------------------------------------------
;=============================================================
;SPECIALs
;---------------------------------------------------------------------------
; KATANA UPPERCUT
[State -1, KATANA UPPERCUT]
type = ChangeState
value = 1050
triggerall = (command = "KATUPPER_1"||command="KATUPPER_2"||command="KATUPPER_3")
triggerall = command!= "EX_KATUPPER1"
triggerall = command!= "EX_KATUPPER2"
triggerall = command!="holddown"
triggerall= statetype!=C
trigger1 = ctrl
trigger2 = stateno=200&&movecontact
trigger3 = stateno=210&&movecontact
trigger4 = stateno=220&&movecontact
trigger5 = stateno=230&&movecontact
trigger6 = stateno=240&&movecontact
trigger7 = stateno=241&&movecontact
trigger8 = stateno=250&&movecontact
trigger9 = stateno=400&&movecontact
trigger10= stateno=410&&movecontact
trigger11= stateno=430&&movecontact
trigger12= stateno=440&&movecontact
trigger13= stateno=450&&movecontact
trigger13= animelemtime(7)>=0
trigger14= stateno=600&&movecontact
trigger15= stateno=610&&movecontact
trigger16= stateno=620&&movecontact
trigger17= stateno=630&&movecontact
trigger18= stateno=640&&movecontact
trigger19=(stateno=[650,651])&&movecontact
trigger20= stateno=1000&&movecontact
trigger21= stateno=1010&&movecontact
trigger22= stateno=1011&&movecontact
;=========================
; EX KATANA UPPERCUT
[State -1, KATANA UPPERCUT]
type = ChangeState
value = 1060
triggerall =(command= "EX_KATUPPER1"||command= "EX_KATUPPER2")&&power>=500
triggerall = command!="holddown"
triggerall= statetype!=C
trigger1 = ctrl
trigger2 = stateno=200&&movecontact
trigger3 = stateno=210&&movecontact
trigger4 = stateno=220&&movecontact
trigger5 = stateno=230&&movecontact
trigger6 = stateno=240&&movecontact
trigger7 = stateno=241&&movecontact
trigger8 = stateno=250&&movecontact
trigger9 = stateno=400&&movecontact
trigger10= stateno=410&&movecontact
trigger11= stateno=430&&movecontact
trigger12= stateno=440&&movecontact
trigger13= stateno=450&&movecontact
trigger13= animelemtime(7)>=0
trigger14= stateno=600&&movecontact
trigger15= stateno=610&&movecontact
trigger16= stateno=620&&movecontact
trigger17= stateno=630&&movecontact
trigger18= stateno=640&&movecontact
trigger19=(stateno=[650,651])&&movecontact
trigger20= stateno=1000&&movecontact
trigger21= stateno=1010&&movecontact
trigger22= stateno=1011&&movecontact
;---------------------------------------------------------------------------
; Shoulder Smash
[State -1, Shoulder Smash]
type = ChangeState
value = 1000
;triggerall= var(11)!=1
triggerall= var(11) =0
triggerall = (command ="SHOULDCHARGE1"||command="SHOULDCHARGE2"||command="SHOULDCHARGE3")
triggerall = command!="EX_SHOULDER1"
triggerall = command!="EX_SHOULDER2"
triggerall = command!= "holddown"
triggerall =statetype!=A
trigger1 =statetype=S
trigger1 = ctrl
trigger2 = stateno=200&&movecontact
trigger3 = stateno=210&&movecontact
trigger4 = stateno=220&&movecontact
trigger5 = stateno=230&&movecontact
trigger6 = stateno=240&&movecontact
trigger7 = stateno=241&&movecontact
trigger8 = stateno=250&&movecontact
trigger9 = stateno=400&&movecontact
trigger10= stateno=410&&movecontact
trigger11= stateno=430&&movecontact
trigger12= stateno=440&&movecontact
;---------------------------------------------------------------------------
; EX Shoulder Smash
[State -1, EX Shoulder Smash]
type = ChangeState
value = 1010
;triggerall= var(11)!=1
triggerall= var(11) = 0
triggerall =(command="EX_SHOULDER1"||command="EX_SHOULDER2")&&power>=500
triggerall = command!= "holddown"
trigger1 =statetype!=A
trigger1 = ctrl
trigger2 = stateno=200&&movecontact
trigger3 = stateno=210&&movecontact
trigger4 = stateno=220&&movecontact
trigger5 = stateno=230&&movecontact
trigger6 = stateno=240&&movecontact
trigger7 = stateno=241&&movecontact
trigger8 = stateno=250&&movecontact
trigger9 = stateno=400&&movecontact
trigger10= stateno=410&&movecontact
trigger11= stateno=430&&movecontact
trigger12= stateno=440&&movecontact
;---------------------------------------------------------------------------
; Dive Kick
[State -1, Dive Kick]
type = ChangeState
value = 1020
triggerall = command!= "EX_DiveKick"
triggerall = command = "DiveKick"
triggerall= pos y <= -40
triggerall = statetype!=S
trigger1 =   statetype!=C
trigger1 = ctrl
trigger2 = stateno=600&&movecontact
trigger3 = stateno=610&&movecontact
trigger4 = stateno=620&&movecontact
trigger5 = stateno=630&&movecontact
trigger6 = stateno=640&&movecontact
trigger7 = stateno=650&&movecontact
;---------------------------------------------------------------------------
;EX Dive Kick
[State -1, EX Dive Kick]
type = ChangeState
value = 1024
triggerall = command = "EX_DiveKick"&&power>=500
triggerall = statetype!=S
triggerall= pos y <= -40
trigger1 =   statetype!=C
trigger1 = pos y <-70
trigger1 = ctrl
trigger2 = stateno=600&&movecontact
trigger3 = stateno=610&&movecontact
trigger4 = stateno=630&&movecontact
trigger5 = stateno=640&&movecontact
trigger6 = stateno=650&&movecontact
;---------------------------------------------------------------------------
;EX Dive Kick
[State -1, EX Dive Kick]
type = ChangeState
value = 1024
triggerall = var(13)<=2
triggerall = stateno=1021
triggerall = command = "EX_DiveKick"&&power>=500
triggerall= pos y <= -40
triggerall = statetype!=S
trigger1 = statetype!=C
trigger1 = ctrl

;--------------------------------------
;===========================================================================
;--------------------------------------------------------------------------
;Guard Push
[State -1]
type = ChangeState
value = 720
triggerall = var(10) != 1&&command = "guardpush"&&statetype = S&&p2life!=0
trigger1 = stateno = [150,153]
;-------------------------------------
[State -1]
type =ChangeState
value = 725
triggerall = var(10) != 1&&command = "guardpush"&&statetype = C&&p2life!=0
trigger1 = stateno = [150,153]
;-------------------------------------
[State -1]
type =ChangeState
value = 730 
triggerall = var(10) != 1&&command = "guardpush"&&statetype = A&&p2life!=0
trigger1 = stateno = [154,155]
;---------------------------------------------------------------------------
; Rolling Dodge Forward
[State -1, Rolling Dodge Forward]
type = ChangeState
value = 700
triggerall = numhelper(715)!=1
triggerall = command = "x+a"&&command="holddown" ||command="x+a" && command!="holddown" 
triggerall = command != "holdback"
trigger1 = statetype!=A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Rolling Dodge Back
[State -1, Rolling Dodge Back]
type = ChangeState
value = 710
triggerall = numhelper(715)!=1
triggerall = command = "holdback" && (command = "x+a")
triggerall = command != "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype!=A
trigger1 = ctrl
;trigger2 = anim=21&&command = "holdback"
;trigger2 = command = "x+a"
;===========================================================================
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype!=A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype!=A
trigger1 = ctrl
;==============
; Super Jump
;===============
[State -1, Super Jump]
type = ChangeState
value = 55
triggerall = command = "super jump"
trigger1 = statetype != A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
; Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "y" || command = "z"
triggerall = statetype!=A
triggerall = statetype!=C
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype != A) 
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype != A) 
trigger2 = p2movetype != H
;---------------------------------------------------------------------------
; Throw
[State -1, Throw]
type = ChangeState
value = 805
triggerall = command = "b" || command = "c"
triggerall = statetype!=A
triggerall = statetype!=C
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype != A)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype != A)
trigger2 = p2movetype != H
;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno=200&&movecontact
trigger3 = stateno=210&&movecontact
trigger4 = stateno=230&&movecontact
trigger5 = stateno=240&&movecontact
trigger6 = stateno=241&&movecontact
trigger7 = stateno=250&&movecontact
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command!= "KATUPPER_1"
triggerall = command!= "EX_KATUPPER1"
triggerall = command!= "EX_KATUPPER2"
triggerall = command!="SHOULDCHARGE1"
triggerall = command!="EX_SHOULDER1"
triggerall = command!="EX_SHOULDER2"
triggerall = command != "holddown"
trigger1 = statetype!=A
trigger1= ctrl || (stateno=[100,101])
trigger2 = stateno=220&&movecontact
;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command!= "KATUPPER_2"
triggerall = command!= "EX_KATUPPER1"
triggerall = command!= "EX_KATUPPER2"
triggerall = command!="SHOULDCHARGE2"
triggerall = command!="EX_SHOULDER1"
triggerall = command!="EX_SHOULDER2"
triggerall = command != "holddown"
trigger1 = statetype!=A
trigger1= ctrl || (stateno=[100,101])
trigger2 = stateno=200&&movecontact
trigger3 = stateno=230&&movecontact
trigger4 = stateno=220&&movecontact
trigger5 = stateno=240&&movecontact
trigger6 = stateno=241&&movecontact
trigger7 = stateno=400&&movecontact
trigger8 = stateno=410&&movecontact
trigger9 = stateno=430&&movecontact
;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command!= "KATUPPER_3"
triggerall = command!= "EX_KATUPPER1"
triggerall = command!= "EX_KATUPPER2"
triggerall = command!="SHOULDCHARGE3"
triggerall = command!="EX_SHOULDER1"
triggerall = command!="EX_SHOULDER2"
triggerall = command != "holddown"
trigger1 = statetype!=A
trigger1= ctrl || (stateno=[100,101])
trigger2 = stateno=200&&movecontact
trigger3 = stateno=210&&movecontact
trigger4 = stateno=230&&movecontact
trigger5 = stateno=240&&movecontact
trigger6 = stateno=241&&movecontact
trigger7 = stateno=250&&movecontact
trigger8 = stateno=400&&movecontact
trigger9 = stateno=410&&movecontact
trigger10= stateno=430&&movecontact
;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype!=A
trigger1= ctrl || (stateno=[100,101])
trigger2 = stateno=200&&movecontact
trigger3 = stateno=202&&movecontact
trigger4 = stateno=220&&movecontact
trigger5 = stateno=201&&movecontact
trigger6 = stateno=210&&animelem>=5&&movecontact
trigger7 = stateno=400&&movecontact
trigger8 = stateno=410&&movecontact
trigger9 = stateno=430&&movecontact
;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype!=A
trigger1= ctrl || (stateno=[100,101])
trigger2 = stateno=200&&movecontact
trigger3 = stateno=210&&movecontact
trigger4 = stateno=220&&movecontact
trigger5 = stateno=230&&movecontact
trigger6 = stateno=400&&movecontact
trigger7 = stateno=410&&movecontact
trigger8 = stateno=430&&movecontact
trigger9 = stateno=440&&movecontact
;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
triggerall=command!= "FINAL_SLASH"
triggerall=command!= "TORNADO"
trigger1 = statetype!=A
trigger1= ctrl || (stateno=[100,101])
trigger2 = stateno=200&&movecontact
trigger3 = stateno=210&&movecontact
trigger4 = stateno=220&&movecontact
trigger5 = stateno=230&&movecontact
trigger6 = stateno=231&&movecontact
trigger7 = stateno=240&&movecontact
trigger8 = stateno=241&&movecontact
trigger9 = stateno=242&&movecontact
trigger10= stateno=210&&animelem>=5&&movecontact
;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = command!= "KATUPPER_1"
triggerall = command!= "EX_KATUPPER1"
triggerall = command!= "EX_KATUPPER2"
triggerall = command!="SHOULDCHARGE1"
triggerall = command!="EX_SHOULDER1"
triggerall = command!="EX_SHOULDER2"
triggerall = Pos Y=0
trigger1 =  statetype!= A||statetype!=S
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno=200&&movecontact
trigger3 = stateno=210&&movecontact
trigger4 = stateno=220&&movecontact
trigger5 = stateno=230&&movecontact
trigger6 = stateno=240&&movecontact
trigger7 = stateno=241&&movecontact
trigger8 = stateno=250&&movecontact
;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = command!= "KATUPPER_2"
triggerall = command!= "EX_KATUPPER1"
triggerall = command!= "EX_KATUPPER2"
triggerall = command!="SHOULDCHARGE2"
triggerall = command!="EX_SHOULDER1"
triggerall = command!="EX_SHOULDER2"
triggerall = Pos Y=0
trigger1 =  statetype!= A||statetype!=S
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno=200&&movecontact
trigger3 = stateno=210&&movecontact
trigger4 = stateno=220&&movecontact
trigger5 = stateno=230&&movecontact
trigger6 = stateno=240&&movecontact
trigger7 = stateno=241&&movecontact
trigger8 = stateno=250&&movecontact
trigger9 = stateno=400&&movecontact
trigger10= stateno=430&&movecontact
trigger11= stateno=440&&movecontact
;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = command!= "KATUPPER_3"
triggerall = command!= "EX_KATUPPER1"
triggerall = command!= "EX_KATUPPER2"
triggerall = command!="SHOULDCHARGE3"
triggerall = command!="EX_SHOULDER1"
triggerall = command!="EX_SHOULDER2"
triggerall = Pos Y=0
trigger1 =  statetype!= A||statetype!=S
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno=200&&movecontact
trigger3 = stateno=210&&movecontact
trigger4 = stateno=220&&movecontact
trigger5 = stateno=230&&movecontact
trigger6 = stateno=240&&movecontact
trigger7 = stateno=241&&movecontact
trigger8 = stateno=250&&movecontact
trigger9 = stateno=400&&movecontact
trigger10= stateno=410&&movecontact
trigger11= stateno=430&&movecontact
trigger12= stateno=440&&movecontact
;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = Pos Y=0
trigger1 =  statetype!= A||statetype!=S
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno=200&&movecontact
trigger3 = stateno=210&&movecontact
trigger4 = stateno=220&&movecontact
trigger5 = stateno=230&&movecontact
trigger6 = stateno=240&&movecontact
trigger7 = stateno=241&&movecontact
trigger8 = stateno=250&&movecontact
trigger9 = stateno=400&&movecontact
trigger10= stateno=410&&movecontact
trigger11= stateno=430&&movecontact
;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = Pos Y=0
trigger1 =  statetype!= A||statetype!=S
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno=200&&movecontact
trigger3 = stateno=210&&movecontact
trigger4 = stateno=220&&movecontact
trigger5 = stateno=230&&movecontact
trigger6 = stateno=240&&movecontact
trigger7 = stateno=241&&movecontact
trigger8 = stateno=250&&movecontact
trigger9 = stateno=400&&movecontact
trigger10= stateno=410&&movecontact
trigger11= stateno=430&&movecontact
;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
triggerall=command!= "FINAL_SLASH"
triggerall=command!= "TORNADO"
triggerall = Pos Y=0
trigger1 =  statetype!= A||statetype!=S
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno=200&&movecontact
trigger3 = stateno=210&&movecontact
trigger4 = stateno=220&&movecontact
trigger5 = stateno=230&&movecontact
trigger6 = stateno=240&&movecontact
trigger7 = stateno=241&&movecontact
trigger8 = stateno=250&&movecontact
trigger9 = stateno=400&&movecontact
trigger10= stateno=410&&movecontact
trigger11= stateno=430&&movecontact
trigger12= stateno=440&&movecontact
;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"&&!command="KATUPPER_1"
triggerall = command!= "EX_KATUPPER1"
triggerall = command!= "EX_KATUPPER2"
trigger1 = statetype!=S
trigger1 = ctrl
trigger2 = stateno=610&&movecontact
trigger3 = stateno=620&&movecontact
trigger4 = stateno=630&&movecontact
trigger5 = stateno=640&&movecontact
trigger6 = stateno=650&&movecontact
;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"&&!command="KATUPPER_2"
triggerall = command!= "EX_KATUPPER1"
triggerall = command!= "EX_KATUPPER2"
trigger1 = statetype!=S
trigger1 = ctrl
trigger2 = stateno=600&&movecontact
trigger3 = stateno=620&&movecontact
trigger4 = stateno=630&&movecontact
trigger5 = stateno=640&&movecontact
trigger6 = stateno=650&&movecontact
;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"&&!command="KATUPPER_3"
triggerall = command!= "EX_KATUPPER1"
triggerall = command!= "EX_KATUPPER2"
trigger1 = statetype!=S
trigger1 = ctrl
trigger2 = stateno=600&&movecontact
trigger3 = stateno=610&&movecontact
trigger4 = stateno=630&&movecontact
trigger5 = stateno=640&&movecontact
trigger6 = stateno=650&&movecontact
;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype!=S
trigger1 = ctrl
trigger2 = stateno=600&&movecontact
trigger3 = stateno=610&&movecontact
trigger4 = stateno=620&&movecontact
trigger5 = stateno=640&&movecontact
trigger6 = stateno=650&&movecontact
;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
triggerall=command!= "TORNADO"
trigger1 = statetype!=S
trigger1 = ctrl
trigger2 = stateno=600&&movecontact
trigger3 = stateno=610&&movecontact
trigger4 = stateno=620&&movecontact
trigger5 = stateno=630&&movecontact
;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall=command!="holddown"
triggerall=command!= "TORNADO"
triggerall=command = "c"
trigger1 = statetype!= S
trigger1 = ctrl
trigger2 = stateno=600&&movecontact
trigger3 = stateno=610&&movecontact
trigger4 = stateno=620&&movecontact
trigger5 = stateno=630&&movecontact
trigger6 = stateno=640&&movecontact
;---------------------------------------------------------------------------
