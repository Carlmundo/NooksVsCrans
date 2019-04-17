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

;-| Special Motions |------------------------------------------------------
[Command]
name = "Hyper 1"
command = D, DF, F, a
time = 1001

[Command]
name = "Hyper 1"
command = D, DF, F, b
time = 1001

[Command]
name = "Hyper 2"
command = D, DF, F, c
time = 30

name = "Hyper 2"
command = D, DF, F, x
time = 30

[Command]
name = "Hyper 3"
command = D, DF, F, y
time = 30

[Command]
name = "Hyper 3"
command = D, DF, F, z
time = 30

[Command]
name = "Hyper 4"
command = D, DF, F, a+b
time = 30

[Command]
name = "Hyper 4"
command = D, DF, F, a+x
time = 30

[Command]
name = "Hyper 1"
command = D, DB, B, a
time = 1001

[Command]
name = "Hyper 1"
command = D, DB, B, b
time = 1001

[Command]
name = "Hyper 2"
command = D, DB, B, c
time = 30

[Command]
name = "Hyper 2"
command = D, DB, B, x
time = 30

[Command]
name = "Hyper 3"
command = D, DB, B, y
time = 30

[Command]
name = "Hyper 3"
command = D, DB, B, z
time = 30

[Command]
name = "Hyper 4"
command = D, DB, B, a+b
time = 30

[Command]
name = "Hyper 4"
command = D, DB, B, a+x
time = 30

[Command]
name = "Hyper 1"
command = D, DB, F, a
time = 1001

[Command]
name = "Hyper 1"
command = D, DB, F, b
time = 1001

[Command]
name = "Hyper 2"
command = D, DB, F, c
time = 30

[Command]
name = "Hyper 2"
command = D, DB, F, x
time = 30

[Command]
name = "Hyper 3"
command = D, DB, F, y
time = 30

[Command]
name = "Hyper 3"
command = D, DB, F, z
time = 30

[Command]
name = "Hyper 4"
command = D, DB, F, a+b
time = 30

[Command]
name = "Hyper 4"
command = D, DB, F, a+x
time = 30

[Command]
name = "Hyper 1"
command = D, DF, B, a
time = 1001

[Command]
name = "Hyper 1"
command = D, DF, B, b
time = 1001

[Command]
name = "Hyper 2"
command = D, DF, B, c
time = 30

[Command]
name = "Hyper 2"
command = D, DF, B, x
time = 30

[Command]
name = "Hyper 3"
command = D, DF, B, y
time = 30

[Command]
name = "Hyper 3"
command = D, DF, B, z
time = 30

[Command]
name = "Hyper 4"
command = D, DF, B, a+b
time = 30

[Command]
name = "Hyper 4"
command = D, DF, B, a+x
time = 30

[Command]
name = "Hyper 1"
command = B, F, a
time = 1001

[Command]
name = "Hyper 1"
command = B, F, b
time = 1001

[Command]
name = "Hyper 2"
command = B, F, c
time = 30

[Command]
name = "Hyper 2"
command = B, F, x
time = 30

[Command]
name = "Hyper 3"
command = B, F, y
time = 30

[Command]
name = "Hyper 3"
command = B, F, z
time = 30

[Command]
name = "Hyper 4"
command = B, F, a+b
time = 30

[Command]
name = "Hyper 4"
command = B, F, a+x
time = 30

[Command]
name = "Hyper 1"
command = D, DF, F, B, a
time = 1001

[Command]
name = "Hyper 1"
command = D, DF, F, B, b
time = 1001

[Command]
name = "Hyper 2"
command = D, DF, F, B, c
time = 30

name = "Hyper 2"
command = D, DF, F, B, x
time = 30

[Command]
name = "Hyper 3"
command = D, DF, F, B, y
time = 30

[Command]
name = "Hyper 3"
command = D, DF, F, B, z
time = 30

[Command]
name = "Hyper 4"
command = D, DF, F, B, a+b
time = 30

[Command]
name = "Hyper 4"
command = D, DF, F, B, a+x
time = 30

[Command]
name = "Hyper 1"
command = D, DF, F, D, a
time = 1001

[Command]
name = "Hyper 1"
command = D, DF, F, D, b
time = 1001

[Command]
name = "Hyper 2"
command = D, DF, F, D, c
time = 30

[Command]
name = "Hyper 2"
command = D, DF, F, D, x
time = 30

[Command]
name = "Hyper 3"
command = D, DF, F, D, y
time = 30

[Command]
name = "Hyper 3"
command = D, DF, F, D, z
time = 30

[Command]
name = "Hyper 4"
command = D, DF, F, D, a+b
time = 30

[Command]
name = "Hyper 4"
command = D, DF, F, D, a+x
time = 30

[Command]
name = "Hyper 1"
command = D, DB, B, D, a
time = 1001

[Command]
name = "Hyper 1"
command = D, DB, B, D, b
time = 1001

[Command]
name = "Hyper 2"
command = D, DB, B, D, c
time = 30

[Command]
name = "Hyper 2"
command = D, DB, B, D, x
time = 30

[Command]
name = "Hyper 3"
command = D, DB, B, D, y
time = 30

[Command]
name = "Hyper 3"
command = D, DB, B, D, z
time = 30

[Command]
name = "Hyper 4"
command = D, DB, B, D, a+b
time = 30

[Command]
name = "Hyper 4"
command = D, DB, B, D, a+x
time = 30

[Command]
name = "Hyper 1"
command = D, DB, F, D, a
time = 1001

[Command]
name = "Hyper 1"
command = D, DB, F, D, b
time = 1001

[Command]
name = "Hyper 2"
command = D, DB, F, D, c
time = 30

[Command]
name = "Hyper 2"
command = D, DB, F, D, x
time = 30

[Command]
name = "Hyper 3"
command = D, DB, F, D, y
time = 30

[Command]
name = "Hyper 3"
command = D, DB, F, D, z
time = 30

[Command]
name = "Hyper 4"
command = D, DB, F, D, a+b
time = 30

[Command]
name = "Hyper 4"
command = D, DB, F, D, a+x
time = 30

[Command]
name = "Hyper 1"
command = D, DF, B, D, a
time = 1001

[Command]
name = "Hyper 1"
command = D, DF, B, D, b
time = 1001

[Command]
name = "Hyper 2"
command = D, DF, B, D, c
time = 30

[Command]
name = "Hyper 2"
command = D, DF, B, D, x
time = 30

[Command]
name = "Hyper 3"
command = D, DF, B, D, y
time = 30

[Command]
name = "Hyper 3"
command = D, DF, B, D, z
time = 30

[Command]
name = "Hyper 4"
command = D, DF, B, D, a+b
time = 30

[Command]
name = "Hyper 4"
command = D, DF, B, D, a+x
time = 30

[Command]
name = "Hyper 1"
command = D, DF, F, DF, a
time = 1001

[Command]
name = "Hyper 1"
command = D, DF, F, DF, b
time = 1001

[Command]
name = "Hyper 2"
command = D, DF, F, DF, c
time = 30

[Command]
name = "Hyper 2"
command = D, DF, F, DF, x
time = 30

[Command]
name = "Hyper 3"
command = D, DF, F, DF, y
time = 30

[Command]
name = "Hyper 3"
command = D, DF, F, DF, z
time = 30

[Command]
name = "Hyper 4"
command = D, DF, F, DF, a+b
time = 30

[Command]
name = "Hyper 4"
command = D, DF, F, DF, a+x
time = 30

[Command]
name = "Hyper 1"
command = D, DB, B, DB, a
time = 1001

[Command]
name = "Hyper 1"
command = D, DB, B, DB, b
time = 1001

[Command]
name = "Hyper 2"
command = D, DB, B, DB, c
time = 30

name = "Hyper 2"
command = D, DB, B, DB, x
time = 30

[Command]
name = "Hyper 3"
command = D, DB, B, DB, y
time = 30

[Command]
name = "Hyper 3"
command = D, DB, B, DB, z
time = 30

[Command]
name = "Hyper 4"
command = D, DB, B, DB, a+b
time = 30

[Command]
name = "Hyper 4"
command = D, DB, B, DB, a+x
time = 30

[Command]
name = "Hyper 1"
command = D, DB, F, DF, a
time = 1001

[Command]
name = "Hyper 1"
command = D, DB, F, DF, b
time = 1001

[Command]
name = "Hyper 2"
command = D, DB, F, DF, c
time = 30

name = "Hyper 2"
command = D, DB, F, DF, x
time = 30

[Command]
name = "Hyper 3"
command = D, DB, F, DF, y
time = 30

[Command]
name = "Hyper 3"
command = D, DB, F, DF, z
time = 30

[Command]
name = "Hyper 4"
command = D, DB, F, DF, a+b
time = 30

[Command]
name = "Hyper 4"
command = D, DB, F, DF, a+x
time = 30

[Command]
name = "Hyper 1"
command = D, DF, B, DB, a
time = 1001

[Command]
name = "Hyper 1"
command = D, DF, B, DB, b
time = 1001

[Command]
name = "Hyper 2"
command = D, DF, B, DB, c
time = 30

[Command]
name = "Hyper 2"
command = D, DF, B, DB, x
time = 30

[Command]
name = "Hyper 3"
command = D, DF, B, DB, y
time = 30

[Command]
name = "Hyper 3"
command = D, DF, B, DB, z
time = 30

[Command]
name = "Hyper 4"
command = D, DF, B, DB, a+b
time = 30

[Command]
name = "Hyper 4"
command = D, DF, B, DB, a+x
time = 30

[Command]
name = "Hyper 1"
command = B, F, DF, a
time = 1001

[Command]
name = "Hyper 1"
command = B, F, DF, b
time = 1001

[Command]
name = "Hyper 2"
command = B, F, DF, c
time = 30

[Command]
name = "Hyper 2"
command = B, F, DF, x
time = 30

[Command]
name = "Hyper 3"
command = B, F, DF, y
time = 30

[Command]
name = "Hyper 3"
command = B, F, DF, z
time = 30

[Command]
name = "Hyper 4"
command = B, F, DF, a+b
time = 30

[Command]
name = "Hyper 4"
command = B, F, DF, a+x
time = 30

[Command]
name = "Hyper 1"
command = D, DF, F, B, DB, a
time = 1001

[Command]
name = "Hyper 1"
command = D, DF, F, B, DB, b
time = 1001

[Command]
name = "Hyper 2"
command = D, DF, F, B, DB, c
time = 30

[Command]
name = "Hyper 2"
command = D, DF, F, B, DB, x
time = 30

[Command]
name = "Hyper 3"
command = D, DF, F, B, DB, y
time = 30

[Command]
name = "Hyper 3"
command = D, DF, F, B, DB, z
time = 30

[Command]
name = "Hyper 4"
command = D, DF, F, B, DB, a+b
time = 30

[Command]
name = "Hyper 4"
command = D, DF, F, B, DB, a+x
time = 30

[Command]
name = "Hyper 1"
command = D, DF, F, D, DB, a
time = 1001

[Command]
name = "Hyper 1"
command = D, DF, F, D, DB, b
time = 1001

[Command]
name = "Hyper 2"
command = D, DF, F, D, DB, c
time = 30

[Command]
name = "Hyper 2"
command = D, DF, F, D, DB, x
time = 30

[Command]
name = "Hyper 3"
command = D, DF, F, D, DB, y
time = 30

[Command]
name = "Hyper 3"
command = D, DF, F, D, DB, z
time = 30

[Command]
name = "Hyper 4"
command = D, DF, F, D, DB, a+b
time = 30

[Command]
name = "Hyper 4"
command = D, DF, F, D, DB, a+x
time = 30

[Command]
name = "Hyper 1"
command = D, DB, B, D, DF, a
time = 1001

[Command]
name = "Hyper 1"
command =  D, DB, B, D, DF, b
time = 1001

[Command]
name = "Hyper 2"
command =  D, DB, B, D, DF, c
time = 30

name = "Hyper 2"
command =  D, DB, B, D, DF, x
time = 30

[Command]
name = "Hyper 3"
command =  D, DB, B, D, DF, y
time = 30

[Command]
name = "Hyper 3"
command =  D, DB, B, D, DF, z
time = 30

[Command]
name = "Hyper 4"
command =  D, DB, B, D, DF, a+b
time = 30

[Command]
name = "Hyper 4"
command =  D, DB, B, D, DF, a+x
time = 30

[Command]
name = "Hyper 1"
command = D, DB, F, D, DB, a
time = 1001

[Command]
name = "Hyper 1"
command = D, DB, F, D, DB, b
time = 1001

[Command]
name = "Hyper 2"
command = D, DB, F, D, DB, c
time = 30

[Command]
name = "Hyper 2"
command = D, DB, F, D, DB, x
time = 30

[Command]
name = "Hyper 3"
command = D, DB, F, D, DB, y
time = 30

[Command]
name = "Hyper 3"
command = D, DB, F, D, DB, z
time = 30

[Command]
name = "Hyper 4"
command = D, DB, F, D, DB, a+b
time = 30

[Command]
name = "Hyper 4"
command = D, DB, F, D, DB, a+x
time = 30

[Command]
name = "Hyper 1"
command = D, DF, B, D, DF, F, a
time = 1001

[Command]
name = "Hyper 1"
command = D, DF, B, D, DF, F, b
time = 1001

[Command]
name = "Hyper 2"
command = D, DF, B, D, DF, F, c
time = 30

[Command]
name = "Hyper 2"
command = D, DF, B, D, DF, F, x
time = 30

[Command]
name = "Hyper 3"
command = D, DF, B, D, DF, F, y
time = 30

[Command]
name = "Hyper 3"
command = D, DF, B, D, DF, F, z
time = 30

[Command]
name = "Hyper 4"
command = D, DF, B, D, DF, F, a+b
time = 30

[Command]
name = "Hyper 4"
command = D, DF, B, D, DF, F, a+x
time = 30

[Command]
name = "Hyper 1"
command = D, DF, F, DF, U, a
time = 1001

[Command]
name = "Hyper 1"
command = D, DF, F, DF, U, b
time = 1001

[Command]
name = "Hyper 2"
command = D, DF, F, DF, U, c
time = 30

[Command]
name = "Hyper 2"
command = D, DF, F, DF, U, x
time = 30

[Command]
name = "Hyper 3"
command = D, DF, F, DF, U, y
time = 30

[Command]
name = "Hyper 3"
command = D, DF, F, DF, U, z
time = 30

[Command]
name = "Hyper 4"
command = D, DF, F, DF, U, a+b
time = 30

[Command]
name = "Hyper 4"
command = D, DF, F, DF, U, a+x
time = 30

[Command]
name = "Hyper 1"
command = D, DB, B, DB, U, a
time = 1001

[Command]
name = "Hyper 1"
command = D, DB, B, DB, U, b
time = 1001

[Command]
name = "Hyper 2"
command = D, DB, B, DB, U, c
time = 30

name = "Hyper 2"
command = D, DB, B, DB, U, x
time = 30

[Command]
name = "Hyper 3"
command = D, DB, B, DB, U, y
time = 30

[Command]
name = "Hyper 3"
command = D, DB, B, DB, U, z
time = 30

[Command]
name = "Hyper 4"
command = D, DB, B, DB, U, a+b
time = 30

[Command]
name = "Hyper 4"
command = D, DB, B, DB, U, a+x
time = 30

[Command]
name = "Hyper 1"
command = D, DB, F, DF, U, a
time = 1001

[Command]
name = "Hyper 1"
command = D, DB, F, DF, U, b
time = 1001

[Command]
name = "Hyper 2"
command = D, DB, F, DF, U, c
time = 30

name = "Hyper 2"
command = D, DB, F, DF, U, x
time = 30

[Command]
name = "Hyper 3"
command = D, DB, F, DF, U, y
time = 30

[Command]
name = "Hyper 3"
command = D, DB, F, DF, U, z
time = 30

[Command]
name = "Hyper 4"
command = D, DB, F, DF, U, a+b
time = 30

[Command]
name = "Hyper 4"
command = D, DB, F, DF, U, a+x
time = 30

[Command]
name = "Hyper 1"
command = D, DF, B, DB, U, a
time = 1001

[Command]
name = "Hyper 1"
command = D, DF, B, DB, U, b
time = 1001

[Command]
name = "Hyper 2"
command = D, DF, B, DB, U, c
time = 30

[Command]
name = "Hyper 2"
command = D, DF, B, DB, U, x
time = 30

[Command]
name = "Hyper 3"
command = D, DF, B, DB, U, y
time = 30

[Command]
name = "Hyper 3"
command = D, DF, B, DB, U, z
time = 30

[Command]
name = "Hyper 4"
command = D, DF, B, DB, U, a+b
time = 30

[Command]
name = "Hyper 4"
command = D, DF, B, DB, U, a+x
time = 30

[Command]
name = "Hyper 1"
command = B, F, DF, U, a
time = 1001

[Command]
name = "Hyper 1"
command = B, F, DF, U, b
time = 1001

[Command]
name = "Hyper 2"
command = B, F, DF, U, c
time = 30

[Command]
name = "Hyper 2"
command = B, F, DF, U, x
time = 30

[Command]
name = "Hyper 3"
command = B, F, DF, U, y
time = 30

[Command]
name = "Hyper 3"
command = B, F, DF, U, z
time = 30

[Command]
name = "Hyper 4"
command = B, F, DF, U, a+b
time = 30

[Command]
name = "Hyper 4"
command = B, F, DF, U, a+x
time = 30

[Command]
name = "Hyper 1"
command = D, DF, F, B, DB, U, a
time = 1001

[Command]
name = "Hyper 1"
command = D, DF, F, B, DB, U, b
time = 1001

[Command]
name = "Hyper 2"
command = D, DF, F, B, DB, U, c
time = 30

[Command]
name = "Hyper 2"
command = D, DF, F, B, DB, U, x
time = 30

[Command]
name = "Hyper 3"
command = D, DF, F, B, DB, U, y
time = 30

[Command]
name = "Hyper 3"
command = D, DF, F, B, DB, U, z
time = 30

[Command]
name = "Hyper 4"
command = D, DF, F, B, DB, U, a+b
time = 30

[Command]
name = "Hyper 4"
command = D, DF, F, B, DB, U, a+x
time = 30

[Command]
name = "Hyper 1"
command = D, DF, F, D, DB, U, a
time = 1001

[Command]
name = "Hyper 1"
command = D, DF, F, D, DB, U, b
time = 1001

[Command]
name = "Hyper 2"
command = D, DF, F, D, DB, U, c
time = 30

[Command]
name = "Hyper 2"
command = D, DF, F, D, DB, U, x
time = 30

[Command]
name = "Hyper 3"
command = D, DF, F, D, DB, U, y
time = 30

[Command]
name = "Hyper 3"
command = D, DF, F, D, DB, U, z
time = 30

[Command]
name = "Hyper 4"
command = D, DF, F, D, DB, U, a+b
time = 30

[Command]
name = "Hyper 4"
command = D, DF, F, D, DB, U, a+x
time = 30

[Command]
name = "Hyper 1"
command = D, DB, B, D, DF, U, a
time = 1001

[Command]
name = "Hyper 1"
command =  D, DB, B, D, DF, U, b
time = 1001

[Command]
name = "Hyper 2"
command =  D, DB, B, D, DF, U, c
time = 30

name = "Hyper 2"
command =  D, DB, B, D, DF, U, x
time = 30

[Command]
name = "Hyper 3"
command =  D, DB, B, D, DF, U, y
time = 30

[Command]
name = "Hyper 3"
command =  D, DB, B, D, DF, U, z
time = 30

[Command]
name = "Hyper 4"
command =  D, DB, B, D, DF, U, a+b
time = 30

[Command]
name = "Hyper 4"
command =  D, DB, B, D, DF, U, a+x
time = 30

[Command]
name = "Hyper 1"
command = D, DB, F, D, DB, U, a
time = 1001

[Command]
name = "Hyper 1"
command = D, DB, F, D, DB, U, b
time = 1001

[Command]
name = "Hyper 2"
command = D, DB, F, D, DB, U, c
time = 30

[Command]
name = "Hyper 2"
command = D, DB, F, D, DB, U, x
time = 30

[Command]
name = "Hyper 3"
command = D, DB, F, D, DB, U, y
time = 30

[Command]
name = "Hyper 3"
command = D, DB, F, D, DB, U, z
time = 30

[Command]
name = "Hyper 4"
command = D, DB, F, D, DB, U, a+b
time = 30

[Command]
name = "Hyper 4"
command = D, DB, F, D, DB, U, a+x
time = 30

[Command]
name = "Hyper 1"
command = D, DF, B, D, DF, F, U, a
time = 1001

[Command]
name = "Hyper 1"
command = D, DF, B, D, DF, F, U, b
time = 1001

[Command]
name = "Hyper 2"
command = D, DF, B, D, DF, F, U, c
time = 30

[Command]
name = "Hyper 2"
command = D, DF, B, D, DF, F, U, x
time = 30

[Command]
name = "Hyper 3"
command = D, DF, B, D, DF, F, U, y
time = 30

[Command]
name = "Hyper 3"
command = D, DF, B, D, DF, F, U, z
time = 30

[Command]
name = "Hyper 4"
command = D, DF, B, D, DF, F, U, a+b
time = 30

[Command]
name = "Hyper 4"
command = D, DF, B, D, DF, F, U, a+x
time = 30

[Command]
name = "Power ReCharge"
command = D, DF, F, B, F, B, a
time = 1001

[Command]
name = "Power ReCharge"
command = D, DF, F, B, F, B, F, b
time = 1001

[Command]
name = "Power ReCharge"
command = D, DF, F, B, F, B, F, B, c
time = 30

name = "Power ReCharge"
command = D, DF, F, B, F, B, F, B, F, x
time = 30

[Command]
name = "Power ReCharge"
command = D, DF, F, B, F, B, F, B, F, B, y
time = 30

[Command]
name = "Power ReCharge"
command = D, DF, F, B, F, B, F, B, F, B, F, z
time = 30

[Command]
name = "Power ReCharge"
command = D, DF, F, B, F, B, F, B, F, B, F, B, a+b
time = 30

[Command]
name = "Power ReCharge"
command = D, DF, F, B, F, B, F, B, F, B, F, B, F, a+x
time = 30

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 1

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 1

;-| 2/3 Button Combination |-----------------------------------------------
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
name = "a+c"
command = a+c
time = 1

[Command]
name = "fwd_a+c"
command = /$F,a+c
time = 1

[Command]
name = "back_a+c"
command = /$B,a+c
time = 1

[Command]
name = "y+z"
command = y+z
time = 1

[Command]
name = "fwd_y+z"
command = /$F,y+z
time = 1

[Command]
name = "back_y+z"
command = /$B,y+z
time = 1

[Command]
name = "a+x"
command = a+x
time = 1

[Command]
name = "Power ReCharge"
command = b+z
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
name = "S-Jump"
command = $D,~$D, $U

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

;===========================================================================
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Super Jump
[State -1, Super Jump]
type = ChangeState
value = 5400
triggerall = statetype != A
triggerall = var(59) <= 0
triggerall = ctrl
triggerall = command = "S-Jump"
trigger1 = stateno != 11 && stateno != 12
trigger2 = stateno = 12
trigger2 = prevstateno = 10
trigger3 = stateno = [130,131]

;---------------------------------------------------------------------------
; Combo
[State -1, Combo]
type = ChangeState
value = 5400
triggerall = statetype != S
triggerall = var(59) <= 0
triggerall = movehit
trigger1 = stateno = 200
trigger2 = stateno = 400 || stateno = 400 || stateno = 410 || stateno = 240 || stateno = 240 || stateno = 900
trigger2 = command = "S-Jump"

;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(59) <= 0
triggerall = command = "Power ReCharge"
trigger1 = statetype != S
trigger1 = ctrl
trigger2 = p2bodydist X = Random
trigger2 = p2statetype = S

;---------------------------------------------------------------------------
; Taunt (Air)
[State -1, Taunt (Air)]
type = ChangeState
value = 196
triggerall = var(59) <= 0
triggerall = command = "Power ReCharge"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = p2bodydist X = Random
trigger2 = p2statetype = A

;---------------------------------------------------------------------------
; Throw Air
[State -1, Throw Air]
type = ChangeState
value = 700
triggerall = statetype = A
triggerall = ctrl
trigger1 = command = "fwd_a+c"  ;Command
trigger2 = command = "back_a+c" ;Command
trigger3 = command = "fwd_a+c"   ;Near, p2 stand
trigger3 = stateno != 100    ;Not running
trigger3 = p2bodydist X < 3
trigger3 = p2statetype = A
trigger3 = p2movetype != H
trigger4 = command = "fwd_a+c"   ;Near, p2 crouch
trigger4 = stateno != 100    ;Not running
trigger4 = p2bodydist X < 3
trigger4 = p2statetype = A
trigger4 = p2movetype != H
trigger5 = command = "back_a+c"  ;Near, p2 stand
trigger5 = p2bodydist X < 5
trigger5 = p2statetype = A
trigger5 = p2movetype != H
trigger6 = command = "back_a+c"  ;Near, p2 crouch
trigger6 = p2bodydist X < 5
trigger6 = p2statetype = A
trigger6 = p2movetype != H

;---------------------------------------------------------------------------
; Throw Air(alt)
[State -1, Throw Air(alt)]
type = ChangeState
value = 700
triggerall = statetype = A
triggerall = ctrl
trigger1 = command = "a+c"  ;Command
trigger2 = command = "a+c" ;Command
trigger3 = command = "a+c"   ;Near, p2 stand
trigger3 = stateno != 100    ;Not running
trigger3 = p2bodydist X < 3
trigger3 = p2statetype = A
trigger3 = p2movetype != H
trigger4 = command = "a+c"   ;Near, p2 crouch
trigger4 = stateno != 100    ;Not running
trigger4 = p2bodydist X < 3
trigger4 = p2statetype = A
trigger4 = p2movetype != H
trigger5 = command = "a+c"  ;Near, p2 stand
trigger5 = p2bodydist X < 5
trigger5 = p2statetype = A
trigger5 = p2movetype != H
trigger6 = command = "a+c"  ;Near, p2 crouch
trigger6 = p2bodydist X < 5
trigger6 = p2statetype = A
trigger6 = p2movetype != H
;---------------------------------------------------------------------------
; Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "fwd_a+c"  ;Command
trigger2 = command = "back_a+c" ;Command
trigger3 = command = "fwd_a+c"   ;Near, p2 stand
trigger3 = stateno != 100    ;Not running
trigger3 = p2bodydist X < 3
trigger3 = p2statetype = S
trigger3 = p2movetype != H
trigger4 = command = "fwd_a+c"   ;Near, p2 crouch
trigger4 = stateno != 100    ;Not running
trigger4 = p2bodydist X < 3
trigger4 = p2statetype = C
trigger4 = p2movetype != H
trigger5 = command = "back_a+c"  ;Near, p2 stand
trigger5 = p2bodydist X < 5
trigger5 = p2statetype = S
trigger5 = p2movetype != H
trigger6 = command = "back_a+c"  ;Near, p2 crouch
trigger6 = p2bodydist X < 5
trigger6 = p2statetype = C
trigger6 = p2movetype != H


;---------------------------------------------------------------------------
; Throw(alt)
[State -1, Throw(alt)]
type = ChangeState
value = 800
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "a+c"  ;Command
trigger2 = command = "a+c" ;Command
trigger3 = command = "a+c"   ;Near, p2 stand
trigger3 = stateno != 100    ;Not running
trigger3 = p2bodydist X < 3
trigger3 = p2statetype = S
trigger3 = p2movetype != H
trigger4 = command = "a+c"   ;Near, p2 crouch
trigger4 = stateno != 100    ;Not running
trigger4 = p2bodydist X < 3
trigger4 = p2statetype = C
trigger4 = p2movetype != H
trigger5 = command = "a+c"  ;Near, p2 stand
trigger5 = p2bodydist X < 5
trigger5 = p2statetype = S
trigger5 = p2movetype != H
trigger6 = command = "a+c"  ;Near, p2 crouch
trigger6 = p2bodydist X < 5
trigger6 = p2statetype = C
trigger6 = p2movetype != H

;===========================================================================
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Evade
[State -1, Evade]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Light Shooting Stance
[State -1, Light Shooting Stance]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Standing Monster Summon
[State -1, Standing Monster Summon]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Heavy Shooting Stance
[State -1, Heavy Shooting Stance]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Light Shooting Stance
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Monster Summon
[State -1, Crouching Monster Summon]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Heavy Shooting Stance
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Evade Air
[State -1, Evade Air]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Shooting Stance
[State -1, Jump Light Shooting Stance]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jumping Monster Summon
[State -1, Jumping Monster Summon]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Heavy Shooting Stance
[State -1, Jump Heavy Shooting Stance]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Hyper 1
[State -1, Hyper 1]
type = ChangeState
value = 900
triggerall = var(59) <= 0
triggerall = Command = "Hyper 1"
trigger1 = (power >= 6000)
trigger1 = statetype = S

;---------------------------------------------------------------------------
; Hyper 2
[State -1, Hyper 2]
type = ChangeState
value = 905
triggerall = var(59) <= 0
triggerall = Command = "Hyper 2"
trigger1 = (power >= 1000)
trigger1 = statetype = S

;---------------------------------------------------------------------------
; Hyper 2
[State -1, Hyper 2]
type = ChangeState
value = 906
triggerall = var(59) <= 0
triggerall = Command = "Hyper 2"
trigger1 = (power >= 1000)
trigger1 = statetype = A

;---------------------------------------------------------------------------
; Hyper 3
[State -1, Hyper 3]
type = ChangeState
value = 910
triggerall = var(59) <= 0
triggerall = statetype = S
triggerall = (power = 9000)
trigger1 = Command = "Hyper 3"
trigger2 = p2bodydist X < 1
trigger2 = p2statetype = S
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
; Hyper 4
[State -1, Hyper 4]
type = ChangeState
value = 920
triggerall = var(59) <= 0
triggerall = Command = "Hyper 4"
trigger1 = (power >= 4500)
trigger1 = statetype = S
