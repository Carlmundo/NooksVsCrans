;This file has the important information for controlling the character.  A lot of comments here are copied from Kung Fu Man.
;The AI parts are voodoo, don't touch.
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
name = "start"
command = s
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
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

;-| Hold Button |----------------------------------------------------------
; Please define Anim 74140108 in your AIR file if AND ONLY IF you place these
; 7 Hold Button commands immediately after the 11 Single Button and Hold Dir
; commands at the very top of your CMD list, as demonstrated here.
; In this version of the AI code, these commands are only used by the XOR
; method, and thus are optional.  But there remains a possibility that a
; future version of the helper method might be helped by having these
; commands placed here, and Anim 74140108 would then be used to indicate
; that a partner character has a compatible CMD.

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holdstart"
command = /s
time = 1

;-| CPU |--------------------------------------------------------------
; Note that if you make any changes to the basic one-button or recovery
; commands, you'll need to make the same changes to their matching commands here
; and/or in the XOR VarSet controller.  That includes things like, for example:
;  * changing the recovery command to use a different combination of buttons.
;  * renaming the b button command as "d", or the start button command as "s".
;  * switching the button names around, e.g. so button y triggers "a" and button a triggers "y".
;  * having more than one way to trigger the same command name.
; If you understand how the XOR method works, the proper changes should be obvious.
; If you don't understand it, then simply disable the lines in the XOR VarSet
; controller that correspond to the commands you've altered.

[Command]
name = "a2"
command = a
time = 1

[Command]
name = "b2"
command = b
time = 1

[Command]
name = "c2"
command = c
time = 1

[Command]
name = "x2"
command = x
time = 1

[Command]
name = "y2"
command = y
time = 1

[Command]
name = "z2"
command = z
time = 1

[Command]
name = "start2"
command = s
time = 1

[Command]
name = "holdfwd2"
command = /$F
time = 1

[Command]
name = "holdback2"
command = /$B
time = 1

[Command]
name = "holdup2"
command = /$U
time = 1

[Command]
name = "holddown2"
command = /$D
time = 1

[Command]
name = "holda2"
command = /a
time = 1

[Command]
name = "holdb2"
command = /b
time = 1

[Command]
name = "holdc2"
command = /c
time = 1

[Command]
name = "holdx2"
command = /x
time = 1

[Command]
name = "holdy2"
command = /y
time = 1

[Command]
name = "holdz2"
command = /z
time = 1

[Command]
name = "holdstart2"
command = /s
time = 1

[Command]
name = "recovery2"
command = x+y
time = 1

; Here add matching commands for any moves that must never be used randomly
; by the computer, such as suicide moves and super moves, and add the pairs
; to the XOR VarSet controller in State -3.

; If you're desperate to make sure that the AI always gets turned on as soon
; as possible, you can add more equivalents for your own commands here too,
; and add to the XOR VarSet controller's triggers accordingly.  You should
; use button-only commands before using any commands with directional
; components, as the latter apparently doesn't work in Linux Mugen 2002.04.14.

; And of course, if you've run out of unique command labels (Mugen allows
; 128), you can remove as many of these as you want.  You'll of course need
; to modify the XOR VarSet controller's triggers accordingly, but Mugen
; will let you know if you forget to do so. :)

;-| Super Motions |--------------------------------------------------------
; Commands with Half-Circle motions have multiple versions to help Keyboard users perform them
[Command]
name = "kienzan"
command = ~D,B,D,F,x
time = 20

[Command]
name = "kienzan"
command = ~D,B,D,F,y
time = 20

[Command]
name = "kienzan"
command = ~D,DB,B,DB,D,DF,F,x
time = 20

[Command]
name = "kienzan"
command = ~D,DB,B,DB,D,DF,F,y
time = 20

[Command]
name = "r_kienzan"
command = ~D,F,D,B,x
time = 20

[Command]
name = "r_kienzan"
command = ~D,F,D,B,y
time = 20

[Command]
name = "r_kienzan"
command = ~D,DF,F,DF,D,DB,B,x
time = 20

[Command]
name = "r_kienzan"
command = ~D,DF,F,DF,D,DB,B,y
time = 20

[Command]
name = "kazaam"
command = ~D,D,D,a
time = 20

[Command]
name = "kazaam"
command = ~D,D,D,b
time = 20

[Command]
name = "shaqattack"
command = ~D,F,D,F,a
time = 20

[Command]
name = "shaqattack"
command = ~D,F,D,F,b
time = 20

[Command]
name = "r_shaqattack"
command = ~D,B,D,B,a
time = 20

[Command]
name = "r_shaqattack"
command = ~D,B,D,B,b
time = 20

[Command]
name = "stillinsane"
command = ~D,F,D,B,a
time = 25

[Command]
name = "stillinsane"
command = ~D,F,D,B,b
time = 25

[Command]
name = "steel"
command = ~B,F,B,F,x
time = 25

[Command]
name = "steel"
command = ~B,F,B,F,y
time = 25

[Command]
name = "shaqattack"
command = ~D,DF,F,D,DF,F,a
time = 20

[Command]
name = "shaqattack"
command = ~D,DF,F,D,DF,F,b
time = 20

[Command]
name = "r_shaqattack"
command = ~D,DB,B,D,DB,B,a
time = 20

[Command]
name = "r_shaqattack"
command = ~D,DB,B,D,DB,B,b
time = 20

[Command]
name = "stillinsane"
command = ~D,DF,F,D,DB,B,a
time = 25

[Command]
name = "stillinsane"
command = ~D,DF,F,D,DB,B,b
time = 25

[Command]
name = "360_z"
command = ~F, D, B, U, z
time = 15
buffer.time = 3
[Command]
name = "360_z"
command = ~D, B, U, F, z
time = 15
buffer.time = 3
[Command]
name = "360_z"
command = ~B, U, F, D, z
time = 15
buffer.time = 3
[Command]
name = "360_z"
command = ~U, F, D, B, z
time = 15
buffer.time = 3
[Command]
name = "360_z"
command = ~B, D, F, U, z
time = 15
buffer.time = 3
[Command]
name = "360_z"
command = ~D, F, U, B, z
time = 15
buffer.time = 3
[Command]
name = "360_z"
command = ~F, U, B, D, z
time = 15
buffer.time = 3
[Command]
name = "360_z"
command = ~U, B, D, F, z
time = 15
buffer.time = 3

[Command]
name = "360_z"
command = ~F, DF, D, DB, B, UB, U, z
time = 15
buffer.time = 3
[Command]
name = "360_z"
command = ~D, DB, B, UB, U, UF, F, z
time = 15
buffer.time = 3
[Command]
name = "360_z"
command = ~B, UB, U, UF, F, DF, D, z
time = 15
buffer.time = 3
[Command]
name = "360_z"
command = ~U, UF, F, DF, D, DB, B, z
time = 15
buffer.time = 3

[Command]
name = "360_z"
command = ~F, UF, U, UB, B, DB, D, z
time = 15
buffer.time = 3
[Command]
name = "360_z"
command = ~U, UB, B, DB, D, DF, F, z
time = 15
buffer.time = 3
[Command]
name = "360_z"
command = ~B, DB, D, DF, F, UF, U, z
time = 15
buffer.time = 3
[Command]
name = "360_z"
command = ~D, DF, F, UF, U, UB, B, z
time = 15
buffer.time = 3




;-| Special Motions |------------------------------------------------------
[Command]
name = "ballkick"
command = D,b
time = 5

[Command]
name = "ballpunch"
command = D,y
time = 5

[Command]
name = "discball"
command = ~F,B,F,y

[Command]
name = "discball"
command = ~F,B,F,x

[Command]
name = "infernokick"
command = ~D,DF,F,b

[Command]
name = "infernokick"
command = ~D,DF,F,a

[Command]
name = "infernokick"
command = ~D,F,b

[Command]
name = "infernokick"
command = ~D,F,a

[Command]
name = "r_infernokick"
command = ~D,DB,B,b

[Command]
name = "r_infernokick"
command = ~D,DB,B,a

[Command]
name = "r_infernokick"
command = ~D,B,b

[Command]
name = "r_infernokick"
command = ~D,B,a

[Command]
name = "shadowkick"
command = ~30$B, F, a
time = 15

[Command]
name = "shadowkick2"
command = ~30$B, F, b
time = 15

[Command]
name = "kangarookick"
command = ~F,D,DF,a

[Command]
name = "kangarookick"
command = ~F,D,F,a

[Command]
name = "kangarookick2"
command = ~F,D,DF,b

[Command]
name = "kangarookick2"
command = ~F,D,F,b

[Command]
name = "r_kangarookick"
command = ~F,D,DF,a

[Command]
name = "r_kangarookick"
command = ~F,D,F,a

[Command]
name = "r_kangarookick2"
command = ~F,D,DF,b

[Command]
name = "r_kangarookick2"
command = ~F,D,F,b


[Command]
name = "overhead"
command = ~B,D,F,x

[Command]
name = "overhead"
command = ~B,DB,D,DF,F,x

[Command]
name = "overhead"
command = ~B,D,F,y

[Command]
name = "overhead"
command = ~B,DB,D,DF,F,y

[Command]
name = "r_overhead"
command = ~F,D,B,x

[Command]
name = "r_overhead"
command = ~F,DF,D,DB,B,x

[Command]
name = "r_overhead"
command = ~F,D,B,y

[Command]
name = "r_overhead"
command = ~F,DF,D,DB,B,y

[Command]
name = "freethrow1"
command = ~F,D,B,x

[Command]
name = "freethrow1"
command = ~F,DF,D,DB,B,x

[Command]
name = "freethrow2"
command = ~F,D,B,a

[Command]
name = "freethrow2"
command = ~F,DF,D,DB,B,a

[Command]
name = "freethrow3"
command = ~F,D,B,y

[Command]
name = "freethrow3"
command = ~F,DF,D,DB,B,y

[Command]
name = "freethrow4"
command = ~F,D,B,b

[Command]
name = "freethrow4"
command = ~F,DF,D,DB,B,b

[Command]
name = "r_freethrow1"
command = ~B,D,F,x

[Command]
name = "r_freethrow1"
command = ~B,DB,D,DF,F,x

[Command]
name = "r_freethrow2"
command = ~B,D,F,a

[Command]
name = "r_freethrow2"
command = ~B,DB,D,DF,F,a

[Command]
name = "r_freethrow3"
command = ~B,D,F,y

[Command]
name = "r_freethrow3"
command = ~B,DB,D,DF,F,y

[Command]
name = "r_freethrow4"
command = ~B,D,F,b

[Command]
name = "r_freethrow4"
command = ~B,DB,D,DF,F,b

[Command]
name = "teleport"
command = ~B,F,c

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

; Used by the KOF-esque superjump system
[Command]
name = "SupahJump"
;command = ~$D, $U
command = ~$D, $U
time = 5
buffer.time = 2

; Used to detect if the player charges down for more than neccersary, negating the superjump in this case
[Command]
name = "ChargedSupahJump"
;command = ~$D, $U
command = ~12$D, $U
time = 5
buffer.time = 2

; Used by the jump system to not buffer aerial basics at the begining of the jump so you would more certainly cancel into charge downup moves (not like Shaq as such moves, but yeah)
[Command]
name = "upper_what"
command = ~15$D, $U, x
time = 10
[Command]
name = "upper_what"
command = ~15$D, $U, y
time = 10
[Command]
name = "upper_what"
command = ~15$D, $U, z
time = 10
[Command]
name = "upper_what"
command = ~15$D, $U, a
time = 10
[Command]
name = "upper_what"
command = ~15$D, $U, b
time = 10
[Command]
name = "upper_what"
command = ~15$D, $U, c
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

[Command]
name = "CD"
command = y+b
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

; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

[State -1, AI Helper Check]
type = ChangeState
trigger1 = IsHelper(9741)
value = 9741

[State -1, AI Helper Check 2]
type = ChangeState
trigger1 = IsHelper(9742)
value = 9742


;===========================================================================
;This is not a move, but it sets up var(1) to be 1 if conditions are right
;for a combo into a special move (used below).
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check]
type = VarSet
triggerall = statetype != A || (stateno = 40) ; rejected while in-air, altho accept the jump init state (which has a statetype of A before actually leaving pos y = 0), potentially important especially for charge downup moves
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
trigger3 = stateno = 100 ; as the run state has ctrl of 0 in order to prevent "crouching while running" (altho Shaq can roll from his run so whatever), this has to be included as "special cancelable"
trigger4 = stateno = 40 && pos y = 0 ; ccept the jump init state (which has a statetype of A before actually leaving pos y = 0), potentially important especially for charge downup moves
var(1) = 1

[State -1, Considerator Reset]
type = VarSet
trigger1 = 1
var(52) = 0

;===========================================================================
; AI DIRECTIVES
;===========================================================================

;This code may look daunting but think of it as a big flowchart.
;The triggers limit when the AI is allowed to do certain things.
;If the conditions are met, a variable 52 is set to a number

[State AI, Consider backing off]
type = VarSet
triggerall = var(55)
triggerall = var(52) = 0 || random < 80+var(55)
triggerall = random < 200 + (123*(prevstateno = 440 && (p2stateno=[5070,5100]) ) )
triggerall = numenemy
triggerall = (p2stateno = [5110,5130]) || ((enemynear,time <= 10) && (enemynear,prevstateno = 5120))
triggerall = p2bodydist x <= 40
trigger1 = stateno != 40
trigger1 = ctrl || stateno = 100
trigger2 = random < 50
trigger2 = stateno = [200,499]
trigger2 = moveguarded
var(52) = ifelse(random<500||backedgebodydist <=75*const(size.xscale),104,ifelse(random<500,42,105))

[State AI, Consider a Standing Short]
type = VarSet
triggerall = numenemy ; so debug wouldn't complain about using enemy(near) redirectors when no enemy is around, like in continue/winner states
triggerall = var(52) = 0 || random < 80+(var(55)*2) ; if an AI picker is already chosen, either ignore this consideration or pick it at random chance if desirable (the chance increases per AILevel, so larger AILevels hopefully mean more unpredictability)
triggerall = var(55) ; checks if the AI is ever at least on at all
triggerall = random < (9*(var(55)*var(55))) * ifelse(movehit,2,1) ; a check that has more chance the larger the AILevel (variable 55) is. The chance is further doubled if Shaq's current attack has succedfully hitted the opponent
; This trigger below makes would make sure Shaq wouldn't (mostly, hence the random < 150) use this move if the opponent is attacking, unless the opponent in question is facing away, the opponent's current move is blocked, Shaq guards for too long, or just not in attack range. It also encourages him to use this move when the opponent is busy doing something and it's not attacking
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130] ; do not use this move if your opponent is in Mugen common1.cns's liedown states (nor getting up)
triggerall = p2statetype != L ; do not use this move if your opponent is in other state that is declared as "lying down"
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),(22-(10*movecontact))*const(size.xscale)] ; the largest distance is decreased a bit when Shaq's current attack is conected (as it usually means the opponent is being pushed away). It's also scaled by a setting that scales Shaq to a more regular size
triggerall = p2dist y >= -22*const(size.yscale) - (enemynear,vel y*6) ; in addition to the distance scaling by Shaq's size, the opponent's velocity is also taken into account - multiplied by a number of the move's tics until it would actually hit - so when the opponent would like come down just in time to get in range, Shaq will use it
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -40*const(size.yscale) ; shaq would only use this move if his opponent - taking one's actual vertical position as well as crouching into account - is tall enough to get hit by this move
triggerall = statetype != A ; don't think of using that move mid-air
triggerall = time >= 7-var(55) || random < 10 ; here i tried to make the reaction time slower on lower AILevels
trigger1 = stateno != 40 ; decided to jump? just keep on jumping?
trigger1 = stateno != 20 || random < 500 || p2movetype = H ; if decided by Mugen AI to walk, keep on walking a bit unless your opponent is hurt by sure
trigger1 = ctrl || stateno = 100
var(52) = 230
ignorehitpause = 1


[State AI, Consider a Standing Jab]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (10*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2statetype != L
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),(18-(12*movecontact))*const(size.xscale)]
triggerall = p2dist y >= -42*const(size.yscale) - (enemynear,vel y*5)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -50*const(size.yscale)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 230 || stateno = 200 ; taken straight from the state that calls the punch move by either player or AI variable
trigger2 = animtime >= -5 || movecontact
var(52) = 200
ignorehitpause = 1

[State AI, Consider a Standing Fierce]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (8*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2statetype != L
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),(20-(13*movecontact))*const(size.xscale)]
triggerall = p2dist y >= -46*const(size.yscale) - (enemynear,vel y*7)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -52*const(size.yscale)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 230 || stateno = 205 || stateno = 206 || stateno = 235 || stateno = 415
trigger2 = animtime >= -5 || movecontact
trigger2 = stateno != 205 || (stateno = 205 && animelemtime(10) >= 0)
var(52) = 210
ignorehitpause = 1

[State AI, Consider a Standing Roundhouse]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (7*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2statetype != L
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),(24-(16*movecontact))*const(size.xscale)]
triggerall = p2dist y >= -51*const(size.yscale) - (enemynear,vel y*9)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -40*const(size.yscale)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 230 || stateno = 400 || stateno = 410 || stateno = 205 || stateno = 235 || stateno = 206
trigger2 = animtime >= -5 || movecontact
trigger2 = stateno != 205 || (stateno = 205 && animelemtime(10) >= 0)
var(52) = 240
ignorehitpause = 1

[State AI, Consider a Crouching Jab]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (9*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2statetype != L
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),(25-(10*movecontact))*const(size.xscale)]
triggerall = p2dist y >= -15*const(size.yscale) - (enemynear,vel y*3)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -20*const(size.yscale)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 400 || stateno = 430 || stateno = 445
trigger2 = animtime >= -5 || movecontact
var(52) = 400
ignorehitpause = 1

[State AI, Consider a Crouching Fierce]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (9*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2statetype != L
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),(30-(10*movecontact))*const(size.xscale)]
triggerall = p2dist y >= -15*const(size.yscale) - (enemynear,vel y*4)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -20*const(size.yscale)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 400 || stateno = 430 || stateno = 445 || stateno = 235
trigger2 = animtime >= -5 || movecontact
var(52) = 410
ignorehitpause = 1

[State AI, Consider a Crouching Short]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (9*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2statetype != L
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),(29-(10*movecontact))*const(size.xscale)]
triggerall = p2dist y >= -18*const(size.yscale) - (enemynear,vel y*3)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -20*const(size.yscale)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 400 || stateno = 445
trigger2 = animtime >= -5 || movecontact
var(52) = 430
ignorehitpause = 1

[State AI, Consider a Crouching Roundhouse]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (6*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),(43-(14*movecontact))*const(size.xscale)]
triggerall = p2dist y >= -5*const(size.yscale) - (enemynear,vel y*11)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -10*const(size.yscale)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 400 || stateno = 430 || stateno = 445 || stateno = 410
trigger2 = animtime >= -5 || movecontact
var(52) = 440
ignorehitpause = 1

[State AI, Consider an elbow to punch]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (6*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2statetype != L
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),(23-(13*movecontact))*const(size.xscale)]
triggerall = p2dist y >= -30*const(size.yscale) - (enemynear,vel y*10)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -30*const(size.yscale)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 230 || stateno = 206
trigger2 = animtime >= -5 || movecontact
trigger2 = stateno != 205 || (stateno = 205 && animelemtime(10) >= 0)
var(52) = 205
ignorehitpause = 1

[State AI, Consider an upper punch that has parry capabilities for some reason]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (9*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2statetype != L
triggerall = (p2bodydist x = [ifelse(p2statetype!=A,-5,-5),(21-(10*movecontact))*const(size.xscale)]) || (p2movetype = A && enemynear,facing != facing && inguarddist && p2statetype != C)
triggerall = (p2dist y >= -52*const(size.yscale) - (enemynear,vel y*3))  || (p2movetype = A && enemynear,facing != facing && inguarddist && p2statetype != C)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -30*const(size.yscale)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger1 = stateno != [206,207]
trigger1 = prevstateno != [206,207]
trigger2 = stateno = 230 || stateno = 400
trigger2 = animtime >= -5 || movecontact
var(52) = 206
ignorehitpause = 1

[State AI, Consider a forward kick]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (5*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2statetype != L
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),(59-(12*movecontact))*const(size.xscale)]
triggerall = p2dist y >= -20*const(size.yscale) - (enemynear,vel y*16)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -40*const(size.yscale)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 14) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025]) || (moveguarded)
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 205 || stateno = 206
trigger2 = animtime >= -5 || movecontact
trigger2 = stateno != 205 || (stateno = 205 && animelemtime(10) >= 0)
var(52) = 235
ignorehitpause = 1

[State AI, Consider an hoping roundhouse]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (5*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2statetype != L
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),(21-(13*movecontact))*const(size.xscale)]
triggerall = p2dist y >= -55*const(size.yscale) - (enemynear,vel y*8)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -30*const(size.yscale)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 230 || stateno = 400 || stateno = 410 || stateno = 205 || stateno = 206 || stateno = 235 || stateno = 445
trigger2 = animtime >= -5 || movecontact
trigger2 = stateno != 205 || (stateno = 205 && animelemtime(10) >= 0)
var(52) = 245
ignorehitpause = 1

[State AI, Consider a down punch]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (5*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5110,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),(20-(12*movecontact))*const(size.xscale)]
triggerall = p2dist y >= -24*const(size.yscale) - (enemynear,vel y*6)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 230 || stateno = 206 || stateno = 205 || stateno = 235
trigger2 = animtime >= -5 || movecontact
trigger2 = stateno != 205 || (stateno = 205 && animelemtime(10) >= 0)
var(52) = 415
ignorehitpause = 1

[State AI, Consider a crouching high kick]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (6*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2statetype != L
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),(17-(10*movecontact))*const(size.xscale)]
triggerall = p2dist y >= -20*const(size.yscale) - (enemynear,vel y*5)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -20*const(size.yscale)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 230 || stateno = 206 || stateno = 205
trigger2 = animtime >= -5 || movecontact
trigger2 = stateno != 205 || (stateno = 205 && animelemtime(10) >= 0)
var(52) = 445
ignorehitpause = 1


[State AI, Consider a random basic air attack]
type = Varset
triggerall = numenemy
triggerall = var(52) = 0 || random < 123
triggerall = var(55)
triggerall = p2bodydist x = [-38+(vel x*4)+(enemynear,vel x*4),67+(vel x*4)+(enemynear,vel x*4)] ; Shaq's own velocities as well as the opponent's are both taken into acount so Shaq would hopefully throw a punch/kick shall his opponent get in range
triggerall = P2dist y = [-57+(vel y*4)+(enemynear,vel y*4),ifelse(p2movetype=A&&vel y>=0,90,70)+(vel y*4)+(enemynear,vel y*4)]
triggerall = Statetype = A
triggerall = p2stateno != [5100,5120]
triggerall = p2Statetype = A || p2movetype = A || vel y >= 0
triggerall = (stateno != [120,169])
triggerall = random < (10*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = time >= 7-var(55) || random < 10
trigger1 = ctrl
var(52) = ifelse(random<500||p2bodydist x>=15*const(size.xscale),630,600)

[State AI, Consider Inferno Kicking]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) ) ; if the AI considered doing a basic move, it would not think about doing this special move
triggerall = var(55)
triggerall = random < (1.5*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 90)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,8*const(size.xscale)),(30-(12*movecontact))*const(size.xscale)]
triggerall = p2dist y >= -16*const(size.yscale) - (enemynear,vel y*20)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -16*const(size.yscale)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 20) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025]) || (moveguarded) ; if the opponent is hurt but not mid-air, Shaq would only do this move if he's sure he'd combo into this special move
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = stateno != 100 || random < 50
trigger1 = var(1)
;trigger1 = !moveguarded
trigger1 = stateno != 205 || (stateno = 205 && animelemtime(10) >= 0) ; if Shaq is doing an elbow-to-punch command move, he'd only do this move after the second punch
var(52) = 1000
ignorehitpause = 1

[State AI, Consider Kangaroo Kicking]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (3*(var(55)*var(55))) * ifelse(movehit,2,1) * ifelse(stateno = 52,2.5,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 450)
triggerall = p2stateno != [5080,5130]
triggerall = p2statetype != L
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,8*const(size.xscale)),(51-(23*movecontact))*const(size.xscale)]
triggerall = p2dist y >= -80 - (enemynear,vel y*9)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -20*const(size.yscale)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = stateno != 100 || random < 50
trigger1 = var(1)
trigger1 = !moveguarded
trigger1 = stateno != 205 || (stateno = 205 && animelemtime(10) >= 0)
var(52) = 1300
ignorehitpause = 1
[State AI, Consider Kangaroo Kicking even higher]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (2*(var(55)*var(55))) * ifelse(movehit,2,1) * ifelse(stateno = 52,2.5,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 250)
triggerall = p2stateno != [5080,5130]
triggerall = p2statetype != L
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,8*const(size.xscale)),(51-(23*movecontact))*const(size.xscale)]
triggerall = p2dist y >= -86 - (enemynear,vel y*17)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -20*const(size.yscale)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = stateno != 100 || random < 50
trigger1 = var(1)
trigger1 = !moveguarded
trigger1 = stateno != 205 || (stateno = 205 && animelemtime(10) >= 0)
var(52) = 1301
ignorehitpause = 1

[State AI, Consider Shadow Kicking]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (2*(var(55)*var(55))) * ifelse(movehit,2,1) * ifelse(prevstateno=2100,2,1) ; Shaq would do this move more likely after he just come out raining junk food on his opponent
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 80)
triggerall = p2stateno != [5080,5130]
triggerall = p2statetype != L
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,50),220-(25*(movecontact>=1))]
triggerall = p2dist y >= -24*const(size.yscale) - (enemynear,vel y*15)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -40*const(size.yscale)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = stateno != 100 || random < 50
trigger1 = var(1)
trigger1 = !moveguarded
trigger1 = stateno != 205 || (stateno = 205 && animelemtime(10) >= 0)
var(52) = ifelse(p2bodydist x>=192-(25*(movecontact>=1))||random<500,1101,1100) ; denepding on the range, Shaq would randomly do a light/strong version of the move
ignorehitpause = 1

[State AI, Consider Throwing a Kienzan]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (1.5*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 50)
triggerall = (p2stateno != [5080,5130]) || (random < 123)
triggerall = p2bodydist x >= 60*const(size.xscale) || movehit
triggerall = p2dist y >= -20*const(size.yscale) - (enemynear,vel y*9)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -20*const(size.yscale)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
triggerall = prevstateno != [1200,1210]
triggerall = !numhelper(1200)
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = stateno != 100 || random < 60
trigger1 = var(1)
trigger1 = !movehit
trigger1 = stateno != 205 || (stateno = 205 && animelemtime(10) >= 0)
var(52) = 1200

[State AI, Consider A Free Throw in front of you]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (1.5*(var(55)*var(55))) * ifelse(p2statetype!=S,2,1) * ifelse(moveguarded,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2dist x - (enemynear,vel x*13) = [45,95]
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
triggerall = numhelper(1500) < 2
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = stateno != 100 || random < 60
trigger1 = var(1)
trigger1 = !movehit
var(52) = 1500
ignorehitpause = 1

[State AI, Consider A Free Throw a bit further]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (1.5*(var(55)*var(55))) * ifelse(p2statetype!=S,2,1) * ifelse(moveguarded,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2dist x - (enemynear,vel x*13) = [109,150]
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
triggerall = numhelper(1500) < 2
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = stateno != 100 || random < 60
trigger1 = var(1)
trigger1 = !movehit
var(52) = 1501
ignorehitpause = 1

[State AI, Consider A Free Throw at some distance]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (1.5*(var(55)*var(55))) * ifelse(p2statetype!=S,2,1) * ifelse(moveguarded,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2dist x - (enemynear,vel x*13) = [170,190]
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
triggerall = numhelper(1500) < 2
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = stateno != 100 || random < 60
trigger1 = var(1)
trigger1 = !movehit
var(52) = 1502
ignorehitpause = 1

[State AI, Consider A Free Throw pretty far away]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (1.5*(var(55)*var(55))) * ifelse(p2statetype!=S,2,1) * ifelse(moveguarded,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2dist x - (enemynear,vel x*13) = [230,250]
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
triggerall = numhelper(1500) < 2
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = stateno != 100 || random < 60
trigger1 = var(1)
trigger1 = !movehit
var(52) = 1503
ignorehitpause = 1

[State AI, Consider A Random Free Throw For Defense]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (1.5*(var(55)*var(55))) * ifelse(p2statetype!=S,2,1) * ifelse(moveguarded,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
triggerall = numhelper(1500) = 1 ; only do this move if one of your balls is already onscreen
triggerall = p2movetype != H || p2statetype = L
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = stateno != 100 || random < 60
trigger1 = var(1)
trigger1 = !movehit
var(52) = 1500+random%4
ignorehitpause = 1


[State AI, Consider The Kazaam]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,255]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (3*(var(55)*var(55))) * ifelse(movehit,3,1)
triggerall = random < 300 + ((lifemax - life)/16) ; do the super more likely the more you are hurt
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 250)
triggerall = p2stateno != [5110,5140]
triggerall = (p2bodydist x = [ifelse(p2statetype!=A,-5,0),17]) || (p2movetype = H) ; as the Kazaam homes into the opponent if one's hurt, Shaq checks whenever the opponent is in initial range or if one's hurt
triggerall = power >= 1000
triggerall = (p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A)
triggerall = (p2stateno != [120,165]) || (p2statetype = C) ; don't bother wasting this super on an opponent happens to be blocking. Unless in this case the opponent is crouching as this move is an overhead
triggerall = (prevstateno != [2000,3902]) || (stateno = [2000,3902]) ; don't throw a super after super unless you're going for supercancels or stuff
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = anim != 20
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = stateno != 410
trigger1 = var(1)
trigger1 = !moveguarded || random < 80
trigger1 = stateno != 205 || (stateno = 205 && animelemtime(10) >= 0)
trigger2 = (stateno = [1000,1400]) && (movehit)
var(52) = 2100
ignorehitpause = 1

[State AI, Consider The Beatdown]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,255]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (3*(var(55)*var(55))) * ifelse(movehit,3,1)
triggerall = random < 300 + ((lifemax - life)/16)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5140]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),67-(11*(movecontact>=1))]
triggerall = p2dist y >= -40*const(size.yscale) - (enemynear,vel y*6)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*6) + (enemynear, pos y) <= -6 ) || (p2stateno != [5030,5120])
triggerall = power >= 1000
triggerall = (p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A)
triggerall = p2stateno != [120,165]
triggerall = (prevstateno != [2000,3902]) || (stateno = [2000,3902])
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 8 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
trigger1 = anim != 20
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = stateno != 410
trigger1 = var(1)
trigger1 = !moveguarded || random < 80
trigger1 = stateno != 205 || (stateno = 205 && animelemtime(10) >= 0)
trigger2 = (stateno = [1000,1400]) && (movehit)
var(52) = 2200
ignorehitpause = 1

[State AI, Consider Just Wasting The Power Stock]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,255]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (3*(var(55)*var(55))) * ifelse(movehit,3,1)
triggerall = random < 300 + ((lifemax - life)/16)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5140]
triggerall = p2bodydist x >= 42*const(size.xscale)
triggerall = p2dist y >= -40*const(size.yscale) - (enemynear,vel y*6)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*6) + (enemynear, pos y) <= -6 ) || (p2stateno != [5030,5120])
triggerall = power >= 1000
triggerall = (p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A)
triggerall = p2stateno != [120,165]
triggerall = (prevstateno != [2000,3902]) || (stateno = [2000,3902])
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 8 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = !numhelper(1200) && !numhelper(2000)
trigger1 = anim != 20
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = stateno != 410
trigger1 = var(1)
trigger1 = !moveguarded || random < 80
trigger1 = stateno != 205 || (stateno = 205 && animelemtime(10) >= 0)
trigger2 = (stateno = [1000,1400]) && (movehit)
var(52) = 2000
ignorehitpause = 1

[State AI, Consider The Chaos Dunk]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && ((var(52)!=[200,255]) && (var(52)!=[400,450]) ) || random < 123)
triggerall = var(55)
triggerall = random < (4*(var(55)*var(55)))
triggerall = random < 444 + ((lifemax - life)/16)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 200)
triggerall = p2stateno != [5080,5140]
triggerall = enemynear,prevstateno != 5120
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),(25-(13*movecontact))*const(size.xscale)]
triggerall = p2statetype != A
triggerall = power >= 3000
triggerall = (p2movetype = H) || (enemynear, ctrl = 0) || (random < 333)
triggerall = p2stateno != [120,165]
triggerall = (prevstateno != [2000,3902]) || (stateno = [2000,3902])
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 4 ) || (p2movetype != H) || (p2stateno != [5000,5025])
trigger1 = anim != 20
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(1)
;trigger1 = !moveguarded || random < 80
trigger1 = stateno != 205 || (stateno = 205 && animelemtime(10) >= 0)
trigger2 = (stateno = [1000,1400]) && (movehit)
var(52) = 3000
ignorehitpause = 1

[State AI, Consider Throwing]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 900
triggerall = var(55)
triggerall = random < (15*(var(55)*var(55)))
triggerall = p2stateno != [5080,5130]
triggerall = abs(p2bodydist x) < 6
triggerall = statetype != A
triggerall = p2movetype != H
triggerall = p2statetype != A
triggerall = prevstateno != [800,830] ; don't attempt the throw again if you miss it the first time
triggerall = var(8) = 0
trigger1 = stateno != 40
trigger1 = ctrl
var(52) = 800
ignorehitpause = 1
[State -1, Consider an Air Throw]
type = Varset
triggerall = var(55)
triggerall = random < (15*(var(55)*var(55)))
triggerall = statetype = A
triggerall = ctrl || ((stateno = [600,630]) && movehit)
triggerall = p2bodydist X < 10
triggerall = abs(p2bodydist y) < 19*const(size.xscale)
triggerall = (p2statetype = A)
trigger1 = p2movetype != H || (random < 500) || p2movetype = A
var(52) = 830

[State AI, Consider Advancing]
type = VarSet
triggerall = var(55)
triggerall = var(52) = 0 || random < 80+var(55)
triggerall = random < (4*(var(55)*var(55)))
triggerall = ((enemynear, ctrl = 0) && p2movetype != A) || (p2movetype = A && (enemynear, facing = facing))
triggerall = (p2stateno != [5080,5130]) || (p2bodydist x = [45,100])
triggerall = p2bodydist x >= 45
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 100
trigger1 = ctrl
trigger1 = !moveguarded
var(52) = ifelse(random<100&&power>=500,110,ifelse(random<500,100,47))

[State AI, Consider Countering/Guard Canceling]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 55
triggerall = var(55)
triggerall = random < 10 + ifelse(p2life - life<0,0,(p2life - life)/4)
triggerall = random < (10*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = statetype != A
triggerall = power >= 500
triggerall = power < 2500 || random < 150 || power >= 3500
trigger1 = stateno = 150 || stateno = 152
var(52) = ifelse(random<500&&(p2bodydist x = [-5,24*const(size.xscale)])&&(p2dist y >= -51*const(size.yscale)),700,104)
ignorehitpause = 1

[State AI, TUNE IT UP] ; Something to encourage Shaq to extend the Shaq Attack if possible (and neccersary)
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 55
triggerall = var(55)
triggerall = random < (12*(var(55)*var(55)))
triggerall = power >= 1000
triggerall = p2life >= 5
trigger1 = stateno = 2201 || stateno = 2203
trigger1 = anim = 1000
var(52) = 2202
ignorehitpause = 1
[State AI, HOOOOOOOOLD] ; detected within the coding of Shaq-urikin/Kienzan, this will encourage to hold on under circumstances before throwing the disc
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 55
triggerall = var(55)
triggerall = random < (12*(var(55)*var(55)))
triggerall = stateno = 1200 || stateno = 2000
trigger1 = enemynear,ctrl
trigger1 = random < 900
trigger2 = p2stateno = [5100,5120]
trigger3 = p2dist y < -40*const(size.yscale) - (enemynear,vel y*6)
trigger4 = (p2stateno = [120,169]) || p2statetype = A
var(52) = 1234
ignorehitpause = 1

[State AI, Guard S]
type = ChangeState
triggerall = stateno != 40
triggerall = random < 125*var(55)
triggerall = (var(55)) && (StateType != A) && (Ctrl) && (EnemyNear, Facing != Facing) && (var(50)<40)
trigger1 = (P2StateType != C) && (((P2MoveType = A) && (inguarddist)) || (EnemyNear, NumProj > 0))
value = ifelse(random<50&&p2bodydist x<=100&&(stateno!=[120,159]),104,130)

[State AI, Guard L]
type = ChangeState
triggerall = stateno != 40
triggerall = random < 125*var(55)
triggerall = (var(55)) && (StateType != A) && (Ctrl) && (EnemyNear, Facing != Facing) && (var(50)<40)
trigger1 = (P2StateType = C) && (((P2MoveType = A) && (inguarddist)) || (EnemyNear, NumProj > 0))
value = ifelse(random<50&&p2bodydist x<=100&&(stateno!=[120,159]),104,131)

; AI ENDS

;===========================================================================

[State -1, Chaos Dunk]
type = ChangeState
value = 3000
triggerall = (var(55)<5 && (command = "360_z")) || var(52) = 3000 ; The move will be done if desired by either player's input (and on lower difficulties, Mugen's default AI so it would randomly throw out the move in the open) or if chosen by an AI variable
triggerall = statetype != A ; a strictly ground move
triggerall = power >= 3000
trigger1 = var(1) ; this lets you cancel from runing as well as most of ground basic moves on contact (see "Combo condition Check" above)
trigger2 = stateno = 1000 || stateno = 1100 || stateno = 1101 || stateno = 1400 ; hey baby, wanna have a super move cancelable from a number of special moves? (The inferno kick and shadow kicks in Shaq's case)
trigger2 = movecontact

[State -1, Super Shaq-urikin]
type = ChangeState
value = 2000
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "kienzan",command = "r_kienzan")) || var(52) = 2000 ; this ifelse solution is proposed by Vans so you can do the command as normal shall Shaq suddenly turn around while you would be doing that command
triggerall = statetype != A
triggerall = numhelper(1200) = 0 && numhelper(2000) = 0 ; if a Disc, either regular or superpowered, is already on the screen, DON'T DO IT
triggerall = power >= 1000
trigger1 = var(1)
trigger2 = stateno = 1000 || stateno = 1100 || stateno = 1101 || stateno = 1400
trigger2 = movecontact

[State -1, Kazaam reference]
type = ChangeState
value = 2100
triggerall = (var(55)<5 && (command = "kazaam")) || var(52) = 2100 ; of course if the command has no horizontal inputs you can make it like that
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = var(1)
trigger2 = stateno = 1000 || stateno = 1100 || stateno = 1101 || stateno = 1400
trigger2 = movecontact

[State -1, An autocombo]
type = ChangeState
value = 2200
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "shaqattack",command = "r_shaqattack")) || var(52) = 2200
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = var(1)
trigger2 = stateno = 1000 || stateno = 1100 || stateno = 1101 || stateno = 1400
trigger2 = movecontact

[State -1, AUTOCOMBO EXTEND]
type = ChangeState
value = 2202
triggerall = (var(55)<5 && (command = "stillinsane")) || var(52) = 2202
triggerall = power >= 1000
trigger1 = stateno = 2201

[State -1, AUTOCOMBO CLIMAX]
type = ChangeState
value = 2204
triggerall = (var(55)<5 && (command = "steel")) || var(52) = 2202
triggerall = power >= 1000
trigger1 = stateno = 2203


;===========================================================================
[State -1, free throws yaay point blank]
type = ChangeState
value = 1500
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "freethrow1",command = "r_freethrow1")) || var(52) = 1500
triggerall = statetype != A
triggerall = numhelper(1500) < 2
trigger1 = var(1)

[State -1, free throws yaay near]
type = ChangeState
value = 1501
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "freethrow2",command = "r_freethrow2")) || var(52) = 1501
triggerall = statetype != A
triggerall = numhelper(1500) < 2
trigger1 = var(1)

[State -1, free throws yaay mid]
type = ChangeState
value = 1502
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "freethrow3",command = "r_freethrow3")) || var(52) = 1502
triggerall = statetype != A
triggerall = numhelper(1500) < 2
trigger1 = var(1)

[State -1, free throws yaay far]
type = ChangeState
value = 1503
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "freethrow4",command = "r_freethrow4")) || var(52) = 1503
triggerall = statetype != A
triggerall = numhelper(1500) < 2
trigger1 = var(1)

[State -1, Light Kangaroo Kick]
type = ChangeState
value = 1300
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "kangarookick",command = "r_kangarookick")) || var(52) = 1300
triggerall = statetype != A
trigger1 = var(1)

[State -1, Strong Kangaroo Kick]
type = ChangeState
value = 1301
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "kangarookick2",command = "r_kangarookick2")) || var(52) = 1301
triggerall = statetype != A
trigger1 = var(1)

[State -1, Inferno Kick]
type = ChangeState
value = 1000
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "infernokick",command = "r_infernokick")) || var(52) = 1000
triggerall = statetype != A
trigger1 = var(1)

[State -1, Weak Shadow Kick]
type = ChangeState
value = 1100
triggerall = (var(55)<5 && (command = "shadowkick")) || var(52) = 1100
triggerall = statetype != A
trigger1 = var(1)

[State -1, Strong Shadow Kick]
type = ChangeState
value = 1101
triggerall = (var(55)<5 && (command = "shadowkick2")) || var(52) = 1101
triggerall = statetype != A
trigger1 = var(1)

[State -1, Overhead hop]
type = ChangeState
value = 1400
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "overhead",command = "r_overhead")) || var(52) = 1400
triggerall = statetype != A
trigger1 = var(1)

[State -1, Shaq-urikin]
type = ChangeState
value = 1200
triggerall = (var(55)<5 && (command = "discball")) || var(52) = 1200
triggerall = statetype != A
triggerall = numhelper(1200) = 0 && numhelper(2000) = 0
trigger1 = var(1)


;---------------------------------------------------------------------------
;Kung Fu Throw
;投げ
[State -1, Ground Throw]
type = ChangeState
value = 800
triggerall = (var(55)<5 && (command = "z")) || var(52) = 800
triggerall = statetype != A
trigger1 = ctrl
trigger1 = stateno != 100
trigger2 = stateno = 200 || stateno = 230 || stateno = 415 || stateno = 205 || stateno = 206 || stateno = 210
trigger2 = animtime >= -5 || movecontact || time < 6

[State -1, Air Throw]
type = ChangeState
value = 830
triggerall = (var(55)<5 && (command = "z")) || var(52) = 830
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || (stateno = 630 && animelemtime(4) >= 0) ; yes, you can combo aerial basics into an air throw. Obviously it would be only useful against aerial opponents
trigger2 = animtime >= -5 || movecontact || time < 6

;---------------------------------------------------------------------------
;Teleport
;後退ダッシュ
[State -1, Teleport]
type = ChangeState
value = 110
triggerall = (var(55)<5 && (command = "teleport")) || (var(52) = 110)
triggerall = statetype != A
triggerall = power >= 500
trigger1 = ctrl || stateno = 100

;---------------------------------------------------------------------------
;Dodge!
;ダッシュ
[State -1, Dodge!]
type = ChangeState
value = 104
triggerall = (var(55)<5 &&  (command = "holddown" && stateno = 100) || (command = "holdc" && command = "holddown") || (command = "holdc" && command = "holdfwd" && (stateno = [150,154]))) || (var(52) = 104)
triggerall = statetype != A
triggerall = anim != 101
trigger1 = ctrl || stateno = 100
trigger2 = power >= 500
trigger2 = (stateno = [150,153])

[State -1, AKUMA] ; Guard cancel counter attack
type = ChangeState
value = 700
triggerall = (!var(55) && command = "CD")  || var(52) = 700
triggerall = power >= 500
triggerall = statetype != A
trigger1 = stateno = [150,154]

;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = (var(55)<5 && (command = "FF") || (command = "holdc" && command = "holdfwd" && command != "teleport")) || (var(52) = 100)
triggerall = stateno != 100
triggerall = stateno != 40
triggerall = anim != 101
trigger1 = !statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = (var(55)<5 && (command = "BB") || (command = "holdc" && command = "holdback" && command != "teleport")) || (var(52) = 105)
trigger1 = !statetype = A
trigger1 = ctrl || stateno = 100
trigger2 = power >= 500
trigger2 = (stateno = [150,153])

[State -1, Crouch High Kick]
type = ChangeState
value = 445
triggerall = (var(55)<5 && (command = "a" && (command = "holdback" || command = "holdfwd") && command = "holddown")) || var(52) = 445
trigger1 = statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 100
trigger2 = stateno = 200 || stateno = 230 || stateno = 206 || stateno = 205
trigger2 = animtime >= -5 || movecontact

[State -1, Down Punch]
type = ChangeState
value = 415
triggerall = (var(55)<5 && (command = "y" && command = "holdfwd" && command = "holddown")) || var(52) = 415
trigger1 = statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 100
trigger2 = stateno = 200 || stateno = 230 || stateno = 206 || stateno = 205 || stateno = 235
trigger2 = animtime >= -5 || movecontact

[State -1, Parry Jab]
type = ChangeState
value = 206
triggerall = (var(55)<5 && (command = "x" && command = "holdup")) || var(52) = 206
trigger1 = statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 100
trigger2 = stateno = 230 || stateno = 400
trigger2 = animtime >= -5 || movecontact

[State -1, Elbow to Punch]
type = ChangeState
value = 205
triggerall = (var(55)<5 && (command = "x" && command = "holdback" && command != "holddown")) || var(52) = 205
trigger1 = statetype != A
trigger1 = ctrl || stateno = 4 || stateno = 1000
trigger2 = stateno = 200 || stateno = 230 || stateno = 206
trigger2 = animtime >= -5 || movecontact

[State -1, Rising Roundhouse]
type = ChangeState
value = 245
triggerall = (var(55)<5 && (command = "b" && command = "holdup")) || var(52) = 245
trigger1 = statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 100
trigger2 = stateno = 200 || stateno = 230 || stateno = 400 || stateno = 410 || stateno = 205 || stateno = 206 || stateno = 235 || stateno = 445
trigger2 = animtime >= -5 || movecontact

[State -1, Forward Kick]
type = ChangeState
value = 235
triggerall = (var(55)<5 && ((command = "a" || command = "b") && command = "holdfwd" && command != "holddown")) || var(52) = 235 ; both Forward+LK and Forward+HK will have you do this move because that's how it was in Shaq Fu itself too lol
trigger1 = statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 100
trigger2 = stateno = 200 || stateno = 205 || stateno = 206
trigger2 = animtime >= -5 || movecontact


;===========================================================================

;---------------------------------------------------------------------------
;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = (var(55)<5 && (command = "x" && command != "holddown")) || var(52) = 200
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 230 || stateno = 200
trigger2 = animtime >= -5 || movecontact

[State -1, Stand Back Punch]
type = ChangeState
value = 210
triggerall = (var(55)<5 && (command = "y" && command != "holddown")) || var(52) = 210
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 230 || stateno = 205 || stateno = 206 || stateno = 235 || stateno = 415
trigger2 = animtime >= -5 || movecontact

[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = (var(55)<5 && (command = "a" && command != "holddown")) || var(52) = 230
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
;trigger2 = stateno = 200 || stateno = 400
;trigger2 = animtime >= -5 || movecontact

[State -1, Stand Roundhouse Kick]
type = ChangeState
value = 240
triggerall = (var(55)<5 && (command = "b" && command != "holddown")) || var(52) = 240
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 230 || stateno = 400 || stateno = 410 || stateno = 205 || stateno = 235 || stateno = 206
trigger2 = animtime >= -5 || movecontact

;---------------------------------------------------------------------------
;Taunt
[State -1, POWER UP]
type = ChangeState
value = 199
triggerall = (var(55)<5 && (command = "start" && command = "holddown")) || var(52) = 199
triggerall = var(10) = 0
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = (command = "start") || var(52) = 195 || (var(58) = -2 && winko && !var(48))
triggerall = stateno != 195
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100

[State -1, Crouch Light Punch]
type = ChangeState
value = 400
triggerall = (var(55)<5 && (command = "x" && command = "holddown")) || var(52) = 400
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 400 || stateno = 430 || stateno = 445
trigger2 = animtime >= -5 || movecontact

[State -1, Crouch Fire Punch]
type = ChangeState
value = 410
triggerall = (var(55)<5 && (command = "y" && command = "holddown")) || var(52) = 410
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 400 || stateno = 430 || stateno = 445 || stateno = 235
trigger2 = animtime >= -5 || movecontact

[State -1, Crouch Light Kick]
type = ChangeState
value = 430
triggerall = (var(55)<5 && (command = "a" && command = "holddown")) || var(52) = 430
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 400 || stateno = 445
trigger2 = animtime >= -5 || movecontact

[State -1, Crouch Sweep]
type = ChangeState
value = 440
triggerall = (var(55)<5 && (command = "b" && command = "holddown")) || var(52) = 440
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 400 || stateno = 430 || stateno = 445 || stateno = 410
trigger2 = animtime >= -5 || movecontact

;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Punch]
type = ChangeState
value = 600
triggerall = (var(55)<5 && (command = "x" || command = "y")) || var(52) = 600
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Kick]
type = ChangeState
value = 630
triggerall = (var(55)<5 && (command = "a" || command = "b")) || var(52) = 630
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Air combo lol]
type = ChangeState
value = 40
triggerall = (command = "holdup") || var(52) = [40,45]
trigger1 = var(55) ; trigger1 series is strictly for AI to have it decided when it shall jump when desired, the other triggers also include the player-controlled Shaq
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100 ; let Shaq jump from the run as the run has ctrl = 0 to prevent this "crouch while running thing"
; this below will let Shaq jump cancel the parry punch and rising roundhouse on hit as long as his target happen to be midair
trigger3 = numtarget
trigger3 = statetype != A
trigger3 = target,statetype=A
trigger3 = stateno = 206 || stateno = 245
trigger3 = movehit


