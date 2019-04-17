DC/Marvel Template Characters
Version: 2.0 {24 April 2008}

Created by Buyog2099
for the MUGEN DC vs Marvel project
-----------------------------------------------------------------------

These template characters have been developed to help new character creators to quickly build something 
that fits the style of the DC vs Marvel game. It only has a few character sprites, but includes all of 
the MUGEN-required get-hit sprites as well as custom animations in support of many characters' special
attacks (e.g. burned, shocked, turned to stone, frozen, even Midnight Bliss although Demitri isn't 
in the game. =P). Note that I didn't add the heads to the get-hit sprites... that's intentional, so
please don't report it as a bug. ;)

Both characters contain basic AI, which has been mostly cobbled together from mine and Loganir's, 
standardized by ThePacifist, then heavily re-modified by me. They're pretty tough; they can even give 
Thor and Wonder Woman a run for their money!

Although they're about 90% similar, there are a few differences between the two characters:
- First, of course, their portraits and colors reflect their universe of origin. 
- The select screen portraits are appropriate for the DC vs Marvel screenpack, and won't work 
   well in a different one, so you'd need to change 9000,0 and 9000,1 if you want to use them in a regular screenpack.
- Marvel has a special and a hyper that are both beam-based, like Cyclops.
- DC's special and hyper are projectile-based, like Ice (but without the freezing ;))


GAMEPLAY:

This character has the typical Marvel Versus Capcom (6-button) play style:

x - Weak Punch (WP)
y - Medium Punch (MP)
z - Hard Punch (HP)
a - Weak Kick (WK)
b - Medium Kick (MK)
c - Hard Kick (HK)

d,u:  Super Jump (pressing all three kick buttons at the same time will trigger it too)
f,f:  Dash Forward (can also be triggered by pressing all three punch buttons)
b,b:  Dash Back (also works by pressing all three punch buttons while holding back)


NOTE
My characters are developed entirely on WinMUGEN; I have no idea if they'll even work right on DOS MUGEN,
because I don't have a computer that will run it anymore. If it works for you, great; if not, sorry. :(


COMBO SYSTEM
Capcom-style chain combos work for standing, crouching, and air:
1. WP+MP+SP: you can chain the three punches together, weakest to strongest, for a 3 hit combo.
2. WK+MK+SK: like the punches, you can chain the three kicks together as well.
3. (in air) WP+WK+MP+MK+SP: The basic "zigzag" combo. Chains up to 6 hits.

Launcher for air combos: currently it's the crouching hard punch, but you can change it.


-----------------------------------------------------------------------
VERSION HISTORY

- 24 April 2008: v2.0 - added full set of gethit sprites, crouch, basic attacks, one special and one hyper
- v1.0 (not widely released) - included some get-hits and a stance, not much else.


----------------------------------------------------------------------
CREDITS

- ThePacifist for consolidating and standardizing the AI that eventually made its way into these characters.
- SethZankuten for the DCvsMarvel commons file and most of the sparks


LINKAGE
Buyog's email:            buyog2099@yahoo.com
Buyog's webspace:         http://www.buyog.com/MUGEN
Scruffy Dragon webspace:  http://www.scruffydragon.com
