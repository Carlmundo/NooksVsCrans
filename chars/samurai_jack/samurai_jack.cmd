;*******************************************************************
;--------------------------------------------------------------------------
;AI moves, GOSTARIA DE AGRADESCER AO SMI, PELO TUTORIAL DE IA, QUE FOI DE GRANDE AJUDA.
;E TAMBEM AO HIEI SSJ, PELA AJUDA QUE ME DEU QUANDO FUI APRENDER A FASER IA =)
[Command]
name = "ai"
command = x,x,x,x,x,x,x,x,x,x
time = 1

[Command]
name = "ai1"
command = y,y,y,y,y,y,y,y,y,y
time = 1

[Command]
name = "ai2"
command = U,U,U,U,U,U,U,U,U,U,U
time = 1

[Command]
name = "ai3"
command = z,z,z,z,z,z,z,z,z,z,z,z
time = 1

[Command]
name = "ai4"
command = a,b,c,z,x,y,F,F,B,U,U
time = 1

[Command]
name = "ai5"
command = U,D,F,B,F,F,B,U,U
time = 1

[Command]
name = "ai6"
command = D,F,U,B,F,F,B,U,U
time = 1

[Command]
name = "ai7"
command = x,D,x,D,x,D,x,D
time = 1

[Command]
name = "ai8"
command = F,F,F,F,F,F,B,U,U
time = 1

[Command]
name = "ai9"
command = F,F,F,F,F,B,U,U
time = 1

[Command]
name = "ai10"
command = B,U,U,F,F,B,U,U
time = 1

[Command]
name = "ai11"
command = F,F,F,B,U
time = 1

[Command]
name = "ai12"
command = F,B,F,B,F,D,x,D,x,D
time = 1

[Command]
name = "ai13"
command = x,y,z,a,b,c,D,x,D,x,D
time = 1

[Command]
name = "ai14"
command = x,D,x,D,x,D,x,D,D,x,D,x,D
time = 1

[Command]
name = "ai15"
command = F,F,F,F,F,F,B,U,U,D,x,D,x,D
time = 1

[Command]
name = "ai16"
command = F,F,F,D,x,D,x,D
time = 1








;-| Super Motions |--------------------------------------------------------
[Command]
name = "ultra"     
command = ~D, DB, B, x+y
time = 30

[Command]
name = "lamina"     
command = ~D, DF, F, a+b
time = 30

[Command]
name = "parede"     
command = ~D, DB, B, a+b
time = 30

[Command]
name = "marreta"     
command = ~D, DF, F, x+y
time = 30


;-| Special Motions |------------------------------------------------------
[Command]
name = "impacto_y"     
command = ~F, D, F, y
time = 30

[Command]
name = "impacto_x"     
command = ~F, D, F, x
time = 30

[Command]
name = "fogo_b"     
command = ~D, DF, F, b
time = 30

[Command]
name = "fogo_a"     
command = ~D, DF, F, a
time = 30

[Command]
name = "parede_b"     
command = ~D, DB, B, b
time = 30

[Command]
name = "parede_a"     
command = ~D, DB, B, a
time = 30

[Command]
name = "arco_baixo_y"     
command = ~D, DB, B, y
time = 30

[Command]
name = "arco_baixo_x"     
command = ~D, DB, B, x
time = 30

[Command]
name = "arco_alto_y"     
command = ~D, DB, B, y
time = 30

[Command]
name = "arco_alto_x"     
command = ~D, DB, B, x
time = 30

[Command]
name = "arco_reto_y"     
command = ~D, DF, F, y
time = 30

[Command]
name = "arco_reto_x"     
command = ~D, DF, F, x
time = 30



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
name = "recovery";Required (do not remove)
command = x+y
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



;---------------------------------------------------------------------------
; 2. State entry
; --------------


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;++++++++++++++++++++++++++     IA LIGADA     ++++++++++++++++++++++++++++++
;===========================================================================
[State -1, AI]
type = VarSet
trigger1 = command = "ai"
trigger2 = command = "ai1"
trigger3 = command = "ai2"
trigger4 = command = "ai3"
trigger5 = command = "ai4"
trigger6 = command = "ai5"
trigger7 = command = "ai6"
trigger8 = command = "ai7"
trigger9 = command = "ai8"
trigger10= command = "ai9"
trigger11= command = "ai10"
trigger12= command = "ai11"
trigger13= command = "ai12"
trigger14= command = "ai13"
trigger15= command = "ai14"
trigger16= command = "ai15"
var(59) = 1

;===========================================================================
;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ULTRA SEQUENCIA
[State -1, [State -1]
type = ChangeState
value = 3000
triggerall = command = "ultra"
trigger1 = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl && statetype != A
trigger2 = movecontact && (stateno = 200 || stateno = 210 || stateno = 230 || stateno = 240)
trigger3 = movecontact && (stateno = 400 || stateno = 410 || stateno = 430 || stateno = 440)
trigger4 = var(2) = 1 
;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++LAMINA

[State -1]
type = ChangeState
value = 2100
triggerall = command = "lamina"  
triggerall = statetype = S
trigger1 = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499])  
trigger2 = movecontact

;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++PAREDE DE PEDRA

[State -1]
type = ChangeState
value = 2200
triggerall = command = "parede"  
triggerall = statetype = S
trigger1 = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499])  
trigger2 = movecontact
;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++MARRETADA

[State -1]
type = ChangeState
value = 2000
triggerall = command = "marreta"  
triggerall = statetype = S
trigger1 = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499])  
trigger2 = movecontact

;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

;====================== SOCO DE IMPACTO(eu sei eu sei....podia ter pensado em unome melhor...)
;---------------------------------------------------------------------(FORTE)
[State -1]
type = ChangeState
value = 1505
triggerall = command = "impacto_y"
trigger1 = statetype != A && ctrl
trigger2 = Var(6) = [1,5]
trigger2 = (stateno = [200,205]) || stateno = 215 || stateno = 225 || stateno = 235
trigger3 = Var(6) = [1,5]
trigger3 = stateno = 300 || stateno = [400,420]

;====================== SOCO DE IMPACTO(eu sei eu sei....podia ter pensado em unome melhor...)
;---------------------------------------------------------------------(FRACO)
[State -1]
type = ChangeState
value = 1500
triggerall = command = "impacto_x"
trigger1 = statetype != A && ctrl
trigger2 = Var(6) = [1,5]
trigger2 = (stateno = [200,205]) || stateno = 215 || stateno = 225 || stateno = 235
trigger3 = Var(6) = [1,5]
trigger3 = stateno = 300 || stateno = [400,420]

;===========================================================================
;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ ESPADA DE FOGO B
[State -1]
type = ChangeState
value = 1401
triggerall = command = "fogo_b"
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = [200, 450]
trigger2 = movecontact = 1
;===========================================================================
;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ ESPADA DE FOGO A
[State -1]
type = ChangeState
value = 1400
triggerall = command = "fogo_a"
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = [200, 450]
trigger2 = movecontact = 1
;===========================================================================
;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ PAREDE B
[State -1]
type = ChangeState
value = 1301
triggerall = command = "parede_b"
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = [200, 450]
trigger2 = movecontact = 1
;===========================================================================
;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ PAREDE A
[State -1]
type = ChangeState
value = 1300
triggerall = command = "parede_a"
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = [200, 450]
trigger2 = movecontact = 1
;===========================================================================
;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ FLEXA FORTE AIR
[State -1]
type = ChangeState
value = 1201
triggerall = command = "arco_baixo_y"
triggerall = numproj = 0
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = stateno = 600   
trigger2 = movecontact = 1

;===========================================================================
;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ FLEXA FRACA AIR
[State -1]
type = ChangeState
value = 1200
triggerall = command = "arco_baixo_x"
triggerall = numproj = 0
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = stateno = 600   
trigger2 = movecontact = 1
;===========================================================================
;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ FLEXA FORTE ALTA
[State -1]
type = ChangeState
value = 1101
triggerall = command = "arco_alto_y"
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = [200, 450]
trigger2 = movecontact = 1
;===========================================================================
;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ FLEXA FRACA ALTA
[State -1]
type = ChangeState
value = 1100
triggerall = command = "arco_alto_x"
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = [200, 450]
trigger2 = movecontact = 1

;===========================================================================
;===========================================================================
;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ FLEXA FORTE RETA
[State -1]
type = ChangeState
value = 1001
triggerall = command = "arco_reto_y"
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = [200, 450]
trigger2 = movecontact = 1
;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ FLEXA FRACA RETA
[State -1]
type = ChangeState
value = 1000
triggerall = command = "arco_reto_x"
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = [200, 450]
trigger2 = movecontact = 1

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;rolando
[State -1, rolando]
type = ChangeState
value = 103
trigger1 = command = "recovery"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Kung Fu Throw
;“Š‚°
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H


;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch

[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (StateNo = 210 || Stateno = 230 || Stateno = 240) && (Movecontact)


;---------------------------------------------------------------------------
;Stand Strong Punch

[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (StateNo = 200 || StateNo = 230 || Stateno = 240) && (Movecontact)



;---------------------------------------------------------------------------
;Stand Light Kick

[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (StateNo = 200 || Stateno = 210 || Stateno = 240) && (Movecontact)


;---------------------------------------------------------------------------
;Standing Strong Kick

[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (StateNo = 200 || StateNo = 210 || StateNo = 230) && (Movecontact)


;---------------------------------------------------------------------------
;Taunt
;’§”­
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = (StateNo = 410 || Stateno = 430 || Stateno = 440) && (Movecontact)
;---------------------------------------------------------------------------
;Crouching Strong Punch

[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = (StateNo = 400 || StateNo = 430 || Stateno = 440) && (Movecontact)

;---------------------------------------------------------------------------
;Crouching Light Kick

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = (StateNo = 400 || Stateno = 410 || Stateno = 440) && (Movecontact)

;---------------------------------------------------------------------------
;Crouching Strong Kick

[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = (StateNo = 400 || StateNo = 410 || StateNo = 430) && (Movecontact)
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;++++++++++++++++++++++++++++++++++++++++++++++ AIR COMBOS ========= SOCO FRACO
[State -1]
type = ChangeState
value = 600
trigger1 = command = "x"             
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;++++++++++++++++++++++++++++++++++++++++++++++ AIR COMBOS ========= SOCO FORTE
[State -1]
type = ChangeState
value = 610
trigger1 = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 = movecontact = 1
trigger2 = p2statetype = A


;---------------------------------------------------------------------------
;++++++++++++++++++++++++++++++++++++++++++++++ AIR COMBOS ========= CHUTE FRACO
[State -1]
type = ChangeState
value = 630
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 = movecontact = 1
trigger2 = p2statetype = A
trigger3 = stateno = 610
trigger3 = movecontact = 1
trigger3 = p2statetype = A


;---------------------------------------------------------------------------
;++++++++++++++++++++++++++++++++++++++++++++++ AIR COMBOS ========= CHUTE FORTE
[State -1]
type = ChangeState
value = 640
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 = movecontact = 1
trigger2 = p2statetype = A
trigger3 = stateno = 610
trigger3 = movecontact = 1
trigger3 = p2statetype = A
trigger4 = stateno = 630
trigger4 = movecontact = 1
trigger4 = p2statetype = A




