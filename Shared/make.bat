del Shared\o\*.o
del Shared\o\*.lst
del Shared\o\*.asm
del Shared\o\*.sym

C:\gbdk\bin\lcc -Wa-l -c -o Shared/o/borderTiles.o Shared/res/tiles/borderTiles.c
C:\gbdk\bin\lcc -Wa-l -c -o Shared/o/fontTiles.o Shared/res/tiles/fontTiles.c
C:\gbdk\bin\lcc -Wa-l -c -o Shared/o/timerTiles.o Shared/res/tiles/timerTiles.c

C:\gbdk\bin\lcc -Wa-l -c -o Shared/o/common.o Shared/common.c
C:\gbdk\bin\lcc -Wa-l -c -o Shared/o/fade.o Shared/fade.c
C:\gbdk\bin\lcc -Wa-l -c -o Shared/o/songPlayer.o Shared/songPlayer.c

C:\gbdk\bin\lcc -Wa-l -c -o Shared/o/microgameData.o Shared/database/microgameData.c
C:\gbdk\bin\lcc -Wa-l -c -o Shared/o/microgameData.o Shared/database/microgameData.c

C:\gbdk\bin\lcc -Wa-l -Wl-m -Wl-j -DUSE_SFR_FOR_REG -c -o Shared/o/gbt_player.o Shared/gbt_player.s
C:\gbdk\bin\lcc -Wa-l -Wl-m -Wl-j -DUSE_SFR_FOR_REG -c -o Shared/o/gbt_player_bank1.o Shared/gbt_player_bank1.s

C:\gbdk\bin\lcc -Wa-l -Wf-bo0 -c -o Shared/o/microgameManagerState.o Shared/states/microgameManagerState.c
C:\gbdk\bin\lcc -Wa-l -Wf-bo1 -c -o Shared/o/titleState.o Shared/states/titleState.c

c:\gbdk\bin\lcc -Wa-l -Wf-ba0 -c -o Shared/o/ram.o Shared/ram.c

@REM Pre-jam TODO:
@REM Should maybe move mgdex to a different bank
@REM Pad out time between mgStatus = WON and transition away from microgame
@REM Pad out time between mgStatus = LOST and transition away from microgame
@REM Integrate mgSpeed into the countdown timer (oops, I forgot to do this)
@REM Beautify lobby screen
@REM    Score increment animation
@REM    Lives/losing lives animation
@REM    Speed up/difficulty up animations

@REM During/post gamejam TODO broadstrokes:
@REM Title screen
@REM Saving/loading
@REM "Overworld map" thingy where you can select MG groups
@REM Select individual MG screen (grid of MGs, with an icon and byline for each one)
@REM Maybe: store for unlocking new MGs a la SSBM trophy lottery
@REM Maybe: if above, a way to earn currency
