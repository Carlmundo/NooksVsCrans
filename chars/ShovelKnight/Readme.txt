SHOVEL KNIGHT DIGS IN!

Shovel Knight from the Shovel Knight Series!

Shovel Knight is a main protagonist of the series with a same name. He is a chivalrous knight who wears his light, shining blue armor, and
his mission is to stop the Enchantress and find his lost love Shield Knight. He uses his Shovel Blade and the Relics to aid him in his journey,
and solves many challenging puzzles, going from lair to lair of the Order of No Quarter, showing his great intelligence and strength. 
Shovel Knight is a shining example of the code of Shovelry: Slash Mercilessly and Dig Tirelessly! 


Update Log:
---------------------------------------------------------------------------

10/08/2018
--------------
-Reduced CtrlSet time by 5% for the Rising Shovel special. Same goes for AoC Rising Shovel, and TG Rising Shovel

10/06/2018
--------------
-Updated AI
-Updated readme
-Fishing Rod and EX Jump Slash are now count as Combo Extenders
-Increased recovery time to 200% for the EX Helper from Fishing Rod and EX Jump Slash to prevent infinites in a combo
-Increased Y velocity to 2% for EX Jump Slash
-Added NotHitBy SCTRL for Enchantress. She will not be thrown out

09/15/2018
--------------
-Updated readme with updated credits, and added Rare's Killer Instinct
-Fixed typo from victory quote #13
-Fixed infinite from Standing Light Kick when timed perfectly while walking towards the opponent

08/18/2018
--------------
-ShovelKnight.cns now changed to ShovelKnight_Win.cns for ShovelKnight_Moderate.def, and ShovelKnight_Easy.def 

08/17/2018
--------------
-Added a new def file. ShovelKnight_Win.def for WinMUGEN users only
-Moved an update log to a readme
-Updated readme
-Updated sounds
-Updated the victory quotes, and added new ones based on Blade Strangers
-Updated the Azure Striker Gunvolt Hyper. Gunvolt will now summon the Luxcalibur attack

02/02/2018
--------------
-Fixed bugs from the PalFX SCTRLs where the Phase Locket invisibility's color turned back to normal after using one of his EX moves

01/27/2018
--------------
-Fixed bug from the Dodge ability where he got hit during the Phase Locket invisibility
-Added the SCTRLs (Trans and PlayerPush), no guard AssertSpecial, and updated PalFX for the Phase Locket invisibility from the Rockin' Relic special

01/07/2018
--------------
-Fixed some errors from the Win State Decider, including the one where the Armor of Chaos palette still uses the Battletoads win pose

12/25/2017
--------------
-Updated win state decider. The Armor of Chaos palette will not have a Battletoads win pose, but the normal palettes,
 including the Toad Gear palette will still have that win pose
-The Battletoads win pose will also be activated after the Special Guest Bonanza: Battletoads' Super Finish

12/24/2017
--------------
-Updated the sprites and animations for the Toad Gear palette, as well as the Battletoads helpers
-Added a new win pose
-Added more victory quotes, including special ones against various characters
-Increased Toad Gear Strong Punch's X velocity by 13%
-Increased Toad Gear Strong Kick's X velocity by 15%
-Adjusted the VelSet of the Kratos helper for the Special Guest Bonanza Hyper to make him properly connect his attacks with all hits when the opponent is far
-Fixed debug flood "Warning: Player Shovel Knight (56) in State 1100: Has No Helper 1505"
-Fixed debug flood "Warning: Player Shovel Knight (56/57) in State 0: Has No Helper 1505"
-Fixed debug "Warning: Player Shovel Knight (56) in State 6900: Changed To Invalid State 6900"

08/16/2017 (1)
--------------
-Shovel Knight can now be thrown out while doing a Dodge ability
-Repositioned an X pos to 20 for the Drop Spark helper where it misses p2 when up close

08/16/2017
--------------
-Updated readme as well as added the Parry, Crouching Parry, and Air Parry ability
-Updated AI to make him more aggresive for ShovelKnight.def
-Updated the WinKO helper by replacing roundno = 2 to matchover of the AssertSpecial SCTRL to prevent the music playing on the final round
-Added the Parry, Crouching Parry, and Air Parry ability
-Removed knockdown from Flare Wand's projectile as well as reduced the slidetime by 5% and hittime by 4%
-Fixed bug from the Rockin' Relic special where the Alchemy Coin gets thrown by using a medium punch
-Updated the Rockin' Relic special and added the Phase Locket relic, but it will cost 500 power
-A small command change for the Rockin' Relic special. Throwing Anchor can now be activated by pressing X instead of C 
-Fixed bug where he uses his idle animation instead of his death animation after he got frozen when knocked out
-Updated Statedef 5050 from his common1.cns where he falls almost under the ground when knocked out

02/25/2017
--------------
-Updated readme
-Changed -2.cns to config.txt. You can now change the value beside var(9) of the VarSet SCTRL for the Mail of Momentum Palette (Palno = 9).
 1 to enable Super Armor mode, 0 to disable back to normal mode.
-Fixed debug flood "Warning: Player Super Armor (58) in State 9000: Changed to Invalid Action" for the Mail of Momentum Palette

01/15/2017
--------------
-Added the Spinning sprites and animation (Up and Down, and Diagonal)
-Added the Spiral/Flip Knockout sprites and animation
-Updated the Toad Gear attacks with a Spiral/Flip Knockout Damage added for the Strong Punch and Kicks (except for the Crouching Strong Punch, and
 Air Strong Attacks), and the Battering Ram, TG Shovel Counter, and Wrecking Ball special

01/12/2017
--------------
-Fixed the power up sound from Statedef -3 to prevent such loud noise after the round starts when in Turns or Survival mode
-Adjusted the attacks of the Battletoads helpers for the Special Guest Bonanza Hyper to make them really connect their attacks with all hits to the opponent,
 depending on the distance of P2 to Shovel Knight or if P2 is near the sides of a stage

01/08/2017
--------------
-Updated the Charge Slash and Charge Flame state for the Dynamo Mail and the Armor of Chaos palette.
 The hypers will now disable the Charge Slash and Charge Flame ability
-Updated the Charge Slash state. Added 1 startup frame and the startup time of 7 for the Charge Slash released animation.
 Same goes for the Instant Charge Slash for the Dynamo Mail palette too
-Fixed error message for the Shovel Rage hyper: string value for name must be in quotes

01/05/2017
--------------
-Updated readme with Random Taunts, Text Taunts, and Instant Charge Slash (for the Dynamo Mail palette) added

01/04/2017 (1)
--------------
-Fixed typo on victory quote #8

01/04/2017
--------------
-Added all the hypers for ShovelKnight_Easy.cmd
-Updated the Charge Slash state for the Dynamo Mail palette. It will now be activated by pressing ANY attack button after two consecutive shovel drops
-Updated a palfx SCTRL for the Mail of Momentum palette to prevent the get hit palfx while in the Charge Slash state
-Added the screenbound SCTRL for the Special Guest Bonanza hyper where Kratos and the Battletoads' attacks didn't connect with all hits when the opponent is near
 the sides of a zoomed stage for 1.1
-A small Update of Kratos' attacks for the Special Guest Bonanza hyper

12/30/2016
--------------
-Adjusted the normal attacks to make the combo easier to perform

12/27/2016 (2)
--------------
-Text Taunt is now canceled when the opponent got knocked out
-Added hitflag = MAFD for the Dust Knuckles, War Horn, Enchantress, and the Battletoads Special Guest Bonanza Hyper 

12/27/2016 (1)
--------------
-Removed HA,NP,SP,HP from HitOvveride for the Shovel Counter special so that it can now be weak to projectiles and hypers

12/27/2016
--------------
-Updated the Normal and Text taunts. Text Taunts are now uncancelable to Normal Taunts
-Updated the opponent falling down in the hole animation for the Shovel Rage hyper
-Fixed a "Super Finish" state where p2 survives Shovel Rage and the next hit (used normal attacks) is a KO

12/26/2016 (1)
--------------
-Updated readme. "Requires 600 power" has been added to the Wicked Tongue special
-liedown.time reduced to 25
-Removed ownpal = 0 for the Dash Effect, and Dash Line from the running state to prevent the lag
-Updated matchover pose, removing a lifebar with time >= 580 of the AssertSpecial SCTRL
-Shovel Knight now has a special intro against Plague Knight
-Added the Text Taunt
-Arrenged the randon taunts state. The normal taunts (Rainbow Spit, Wolf Whistle, Annoying Laugh and Feign Death) on the taunt button and
 the text taunts on any direction + taunt
-The Text Taunt is now cancelable by controlling
-Fixed debug message "Player charge flame (133) in state 6201: has no helper 9901" for the Armor of Chaos palette
-Updated the Special Guest Bonanza hyper. The battletoads can now be selected when Kratos is there, and Kratos can now be selected when the Battletoads are there
-Fixed Debug message on the Special Guest Bonanza "Player no music and foreground (221) in state 3530: has no helper 3510"
-Updated the opponent falling down to the hole animation, and lowered his speed when he swooshes in to attack for the Shovel Rage hyper
 
12/26/2016
--------------
-fall.defence_up reduced to 0
-Fixed readme and added AoC Rising Shovel, AoC Shovel Counter, AoC Shovel Aether, TG Rising Shovel, TG Shovel Counter, and Wrecking Ball
 for the Armor of Chaos and Toad Gear palette in the readme

12/25/2016 (Full Version)
--------------
-First full release
-Updated readme
-Updated the Catch Shield Knight win pose. Shovel Knight will now jump to catch her
-Added a Tinker Knight win pose
-Added a lose pose
-Added 3 new intros
-Added 7 random taunts
-Added the special abilities for palettes 7 to 12
-Added the attacks for the Armor of Chaos and Toad Gear palettes
-Added the Charge Slash special
-Added a Fishing Rod special and a Wicked Tongue special for the Toad Gear palette
-Fixed a Propeller Knight helper where no assist can be summoned after he misses p2
-Fixed a Polar Knight helper where Polar Knight turns into Shovel Knight when get hit
-Fixed debug flood "In state 0: has no helper 3510" & "has no helper 3401" in almost every state
-Adjusted a Y velocity of the Enchantress hyper where she hovers very low if her initial attack hits p2 very low
-Updated the music for the Azure Striker Gunvolt and the Special Guest Bonanza hyper
-Updated the Kratos helper for the Special Guest Bonanza hyper. Same thing goes for the Battletoads
-Added the level 3 Shovel Rage hyper
-Added a Hyper KO
-Updated a knockdown state


11/30/2016 (Beta Version)
--------------
-First beta release


Patches
---------------------------------------------------------------------------
ShovelKnight                           (Hard AI, usable for 1.0/1.1 only)
ShovelKnight_Win                       (Hard AI, usable for WinMUGEN only)
ShovelKnight/ShovelKnight_Moderate.def (Normal AI, usable for both WinMUGEN, and 1.0/1.1)
ShovelKnight/ShovelKnight_Easy.def     (Easy AI, usable for both WinMUGEN, and 1.0/1.1)


Special Palettes: Select a special palette at the select screen
---------------------------------------------------------------------------
Final Guard:        Z (Drop one gold bag when you fall in battle!)
Conjurer's Coat:    Start+A (Power will fill up automatically, but it will drain power when hit! (Normals and Specials only))
Dynamo Mail:        Start+B (Perform two consecutive shovel drops and press any attack button for a powerful charge slash!)
Mail of Momentum:   Start+C (Super Armor Activated. Keep your footing when struck by an opponent, but stopping may be a problem!)
Ornate Plate:       Start+X (Flashy! Acrobatic! Useless!)
Armor of Chaos:     Start+Y (A plate of fiery fury. Collect orbs to fuel your rage! Kratos will only be summoned while performing
                             a Special Guest Bonanza hyper!)
Toad Gear:          Start+z (Brawl and use smash hits! Keep tapping a or x to unleash a toad-ally radical combo! The Battletoads
                             will only be summoned while performing a Special Guest Bonanza hyper!)

Abilites
---------------------------------------------------------------------------
Random Taunts:                    S
Text Taunts:                      Hold F/B/D, S

Dodge:                            F, a+b to dodge forward/B, a+b to dodge backwards
Recovery Roll:                    Hold F/B when knocked down

Parry:                            F (Before getting hit near an incoming standing/air attack)
Crouching Parry:                  D (Before getting hit near an incoming crouching/low attack
Air Parry:                        F while in air (Before getting hit near an incoming attack)

Super Jump:                       D, U (Useful for combos)

Throw 1:                          Hold F, and a/b while close to the opponent
Throw 2:                          Hold F, and x/y while close to the opponent


Combo Extenders (Useful for ground, and air in a combo, but only use one of each. Requires 600 power)
---------------------------------------------------------------------------
Fishing Rod:                         Hold F, and c+z (Ground only)
EX Jump Slash:                       Hold U, and c+z (Air only)


Special Moves (All specials can be done in air)
---------------------------------------------------------------------------
Drop Spark:                          x (Only activated when in full health on the ground)
Charge Slash:                        Hold x (You can control left, right, and jump. Release x for a powerful charge slash when Shovel Knight flashes blue)
Shovel Drop:                         Hold D, a (Air only) (Knockdown on third hit)
Propeller Dagger:                    F, F, a (Running Attack) / F, F (Air only)

Rising Shovel:                       D, DF, F, a (Useful for combos)
Slam Jam:                            D, DF, F, a (Air only)
Shovel Counter:                      D, DF, F, b
Shovel Copter:                       D, DF, F, b (Air only)
Shovel Aether:                       D, DF, F, c

Dig In:                              D, DF, F, x (Also sends out Drop Spark when in full health on the ground)
Flare Wand:                          D, DF, F, y
Rockin' Relic:                       D, DF, F, z (Select a projectile by pressing a button) 
A: Alchemy Coin                     = Light Damage
B: Chaos Sphere                     = Medium Damage
X: Throwing Anchor                  = Strong Damage
Y: Phase Locket                     = Becomes immune for 3.5 seconds (Requires 500 power)


Special Palette Moves
---------------------------------------------------------------------------

Dynamo Mail
---------------------------------------------------------------------------
Instant Charge Slash:                 a/b/c/x/y/z after two consecutive shovel drops (Hypers might disable the Charge Slash ability)    

Armor of Chaos
---------------------------------------------------------------------------
Random Orbs appear per hit:
-Red Orb:   Unleashes a red flashing light around him, giving him an ability to send out a Charge Flame (Hypers might disable the Charge Flame ability)
-Blue Orb:  Gains 250 Power
-Green Orb: Heals 100 Health Points

Charge Flame:                         a/b/c/x/y/z when a red orb is collected 
AoC Shovel Drop:                      Hold D, a (Air only) (Knockdown on first hit)
AoC Rising Shovel:                    D, DF, F, a
AoC Shovel Counter:                   D, DF, F, b
AoC Shovel Aether:                    D, DF, F, c


Toad Gear
---------------------------------------------------------------------------
Toad-ally Radical Combo:              Keep tapping a or x to unleash a toad-ally radical combo!
Wicked Tongue:                        Hold F, and c+z (Useful for combos. Requires 600 power)
Battering Ram:                        F, F, a (Running Attack)
TG Shovel Drop:                       Hold D, a (Air only) (Knockdown on first hit)

TG Rising Shovel:                     D, DF, F, a
TG Shovel Counter:                    D, DF, F, b
Wrecking Ball:                        D, DF, F, c


Assists
---------------------------------------------------------------------------
Plague Knight:                       D, DB, B, a (Can't assist when a stand-alone version of Plague Knight is there)
King Knight:                         D, DB, B, b
Specter Knight:                      D, DB, B, c

Propeller Knight:                    D, DB, B, x
Mole Knight:                         D, DB, B, y
Polar Knight:                        D, DB, B, z


Hyper Moves (Level 1)
---------------------------------------------------------------------------
Dust Knuckles:                D, DF, F, a+b
Strike The Earth:             D, DF, F, x+y
Enchantress:                  D, DB, B, a+b
Azure Striker Gunvolt:        D, DB, B, x+y


Hyper Moves (Level 2)
---------------------------------------------------------------------------
War Horn:                     D, DF, F, c+z
Special Guest Bonanza:        D, DB, B, c+z (Kratos and The Battletoads are only selected randomly)


Hyper Move (Level 3) (Warning: This move is UNBLOCKABLE on the ground. It's super effective!)
---------------------------------------------------------------------------
Shovel Rage:                  D, DB, B, D, DB, B, x+y+z/c


Credits:
---------------------------------------------------------------------------
Elecbyte                 -MUGEN
Yacht Club Games         -Shovel Knight: Treasure Trove
Playtonic Games          -Yooka-Laylee (Voice Clip, Text Taunt Dialogues, and Victory Quotes)
Inti Creates             -Azure Striker Gunvolt
Nicalis                  -Blade Strangers (Victory Quotes)
Sony                     -God of War
Rare                     -Battletoads, and Killer Instinct (Rash reference for Text Taunt, and Victory Quote)

MetaMaster54610          -Death Battle Quotes


Beta Testers:
---------------------------------------------------------------------------
Staubhold
Weiss_Circal
Ali


Feedback Senders:
---------------------------------------------------------------------------
Staubhold
Lord M
Jenngra505
STANLEY69
