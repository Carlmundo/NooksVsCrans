
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
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

;-| Hyper Motions |--------------------------------------------------------

[Command]
name = "qcbf_K"
command = ~D, DB, B, F, a
time = 20
[Command]
name = "qcbf_K"
command = ~D, DB, B, F, ~a
time = 20
[Command]
name = "qcbf_K"
command = ~D, DB, B, F, b
time = 20
[Command]
name = "qcbf_K"
command = ~D, DB, B, F, ~b
time = 20
[Command]
name = "qcbf_K"
command = ~D, DB, B, F, c
time = 20
[Command]
name = "qcbf_K"
command = ~D, DB, B, F, ~c
time = 20

[Command]
name = "qcfhcb_K"
command = ~D, F, D, B, a
time = 30
[Command]
name = "qcfhcb_K"
command = ~D, F, D, B, ~a
time = 30
[Command]
name = "qcfhcb_K"
command = ~D, F, D, B, b
time = 30
[Command]
name = "qcfhcb_K"
command = ~D, F, D, B, ~b
time = 30
[Command]
name = "qcfhcb_K"
command = ~D, F, D, B, c
time = 30
[Command]
name = "qcfhcb_K"
command = ~D, F, D, B, ~c
time = 30

[Command]
name = "qcfhcb_P"
command = ~D, DF, F, D, B, x
time = 30
[Command]
name = "qcfhcb_P"
command = ~D, DF, F, D, B, ~x
time = 30
[Command]
name = "qcfhcb_P"
command = ~D, DF, F, D, B, y
time = 30
[Command]
name = "qcfhcb_P"
command = ~D, DF, F, D, B, ~y
time = 30
[Command]
name = "qcfhcb_P"
command = ~D, DF, F, D, B, z
time = 30
[Command]
name = "qcfhcb_P"
command = ~D, DF, F, D, B, ~z
time = 30

[Command]
name = "2qcf2p"
command = ~D, DF, F, D, DF, x+y
time = 20
[Command]
name = "2qcf2p"
command = ~D, DF, F, D, DF, x+z
time = 20
[Command]
name = "2qcf2p"
command = ~D, DF, F, D, DF, y+z
time = 20

[Command]
name = "2qcf2k"
command = ~D, DF, F, D, DF, a+b
time = 20
[Command]
name = "2qcf2k"
command = ~D, DF, F, D, DF, a+c
time = 20
[Command]
name = "2qcf2k"
command = ~D, DF, F, D, DF, b+c
time = 20

[Command]
name = "2qcf3k"
command = ~D, DF, F, D, DF, a+b+c
time = 20


;-| Super Motions |--------------------------------------------------------

[Command]
name = "2qcfx"
command = ~D, DF, F, D, DF, x
time = 20
[Command]
name = "2qcfx"
command = ~D, DF, F, D, DF, ~x
time = 20
[Command]
name = "2qcfy"
command = ~D, DF, F, D, DF, y
time = 20
[Command]
name = "2qcfy"
command = ~D, DF, F, D, DF, ~y
time = 20
[Command]
name = "2qcfz"
command = ~D, DF, F, D, DF, z
time = 20
[Command]
name = "2qcfz"
command = ~D, DF, F, D, DF, ~z
time = 20

[Command]
name = "2qcbx"
command = ~D, DB, B, D, DB, x
time = 20
[Command]
name = "2qcbx"
command = ~D, DB, B, D, DB, ~x
time = 20
[Command]
name = "2qcby"
command = ~D, DB, B, D, DB, y
time = 20
[Command]
name = "2qcby"
command = ~D, DB, B, D, DB, ~y
time = 20
[Command]
name = "2qcbz"
command = ~D, DB, B, D, DB, z
time = 20
[Command]
name = "2qcbz"
command = ~D, DB, B, D, DB, ~z
time = 20

[Command]
name = "2qcfa"
command = ~D, DF, F, D, DF, a
time = 20
[Command]
name = "2qcfa"
command = ~D, DF, F, D, DF, ~a
time = 20
[Command]
name = "2qcfb"
command = ~D, DF, F, D, DF, b
time = 20
[Command]
name = "2qcfb"
command = ~D, DF, F, D, DF, ~b
time = 20
[Command]
name = "2qcfc"
command = ~D, DF, F, D, DF, c
time = 20
[Command]
name = "2qcfc"
command = ~D, DF, F, D, DF, ~c
time = 20

[Command]
name = "2qcba"
command = ~D, DB, B, D, DB, a
time = 20
[Command]
name = "2qcba"
command = ~D, DB, B, D, DB, ~a
time = 20
[Command]
name = "2qcbb"
command = ~D, DB, B, D, DB, b
time = 20
[Command]
name = "2qcbb"
command = ~D, DB, B, D, DB, ~b
time = 20
[Command]
name = "2qcbc"
command = ~D, DB, B, D, DB, c
time = 20
[Command]
name = "2qcbc"
command = ~D, DB, B, D, DB, ~c
time = 20

;-| EX Motions |------------------------------------------------------

[Command]
name = "qcf2p"
command = ~D, DF, F, x+y
[Command]
name = "qcf2p"
command = ~D, DF, F, x+z
[Command]
name = "qcf2p"
command = ~D, DF, F, y+z

[Command]
name = "qcf2k"
command = ~D, DF, F, a+b
[Command]
name = "qcf2k"
command = ~D, DF, F, a+c
[Command]
name = "qcf2k"
command = ~D, DF, F, b+c

[Command]
name = "qcb2p"
command = ~D, DB, B, x+y
[Command]
name = "qcb2p"
command = ~D, DB, B, x+z
[Command]
name = "qcb2p"
command = ~D, DB, B, y+z

[Command]
name = "qcb2k"
command = ~D, DB, B, a+b
[Command]
name = "qcb2k"
command = ~D, DB, B, a+c
[Command]
name = "qcb2k"
command = ~D, DB, B, b+c

[Command]
name = "dp2k"
command = ~F, D, DF, a+b
[Command]
name = "dp2k"
command = ~F, D, DF, a+c
[Command]
name = "dp2k"
command = ~F, D, DF, b+c

;-| Special Motions |------------------------------------------------------

[Command]
name = "qcfx"
command = ~D, DF, F, x
[Command]
name = "qcfx"
command = ~D, DF, F, ~x
[Command]
name = "qcfy"
command = ~D, DF, F, y
[Command]
name = "qcfy"
command = ~D, DF, F, ~y
[Command]
name = "qcfz"
command = ~D, DF, F, z
[Command]
name = "qcfz"
command = ~D, DF, F, ~z

[Command]
name = "qcfa"
command = ~D, DF, F, a
[Command]
name = "qcfa"
command = ~D, DF, F, ~a
[Command]
name = "qcfb"
command = ~D, DF, F, b
[Command]
name = "qcfb"
command = ~D, DF, F, ~b
[Command]
name = "qcfc"
command = ~D, DF, F, c
[Command]
name = "qcfc"
command = ~D, DF, F, ~c

[Command]
name = "qcbx"
command = ~D, DB, B, x
[Command]
name = "qcbx"
command = ~D, DB, B, ~x
[Command]
name = "qcby"
command = ~D, DB, B, y
[Command]
name = "qcby"
command = ~D, DB, B, ~y
[Command]
name = "qcbz"
command = ~D, DB, B, z
[Command]
name = "qcbz"
command = ~D, DB, B, ~z

[Command]
name = "qcba"
command = ~D, DB, B, a
[Command]
name = "qcba"
command = ~D, DB, B, ~a
[Command]
name = "qcbb"
command = ~D, DB, B, b
[Command]
name = "qcbb"
command = ~D, DB, B, ~b
[Command]
name = "qcbc"
command = ~D, DB, B, c
[Command]
name = "qcbc"
command = ~D, DB, B, ~c

[Command]
name = "dpa"
command = ~F, D, DF, a
[Command]
name = "dpa"
command = ~F, D, DF, ~a
[Command]
name = "dpb"
command = ~F, D, DF, b
[Command]
name = "dpb"
command = ~F, D, DF, ~b
[Command]
name = "dpc"
command = ~F, D, DF, c
[Command]
name = "dpc"
command = ~F, D, DF, ~c

[Command]
name = "rdpx"
command = ~B, DB, D, x
[Command]
name = "rdpx"
command = ~B, DB, D, ~x
[Command]
name = "rdpy"
command = ~B, DB, D, y
[Command]
name = "rdpy"
command = ~B, DB, D, ~y
[Command]
name = "rdpz"
command = ~B, DB, D, z
[Command]
name = "rdpz"
command = ~B, DB, D, ~z

[Command]
name = "rdpa"
command = ~B, DB, D, a
[Command]
name = "rdpa"
command = ~B, DB, D, ~a
[Command]
name = "rdpb"
command = ~B, DB, D, b
[Command]
name = "rdpb"
command = ~B, DB, D, ~b
[Command]
name = "rdpc"
command = ~B, DB, D, c
[Command]
name = "rdpc"
command = ~B, DB, D, ~c

[Command]
name = "f2p"
command = $F, x+y
;time = 1
[Command]
name = "f2p"
command = $F, x+z
;time = 1
[Command]
name = "f2p"
command = $F, y+z
;time = 1

[Command]
name = "f2k"
command = $F, a+b
;time = 1
[Command]
name = "f2k"
command = $F, a+c
;time = 1
[Command]
name = "f2k"
command = $F, b+c
;time = 1


;-| Dir + Button |-----------------------------------------------------------
[Command]
name = "Fc"
command = F, c
time = 1

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
name = "superjump"     ;Required (do not remove)
command = $D, U
time = 10

[Command]
name = "superjumpforward"     ;Required (do not remove)
command = $D, UF
time = 10

[Command]
name = "superjumpbackward"     ;Required (do not remove)
command = $D, UB
time = 10

[Command]
name = "tripleS"
command = s,s,s
time = 20

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x
time = 1
[Command]
name = "recovery";Required (do not remove)
command = y
time = 1
[Command]
name = "recovery";Required (do not remove)
command = z
time = 1
[Command]
name = "recovery";Required (do not remove)
command = a
time = 1
[Command]
name = "recovery";Required (do not remove)
command = b
time = 1
[Command]
name = "recovery";Required (do not remove)
command = c
time = 1

[Command]
name = "xa"
command = x+a
time = 1

;-| Dir + Button |---------------------------------------------------------

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_y"
command = /$D,y
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

[Command]
name = "lp_lk"
command = x+a
time = 10

[Command]
name = "F"
command = F
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "holdup";Required (do not remove)
command = /$U
time = 1

;===================< DIR >===================

[Command]
name = "fwd"
command = F
time = 1
[Command]
name = "back"
command = B
time = 1
[Command]
name = "up"
command = U
time = 1
[Command]
name = "down"
command = D
time = 1

;-| Hold Button |--------------------------------------------------------
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





[Statedef -1]

;===========================================================================
; HYPERS
;===========================================================================

;Kaioken (Simul Mode)
[State -1, Kaioken]
type = ChangeState
triggerall= var(59)<=0
;triggerall = roundstate = 2
triggerall = TeamMode = Simul || numpartner > 0
triggerall = (command = "qcfhcb_K")
triggerall = statetype != A  && !WinKo
triggerall = power >= 3000 && stateno != 2700
trigger1 = Ctrl
trigger2 = stateno = 100 || stateno = 101
trigger3 = stateno = 1300 && movecontact  ;Slash Chop
trigger4 = ((stateno = 200) || (stateno = 210) || (stateno = 220) || (stateno = 215)) && movecontact
trigger5 = ((stateno = 230) || (stateno = 240) || (stateno = 250)) && movecontact
trigger6 = ((stateno = 400) || (stateno = 410) || (stateno = 420)) && movecontact
trigger7 = ((stateno = 430) || (stateno = 440)) && movecontact
trigger8 = stateno=1002 && AnimElem = 3, >= 5
trigger9 = stateno=1005 && AnimElem = 3, >= 5
trigger10 = stateno=1008 && AnimElem = 3, >= 5
trigger11 = stateno=1401 && anim=1402 ;hurricane kick
trigger12 = stateno=1411 && anim=1402 ;EX hurricane kick
trigger13 = stateno=2302 && anim=1402 ;Bicycle Kick
value = 3000

;Kaioken (Normal : non Team Mode)
[State -1, Kaioken]
type = ChangeState
triggerall= var(59)<=0
;triggerall = roundstate = 2
;triggerall = TeamMode != Simul && numpartner=0
triggerall = (command = "qcfhcb_K")
triggerall = statetype != A  && !WinKo
triggerall = power >= 3000 && stateno != 2700
trigger1 = Ctrl
trigger2 = stateno = 100 || stateno = 101
trigger3 = stateno = 1300 && movecontact  ;Slash Chop
trigger4 = ((stateno = 200) || (stateno = 210) || (stateno = 220) || (stateno = 215)) && movecontact
trigger5 = ((stateno = 230) || (stateno = 240) || (stateno = 250)) && movecontact
trigger6 = ((stateno = 400) || (stateno = 410) || (stateno = 420)) && movecontact
trigger7 = ((stateno = 430) || (stateno = 440)) && movecontact
trigger8 = stateno=1002 && AnimElem = 3, >= 5
trigger9 = stateno=1005 && AnimElem = 3, >= 5
trigger10 = stateno=1008 && AnimElem = 3, >= 5
trigger11 = stateno=1401 && anim=1402 ;hurricane kick
trigger12 = stateno=1411 && anim=1402 ;EX hurricane kick
trigger13 = stateno=2302 && anim=1402 ;Bicycle Kick
value = 2700

;Genkidama
[State -1, Genkidama]
type = ChangeState
triggerall= (var(59)<=0) && (AILevel=0)
;triggerall = roundstate = 2
triggerall = (command = "qcfhcb_P")
triggerall = statetype != A  && !WinKo
triggerall = power >= 2000 && stateno != 2500
triggerall = fvar(27) = 0 ;Genkidama wasn't performed
triggerall = !NumHelper(2511) && !NumHelper(2521) && !NumHelper(2531)  ;No Genkidama Ball on screen
trigger1 = Ctrl
trigger2 = stateno = 100 || stateno = 101
trigger3 = stateno = 1300 && movecontact  ;Slash Chop
trigger4 = ((stateno = 200) || (stateno = 210) || (stateno = 220) || (stateno = 215)) && movecontact
trigger5 = ((stateno = 230) || (stateno = 240) || (stateno = 250)) && movecontact
trigger6 = ((stateno = 400) || (stateno = 410) || (stateno = 420)) && movecontact
trigger7 = ((stateno = 430) || (stateno = 440)) && movecontact
trigger8 = stateno=1002 && AnimElem = 3, >= 5
trigger9 = stateno=1005 && AnimElem = 3, >= 5
trigger10 = stateno=1008 && AnimElem = 3, >= 5
trigger11 = stateno=1401 && anim=1402 ;hurricane kick
trigger12 = stateno=1411 && anim=1402 ;EX hurricane kick
trigger13 = stateno=2302 && anim=1402 ;Bicycle Kick
value = 2500

;Genkidama Launch
[State -1, Genkidama Launch]
type = ChangeState
triggerall= (var(59)<=0) && (AILevel=0)
;triggerall = roundstate = 2
triggerall = (command = "qcfhcb_P")
triggerall = statetype != A  && !WinKo
triggerall = stateno != 2510
triggerall = fvar(27) = 1 ;Genkidama wasn't performed
trigger1 = Ctrl
trigger2 = stateno = 100 || stateno = 101
trigger3 = stateno = 1300 && movecontact  ;Slash Chop
trigger4 = ((stateno = 200) || (stateno = 210) || (stateno = 220) || (stateno = 215)) && movecontact
trigger5 = ((stateno = 230) || (stateno = 240) || (stateno = 250)) && movecontact
trigger6 = ((stateno = 400) || (stateno = 410) || (stateno = 420)) && movecontact
trigger7 = ((stateno = 430) || (stateno = 440)) && movecontact
trigger8 = stateno=1002 && AnimElem = 3, >= 5
trigger9 = stateno=1005 && AnimElem = 3, >= 5
trigger10 = stateno=1008 && AnimElem = 3, >= 5
trigger11 = stateno=1401 && anim=1402 ;hurricane kick
trigger12 = stateno=1411 && anim=1402 ;EX hurricane kick
trigger13 = stateno=2302 && anim=1402 ;Bicycle Kick
value = ifelse(fvar(28)=300,2530,ifelse(fvar(28)>=150,2520,2510))

;Chou Kamehameha
[State -1, Chou Kamehameha]
type = ChangeState
triggerall= (var(59)<=0) && (AILevel=0)
;triggerall = roundstate = 2
triggerall = command = "2qcf2p"
triggerall = statetype != A  && !WinKo
triggerall = power >= 2000 && stateno != 2400
trigger1 = Ctrl
trigger2 = stateno = 100 || stateno = 101
trigger3 = stateno = 1300 && movecontact  ;Slash Chop
trigger4 = ((stateno = 200) || (stateno = 210) || (stateno = 220) || (stateno = 215)) && movecontact
trigger5 = ((stateno = 230) || (stateno = 240) || (stateno = 250)) && movecontact
trigger6 = ((stateno = 400) || (stateno = 410) || (stateno = 420)) && movecontact
trigger7 = ((stateno = 430) || (stateno = 440)) && movecontact
trigger8 = stateno=1002 && AnimElem = 3, >= 5
trigger9 = stateno=1005 && AnimElem = 3, >= 5
trigger10 = stateno=1008 && AnimElem = 3, >= 5
trigger11 = stateno=1401 && anim=1402 ;hurricane kick
trigger12 = stateno=1411 && anim=1402 ;EX hurricane kick
trigger13 = stateno=2302 && anim=1402 ;Bicycle Kick
trigger14 = numhelper(2001)
trigger14 = helper(2001),movecontact
value = 2400

; Super Meteor Kick
[State -1, Super Meteor Kick]
type = changestate
triggerall= (var(59)<=0) && (AILevel=0)
;triggerall = roundstate = 2
triggerall = command = "2qcf3k"
triggerall = statetype != A  && !WinKo
triggerall = power >= 3000 && stateno != 2650
trigger1 = Ctrl
trigger2 = stateno = 100 || stateno = 101
trigger3 = stateno = 1300 && movecontact  ;Slash Chop
trigger4 = ((stateno = 200) || (stateno = 210) || (stateno = 220) || (stateno = 215)) && movecontact
trigger5 = ((stateno = 230) || (stateno = 240) || (stateno = 250)) && movecontact
trigger6 = ((stateno = 400) || (stateno = 410) || (stateno = 420)) && movecontact
trigger7 = ((stateno = 430) || (stateno = 440)) && movecontact
trigger8 = stateno=1002 && AnimElem = 3, >= 5
trigger9 = stateno=1005 && AnimElem = 3, >= 5
trigger10 = stateno=1008 && AnimElem = 3, >= 5
trigger11 = stateno=1401 && anim=1402 ;hurricane kick
value = 2650

; Air Super Meteor Kick
[State -1, Air Super Meteor Kick]
type = changestate
triggerall= (var(59)<=0) && (AILevel=0)
;triggerall = roundstate = 2
triggerall = command = "2qcf3k"
triggerall = statetype = A  && !WinKo
triggerall = power >= 3000 && stateno != 2651
trigger1 = ctrl
trigger2 = (stateno = 600) || (stateno = 610) || (stateno = 630) || (stateno = 640); || (StateNo = 645)
trigger2 = movecontact
trigger3 = (stateno = 1100) || (stateno = 1110)   ;Dive Kick
trigger3 = movecontact
trigger4 = (stateno = 1401) || (stateno = 1411)   ;Hurricane Kick
trigger4 = movecontact = [1,8]
value = 2651

; Meteor Kick
[State -1, Meteor Kick]
type = changestate
triggerall= (var(59)<=0) && (AILevel=0)
;triggerall = roundstate = 2
triggerall = command = "2qcf2k"
triggerall = statetype != A  && !WinKo
triggerall = power >= 2000 && stateno != 2600
trigger1 = Ctrl
trigger2 = stateno = 100 || stateno = 101
trigger3 = stateno = 1300 && movecontact  ;Slash Chop
trigger4 = ((stateno = 200) || (stateno = 210) || (stateno = 220) || (stateno = 215)) && movecontact
trigger5 = ((stateno = 230) || (stateno = 240) || (stateno = 250)) && movecontact
trigger6 = ((stateno = 400) || (stateno = 410) || (stateno = 420)) && movecontact
trigger7 = ((stateno = 430) || (stateno = 440)) && movecontact
trigger8 = stateno=1002 && AnimElem = 3, >= 5
trigger9 = stateno=1005 && AnimElem = 3, >= 5
trigger10 = stateno=1008 && AnimElem = 3, >= 5
trigger11 = stateno=1401 && anim=1402 ;hurricane kick
trigger12 = stateno=1411 && anim=1402 ;EX hurricane kick
value = 2600

; Air Meteor Kick
[State -1, Air Meteor Kick]
type = changestate
triggerall= (var(59)<=0) && (AILevel=0)
;triggerall = roundstate = 2
triggerall = command = "2qcf2k"
triggerall = statetype = A  && !WinKo
triggerall = power >= 2000 && stateno != 2601
trigger1 = ctrl
trigger2 = (stateno = 600) || (stateno = 610) || (stateno = 630) || (stateno = 640); || (StateNo = 645)
trigger2 = movecontact
trigger3 = (stateno = 1100) || (stateno = 1110)   ;Dive Kick
trigger3 = movecontact
trigger4 = (stateno = 1401) || (stateno = 1411)   ;Hurricane Kick
trigger4 = movecontact = [1,8]
value = 2601

;===========================================================================
; SUPERS
;===========================================================================

;Kamehameha
[State -1, Kamehameha]
type = ChangeState
triggerall= (var(59)<=0) && (AILevel=0)
;triggerall = roundstate = 2
triggerall = (command = "2qcfx") || (command = "2qcfy") || (command = "2qcfz")
triggerall = statetype != A  && !WinKo
triggerall = power >= 1000 && stateno != 2000
trigger1 = Ctrl
trigger2 = stateno = 100 || stateno = 101
trigger3 = stateno = 1300 && movecontact  ;Slash Chop
trigger4 = ((stateno = 200) || (stateno = 210) || (stateno = 220) || (stateno = 215)) && movecontact
trigger5 = ((stateno = 230) || (stateno = 240) || (stateno = 250)) && movecontact
trigger6 = ((stateno = 400) || (stateno = 410) || (stateno = 420)) && movecontact
trigger7 = ((stateno = 430) || (stateno = 440)) && movecontact
trigger8 = stateno=1002 && AnimElem = 3, >= 5
trigger9 = stateno=1005 && AnimElem = 3, >= 5
trigger10 = stateno=1008 && AnimElem = 3, >= 5
trigger11 = stateno=1401 && anim=1402 ;hurricane kick
trigger12 = stateno=1411 && anim=1402 ;EX hurricane kick
trigger13 = stateno=2302 && anim=1402 ;Bicycle Kick
value = 2000

; Air Kamehameha
[State -1, Air Kamehameha]
type = changestate
triggerall= (var(59)<=0) && (AILevel=0)
;triggerall = roundstate = 2
triggerall = (command = "2qcfx") || (command = "2qcfy") || (command = "2qcfz")
triggerall = statetype = A  && !WinKo
triggerall = power >= 1000 && stateno != 2200
triggerall= !numhelper(3005) && !numhelper(3055)
trigger1 = ctrl
;trigger1 = pos Y < -50
trigger2 = (stateno = 600) || (stateno = 610) || (stateno = 630) || (stateno = 640); || (StateNo = 645)
trigger2 = movecontact
trigger3 = (stateno = 1100) || (stateno = 1110)   ;Dive Kick
trigger3 = movecontact
trigger4 = (stateno = 1401) || (stateno = 1411)   ;Hurricane Kick
trigger4 = movecontact = [1,8]
;trigger5 = stateno=1202 && anim=1203 && movehit && (AnimElem = 9, >= 2)   ;Dragon Blast Uppercut
;trigger6 = stateno=1255 && var(7)=0 && movehit   ;EX Dragon Kick
value = 2200

; Bicycle Kick
[State -1, Bicycle Kick]
type = changestate
triggerall= (var(59)<=0) && (AILevel=0)
;triggerall = roundstate = 2
triggerall = (command = "2qcfa") || (command = "2qcfb") || (command = "2qcfc")
triggerall = statetype != A  && !WinKo
triggerall = power >= 1000 && stateno != 2300
trigger1 = Ctrl
trigger2 = stateno = 100 || stateno = 101
trigger3 = stateno = 1300 && movecontact  ;Slash Chop
trigger4 = ((stateno = 200) || (stateno = 210) || (stateno = 220) || (stateno = 215)) && movecontact
trigger5 = ((stateno = 230) || (stateno = 240) || (stateno = 250)) && movecontact
trigger6 = ((stateno = 400) || (stateno = 410) || (stateno = 420)) && movecontact
trigger7 = ((stateno = 430) || (stateno = 440)) && movecontact
trigger8 = stateno=1002 && AnimElem = 3, >= 5
trigger9 = stateno=1005 && AnimElem = 3, >= 5
trigger10 = stateno=1008 && AnimElem = 3, >= 5
trigger11 = stateno=1401 && anim=1402 ;hurricane kick
trigger12 = stateno=1411 && anim=1402 ;EX hurricane kick
value = 2300

; Air Bicycle Kick
[State -1, Air Bicycle Kick]
type = changestate
triggerall= (var(59)<=0) && (AILevel=0)
;triggerall = roundstate = 2
triggerall = (command = "2qcfa") || (command = "2qcfb") || (command = "2qcfc")
triggerall = statetype = A  && !WinKo
triggerall = power >= 1000 && stateno != 2301
trigger1 = ctrl
trigger2 = (stateno = 600) || (stateno = 610) || (stateno = 630) || (stateno = 640); || (StateNo = 645)
trigger2 = movecontact
trigger3 = (stateno = 1100) || (stateno = 1110)   ;Dive Kick
trigger3 = movecontact
trigger4 = (stateno = 1401) || (stateno = 1411)   ;Hurricane Kick
trigger4 = movecontact = [1,8]
value = 2301


;===========================================================================
; SPECIALS
;===========================================================================

;Ki Blast (Light) 1
[State -1, Ki Blast (Light)]
type = ChangeState
triggerall= (var(59)<=0) && (AILevel=0)
;triggerall = roundstate = 2
triggerall = command = "qcfx" && statetype != A  && !WinKo
trigger1 = ctrl
trigger2 = ((stateno = 200) || (stateno = 210) || (stateno = 220) || (stateno = 215)) && movecontact
trigger3 = ((stateno = 230) || (stateno = 240) || (stateno = 250)) && movecontact
trigger4 = ((stateno = 400) || (stateno = 410) || (stateno = 420)) && movecontact
trigger5 = ((stateno = 430) || (stateno = 440)) && movecontact
trigger6 = stateno = 100 || stateno = 101
value = 1000

;Ki Blast (Medium) 1
[State -1, Ki Blast (Medium)]
type = ChangeState
triggerall= (var(59)<=0) && (AILevel=0)
;triggerall = roundstate = 2
triggerall = command = "qcfy" && statetype != A  && !WinKo
trigger1 = ctrl
trigger2 = ((stateno = 200) || (stateno = 210) || (stateno = 220) || (stateno = 215)) && movecontact
trigger3 = ((stateno = 230) || (stateno = 240) || (stateno = 250)) && movecontact
trigger4 = ((stateno = 400) || (stateno = 410) || (stateno = 420)) && movecontact
trigger5 = ((stateno = 430) || (stateno = 440)) && movecontact
trigger6 = stateno = 100 || stateno = 101
value = 1003

;Ki Blast (Hard) 1
[State -1, Ki Blast (Hard)]
type = ChangeState
triggerall= (var(59)<=0) && (AILevel=0)
;triggerall = roundstate = 2
triggerall = command = "qcfz" && statetype != A  && !WinKo
trigger1 = ctrl
trigger2 = ((stateno = 200) || (stateno = 210) || (stateno = 220) || (stateno = 215)) && movecontact
trigger3 = ((stateno = 230) || (stateno = 240) || (stateno = 250)) && movecontact
trigger4 = ((stateno = 400) || (stateno = 410) || (stateno = 420)) && movecontact
trigger5 = ((stateno = 430) || (stateno = 440)) && movecontact
trigger6 = stateno = 100 || stateno = 101
value = 1006

;Ex Slash Down Kick
[State -1, Ex Slash Down Kick]
type = changestate
triggerall= (var(59)<=0) && (AILevel=0)
;triggerall = roundstate = 2
triggerall = command = "qcf2k"
triggerall = statetype=A && !WinKo
triggerall = power >= 500
trigger1 = ctrl
trigger1 = pos Y < -50 
trigger2 = (stateno = 600) || (stateno = 610) || (stateno = 630) || (stateno = 640); || (StateNo = 645)
trigger2 = movecontact
value = 1110

;Slash Down Kick
[State -1, Slash Down Kick]
type = changestate
triggerall= (var(59)<=0) && (AILevel=0)
;triggerall = roundstate = 2
triggerall = (command = "qcfa") || (command = "qcfb") || (command = "qcfc")
triggerall = var(8):=(command = "qcfa") + 2*(command = "qcfb") + 3*(command = "qcfc")
triggerall = statetype=A && !WinKo
trigger1 = ctrl
;trigger1 = pos Y < -50
trigger2 = (stateno = 600) || (stateno = 610) || (stateno = 630) || (stateno = 640); || (StateNo = 645)
trigger2 = movecontact
value = 1100

;EX Dragon Fist
[State -1, EX Dragon Fist]
type = ChangeState
triggerall= (var(59)<=0) && (AILevel=0)
;triggerall = roundstate = 2
triggerall = command = "qcb2p"
triggerall = statetype != A  && !WinKo
triggerall = power >= 500
trigger1 = ctrl
trigger2 = ((stateno = 200) || (stateno = 210) || (stateno = 220) || (stateno = 215)) && movecontact
trigger3 = ((stateno = 230) || (stateno = 240) || (stateno = 250)) && movecontact
trigger4 = ((stateno = 400) || (stateno = 410) || (stateno = 420)) && movecontact
trigger5 = ((stateno = 430) || (stateno = 440)) && movecontact
trigger6 = stateno = 100 || stateno = 101
trigger7 = stateno = 300 && anim=300 && animelemtime(8)>0 && movecontact  ;Cartwheel Kick
value = 1250

;Dragon Fist
[State -1, Dragon Fist]
type = ChangeState
triggerall= (var(59)<=0) && (AILevel=0)
;triggerall = roundstate = 2
triggerall = (command = "qcbx") || (command = "qcby") || (command = "qcbz")
triggerall = statetype != A  && !WinKo
triggerall = var(5):=(command = "qcbx") + 2*(command = "qcby") + 3*(command = "qcbz")
trigger1 = ctrl
trigger2 = ((stateno = 200) || (stateno = 210) || (stateno = 220) || (stateno = 215)) && movecontact
trigger3 = ((stateno = 230) || (stateno = 240) || (stateno = 250)) && movecontact
trigger4 = ((stateno = 400) || (stateno = 410) || (stateno = 420)) && movecontact
trigger5 = ((stateno = 430) || (stateno = 440)) && movecontact
trigger6 = stateno = 100 || stateno = 101
trigger7 = stateno = 300 && anim=300 && animelemtime(8)>0 && movecontact  ;Cartwheel Kick
value = 1200

; Slashing Chop (aka Focus Attack)
[State -1, Slashing Chop]
type = ChangeState
triggerall= (var(59)<=0) && (AILevel=0)
triggerall = roundstate = 2
triggerall = stateno !=[1300,1302]
triggerall = stateno != 106
;triggerall = command = "hold_z" && command = "hold_c"
triggerall = command = "z" && command = "c"
trigger1 = statetype = S
trigger1 = ctrl
value = 1300

;EX Hurricane Kick
[State -1, EX Hurricane Kick]
type = changestate
triggerall= (var(59)<=0) && (AILevel=0)
;triggerall = roundstate = 2
triggerall = command = "qcb2k"
triggerall = statetype!=A && !WinKo
triggerall = power >= 500
trigger1 = ctrl
trigger2 = ((stateno = 200) || (stateno = 210) || (stateno = 220) || (stateno = 215)) && movecontact
trigger3 = ((stateno = 230) || (stateno = 240) || (stateno = 250)) && movecontact
trigger4 = ((stateno = 400) || (stateno = 410) || (stateno = 420)) && movecontact
trigger5 = ((stateno = 430) || (stateno = 440)) && movecontact
trigger6 = stateno = 100 || stateno = 101
trigger7 = stateno = 300 && anim=300 && animelemtime(8)>0 && movecontact  ;Cartwheel Kick
value = 1410

;Hurricane Kick
[State -1, Hurricane Kick]
type = changestate
triggerall= (var(59)<=0) && (AILevel=0)
;triggerall = roundstate = 2
triggerall = (command = "qcba") || (command = "qcbb") || (command = "qcbc")
triggerall = var(15):=(command = "qcba") + 2*(command = "qcbb") + 3*(command = "qcbc")
triggerall = statetype!=A && !WinKo
trigger1 = ctrl
trigger2 = ((stateno = 200) || (stateno = 210) || (stateno = 220) || (stateno = 215)) && movecontact
trigger3 = ((stateno = 230) || (stateno = 240) || (stateno = 250)) && movecontact
trigger4 = ((stateno = 400) || (stateno = 410) || (stateno = 420)) && movecontact
trigger5 = ((stateno = 430) || (stateno = 440)) && movecontact
trigger6 = stateno = 100 || stateno = 101
trigger7 = stateno = 300 && anim=300 && animelemtime(8)>0 && movecontact  ;Cartwheel Kick
value = 1400

;Air EX Hurricane Kick
[State -1, Air EX Hurricane Kick]
type = changestate
triggerall= (var(59)<=0) && (AILevel=0)
;triggerall = roundstate = 2
triggerall = command = "qcb2k"
triggerall = statetype=A && !WinKo
triggerall = power >= 500
trigger1 = ctrl
trigger2 = (stateno = 600) || (stateno = 610) || (stateno = 630) || (stateno = 640); || (StateNo = 645)
trigger2 = movecontact
value = 1411

;Air Hurricane Kick
[State -1, Air Hurricane Kick]
type = changestate
triggerall= (var(59)<=0) && (AILevel=0)
;triggerall = roundstate = 2
triggerall = (command = "qcba") || (command = "qcbb") || (command = "qcbc")
triggerall = var(15):=(command = "qcba") + 2*(command = "qcbb") + 3*(command = "qcbc")
triggerall = statetype=A && !WinKo
trigger1 = ctrl
trigger2 = (stateno = 600) || (stateno = 610) || (stateno = 630) || (stateno = 640); || (StateNo = 645)
trigger2 = movecontact
value = 1401

;Zero Counter
[State -1, zero counter]
type = changestate
triggerall= (var(59)<=0) && (AILevel=0)
trigger1 = stateno=150 || stateno=152
;trigger1 = command="rdpx" || command="rdpy" || command="rdpz" || command="rdpa" || command="rdpb" || command="rdpc"
trigger1 = command="f2k" || command="f2p"
trigger1 = roundstate=2 && power>=1000 && statetype!=A
value = 750

;Air Zero Counter
[State -1, air zero counter]
type = changestate
triggerall= (var(59)<=0) && (AILevel=0)
trigger1 = stateno=154  ; && animelemtime(1)<6
trigger1 = command="f2k" || command="f2p"
trigger1 = roundstate=2 && power>=1000 && statetype=A
value = 760


;===========================================================================
; COMMAND & SYSTEM MOVES
;===========================================================================

; Cartwheel Kick
[State -1, Cartwheel Kick]
type = changestate
triggerall= (var(59)<=0) && (AILevel=0)
;triggerall = roundstate = 2
triggerall = statetype!=A
trigger1 = stateno = 100 || stateno = 101
trigger1 = command="c" && command!="holddown" && command!="holdback"
value = 300

;Genkidama Charge
[State -1]
type = ChangeState
triggerall= (var(59)<=0) && (AILevel=0)
triggerall = roundstate = 2
triggerall = StateType != A
triggerall = fvar(27)=1  ;Genkidama enabled
triggerall = fvar(28) < 300
triggerall = !NumHelper(2511) && !NumHelper(2521) && !NumHelper(2531)  ;No Genkidama Ball on screen
triggerall = stateno != 2503
triggerall = Ctrl
trigger1 = command = "hold_b" && command = "hold_y"
value = 2503

;Power Charge
[State -1]
type = ChangeState
triggerall= (var(59)<=0) && (AILevel=0)
triggerall = fvar(27)=0  ;No genkidama
triggerall = roundstate = 2
triggerall = StateType != A
triggerall = Power < 3000
triggerall = stateno != 900
triggerall = Ctrl
triggerall = numhelper(2531) = 0	;MAX Genkidama not here
;trigger1 = command = "b" && command = "y"
trigger1 = command = "hold_b" && command = "hold_y"
value = 900

; Punch Throw (Tomoe Nage)
[State -1, throw1]
type = changestate
triggerall= (var(59)<=0) && (AILevel=0)
trigger1 = command="xa" && command="holdback"
trigger1 = roundstate=2 && ctrl && statetype=S && stateno!=100
value = 800

; Kick Throw (Double Knee + Kick)
;[State -1, throw2]
;type = changestate
;triggerall= (var(59)<=0) && (AILevel=0)
;trigger1 = command="xa" && command="holdfwd"
;trigger1 = roundstate=2 && ctrl && statetype=S && stateno!=100
;value = 810

; Kick Throw (Headbutt)
[State -1, throw2]
type = changestate
triggerall= (var(59)<=0) && (AILevel=0)
trigger1 = command="xa" && command="holdfwd"
trigger1 = roundstate=2 && ctrl && statetype=S && stateno!=100
value = 820

;===========================================================================
; NORMALS
;===========================================================================

; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
triggerall= (var(59)<=0) && (AILevel=0)
;triggerall = roundstate = 2
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100 || stateno = 101
value = 200

; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
triggerall= (var(59)<=0) && (AILevel=0)
;triggerall = roundstate = 2
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = StateType != A && movecontact
trigger2 = (stateno = 200) || (stateno = 230)
trigger3 = stateno = 100 || stateno = 101
trigger4 = StateType != A && movecontact
trigger4 = (stateno = 400) || (stateno = 430)
value = 210

; Stand Medium Punch 2 - Left Hook Punch
[State -1, Stand Medium Punch 2]
type = ChangeState
triggerall= (var(59)<=0) && (AILevel=0)
;triggerall = roundstate = 2
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = stateno = 210 && movecontact
trigger2 = stateno = 240 && anim = 245 && movecontact
value = 215

; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
triggerall= (var(59)<=0) && (AILevel=0)
;triggerall = roundstate = 2
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = StateType != A && movecontact
trigger2 = (stateno = 200) || (stateno = 230) || (stateno = 210) || (stateno = 240) || (stateno = 215)
trigger3 = stateno = 100 || stateno = 101
trigger4 = StateType != A && movecontact
trigger4 = (stateno = 400) || (stateno = 430) || (stateno = 410) || (stateno = 440)
value = 220

; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
triggerall= (var(59)<=0) && (AILevel=0)
;triggerall = roundstate = 2
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100 || stateno = 101
value = 230

; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
triggerall= (var(59)<=0) && (AILevel=0)
;triggerall = roundstate = 2
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = StateType != A
trigger2 = (stateno = 200) || (stateno = 230)
trigger2 = movecontact
trigger3 = stateno = 100 || stateno = 101
trigger4 = StateType != A && movecontact
trigger4 = (stateno = 400) || (stateno = 430)
value = 240

; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
triggerall= (var(59)<=0) && (AILevel=0)
;triggerall = roundstate = 2
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = StateType != A
trigger2 = (stateno = 200) || (stateno = 230) || (stateno = 210) || (stateno = 240) || (stateno = 215)
trigger2 = movecontact
trigger3 = stateno = 100 || stateno = 101
trigger4 = StateType != A && movecontact
trigger4 = (stateno = 400) || (stateno = 430) || (stateno = 410) || (stateno = 440)
value = 250

; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
triggerall= (var(59)<=0) && (AILevel=0)
;triggerall = roundstate = 2
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = StateType != A & MoveContact
trigger2 = (stateno = 200) || (stateno = 230)
trigger3 = stateno = 100 || stateno = 101
value = 400

; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
triggerall= (var(59)<=0) && (AILevel=0)
;triggerall = roundstate = 2
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = StateType != A & MoveContact
trigger2 = (StateNo = 400) || (stateno = 200) || (stateno = 230) || (stateno = 430)
trigger3 = stateno = 100 || stateno = 101
value = 410

; Crouching Strong Punch
;[State -1, Crouching Strong Punch]
;type = ChangeState
;triggerall= (var(59)<=0) && (AILevel=0)
;triggerall = roundstate = 2
;triggerall = command = "z"
;triggerall = command = "holddown"
;trigger1 = statetype != A
;trigger1 = ctrl
;trigger2 = StateType != A & MoveContact
;trigger2 = (StateNo = 400) || (stateno = 410) || (stateno = 430) || (stateno = 440)
;trigger3 = stateno = 100 || stateno = 101
;trigger4 = StateType != A & MoveContact
;trigger4 = (StateNo = 200) || (stateno = 210) || (stateno = 230) || (stateno = 240) || (stateno = 215)
;value = 420

; Crouching Strong Punch = Close Uppercut combo'd
[State -1, Close Uppercut]
type = ChangeState
triggerall= (var(59)<=0) && (AILevel=0)
;triggerall = roundstate = 2
triggerall = command = "z" && command = "holddown"
trigger1 = statetype != A
trigger1 = (stateno = 200) || (stateno = 230) || (stateno = 210) || (stateno = 240) || (stateno = 215)
trigger1 = movecontact
trigger2 = (stateno = 400) || (stateno = 430) || (stateno = 410) || (stateno = 440)
trigger2 = movecontact
value = 226

; Crouching Strong Punch = Close Uppercut
[State -1, Close Uppercut]
type = ChangeState
triggerall= (var(59)<=0) && (AILevel=0)
;triggerall = roundstate = 2
triggerall = command = "z" && command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100 || stateno = 101
value = 225

; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
triggerall= (var(59)<=0) && (AILevel=0)
;triggerall = roundstate = 2
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = StateType != A & MoveContact
trigger2 = (stateno = 200) || (stateno = 230)
trigger3 = stateno = 100 || stateno = 101
value = 430

; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
triggerall= (var(59)<=0) && (AILevel=0)
;triggerall = roundstate = 2
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = StateType != A & MoveContact
trigger2 = (StateNo = 400) || (stateno = 200) || (stateno = 230) || (stateno = 430)
trigger3 = stateno = 100 || stateno = 101
value = 440

; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
triggerall= (var(59)<=0) && (AILevel=0)
;triggerall = roundstate = 2
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = StateType != A & MoveContact
trigger2 = (StateNo = 400) || (stateno = 410) || (stateno = 430) || (stateno = 440)
trigger3 = stateno = 100 || stateno = 101
trigger4 = StateType != A & MoveContact
trigger4 = (StateNo = 200) || (stateno = 210) || (stateno = 230) || (stateno = 240) || (stateno = 215)
value = 450

;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
triggerall= (var(59)<=0) && (AILevel=0)
;triggerall = roundstate = 2
triggerall = command = "x"
triggerall = stateno != 600
triggerall = statetype = A
trigger1 = ctrl
value = 600

;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
triggerall= (var(59)<=0) && (AILevel=0)
;triggerall = roundstate = 2
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (StateNo = 600) || (StateNo = 630)
trigger2 = MoveContact
value = 610

;Jump Strong Punch (two fists)
[State -1, Jump Strong Punch]
type = ChangeState
triggerall= (var(59)<=0) && (AILevel=0)
;triggerall = roundstate = 2
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (StateNo = 600) || (StateNo = 630) || (StateNo = 610) || (StateNo = 640); || (StateNo = 645)
trigger2 = MoveContact
value = 620

;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
triggerall= (var(59)<=0) && (AILevel=0)
;triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
value = 630

;Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
triggerall= (var(59)<=0) && (AILevel=0)
;triggerall = roundstate = 2
triggerall = command = "b"
triggerall = statetype = A
triggerall = (stateno!=640); && (stateno!=645)
trigger1 = ctrl
trigger2 = (StateNo = 600) || (StateNo = 630)
trigger2 = movecontact
value = 640

;Jump Medium Kick combo *3
;[State -1, Jump Medium Kick combo *3]
;type = ChangeState
;triggerall= (var(59)<=0) && (AILevel=0)
;;triggerall = roundstate = 2
;triggerall = command = "b"
;triggerall = statetype = A
;trigger1 = StateNo = 640
;trigger1 = movecontact
;value = 645

;Jump Strong Kick reversed
[State -1, Jump Strong Kick]
type = ChangeState
triggerall= (var(59)<=0) && (AILevel=0)
;triggerall = roundstate = 2
triggerall = command = "c" && command = "holdback"
triggerall = statetype = A
triggerall = p2bodydist X < 0
trigger1 = ctrl
trigger1 = stateno != 650 && stateno != 660
;trigger2 = (StateNo = 600) || (StateNo = 630) || (StateNo = 610) || (StateNo = 640)
;trigger2 = MoveContact
value = 660

;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
triggerall= (var(59)<=0) && (AILevel=0)
;triggerall = roundstate = 2
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger1 = stateno != 650 && stateno != 660
trigger2 = (StateNo = 600) || (StateNo = 630) || (StateNo = 610) || (StateNo = 640); || (StateNo = 645)
trigger2 = MoveContact
value = 650

;===========================================================================
; SYSTEM
;===========================================================================

; Taunt
[State -1, Taunt]
type = ChangeState
triggerall= (var(59)<=0) && (AILevel=0)
;triggerall = roundstate = 2
triggerall = command = "s" && stateno!=195
trigger1 = statetype != A
trigger1 = ctrl
value = 195

;Air Dash Forward
[State -1, Fwd]
type = ChangeState
value = 110
triggerall = var(59) <= 0
;triggerall = roundstate = 2
triggerall = var(10) = 0 ;limiter
trigger1 = pos Y < -20
triggerall = stateno != 105
trigger1 = (command = "FF") && (statetype = A) && (ctrl)

;Air Dash Back
[State -1, Back]
type = ChangeState
value = 115
triggerall = var(59) <= 0
;triggerall = roundstate = 2
triggerall = var(10) = 0 ;limiter
triggerall = vel x <= 0
trigger1 = pos Y < -20
triggerall = stateno != 105
trigger1 = (command = "BB") && (statetype = A) && (ctrl)

; Run Fwd
[State -1, Run Fwd]
type = ChangeState
triggerall= (var(59)<=0) && (AILevel=0)
;triggerall = roundstate = 2
trigger1 = command = "FF"
trigger1 = statetype = S && ctrl
trigger1 = roundstate=2 && (stateno!=[100,106])
value = 100

; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall= (var(59)<=0) && (AILevel=0)
;triggerall = roundstate = 2
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

; Super Jump
;This state executes only after performing the air launcher
[State -1, Jump Launcher]
type = ChangeState
value = 10230
triggerall= (var(59)<=0) && (AILevel=0)
;triggerall = roundstate = 2
triggerall = command = "holdup"
trigger1 = (stateno = 225 || stateno = 226)  && animelemtime(5)>0 && MoveHit

[State -1, Super Jump Straight Up]
type = ChangeState
value = 10231
triggerall= (var(59)<=0) && (AILevel=0)
;triggerall = roundstate = 2
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = command = "superjump"

[State -1, Super Jump Forward]
type = ChangeState
value = 10232
triggerall= (var(59)<=0) && (AILevel=0)
;triggerall = roundstate = 2
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = command = "superjumpforward"

[State -1, Super Jump Backward]
type = ChangeState
value = 10233
triggerall= (var(59)<=0) && (AILevel=0)
;triggerall = roundstate = 2
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = command = "superjumpbackward"
