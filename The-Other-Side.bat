@echo off
::Game where you have to reach the other side
::Version: 1.3
::Date: Nov 13th
::Author: Nathan Schmitt

mode con: cols=120 lines=30
@setlocal enableextensions enabledelayedexpansion

::Start of game, asks for user input
:Menu
cls
color 0F
call :space6
call :space2
echo                                             ßÜÜß ßÜÜß ßÜÜß ßÜÜß ßÜÜß ßÜÜß
call :space3
echo                                               Make It To The Other Side
call :space1
echo                                                       1: Start
echo                                                       2: Controls
echo                                                       3: Exit
call :space3
echo                                             ßÜÜß ßÜÜß ßÜÜß ßÜÜß ßÜÜß ßÜÜß
choice /n /c 123 
if errorlevel 3 exit
if errorlevel 2 goto controls
if errorlevel 1 goto player

::Tells you what the controls are
:controls
cls
call :space6
call :space2
echo                                             ßÜÜß ßÜÜß ßÜÜß ßÜÜß ßÜÜß ßÜÜß
call :space3
echo                                                        Controls
echo.
echo                                                  Key: W speeds up game
echo                                                  Key: A Move Left
echo                                                  Key: D Move Right
echo                                                  Key: M Main Menu
echo.
echo                                                       1: Go Back                                                       
call :space3
echo                                             ßÜÜß ßÜÜß ßÜÜß ßÜÜß ßÜÜß ßÜÜß
choice /n /c 1 
if errorlevel 1 goto Menu

::Code executes when collision occurs
:gameover
cls
color 0C
call :space6
call :space2
echo                                             ßÜÜß ßÜÜß ßÜÜß ßÜÜß ßÜÜß ßÜÜß
call :space3
echo                                                       Gameover
call :space3
echo                                             ßÜÜß ßÜÜß ßÜÜß ßÜÜß ßÜÜß ßÜÜß

ping -n 1 -w 3000 1.1.1.1 > NUL
goto Menu

::Code executes when character makes it to finish line
:youWinMessage
cls
call :space6
call :space2
echo                                             ßÜÜß ßÜÜß ßÜÜß ßÜÜß ßÜÜß ßÜÜß
call :space3
echo                                                       You Win
call :space3
echo                                             ßÜÜß ßÜÜß ßÜÜß ßÜÜß ßÜÜß ßÜÜß

ping -n 1 -w 3000 1.1.1.1 > NUL
goto Menu

::Bottom graphic 
:drawLine
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÛÜÜÜÜ
echo ººÉÉºººººº»»ººººººººººÉÉººººººººººººººÉÉºººººº»»ººººººººººÉÉººººººººººººººÉÉºººººº»»ººººººººººÉÉººººººººººººººÉÉºººººº»»
echo ººººººººººººººººÈÈººººººººººººÉÉººººººººººººººººººººÈÈººººººººººººÉÉººººººººººººººººººººÈÈººººººººººººÉÉºººººººººººººººº
echo ºº»»ºººº»»ººººººººººººººÌÌºººººººººººº»»ºººº»»ººººººººººººººÌÌºººººººººººº»»ºººº»»ººººººººººººººÌÌºººººººººººº»»ºººº»»ºº
echo ºººººººººººººººº¼¼ººÈÈºººººº¼¼ººÌÌºººººººººººººººººº¼¼ººÈÈºººººº¼¼ººÌÌºººººººººººººººººº¼¼ººÈÈºººººº¼¼ººÌÌºººººººººººººº
echo ÌÌººÌÌººÉÉºº¼¼ººººººººººÉÉººººººººººÌÌººÌÌººÉÉºº¼¼ººººººººººÉÉººººººººººÌÌººÌÌººÉÉºº¼¼ººººººººººÉÉººººººººººÌÌººÌÌººÉÉºº
echo ººººººººººººººººÉÉººÉÉººººººººººÈÈººººººººººººººººººÉÉººÉÉººººººººººÈÈººººººººººººººººººÉÉººÉÉººººººººººÈÈºººººººººººººº
echo ººÈÈººººÎÎººººººººººººÈÈººººººººººººººÈÈººººÎÎººººººººººººÈÈººººººººººººººÈÈººººÎÎººººººººººººÈÈººººººººººººººÈÈººººÎÎºº
echo ººººººººººººººÎÎººººººººººººÎÎººººººººººººººººººººÎÎººººººººººººÎÎººººººººººººººººººººÎÎººººººººººººÎÎºººººººººººººººººº
echo ººººººÉÉººººººººººÈÈººººººººººººººººººººººÉÉººººººººººÈÈººººººººººººººººººººººÉÉººººººººººÈÈººººººººººººººººººººººÉÉºººº
echo ºººººººººº¹¹ÉÉººººººººººººÌÌººººÈÈºººººººººººº¹¹ÉÉººººººººººººÌÌººººÈÈºººººººººººº¹¹ÉÉººººººººººººÌÌººººÈÈºººººººººººº¹¹
echo ººººÈÈºººººººººº»»ººÉÉººººººÉÉººººººººººÈÈºººººººººº»»ººÉÉººººººÉÉººººººººººÈÈºººººººººº»»ººÉÉººººººÉÉººººººººººÈÈºººººº
echo ººººººººººººÌÌººººººººººººººººººººººººººººººººººÌÌººººººººººººººººººººººººººººººººººÌÌºººººººººººººººººººººººººººººººººº
echo ººÈÈººººÉÉºººººººººººººº¼¼ººººÌÌººººººÈÈººººÉÉºººººººººººººº¼¼ººººÌÌººººººÈÈººººÉÉºººººººººººººº¼¼ººººÌÌººººººÈÈººººÉÉºº
echo ººººººººººººººººÈÈººººººººººººººººººººººººººººººººººÈÈººººººººººººººººººººººººººººººººººÈÈºººººººººººººººººººººººººººººº
exit /b

::Animation that occurs when character hits finish line
:youWinAnim
cls
call :space6
call :space6
call :space1
echo                                                                                                                     Ý
call :drawLine
call :delay

cls
call :space6
call :space6
call :space1
echo                                                                                                                      Ý
call :drawLine
call :delay

cls
call :space6
call :space6
call :space1
echo                                                                                                                       Ý
call :drawLine
call :delay

cls
call :space6
call :space6
call :space1
echo                                                                                                                       Ý
call :space1
call :drawLine
call :delay

cls
call :space6
call :space6
call :space1
echo                                                                                                                       Ý
call :drawLine
call :delay

cls
call :space6
call :space6
call :space1
echo                                                                                                                       Ý
call :space1
call :drawLine
call :delay

cls
call :space6
call :space6
call :space1
echo                                                                                                                       Ý
call :drawLine
call :delay
goto youWinMessage

::Declares some variables
::Sets what the character and enemy look like
::Variable %movement% is used for where the player starts
:player
cls
set "blank="
set Ship=ßÜÜß 
set myChar=Ý
set position=Ý
set /A movement=0

::Starts by taking player position and sets it to %follow%
::Uses follow value to determine where the enemy will spawn
:gameLoop
set /A follow=%movement%
call :randomFollow

call :randomFall
call :playerSpace0 
call :drawLine                                        
call :move  
                                                                                                                                         
cls                                                          
call :space1                                                 
call :randomFall
call :playerSpace1 
call :drawLine                                   
call :move 
                                                                                                                                          
cls                                                          
call :space2                                                 
call :randomFall
call :playerSpace2
call :drawLine                                           
call :move                                                   
                                                                                          
cls                                                          
call :space3                                                 
call :randomFall
call :playerSpace3
call :drawLine                                           
call :move                                                   
                                                                                           
cls                                                          
call :space4                                                 
call :randomFall
call :playerSpace4
call :drawLine
call :move 

cls                                                          
call :space5                                                 
call :randomFall
call :playerSpace5
call :drawLine
call :move 

cls                                                          
call :space5
call :space1                                                 
call :randomFall
call :playerSpace6
call :drawLine
call :move 

cls                                                          
call :space5
call :space2                                                 
call :randomFall
call :playerSpace7
call :drawLine
call :move 

cls                                                          
call :space5
call :space3                                                
call :randomFall
call :playerSpace8
call :drawLine
call :move 

cls                                                          
call :space5
call :space4                                                 
call :randomFall
call :playerSpace9
call :drawLine
call :move 

cls                                                          
call :space5
call :space5                                                 
call :randomFall
call :playerSpace10
call :drawLine
call :move

cls                                                          
call :space5
call :space5  
call :space1                                               
call :randomFall
call :playerSpace11
call :drawLine
call :move

cls                                                          
call :space5
call :space5
call :space2                                                 
call :randomFall
call :playerSpace12
call :drawLine

::Calculates the box the enemy takes up.
::Is done for all 6 enemys.
call :collisionBox
call :collisionBox2
call :collisionBox3
call :collisionBox4
call :collisionBox5
call :collisionBox6


::Debug Code to find the position of everything
::echo Enemy %enemyLocation%
::echo Enemy2 %enemyLocation2%
::echo Enemy3 %enemyLocation3%
::echo Enemy4 %enemyLocation4%
::echo Enemy5 %enemyLocation5%
::echo Enemy6 %enemyLocation6%
::echo Char %movement%
::pause

::Test for Collision of the enemy and player
::It uses a box by using the enemy position + 4
::The +4 happens in the %box% variable
if %movement% GEQ %enemyLocation% (
	if %movement% LEQ %Box% (
		call :delay
			goto gameover
			pause
	)
)
 
if %movement% GEQ %enemyLocation2% (
	if %movement% LEQ %Box2% (
		call :delay
			goto gameover
			pause
	)
)

if %movement% GEQ %enemyLocation3% (
	if %movement% LEQ %Box3% (
		call :delay
			goto gameover
			pause
	)
)

if %movement% GEQ %enemyLocation4% (
	if %movement% LEQ %Box4% (
		call :delay
			goto gameover
			pause
	)
)

if %movement% GEQ %enemyLocation5% (
	if %movement% LEQ %Box5% (
		call :delay
			goto gameover
			pause
	)
)

if %movement% GEQ %enemyLocation6% (
	if %movement% LEQ %Box6% (
		call :delay
			goto gameover
			pause
	)
)

::Check if nothing collides
::Go back to gameLoop start
if %enemyLocation% NEQ %movement% (
call :delay
	cls
	::call :playerPass
	goto gameLoop
)

::Code for setting the collision box on the enemys
:collisionBox
set /A Box=enemyLocation+4
exit /b
:collisionBox2
set /A Box2=enemyLocation2+4
exit /b
:collisionBox3
set /A Box3=enemyLocation3+4
exit /b
:collisionBox4
set /A Box4=enemyLocation4+4
exit /b
:collisionBox5
set /A Box5=enemyLocation5+4
exit /b
:collisionBox6
set /A Box6=enemyLocation6+4
exit /be

::Simple delay that is called when needed
:delay
ping -n 1 -w 500 1.1.1.1 > NUL
exit /b

::Draws the enemys to the screen
:randomFall
echo %enemy%%enemy2%%enemy3%%enemy4%%enemy5%%enemy6%
exit /b

::These are used to keep the player in the same position every frame
::Every frame has to adjust for the enemys falling
:playerSpace0
call :space6
call :space6
echo %blank%%position%
exit /b

:playerSpace1
call :space6
call :space5
echo %blank%%position%
exit /b

:playerSpace2
call :space5
call :space5
echo %blank%%position%
exit /b

:playerSpace3
call :space5
call :space4
echo %blank%%position%
exit /b

:playerSpace4
call :space5
call :space3
echo %blank%%position%
exit /b

:playerSpace5
call :space5
call :space2
echo %blank%%position%
exit /b

:playerSpace6
call :space5
call :space1
echo %blank%%position%
exit /b

:playerSpace7
call :space5
echo %blank%%position%
exit /b

:playerSpace8
call :space4
echo %blank%%position%
exit /b

:playerSpace9
call :space3
echo %blank%%position%
exit /b

:playerSpace10
call :space2
echo %blank%%position%
exit /b

:playerSpace11
call :space1
echo %blank%%position%
exit /b

:playerSpace12
echo %blank%%position%
exit /b

::Called every frame to ask for user input
::If no input it timesout and goes back to where :move was called
:move
::Checks if the player reaches the finish line
if %movement%==115 (	
		call :delay
		goto youWinAnim
)

choice /c adwm /n /t 1 /d w > NUL
if errorlevel 4 goto Menu
if errorlevel 3 exit /b
if errorlevel 2 goto moveRight
if errorlevel 1 goto moveLeft

::Sets the position of the player when the D key is pressed
::%movement% is used to count the position of the player
::Then %blank% adds a space to %blank%
:moveRight
set	/A movement+=1
set "blank=%blank% "
if %movement% GEQ 120 set movement=119

call :delay
exit /b

::Sets the position of the player when the A key is pressed
::%movement% is used to count the position of the player
::Checks where the player is, if they are on left edge of screen don't add space
::If player position is greater than 1 allow :moveLeft to subtract a space
:moveLeft
set	/A movement-=1
if %movement% LEQ -1 set movement=0
if %movement% == 0 set "blank="
if %movement% GEQ 1 set blank=!blank:~0,-1!

call :delay	
exit /b

::Sets the offset of where the enemy will be
::Tests where the player is and sets where the enemy will spawn based on it
:randomFollow
set randObj=0

::Outputs a number between 10 and 20
if %movement% LEQ 9 set /A randObj=(%random% %% 11)+10

::Outputs a number between 0 and 10
if %movement% GEQ 10 set /A randObj=(%random% %% 11)	
set gap=%randObj%

call :startEnemPos
call :follow
call :extraEnem
call :extraEnem2
call :extraEnem3
call :extraEnem4
call :extraEnem5
exit /b

::Sets where the first enemy will be
::Based on output of :startEnemPos
::Also checks if the position is on the screen
:follow
if %follow% LEQ -1 set follow=0
if %follow% GEQ 119 set follow=118
	if %follow%==0 set "enemy=%Ship%"
	if %follow%==1 set "enemy= %Ship%"
	if %follow%==2 set "enemy=  %Ship%"
	if %follow%==3 set "enemy=   %Ship%"
	if %follow%==4 set "enemy=    %Ship%"	
	if %follow%==5 set "enemy=     %Ship%"
	if %follow%==6 set "enemy=      %Ship%"
	if %follow%==7 set "enemy=       %Ship%"
	if %follow%==8 set "enemy=        %Ship%"
	if %follow%==9 set "enemy=         %Ship%"
	if %follow%==10 set "enemy=          %Ship%"
	if %follow%==11 set "enemy=           %Ship%"
	if %follow%==12 set "enemy=            %Ship%"
	if %follow%==13 set "enemy=             %Ship%"
	if %follow%==14 set "enemy=              %Ship%"
	if %follow%==15 set "enemy=               %Ship%"
	if %follow%==16 set "enemy=                %Ship%"
	if %follow%==17 set "enemy=                 %Ship%"
	if %follow%==18 set "enemy=                  %Ship%"
	if %follow%==19 set "enemy=                   %Ship%"
	if %follow%==20 set "enemy=                    %Ship%"
	if %follow%==21 set "enemy=                     %Ship%"
	if %follow%==22 set "enemy=                      %Ship%"
	if %follow%==23 set "enemy=                       %Ship%"
	if %follow%==24 set "enemy=                        %Ship%"
	if %follow%==25 set "enemy=                         %Ship%"
	if %follow%==26 set "enemy=                          %Ship%"	
	if %follow%==27 set "enemy=                           %Ship%"
	if %follow%==28 set "enemy=                            %Ship%"
	if %follow%==29 set "enemy=                             %Ship%"
	if %follow%==30 set "enemy=                              %Ship%"
	if %follow%==31 set "enemy=                               %Ship%"
	if %follow%==32 set "enemy=                                %Ship%"
	if %follow%==33 set "enemy=                                 %Ship%"
	if %follow%==34 set "enemy=                                  %Ship%"
	if %follow%==35 set "enemy=                                   %Ship%"
	if %follow%==36 set "enemy=                                    %Ship%"
	if %follow%==37 set "enemy=                                     %Ship%"
	if %follow%==38 set "enemy=                                      %Ship%"
	if %follow%==39 set "enemy=                                       %Ship%"
	if %follow%==40 set "enemy=                                        %Ship%"
	if %follow%==41 set "enemy=                                         %Ship%"
	if %follow%==42 set "enemy=                                          %Ship%"
	if %follow%==43 set "enemy=                                           %Ship%"
	if %follow%==44 set "enemy=                                            %Ship%"
	if %follow%==45 set "enemy=                                             %Ship%"
	if %follow%==46 set "enemy=                                              %Ship%"
	if %follow%==47 set "enemy=                                               %Ship%"
	if %follow%==48 set "enemy=                                                %Ship%"	
	if %follow%==49 set "enemy=                                                 %Ship%"
	if %follow%==50 set "enemy=                                                  %Ship%"
	if %follow%==51 set "enemy=                                                   %Ship%"
	if %follow%==52 set "enemy=                                                    %Ship%"
	if %follow%==53 set "enemy=                                                     %Ship%"
	if %follow%==54 set "enemy=                                                      %Ship%"
	if %follow%==55 set "enemy=                                                       %Ship%"
	if %follow%==56 set "enemy=                                                        %Ship%"
	if %follow%==57 set "enemy=                                                         %Ship%"
	if %follow%==58 set "enemy=                                                          %Ship%"
	if %follow%==59 set "enemy=                                                           %Ship%"
	if %follow%==60 set "enemy=                                                            %Ship%"
	if %follow%==61 set "enemy=                                                             %Ship%"
	if %follow%==62 set "enemy=                                                              %Ship%"
	if %follow%==63 set "enemy=                                                               %Ship%"
	if %follow%==64 set "enemy=                                                                %Ship%"
	if %follow%==65 set "enemy=                                                                 %Ship%"
	if %follow%==66 set "enemy=                                                                  %Ship%"
	if %follow%==67 set "enemy=                                                                   %Ship%"
	if %follow%==68 set "enemy=                                                                    %Ship%"
	if %follow%==69 set "enemy=                                                                     %Ship%"
	if %follow%==70 set "enemy=                                                                      %Ship%"	
	if %follow%==71 set "enemy=                                                                       %Ship%"
	if %follow%==72 set "enemy=                                                                        %Ship%"
	if %follow%==73 set "enemy=                                                                         %Ship%"
	if %follow%==74 set "enemy=                                                                          %Ship%"
	if %follow%==75 set "enemy=                                                                           %Ship%"
	if %follow%==76 set "enemy=                                                                            %Ship%"
	if %follow%==77 set "enemy=                                                                             %Ship%"
	if %follow%==78 set "enemy=                                                                              %Ship%"
	if %follow%==79 set "enemy=                                                                               %Ship%"
	if %follow%==80 set "enemy=                                                                                %Ship%"
	if %follow%==81 set "enemy=                                                                                 %Ship%"
	if %follow%==82 set "enemy=                                                                                  %Ship%"
	if %follow%==83 set "enemy=                                                                                   %Ship%"
	if %follow%==84 set "enemy=                                                                                    %Ship%"
	if %follow%==85 set "enemy=                                                                                     %Ship%"
	if %follow%==86 set "enemy=                                                                                      %Ship%"
	if %follow%==87 set "enemy=                                                                                       %Ship%"
	if %follow%==88 set "enemy=                                                                                        %Ship%"
	if %follow%==89 set "enemy=                                                                                         %Ship%"
	if %follow%==90 set "enemy=                                                                                          %Ship%"
	if %follow%==91 set "enemy=                                                                                           %Ship%"
	if %follow%==92 set "enemy=                                                                                            %Ship%"
	if %follow%==93 set "enemy=                                                                                             %Ship%"
	if %follow%==94 set "enemy=                                                                                              %Ship%"
	if %follow%==95 set "enemy=                                                                                               %Ship%"
	if %follow%==96 set "enemy=                                                                                                %Ship%"
	if %follow%==97 set "enemy=                                                                                                 %Ship%"
	if %follow%==98 set "enemy=                                                                                                  %Ship%"
	if %follow%==99 set "enemy=                                                                                                   %Ship%"
	if %follow%==100 set "enemy=                                                                                                    %Ship%"
	if %follow%==101 set "enemy=                                                                                                     %Ship%"
	if %follow%==102 set "enemy=                                                                                                      %Ship%"
	if %follow%==103 set "enemy=                                                                                                       %Ship%"
	if %follow%==104 set "enemy=                                                                                                        %Ship%"	
	if %follow%==105 set "enemy=                                                                                                         %Ship%"
	if %follow%==106 set "enemy=                                                                                                          %Ship%"
	if %follow%==107 set "enemy=                                                                                                           %Ship%"
	if %follow%==108 set "enemy=                                                                                                            %Ship%"
	if %follow%==109 set "enemy=                                                                                                             %Ship%"
	if %follow%==110 set "enemy=                                                                                                              %Ship%"
	if %follow%==112 set "enemy=                                                                                                               %Ship%"
	if %follow%==113 set "enemy=                                                                                                                %Ship%"
	if %follow%==114 set "enemy=                                                                                                                 %Ship%"
	if %follow%==115 set "enemy=                                                                                                                  %Ship%"
	if %follow%==116 set "enemy=                                                                                                                   %Ship%"
	if %follow%==117 set "enemy=                                                                                                                    %Ship%"
	if %follow%==118 set "enemy=                                                                                                                     %Ship%"
	if %follow%==119 set "enemy=                                                                                                                      %Ship%"

::This variable is used for testing the collision	
	set enemyLocation=%follow%
	exit /b

::Uses the random number from :randomFollow and changes the values of %follow%
::Which makes the first enemy spawn in a random position	
:startEnemPos
	if %gap%==0 set /A follow=%follow%-10
	if %gap%==1 set /A follow=%follow%-9
	if %gap%==2 set /A follow=%follow%-8
	if %gap%==3 set /A follow=%follow%-7
	if %gap%==4 set /A follow=%follow%-6
	if %gap%==5 set /A follow=%follow%-5
	if %gap%==6 set /A follow=%follow%-4
	if %gap%==7 set /A follow=%follow%-3
	if %gap%==8 set /A follow=%follow%-2
	if %gap%==9 set /A follow=%follow%-1	
	if %gap%==10 set /A "follow=%follow%
	if %gap%==11 set /A "follow=%follow%+1
	if %gap%==12 set /A "follow=%follow%+2
	if %gap%==13 set /A "follow=%follow%+3
	if %gap%==14 set /A "follow=%follow%+4
	if %gap%==15 set /A "follow=%follow%+5
	if %gap%==16 set /A "follow=%follow%+6
	if %gap%==17 set /A "follow=%follow%+7
	if %gap%==18 set /A "follow=%follow%+8
	if %gap%==19 set /A "follow=%follow%+9
	if %gap%==20 set /A "follow=%follow%+10
exit /b

::Sets the second enemy position which is relative to the first enemy 
:extraEnem
set /A extraEnemys=(%random% %% 11)
::set /A extraEnemys=
	
	if %extraEnemys%==0 set "enemy2=%Ship%"
	if %extraEnemys%==1 set "enemy2= %Ship%"
	if %extraEnemys%==2 set "enemy2=  %Ship%"
	if %extraEnemys%==3 set "enemy2=   %Ship%"
	if %extraEnemys%==4 set "enemy2=    %Ship%"	
	if %extraEnemys%==5 set "enemy2=     %Ship%"
	if %extraEnemys%==6 set "enemy2=      %Ship%"
	if %extraEnemys%==7 set "enemy2=       %Ship%"
	if %extraEnemys%==8 set "enemy2=        %Ship%"
	if %extraEnemys%==9 set "enemy2=         %Ship%"
	if %extraEnemys%==10 set "enemy2=          %Ship%"
	
::The variable tracks where enemy is and makes sure it doesnt go off screen
	set /A enemyLocation2=follow+extraEnemys+5
	if %enemyLocation2% GEQ 115 set "enemy2="
	if %enemyLocation2% GEQ 115 set /A enemyLocation2=0
	exit /b
	
::Sets the thrid enemy position which is relative to the last enemy	
:extraEnem2
set /A extraEnemys2=(%random% %% 11)
::set /A extraEnemys=
	
	if %extraEnemys2%==0 set "enemy3=%Ship%"
	if %extraEnemys2%==1 set "enemy3= %Ship%"
	if %extraEnemys2%==2 set "enemy3=  %Ship%"
	if %extraEnemys2%==3 set "enemy3=   %Ship%"
	if %extraEnemys2%==4 set "enemy3=    %Ship%"	
	if %extraEnemys2%==5 set "enemy3=     %Ship%"
	if %extraEnemys2%==6 set "enemy3=      %Ship%"
	if %extraEnemys2%==7 set "enemy3=       %Ship%"
	if %extraEnemys2%==8 set "enemy3=        %Ship%"
	if %extraEnemys2%==9 set "enemy3=         %Ship%"
	if %extraEnemys2%==10 set "enemy3=          %Ship%"
	
::The variable tracks where enemy is and makes sure it doesnt go off screen	
	set /A enemyLocation3=follow+extraEnemys+extraEnemys2+10
	if %enemyLocation3% GEQ 115 set "enemy3="
	if %enemyLocation3% GEQ 115 set /A enemyLocation3=0
	exit /b

::Sets the forth enemy position which is relative to the last enemy	
:extraEnem3
set /A extraEnemys3=(%random% %% 11)
::set /A extraEnemys=
	
	if %extraEnemys3%==0 set "enemy4=%Ship%"
	if %extraEnemys3%==1 set "enemy4= %Ship%"
	if %extraEnemys3%==2 set "enemy4=  %Ship%"
	if %extraEnemys3%==3 set "enemy4=   %Ship%"
	if %extraEnemys3%==4 set "enemy4=    %Ship%"	
	if %extraEnemys3%==5 set "enemy4=     %Ship%"
	if %extraEnemys3%==6 set "enemy4=      %Ship%"
	if %extraEnemys3%==7 set "enemy4=       %Ship%"
	if %extraEnemys3%==8 set "enemy4=        %Ship%"
	if %extraEnemys3%==9 set "enemy4=         %Ship%"
	if %extraEnemys3%==10 set "enemy4=          %Ship%"
	
::The variable tracks where enemy is and makes sure it doesnt go off screen	
	set /A enemyLocation4=follow+extraEnemys+extraEnemys2+extraEnemys3+15
	if %enemyLocation4% GEQ 115 set "enemy4="
	if %enemyLocation4% GEQ 115 set /A enemyLocation4=0
	exit /b

::Sets the fifth enemy position which is relative to the last enemy	
:extraEnem4
set /A extraEnemys4=(%random% %% 11)
::set /A extraEnemys=
	
	if %extraEnemys4%==0 set "enemy5=%Ship%"
	if %extraEnemys4%==1 set "enemy5= %Ship%"
	if %extraEnemys4%==2 set "enemy5=  %Ship%"
	if %extraEnemys4%==3 set "enemy5=   %Ship%"
	if %extraEnemys4%==4 set "enemy5=    %Ship%"	
	if %extraEnemys4%==5 set "enemy5=     %Ship%"
	if %extraEnemys4%==6 set "enemy5=      %Ship%"
	if %extraEnemys4%==7 set "enemy5=       %Ship%"
	if %extraEnemys4%==8 set "enemy5=        %Ship%"
	if %extraEnemys4%==9 set "enemy5=         %Ship%"
	if %extraEnemys4%==10 set "enemy5=          %Ship%"
	
::The variable tracks where enemy is and makes sure it doesnt go off screen	
	set /A enemyLocation5=follow+extraEnemys+extraEnemys2+extraEnemys3+extraEnemys4+20
	if %enemyLocation5% GEQ 115 set "enemy5="
	if %enemyLocation5% GEQ 115 set /A enemyLocation5=0
	exit /b

::Sets the sixth enemy position which is relative to the last enemy	
:extraEnem5
set /A extraEnemys5=(%random% %% 11)
::set /A extraEnemys=
	
	if %extraEnemys5%==0 set "enemy6=%Ship%"
	if %extraEnemys5%==1 set "enemy6= %Ship%"
	if %extraEnemys5%==2 set "enemy6=  %Ship%"
	if %extraEnemys5%==3 set "enemy6=   %Ship%"
	if %extraEnemys5%==4 set "enemy6=    %Ship%"	
	if %extraEnemys5%==5 set "enemy6=     %Ship%"
	if %extraEnemys5%==6 set "enemy6=      %Ship%"
	if %extraEnemys5%==7 set "enemy6=       %Ship%"
	if %extraEnemys5%==8 set "enemy6=        %Ship%"
	if %extraEnemys5%==9 set "enemy6=         %Ship%"
	if %extraEnemys5%==10 set "enemy6=          %Ship%"
	
::The variable tracks where enemy is and makes sure it doesnt go off screen	
	set /A enemyLocation6=follow+extraEnemys+extraEnemys2+extraEnemys3+extraEnemys4+extraEnemys5+25
	if %enemyLocation6% GEQ 115 set "enemy6="
	if %enemyLocation6% GEQ 115 set /A enemyLocation6=0
	exit /b

::Used anywhere to call echos to the screen
:space1
echo.
exit /b

:space2
echo.
echo.
exit /b

:space3
echo.
echo.
echo.
exit /b

:space4
echo.
echo.
echo.
echo.
exit /b

:space5
echo.
echo.
echo.
echo.
echo.
exit /b

:space6
echo.
echo.
echo.
echo.
echo.
echo.
exit /b

http://www.instructables.com/id/Batch-game-movement-simple/
http://www.dostips.com/DtTipsStringManipulation.php