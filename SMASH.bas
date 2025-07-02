!***Smash***!
level=1
!***Top***!
!!
gr.open 255,255,255,255,0
gr.orientation 1
gr.screen w,h
di_height=h
di_width=w

scale_width=w/di_width
scale_height=h/di_height
gr.scale scale_width,scale_height
!!
!+++++++++++++++++++++++++++++!
goto lr

greset:
gr.close


LR:
clear=0:clear2=0:clear3=0
file$="Language.data"
xfile$="Theme.data"



!++++++++++++++++!
!+++THEME DATA+++!
!++++++++++++++++!

FILE.EXISTS b, xfile$
IF b THEN goto Read_Theme

BYTE.OPEN W, wf,xfile$:FILE.SIZE count,xfile$:Byte.write.Buffer wf, "white"



Read_Theme:
FILE.SIZE count, xfile$
BYTE.OPEN R, rf, xfile$
Byte.Read.Buffer rf, count, theme$


if len(theme$)<=0 then theme$="white"

!+++++++++++++++++++++++!
!+++END OF THEME DATA+++!
!+++++++++++++++++++++++!






!+++PROCESSING+++!
processing:
if theme$="white" then gr.open 255,255,255,255,0:goto screen_setup



if theme$="dark_blue" then gr.open 255,15,55,255,0:gr.orientation 1:gr.render:goto screen_setup

if theme$="light_red" then gr.open 255,255,0,0,0:goto screen_setup


if theme$="dark_green" then gr.open 255,0,100,0,0:goto screen_setup


if theme$="light_blue" then gr.open 255,15,155,255,0:goto screen_setup


if theme$="dark_pink" then gr.open 255,220,0,130,0:goto screen_setup


if theme$="dark_yellow" then gr.open 255,220,200,50,0:goto screen_setup


if theme$="light_gray" then gr.open 255,150,170,180,0:goto screen_setup


if theme$="dark_gray" then gr.open 255,100,120,130,0:goto screen_setup


if theme$="orange" then gr.open 255,255,100,0,0:goto screen_setup


if theme$="light_yellow" then gr.open 255,255,250,0,0:goto screen_setup


if theme$="light_pink" then gr.open 255,255,130,200,0:goto screen_setup


if theme$="dark_red" then gr.open 255,155,30,0,0:goto screen_setup


if theme$="brown" then gr.open 255,125,80,50,0:goto screen_setup


if theme$="light_green" then gr.open 255,0,255,0,0:goto screen_setup


if theme$="purple" then gr.open 255,100,50,78,0

















screen_setup:
gr.orientation 1
gr.screen w,h
di_height=h
di_width=w

scale_width=w/di_width
scale_height=h/di_height
gr.scale scale_width,scale_height

goto outside
goto screen_setup


outside:












ST:
!+++++++++++++++++++!
!+++LANGUAGE DATA+++!
!+++++++++++++++++++!
FILE.EXISTS b, file$
IF b THEN goto Read_Language

BYTE.OPEN W, wf,file$:FILE.SIZE count,file$:Byte.write.Buffer wf, "English"

Read_language:
FILE.SIZE count, file$
BYTE.OPEN R, rf, file$
Byte.Read.Buffer rf, count, language$

if len(language$)<=0 then language$="English":FILE.SIZE count,file$:Byte.write.Buffer wf, "English"
!++++++++++++++++++++++++++!
!+++END OF LANGUAGE DATA+++!
!++++++++++++++++++++++++++!




!*****************************!
!****Menu Pro Version****!
!*****************************!

!*****************!
!***Play Button***!
!*****************!

!***Offset Value***!
gr.cls
o=h/30*2
o2=h/7
o10=h/4
o11=h/6
o12=h/3
o13=h/2
o14=h/20

box_x1=w/28
box_x2=w/5
box_y1=h/2-o10
box_y2=h/2.5-o10

bx1=box_x1
bx2=box_x2
by1=box_y1
by2=box_y2

!******************!

!*****************************!
!***LEFT TOP BAR HORIZONTAL***!
!*****************************!
Left_top_Bar_horizontal_x1=w/2.2
Left_top_Bar_horizontal_y1=h/5.8-o
Left_top_Bar_horizontal_x2=w/2
Left_top_Bar_horizontal_y2=h/6.1-o

Ltbhx1=Left_top_Bar_horizontal_x1
Ltbhx2=Left_top_Bar_horizontal_x2
Ltbhy1=Left_top_Bar_horizontal_y1
Ltbhy2=Left_top_Bar_horizontal_y2
!******************************!
!***END OF LEFT TOP BAR HZTL***!
!******************************!



!***************************!
!***LEFT TOP BAR VERTICAL***!
!***************************!

Left_top_bar_vertical_x1=ltbhx1-w/70
Left_top_bar_vertical_y1=ltbhy1-h/120
Left_top_bar_vertical_x2=ltbhx2-w/22
Left_top_bar_vertical_y2=ltbhy2+h/28




Ltbvx1=Left_top_bar_vertical_x1
Ltbvx2=Left_top_bar_vertical_x2
Ltbvy1=Left_top_bar_vertical_y1
Ltbvy2=Left_top_bar_vertical_y2
!******************************!
!***END OF LEFT TOP BAR VERT***!
!******************************!













o2=h/7
!***************************!
!***BTM LEFT BAR VERTICAL***!
!***************************!
bottom_left_bar_vertical_x1=ltbhx1-w/70

bottom_left_bar_vertical_y1=ltbhy1-h/30+o2

bottom_left_bar_vertical_x2=ltbhx2-w/22

bottom_left_bar_vertical_y2=ltbhy2+h/120+o2


blbvx1=bottom_left_bar_vertical_x1
blbvx2=bottom_left_bar_vertical_x2
blbvy1=bottom_left_bar_vertical_y1
blbvy2=bottom_left_bar_vertical_y2
!******************************!
!***END OF BTM LEFT BAR VERT***!
!******************************!




!******************************!
!***TOP RIGHT BAR HORIZONTAL***!
!******************************!
Top_right_bar_horizontal_x1=Ltbhx1+w/21
Top_right_bar_horizontal_y1=Ltbhy1
Top_right_bar_horizontal_x2=Ltbhx2+w/21
Top_right_bar_horizontal_y2=Ltbhy2



Trbhx1=Top_right_bar_horizontal_x1

Trbhx2=Top_right_bar_horizontal_x2

Trbhy1=Top_right_bar_horizontal_y1

Trbhy2=Top_right_bar_horizontal_y2


!*****************************!
!***END TOP RIGHT BAR HORIZ***!
!*****************************!





!****************************!
!***TOP RIGHT BAR VERTICAL***!
!****************************!

Top_right_bar_vertical_x1=ltbhx1-w/70+w/10

Top_right_bar_vertical_y1=ltbhy1-h/120

Top_right_bar_vertical_x2=ltbhx2-w/22+w/10

Top_right_bar_vertical_y2=ltbhy2+h/28

Trbvx1=Top_right_bar_vertical_x1
Trbvx2=Top_right_bar_vertical_x2
Trbvy1=Top_right_bar_vertical_y1
Trbvy2=Top_right_bar_vertical_y2

!****************************!
!***END TOP RIGHT BAR VERT***!
!****************************!



!****************************!
!***BOTTOM RIGHT BAR VERTI***!
!****************************!
bottom_right_bar_vertical_x1=ltbhx1-w/70+w/10

bottom_right_bar_vertical_y1=ltbhy1-h/30+o2

bottom_right_bar_vertical_x2=ltbhx2-w/22+w/10

bottom_right_bar_vertical_y2=ltbhy2+h/120+o2

brbvx1=bottom_right_bar_vertical_x1

brbvy1=bottom_right_bar_vertical_y1

brbvx2=bottom_right_bar_vertical_x2

brbvy2=bottom_right_bar_vertical_y2

!*****************************!
!***END BTM RIGHT BAR VERTI***!
!*****************************!
gr.color 255,0,0,0,1








if theme_reset=1 |langx=1 | won=1 | share=1 then goto skip1


gr.text.size w/3.5
if language$="English" then gr.text.draw txt1,w/w+h/50,Ltbhy1+h/2.2,"Smash!"



if language$="Spanish" then gr.text.size w/4.25:gr.text.draw txt1,w/w+w/18,Ltbhy1+h/2.2,"Aplastar"


if language$="French" then gr.text.size w/4:gr.text.draw txt1,w/10,Ltbhy1+h/2.2,"Casser"



if language$="Chinese" then gr.text.draw txt1,w/4.5,Ltbhy1+h/2.2,"粉碎"


if language$="Arabic" then gr.text.draw txt1,w/4.5,Ltbhy1+h/2.2,"سحق"



if language$="Japanese" then gr.text.size w/6:gr.text.draw txt1,w/12,Ltbhy1+h/2.2,"スマッシュ"



if language$="Hebrew" then gr.text.draw txt1,w/5. 5,Ltbhy1+h/2.2,"לְרַסֵק"


gr.render
x=0:y=0
pause 2000
gr.cls






!+++++++++++++++++++++++++++++!
!++++PLAY BUTTON ANIMATION++++!
!+++++++++++++++++++++++++++++!
for play=0 to w/3 step w/30

!**Top left**!
gr.rect l1,w/2.2-play,h/10.3,w/2-play,h/9.5


!**Bottom left**!
gr.rect l1,w/2.2-play,h/4.15,w/2-play,h/4.02


!**Top right**!
gr.rect l1,w/2+play,h/10.3,w/1.82+play,h/9.5


!**Bottom right**!
gr.rect l1,w/2+play,h/4.15,w/1.82+play,h/4.02




!**TOP SET**!
gr.rect l1,ltbhx1-play,ltbhy1,ltbhx2-play,ltbhy2

gr.rect l1,ltbvx1-play,ltbvy1,ltbvx2-play,ltbvy2

gr.rect l1,blbhx1-play,blbhy1,blbhx2-play,blbhy2

gr.rect l1,blbvx1-play,blbvy1,blbvx2-play,blbvy2

!**BTM SET**
gr.rect l1,trbhx1+play,trbhy1,trbhx2+play,trbhy2

gr.rect l1,trbvx1+play,trbvy1,trbvx2+play,trbvy2

gr.rect l1,brbhx1+play,brbhy1,brbhx2+play,brbhy2
gr.rect l1,brbvx1+play,brbvy1,brbvx2+play,brbvy2

if play>=w/3 then clear=1:goto play

gr.render
if clear=0 then gr.cls

next
!+++++++++++++++++++++++++++++!
!++END PLAY BUTTON ANIMATION++!
!+++++++++++++++++++++++++++++!

play:
sharea:


!++++++++++++++++++++++++++!
!++++PLAY BUTTON STABLE++++!
!++++++++++++++++++++++++++!
o3=h/4
for play=0 to w/3 step w/30
o3=h/4
pox=w/3
nox=w/3

vv1=w/3

!**Top left**!
gr.rect l1,w/2.2-vv1,h/10.3,w/2-vv1,h/9.5


!**Bottom left**!
gr.rect l1,w/2.2-vv1,h/4.15,w/2-vv1,h/4.02


!**Top right**!
gr.rect l1,w/2+vv1,h/10.3,w/1.82+vv1,h/9.5


!**Bottom right**!
gr.rect l1,w/2+vv1,h/4.15,w/1.82+vv1,h/4.02



!**TOP SET**!
gr.rect l1,ltbvx1-nox,ltbvy1,ltbvx2-nox,ltbvy2

gr.rect l1,blbvx1-nox,blbvy1,blbvx2-nox,blbvy2


!**BTM SET**!
gr.rect l1,trbvx1+pox,trbvy1,trbvx2+pox,trbvy2

gr.rect l1,brbvx1+pox,brbvy1,brbvx2+pox,brbvy2

!****************************!
!***END OF PLAY BTN STABLE***!
!****************************!





!******************************!



!****************************!
!***SHARE BUTTON ANIMATION***!
!****************************!
sho=h/4

!**Top left**!
gr.rect l1,w/2.2-play,h/10.3+sho,w/2-play,h/9.5+sho

!**Bottom left**!
gr.rect l1,w/2.2-play,h/4.15+sho,w/2-play,h/4.02+sho

!**Top right**!
gr.rect l1,w/2+play,h/10.3+sho,w/1.82+play,h/9.5+sho

!**Bottom right**!
gr.rect l1,w/2+play,h/4.15+sho,w/1.82+play,h/4.02+sho



!**TOP SET**!
gr.rect l1,ltbvx1-play,ltbvy1+o3,ltbvx2-play,ltbvy2+o3

gr.rect l1,blbvx1-play,blbvy1+o3,blbvx2-play,blbvy2+o3


!**BTM SET**
gr.rect l1,trbvx1+play,trbvy1+o3,trbvx2+play,trbvy2+o3

gr.rect l1,brbvx1+play,brbvy1+o3,brbvx2+play,brbvy2+o3

vv1=w/3

!**Top left**!
gr.rect l1,w/2.2-vv1,h/10.3,w/2-vv1,h/9.5


!**Bottom left**!
gr.rect l1,w/2.2-vv1,h/4.15,w/2-vv1,h/4.02


!**Top right**!
gr.rect l1,w/2+vv1,h/10.3,w/1.82+vv1,h/9.5


!**Bottom right**!
gr.rect l1,w/2+vv1,h/4.15,w/1.82+vv1,h/4.02



!**TOP SET**!
gr.rect l1,ltbvx1-nox,ltbvy1,ltbvx2-nox,ltbvy2

gr.rect l1,blbvx1-nox,blbvy1,blbvx2-nox,blbvy2


!**BTM SET**!
gr.rect l1,trbvx1+pox,trbvy1,trbvx2+pox,trbvy2

gr.rect l1,brbvx1+pox,brbvy1,brbvx2+pox,brbvy2





if play>=w/3 then clear2=1

gr.render
if clear2=0 then gr.cls

NEXT

!++++++++++++++++++++++++++++++!
!++END SHARE BUTTON ANIMATION++!
!++++++++++++++++++++++++++++++!



!++++++++++++++++++++++++++!
!++++PLAY BUTTON STABLE++++!
!++++++++++++++++++++++++++!
o3=h/4
for play=0 to w/3 step w/30
o3=h/4
pox=w/3
nox=w/3

vv1=w/3

!**Top left**!
gr.rect l1,w/2.2-vv1,h/10.3,w/2-vv1,h/9.5


!**Bottom left**!
gr.rect l1,w/2.2-vv1,h/4.15,w/2-vv1,h/4.02


!**Top right**!
gr.rect l1,w/2+vv1,h/10.3,w/1.82+vv1,h/9.5


!**Bottom right**!
gr.rect l1,w/2+vv1,h/4.15,w/1.82+vv1,h/4.02



!**TOP SET**!
gr.rect l1,ltbvx1-nox,ltbvy1,ltbvx2-nox,ltbvy2

gr.rect l1,blbvx1-nox,blbvy1,blbvx2-nox,blbvy2


!**BTM SET**!
gr.rect l1,trbvx1+pox,trbvy1,trbvx2+pox,trbvy2

gr.rect l1,brbvx1+pox,brbvy1,brbvx2+pox,brbvy2

!****************************!
!***END OF PLAY BTN STABLE***!
!****************************!








themea:

!++++++++++++++++++++++++++++++!
!++++THEME BUTTON ANIMATION++++!
!++++++++++++++++++++++++++++++!
o4=h/2
for play=0 to w/3 step w/30
o4=h/2
pox=w/3
nox=w/3
o5=h/4

!!
!*****************!
!***PLAY BUTTON***!
!*****************!
!**TOP SET**!
gr.rect l1,ltbhx1-nox,ltbhy1,ltbhx2-nox,ltbhy2

gr.rect l1,ltbvx1-nox,ltbvy1,ltbvx2-nox,ltbvy2

gr.rect l1,blbhx1-nox,blbhy1,blbhx2-nox,blbhy2

gr.rect l1,blbvx1-nox,blbvy1,blbvx2-nox,blbvy2

!**BTM SET**
gr.rect l1,trbhx1+pox,trbhy1,trbhx2+pox,trbhy2

gr.rect l1,trbvx1+pox,trbvy1,trbvx2+pox,trbvy2

gr.rect l1,brbhx1+pox,brbhy1,brbhx2+pox,brbhy2
gr.rect l1,brbvx1+pox,brbvy1,brbvx2+pox,brbvy2
!!
!************************!
!***END OF PLAY BUTTON***!
!************************!






skip1:
!******************!
!***SHARE BUTTON***!
!******************!


ov=h/h*1

!!
!**TOP SET**!
gr.rect l1,ltbhx1-nox,ltbhy1+ov,ltbhx2-nox,ltbhy2+ov

gr.rect l1,ltbvx1-nox,ltbvy1+ov,ltbvx2-nox,ltbvy2+ov

gr.rect l1,blbhx1-nox,blbhy1+ov,blbhx2-nox,blbhy2+ov

gr.rect l1,blbvx1-nox,blbvy1+ov,blbvx2-nox,blbvy2+ov

!**BTM SET**
gr.rect l1,trbhx1+pox,trbhy1+ov,trbhx2+pox,trbhy2+ov

gr.rect l1,trbvx1+pox,trbvy1+ov,trbvx2+pox,trbvy2+ov

gr.rect l1,brbhx1+pox,brbhy1+ov,brbhx2+pox,brbhy2+ov
gr.rect l1,brbvx1+pox,brbvy1+ov,brbvx2+pox,brbvy2+ov

!!







gr.text.size w/8


if language$="English" then gr.text.draw txt1,w/2.8,Ltbhy1+h/10.5,"PLAY"


if language$="Spanish" then gr.text.draw txt1,w/3. 3,Ltbhy1+h/10.5,"JUGAR"


if language$="French" then gr.text.draw txt1,w/3.3,Ltbhy1+h/10.5,"JOUER"



if language$="Chinese" then gr.text.draw txt1,w/2. 3,Ltbhy1+h/10.5,"玩"



if language$="Arabic" then gr.text.draw txt1,w/2.5,Ltbhy1+h/10.5,"لعب"


if language$="Japanese" then gr.text.draw txt1,w/3. 2,Ltbhy1+h/10.5,"プレイ"



if language$="Hebrew" then gr.text.draw txt1,w/2.65,Ltbhy1+h/10.5,"שחק"





!****************************!
!***SHARE BUTTON ANIMATION***! 
!****************************!
!**TOP SET**!
gr.rect l1,ltbhx1-nox,ltbhy1+o5,ltbhx2-nox,ltbhy2+o5

gr.rect l1,ltbvx1-nox,ltbvy1+o5,ltbvx2-nox,ltbvy2+o5

gr.rect l1,blbhx1-nox,blbhy1+o5,blbhx2-nox,blbhy2+o5

gr.rect l1,blbvx1-nox,blbvy1+o5,blbvx2-nox,blbvy2+o5

!**BTM SET**
gr.rect l1,trbhx1+pox,trbhy1+o5,trbhx2+pox,trbhy2+o5

gr.rect l1,trbvx1+pox,trbvy1+o5,trbvx2+pox,trbvy2+o5

gr.rect l1,brbhx1+pox,brbhy1+o5,brbhx2+pox,brbhy2+o5
gr.rect l1,brbvx1+pox,brbvy1+o5,brbvx2+pox,brbvy2+o5
!*************************!
!***END OF SHARE BUTTON***!
!*************************!



!******************!
!***THEME BUTTON***!
!******************!
gr.text.size w/8
if language$="English" then gr.text.draw txt1,w/3.4,Ltbhy1+h/2.9,"SHARE"


if language$="Spanish" then gr.text.draw txt1,w/6. 5,Ltbhy1+h/2.9,"COMPARTIR"



if language$="French" then gr.text.draw txt1,w/5.5,Ltbhy1+h/2.9,"PARTAGER"



if language$="Chinese" then gr.text.draw txt1,w/2.7,Ltbhy1+h/2.9,"分享"




if language$="Arabic" then gr.text.draw txt1,w/2.6,Ltbhy1+h/2.9,"حصة"




if language$="Japanese" then gr.text.draw txt1,w/3.9,Ltbhy1+h/2.9,"共有する"



if language$="Hebrew" then gr.text.draw txt1,w/2.9,Ltbhy1+h/2.9,"לחלוק"










if theme_reset=1 | langx=1 | xoff=1 | won=1 | share=1 then goto skip2



!*********************!
!***THEME ANIMATION***!
!*********************!
tho=h/2

!**Top left**!
gr.rect l1,w/2.2-play,h/10.3+tho,w/2-play,h/9.5+tho


!**Bottom left**!
gr.rect l1,w/2.2-play,h/4.15+tho,w/2-play,h/4.02+tho


!**Top right**!
gr.rect l1,w/2+play,h/10.3+tho,w/1.82+play,h/9.5+tho


!**Bottom right**!
gr.rect l1,w/2+play,h/4.15+tho,w/1.82+play,h/4.02+tho



!**TOP SET**!
gr.rect l1,ltbvx1-play,ltbvy1+o4,ltbvx2-play,ltbvy2+o4


gr.rect l1,blbvx1-play,blbvy1+o4,blbvx2-play,blbvy2+o4

!**BTM SET**!

gr.rect l1,trbvx1+play,trbvy1+o4,trbvx2+play,trbvy2+o4


gr.rect l1,brbvx1+play,brbvy1+o4,brbvx2+play,brbvy2+o4


sho=h/4
sb2=w/3

!**Top left**!
gr.rect l1,w/2.2-sb2,h/10.3+sho,w/2-sb2,h/9.5+sho

!**Bottom left**!
gr.rect l1,w/2.2-sb2,h/4.15+sho,w/2-sb2,h/4.02+sho

!**Top right**!
gr.rect l1,w/2+sb2,h/10.3+sho,w/1.82+sb2,h/9.5+sho

!**Bottom right**!
gr.rect l1,w/2+sb2,h/4.15+sho,w/1.82+sb2,h/4.02+sho


!**TOP SET**!
gr.rect l1,ltbvx1-sb2,ltbvy1+o3,ltbvx2-sb2,ltbvy2+o3

gr.rect l1,blbvx1-sb2,blbvy1+o3,blbvx2-sb2,blbvy2+o3


!**BTM SET**
gr.rect l1,trbvx1+sb2,trbvy1+o3,trbvx2+sb2,trbvy2+o3

gr.rect l1,brbvx1+sb2,brbvy1+o3,brbvx2+sb2,brbvy2+o3



pox=w/3
nox=w/3

vv1=w/3

!**Top left**!
gr.rect l1,w/2.2-vv1,h/10.3,w/2-vv1,h/9.5


!**Bottom left**!
gr.rect l1,w/2.2-vv1,h/4.15,w/2-vv1,h/4.02


!**Top right**!
gr.rect l1,w/2+vv1,h/10.3,w/1.82+vv1,h/9.5


!**Bottom right**!
gr.rect l1,w/2+vv1,h/4.15,w/1.82+vv1,h/4.02



!**TOP SET**!
gr.rect l1,ltbvx1-nox,ltbvy1,ltbvx2-nox,ltbvy2

gr.rect l1,blbvx1-nox,blbvy1,blbvx2-nox,blbvy2


!**BTM SET**!
gr.rect l1,trbvx1+pox,trbvy1,trbvx2+pox,trbvy2

gr.rect l1,brbvx1+pox,brbvy1,brbvx2+pox,brbvy2




!****************************!
!***END OF THEME ANIMATION***!
!****************************!









if play>=w/3 then clear3=1

gr.render
if clear3=0 then gr.cls

NEXT

!++++++++++++++++++++++++++++++!
!++END THEME BUTTON ANIMATION++!
!++++++++++++++++++++++++++++++!



!++++++++++++++++++++++++++!
!++++PLAY BUTTON STABLE++++!
!++++++++++++++++++++++++++!
o3=h/4
for play=0 to w/3 step w/30
o3=h/4
pox=w/3
nox=w/3

vv1=w/3

!**Top left**!
gr.rect l1,w/2.2-vv1,h/10.3,w/2-vv1,h/9.5


!**Bottom left**!
gr.rect l1,w/2.2-vv1,h/4.15,w/2-vv1,h/4.02


!**Top right**!
gr.rect l1,w/2+vv1,h/10.3,w/1.82+vv1,h/9.5


!**Bottom right**!
gr.rect l1,w/2+vv1,h/4.15,w/1.82+vv1,h/4.02



!**TOP SET**!
gr.rect l1,ltbvx1-nox,ltbvy1,ltbvx2-nox,ltbvy2

gr.rect l1,blbvx1-nox,blbvy1,blbvx2-nox,blbvy2


!**BTM SET**!
gr.rect l1,trbvx1+pox,trbvy1,trbvx2+pox,trbvy2

gr.rect l1,brbvx1+pox,brbvy1,brbvx2+pox,brbvy2

!****************************!
!***END OF PLAY BTN STABLE***!
!****************************!





skip2:

!++++++++++++++++++++++++++!
!++++PLAY BUTTON STABLE++++!
!++++++++++++++++++++++++++!
o3=h/4
for play=0 to w/3 step w/30
o3=h/4
pox=w/3
nox=w/3

vv1=w/3

!**Top left**!
gr.rect l1,w/2.2-vv1,h/10.3,w/2-vv1,h/9.5


!**Bottom left**!
gr.rect l1,w/2.2-vv1,h/4.15,w/2-vv1,h/4.02


!**Top right**!
gr.rect l1,w/2+vv1,h/10.3,w/1.82+vv1,h/9.5


!**Bottom right**!
gr.rect l1,w/2+vv1,h/4.15,w/1.82+vv1,h/4.02



!**TOP SET**!
gr.rect l1,ltbvx1-nox,ltbvy1,ltbvx2-nox,ltbvy2

gr.rect l1,blbvx1-nox,blbvy1,blbvx2-nox,blbvy2


!**BTM SET**!
gr.rect l1,trbvx1+pox,trbvy1,trbvx2+pox,trbvy2

gr.rect l1,brbvx1+pox,brbvy1,brbvx2+pox,brbvy2

!****************************!
!***END OF PLAY BTN STABLE***!
!****************************!



!*************************!
!***THEME BUTTON STABLE***!
!*************************!
tho=h/2
thb=w/3


!**Top left**!
gr.rect l1,w/2.2-thb,h/10.3+tho,w/2-thb,h/9.5+tho


!**Bottom left**!
gr.rect l1,w/2.2-thb,h/4.15+tho,w/2-thb,h/4.02+tho


!**Top right**!
gr.rect l1,w/2+thb,h/10.3+tho,w/1.82+thb,h/9.5+tho


!**Bottom right**!
gr.rect l1,w/2+thb,h/4.15+tho,w/1.82+thb,h/4.02+tho



!**TOP SET**!
gr.rect l1,ltbvx1-thb,ltbvy1+o4,ltbvx2-thb,ltbvy2+o4

gr.rect l1,blbvx1-thb,blbvy1+o4,blbvx2-thb,blbvy2+o4

!**BTM SET**!

gr.rect l1,trbvx1+thb,trbvy1+o4,trbvx2+thb,trbvy2+o4

gr.rect l1,brbvx1+thb,brbvy1+o4,brbvx2+thb,brbvy2+o4

!*****************************!
!***END OF THEME BTN STABLE***!
!*****************************!



!*************************!
!***SHARE BUTTON STABLE***!
!*************************!
sho=h/4
sb2=w/3

!**Top left**!
gr.rect l1,w/2.2-sb2,h/10.3+sho,w/2-sb2,h/9.5+sho

!**Bottom left**!
gr.rect l1,w/2.2-sb2,h/4.15+sho,w/2-sb2,h/4.02+sho

!**Top right**!
gr.rect l1,w/2+sb2,h/10.3+sho,w/1.82+sb2,h/9.5+sho

!**Bottom right**!
gr.rect l1,w/2+sb2,h/4.15+sho,w/1.82+sb2,h/4.02+sho


!**TOP SET**!
gr.rect l1,ltbvx1-sb2,ltbvy1+o3,ltbvx2-sb2,ltbvy2+o3

gr.rect l1,blbvx1-sb2,blbvy1+o3,blbvx2-sb2,blbvy2+o3


!**BTM SET**
gr.rect l1,trbvx1+sb2,trbvy1+o3,trbvx2+sb2,trbvy2+o3

gr.rect l1,brbvx1+sb2,brbvy1+o3,brbvx2+sb2,brbvy2+o3

!+++++++++++++++++++++++++++!
!++END SHARE BUTTON STABLE++!
!+++++++++++++++++++++++++++!






































































gr.text.size w/8
if language$="English" then gr.text.draw txt1,w/3.9,Ltbhy1+h/1.68,"THEMES"


if language$="Spanish" then gr.text.draw txt1,w/3.1,Ltbhy1+h/1.68,"TEMA"



if language$="French" then gr.text.draw txt1,w/3.5,Ltbhy1+h/1.68,"THÈME"


if language$="Chinese" then gr.text.draw txt1,w/2.7,Ltbhy1+h/1.68,"主题"


if language$="Arabic" then gr.text.draw txt1,w/3.1,Ltbhy1+h/1.7,"موضوع"


if language$="Japanese" then gr.text.draw txt1,w/3.2,Ltbhy1+h/1.68,"テーマ"



if language$="Hebrew" then gr.text.draw txt1,w/2.7,Ltbhy1+h/1.68,"נושא"






















gr.text.size w/12

if language$="English" then gr.text.draw txt1,w/2.7,Ltbhy1+h/1.3,"English"

if language$="Spanish" then gr.text.draw txt1,w/2.85,Ltbhy1+h/1.3,"español"

if language$="French" then gr.text.draw txt1,w/2.85,Ltbhy1+h/1.3,"français"

if language$="Chinese" then gr.text.draw txt1,w/2.4,Ltbhy1+h/1.3,"中国"

if language$="Arabic" then gr.text.draw txt1,w/2.4,Ltbhy1+h/1.3,"عربي"

if language$="Japanese" then gr.text.draw txt1,w/2.7,Ltbhy1+h/1.3,"日本語"

if language$="Hebrew" then gr.text.draw txt1,w/2.6,Ltbhy1+h/1.3,"עברית"

gr.text.size w/12














!***Play button shadow***!
!gr.rect l1,w/10,h/11,w/1.12,h/4
!************************!


!***Themes shadow***!
!gr.rect l1,w/10,h/1.7,w/1.12,h/1.3
!************************!


!***Language shadow***!
!gr.rect l1,w/3,h/1.23,w/1.5,h/1.1
!*********************!

!**Share button shadow***!
!gr.rect l1,w/10,h/2.005,w/1.1,h/2.88
!************************!





XSKIPX:
gr.render
pause 700
Main_menu:
do 
gr.touch touched,x, y
until touched
if x>=w/10 & x<=w/1.12 & y>=h/11 & y<=h/4 then gr.cls:gr.render:goto start_of_game


if x>=w/10 & x<=w/1.12 & y>=h/1.7 & y<=h/1.3 then gr.cls:gr.render:goto theme_menu



if x>=w/3 & x<=w/1.5 & y>=h/1.23 & y<=h/1.1 then gr.cls:gr.render:goto language_menu



if x>=w/10 & y>=h/2.88 & x<=w/1.1 & y<=h/2.005 then goto share



goto main_menu
!++++++++++++++++++++++!
!***END OF MAIN MENU***!
!++++++++++++++++++++++!




!*********************!
!***Sharing feature***!
!*********************!
share:
link$="http://play.google.com/store/apps/details?id=com.smashincsoft.game"





!***SORTING***!
if language$="English" then goto es1
if language$="Spanish" then goto es2
if language$="French" then goto es3
if language$="Chinese" then goto es4
if language$="Arabic" then goto es5
if language$="Japanese" then goto es6
if language$="Hebrew" then goto es7
!***************!

goto share_skip


!***ENGLISH***!
es1:
mssg$="Download SMASH! Get it on Google Play                                   "
space$="                                                                                                                                  "

Clipboard.put mssg$+space$+link$ 

gr.color 255,0,0,0,1
gr.text.size w/20
gr.text.draw txt1,w/2.65,h/1.05,"Link copied"
gr.render
goto share_skip



!***SPANISH***!
es2:
mssg$="descargar Smash consíguela en Google play                                   "
space$="                                                                                                                                  "
Clipboard.put mssg$+space$+link$ 

gr.color 255,0,0,0,1
gr.text.size w/20
gr.text.draw txt1,w/2.8,h/1.05,"vínculo copia"
gr.render
goto share_skip





!***FRENCH***!
es3:
mssg$="télécharger Smash! obtenir sur Google play                                   "
space$="                                                                                                                                  "

Clipboard.put mssg$+space$+link$ 
gr.color 255,0,0,0,1
gr.text.size w/20
gr.text.draw txt1,w/2.55,h/1.05,"lien copié"
gr.render
goto share_skip






!***CHINESE***!
es4:
mssg$="下载粉碎！得到它在Google Play上                                   "
space$="                                                                                                                                  "

Clipboard.put mssg$+space$+link$ 

gr.color 255,0,0,0,1
gr.text.size w/20
gr.text.draw txt1,w/2.5,h/1.05,"链接拷贝"
gr.render
goto share_skip







!***ARABIC***!
es5:
mssg$="تحميل سحق الحصول عليها على جوجل لعب                                  "
space$="                                                                                                                                  "

Clipboard.put mssg$+space$+link$ 

gr.color 255,0,0,0,1
gr.text.size w/20
gr.text.draw txt1,w/2.45,h/1.05,"رابط نسخ"
gr.render
goto share_skip






!***JAPANESE***!
es6:
mssg$="ダウンロードスマッシュそれを得るGoogleでプレイ                                  "
space$="                                                                                                                                  "

Clipboard.put mssg$+space$+link$ 

gr.color 255,0,0,0,1
gr.text.size w/20
gr.text.draw txt1,w/3.5,h/1.05,"リンクコピーされた"
gr.render
goto share_skip






!***HEBREW***!
es7:
mssg$="הורד לרסק לקבל את זה בגוגל לשחק                                  "
space$="                                                                                                                                  "

Clipboard.put mssg$+space$+link$ 

gr.color 255,0,0,0,1
gr.text.size w/20
gr.text.draw txt1,w/2.7,h/1.05,"קישור מועתק"
gr.render
goto share_skip



















share_skip:

!!
gr.color 255,255,0,0,1
gr.line l1,w/2,h/h-1,w/2,h
gr.color 255,0,0,0,1
gr.render

tst:

goto tst
!!










pause 1000


app.start "android.intent.action.SEND",,,,"text/plain"


pause 1000

gr.cls:share=1:goto st



goto main_menu
















!*******************!
!***LANGUAGE MENU***!
!*******************!
language_menu:
gr.text.size w/10
gr.color 255,0,0,0,1

gr.line l1,w/w-1,h/6,w,h/6
gr.line l1,w/w-1,h/3,w,h/3
gr.line l1,w/w-1,h/2,w,h/2
gr.line l1,w/w-1,h/1.5,w,h/1.5
gr.line l1,w/3,h/1.2,w/1.5,h/1.2
!**Vertical line**!
gr.line l1,w/2,h/6,w/2,h/1.5










!**First row**!
gr.text.draw txt1,w/12,h/3.6,"English"

gr.text.draw txt1,w/1.78,h/3.6,"español"
!*************!


!**Second row**!
!**************!
!**FRENCH**!
gr.text.draw txt1,w/13,h/2.3,"français"

!**CHINESE**!
gr.text.draw txt1,w/1.55,h/2.3,"中国"
!*************!



!**Third row**!
!*************!
!**Arabic**!
gr.text.draw txt1,w/6,h/1.67,"عربي"


!**Japanese**!
gr.text.draw txt1,w/1.7,h/1.67,"日本語"
!*************!


!***HEBREW***!
gr.text.draw txt1,w/2.8,h/1.3,"עברית"





!**English Shadow**!
!gr.rect l1,w/w-1,h/6,w/2,h/3
!***********!


!**Spanish Shadow**!
!gr.rect l1,w/2,h/6,w,h/3
!***********!


!**French Shadow**!
!gr.rect l1,w/w-1,h/3,w/2,h/2
!*****************!


!**Chinese Shadow**!
!gr.rect l1,w/2,h/3,w,h/2
!***********!


!**Arabic Shadow**!
!gr.rect l1,w/w-1,h/2,w/2,h/1.5
!*****************!


!**Japanese Shadow**!
!gr.rect l1,w/2,h/2,w,h/1.5
!***********!


!**Hebrew shadow**!
!gr.rect l1,w/4,h/1.5,w/1.35,h/1.2
!*****************!


gr.render
pause 300
lmt:
file$="Language.data"
gr.touch touched,x,y



!***ENGLISH***!
if x>=w/w-1 & x<=w/2 & y>=h/6 & y<=h/3 then BYTE.OPEN W, wf,file$:FILE.SIZE count,file$:Byte.write.Buffer wf, "English":gr.cls:gr.render:clear=0:clear2=0:clear3=0:langx=1:goto st
!*************!


!***SPANISH***!
if x>=w/2 & y>=h/6 & x<=w & y<=h/3 then BYTE.OPEN W, wf,file$:FILE.SIZE count,file$:Byte.write.Buffer wf, "Spanish":gr.cls:gr.render:clear=0:clear2=0:clear3=0:langx=1:goto st
!*************!


!***FRENCH***!
if x>=w/w-1 & x<=w/2 & y>=h/3 & y<=h/2 then BYTE.OPEN W, wf,file$:FILE.SIZE count,file$:Byte.write.Buffer wf, "French":gr.cls:gr.render:clear=0:clear2=0:clear3=0:langx=1:goto st
!************!


!***CHINESE***!
if x>=w/2 & x<=w & y>=h/3 & y<=h/2 then BYTE.OPEN W, wf,file$:FILE.SIZE count,file$:Byte.write.Buffer wf, "Chinese":gr.cls:gr.render:clear=0:clear2=0:clear3=0:langx=1:goto st
!*************!


!***ARABIC***!
if x>=w/w-1 & x<=w/2 & y>=h/2 & y<=h/1.5 then BYTE.OPEN W, wf,file$:FILE.SIZE count,file$:Byte.write.Buffer wf, "Arabic":gr.cls:gr.render:clear=0:clear2=0:clear3=0:langx=1:goto st
!************!


!***JAPANESE***!
if x>=w/2 & x<=w & y>=h/2 & y<=h/1.5 then BYTE.OPEN W, wf,file$:FILE.SIZE count,file$:Byte.write.Buffer wf, "Japanese":gr.cls:gr.render:clear=0:clear2=0:clear3=0:langx=1:goto st
!**************!


!***HEBREW***!
if x>=w/4 & x<=w/1.35 & y>=h/1.5 & y<=h/1.2 then BYTE.OPEN W, wf,file$:FILE.SIZE count,file$:Byte.write.Buffer wf, "Hebrew":gr.cls:gr.render:clear=0:clear2=0:clear3=0:langx=1:goto st
!************!













goto lmt
!**************************!
!***END OF LANGUAGE MENU***!
!**************************!
























!++++++++++++++++!
!+++THEME MENU+++!
!++++++++++++++++!
theme_menu:
o10=h/4
o11=h/6
o12=h/3
o13=h/2
o14=h/20*-0.01

box_x1=w/28
box_x2=w/5
box_y1=h/5
box_y2=h/3.3

bx1=box_x1
bx2=box_x2
by1=box_y1
by2=box_y2

!***************!
!***FIRST ROW***!
!***************!

!**White**!
gr.color 255,255,255,255,1
gr.rect l1,w/28,h/5,w/5,h/3.3



gr.rect l1,bx1,by1+o14,bx2,by2+o14
!*********!

!***Dark blue***!
gr.color 255,15,55,255,1
gr.rect l1,bx1+w/4,by1+o14,bx2+w/4,by2+o14
!***************!


!***Light red***!
gr.color 255,255,0,0,1
gr.rect l1,bx1+w/2,by1+o14,bx2+w/2,by2+o14
!****************!


!***Dark green***!
gr.color 255,0,100,0,1
gr.rect l1,bx1+w/1.3,by1+o14,bx2+w/1.3,by2+o14
!****************!

!**********************!
!***END OF FIRST ROW***!
!**********************!


!******************************!

!****************!
!***SECOND ROW***!
!****************!
!***Light blue***!
gr.color 255,15,155,255,1
gr.rect l1,bx1,by1+o11+o14,bx2,by2+o11+o14
!****************!


!***Dark pink***!
gr.color 255,220,0,130,1
gr.rect l1,bx1+w/4,by1+o11+o14,bx2+w/4,by2+o11+o14
!***************!


!***Dark yellow***!
gr.color 255,220,200,50,1
gr.rect l1,bx1+w/2,by1+o11+o14,bx2+w/2,by2+o11+o14
!*****************!


!***Light Gray***!
gr.color 255,150,170,180,1
gr.rect l1,bx1+w/1.3,by1+o11+o14,bx2+w/1.3,by2+o11+o14
!****************!
!***********************!
!***END OF SECOND ROW***!
!***********************!

!*****************************!

!***************!
!***THIRD ROW***!
!***************!
!***Dark gray***!
gr.color 255,100,120,130,1
gr.rect l1,bx1,by1+o12+o14,bx2,by2+o12+o14
!***************!


!***Orange***!
gr.color 255,255,100,0,1
gr.rect l1,bx1+w/4,by1+o12+o14,bx2+w/4,by2+o12+o14
!************!


!***Light yellow***!
gr.color 255,255,250,0,1
gr.rect l1,bx1+w/2,by1+o12+o14,bx2+w/2,by2+o12+o14
!******************!


!***Light pink***!
gr.color 255,255,130,200,1
gr.rect l1,bx1+w/1.3,by1+o12+o14,bx2+w/1.3,by2+o12+o14
!****************!

!**********************!
!***END OF THIRD ROW***!
!**********************!

!******************************!

!****************!
!***FOURTH ROW***!
!****************!

!***Dark red***!
gr.color 255,155,30,0,1
gr.rect l1,bx1,by1+o13+o14,bx2,by2+o13+o14
!**************!


!***Brown***!
gr.color 255,125,80,50,1
gr.rect l1,bx1+w/4,by1+o13+o14,bx2+w/4,by2+o13+o14
!***********!


!***Light green***!
gr.color 255,0,255,0,1
gr.rect l1,bx1+w/2,by1+o13+o14,bx2+w/2,by2+o13+o14
!*****************!


!***Purple***!
gr.color 255,100,50,78,1
gr.rect l1,bx1+w/1.3,by1+o13+o14,bx2+w/1.3,by2+o13+o14
!************!

!***********************!
!***END OF FOURTH ROW***!
!***********************!











gr.render
pause 700
tms:
gr.touch touched,x,y


!***White***!
if x>=w/28 & x<=w/5 & y>=h/5 & y<=h/3.3 then BYTE.OPEN W, wf,xfile$:FILE.SIZE count,xfile$:Byte.write.Buffer wf, "white":gr.cls:gr.render:theme_reset=1:goto greset
!***********!


!***Dark blue***!
if x>=bx1+w/4 & Y>= by1+o14 & X<=bx2+w/4 & Y<=by2+o14 then BYTE.OPEN W, wf,xfile$:FILE.SIZE count,xfile$:Byte.write.Buffer wf, "dark_blue":gr.cls:gr.render:theme_reset=1:goto greset
!***************!



!***Light Red***!
if x>=bx1+w/2 & y>=by1+o14 & x<=bx2+w/2 & y<=by2+o14 then BYTE.OPEN W, wf,xfile$:FILE.SIZE count,xfile$:Byte.write.Buffer wf, "light_red":gr.cls:gr.render:theme_reset=1:goto greset
!****************!


!***Dark Green***!
if x>=bx1+w/1.3 & y>=by1+o14 & x<=bx2+w/1.3 & y<=by2+o14 then BYTE.OPEN W, wf,xfile$:FILE.SIZE count,xfile$:Byte.write.Buffer wf, "dark_green":gr.cls:gr.render:theme_reset=1:goto greset
!****************!



!***Light blue***!
if x>=bx1 & y>=by1+o11+o14 & x<=bx2 & y<=by2+o11+o14 then BYTE.OPEN W, wf,xfile$:FILE.SIZE count,xfile$:Byte.write.Buffer wf, "light_blue":gr.cls:gr.render:theme_reset=1:goto greset
!****************!


!***Dark pink***!
if x>=bx1+w/4 & y>=by1+o11+o14 & x<=bx2+w/4 & y<=by2+o11+o14 then BYTE.OPEN W, wf,xfile$:FILE.SIZE count,xfile$:Byte.write.Buffer wf, "dark_pink":gr.cls:gr.render:theme_reset=1:goto greset
!***************!


!***Dark yellow***!
if x>=bx1+w/2 & y>=by1+o11+o14 & x<=bx2+w/2 & y<=by2+o11+o14 then BYTE.OPEN W, wf,xfile$:FILE.SIZE count,xfile$:Byte.write.Buffer wf, "dark_yellow":gr.cls:gr.render:theme_reset=1:goto greset
!*****************!




!***Light gray***!
if x>=bx1+w/1.3 & y>=by1+o11+o14 & x<=bx2+w/1.3 & y<=by2+o11+o14 then BYTE.OPEN W, wf,xfile$:FILE.SIZE count,xfile$:Byte.write.Buffer wf, "light_gray":gr.cls:gr.render:theme_reset=1:goto greset
!****************!


!***Dark gray***!
if x>=bx1 & y>=by1+o12+o14 & x<=bx2 & y<=by2+o12+o14 then BYTE.OPEN W, wf,xfile$:FILE.SIZE count,xfile$:Byte.write.Buffer wf, "dark_gray":gr.cls:gr.render:theme_reset=1:goto greset
!***************!



!***Orange***!
if x>=bx1+w/4 & y>=by1+o12+o14 & x<=bx2+w/4 & y<=by2+o12+o14 then BYTE.OPEN W, wf,xfile$:FILE.SIZE count,xfile$:Byte.write.Buffer wf, "orange":gr.cls:gr.render:theme_reset=1:goto greset
!************!



!***Light yellow***!
if x>=bx1+w/2 & y>=by1+o12+o14 & x<=bx2+w/2 & y<=by2+o12+o14 then BYTE.OPEN W, wf,xfile$:FILE.SIZE count,xfile$:Byte.write.Buffer wf, "light_yellow":gr.cls:gr.render:theme_reset=1:goto greset
!******************!


!***Light pink***!
if x>=bx1+w/1.3 & y>=by1+o12+o14 & x<=bx2+w/1.3 & y<=by2+o12+o14 then BYTE.OPEN W, wf,xfile$:FILE.SIZE count,xfile$:Byte.write.Buffer wf, "light_pink":gr.cls:gr.render:theme_reset=1:goto greset
!****************!


!***Dark red***!
if x>=bx1 & y>=by1+o13+o14 & x<=bx2 & y<=by2+o13+o14 then BYTE.OPEN W, wf,xfile$:FILE.SIZE count,xfile$:Byte.write.Buffer wf, "dark_red":gr.cls:gr.render:theme_reset=1:goto greset
!**************!


!***Brown***!
if x>=bx1+w/4 & y>=by1+o13+o14 & x<=bx2+w/4 & y<=by2+o13+o14 then BYTE.OPEN W, wf,xfile$:FILE.SIZE count,xfile$:Byte.write.Buffer wf, "brown":gr.cls:gr.render:theme_reset=1:goto greset
!***********!



!***Light Green***!
if x>=bx1+w/2 & y>=by1+o13+o14 & x<=bx2+w/2 & y<=by2+o13+o14 then BYTE.OPEN W, wf,xfile$:FILE.SIZE count,xfile$:Byte.write.Buffer wf, "light_green":gr.cls:gr.render:theme_reset=1:goto greset
!*****************!


!***Purple***!
if x>=bx1+w/1.3 & y>=by1+o13+o14 & x<=bx2+w/1.3 & y<=by2+o13+o14 then BYTE.OPEN W, wf,xfile$:FILE.SIZE count,xfile$:Byte.write.Buffer wf, "purple":gr.cls:gr.render:theme_reset=1:goto greset
!************!


















goto tms
!+++++++++++++++++++++++!
!+++END OF THEME MENU+++!
!+++++++++++++++++++++++!











































!********MAIN MENU2*********!

!++++++++++++++++++++++++++++++!
!+++MAIN MENU2(No animation)+++!
!++++++++++++++++++++++++++++++!
xmenu:
gr.cls
pox=w/3
nox=w/3




!**TOP SET**!
gr.rect l1,ltbhx1-nox,ltbhy1,ltbhx2-nox,ltbhy2

gr.rect l1,ltbvx1-nox,ltbvy1,ltbvx2-nox,ltbvy2

gr.rect l1,blbhx1-nox,blbhy1,blbhx2-nox,blbhy2

gr.rect l1,blbvx1-nox,blbvy1,blbvx2-nox,blbvy2

!**BTM SET**
gr.rect l1,trbhx1+pox,trbhy1,trbhx2+pox,trbhy2

gr.rect l1,trbvx1+pox,trbvy1,trbvx2+pox,trbvy2

gr.rect l1,brbhx1+pox,brbhy1,brbhx2+pox,brbhy2
gr.rect l1,brbvx1+pox,brbvy1,brbvx2+pox,brbvy2
!************************!
!***END OF PLAY BUTTON***!
!************************!



!******************!
!***SHARE BUTTON***!
!******************!

!**TOP SET**!
gr.rect l1,ltbhx1-nox,ltbhy1+o5,ltbhx2-nox,ltbhy2+o5

gr.rect l1,ltbvx1-nox,ltbvy1+o5,ltbvx2-nox,ltbvy2+o5

gr.rect l1,blbhx1-nox,blbhy1+o5,blbhx2-nox,blbhy2+o5

gr.rect l1,blbvx1-nox,blbvy1+o5,blbvx2-nox,blbvy2+o5

!**BTM SET**
gr.rect l1,trbhx1+pox,trbhy1+o5,trbhx2+pox,trbhy2+o5

gr.rect l1,trbvx1+pox,trbvy1+o5,trbvx2+pox,trbvy2+o5

gr.rect l1,brbhx1+pox,brbhy1+o5,brbhx2+pox,brbhy2+o5
gr.rect l1,brbvx1+pox,brbvy1+o5,brbvx2+pox,brbvy2+o5
!*************************!
!***END OF SHARE BUTTON***!
!*************************!





!*******************!
!***THEMES BUTTON***!
!*******************!
o9=h/2
gr.text.size w/8


if language$="English" then gr.text.draw txt1,w/2.8,Ltbhy1+h/10.5,"PLAY"


if language$="Spanish" then gr.text.draw txt1,w/3. 3,Ltbhy1+h/10.5,"JUGAR"


if language$="French" then gr.text.draw txt1,w/3.3,Ltbhy1+h/10.5,"JOUER"



if language$="Chinese" then gr.text.draw txt1,w/2. 3,Ltbhy1+h/10.5,"玩"



if language$="Arabic" then gr.text.draw txt1,w/2.5,Ltbhy1+h/10.5,"لعب"


if language$="Japanese" then gr.text.draw txt1,w/3. 2,Ltbhy1+h/10.5,"プレイ"



if language$="Hebrew" then gr.text.draw txt1,w/2.65,Ltbhy1+h/10.5,"שחק"


!**TOP SET**!
gr.rect l1,ltbhx1-nox,ltbhy1+o9,ltbhx2-nox,ltbhy2+o9

gr.rect l1,ltbvx1-nox,ltbvy1+o9,ltbvx2-nox,ltbvy2+o9

gr.rect l1,blbhx1-nox,blbhy1+o9,blbhx2-nox,blbhy2+o9

gr.rect l1,blbvx1-nox,blbvy1+o9,blbvx2-nox,blbvy2+o9

!**BTM SET**
gr.rect l1,trbhx1+pox,trbhy1+o9,trbhx2+pox,trbhy2+o9

gr.rect l1,trbvx1+pox,trbvy1+o9,trbvx2+pox,trbvy2+o9

gr.rect l1,brbhx1+pox,brbhy1+o9,brbhx2+pox,brbhy2+o9
gr.rect l1,brbvx1+pox,brbvy1+o9,brbvx2+pox,brbvy2+o9
!**************************!
!***END OF THEMES BUTTON***!
!**************************!








gr.text.draw txt1,w/3.6,Ltbhy1+h/1.7,"THEMES"



gr.text.size w/13.5
gr.text.draw txt1,w/2.7,Ltbhy1+h/1.3,"English"
gr.text.size w/9


gr.text.draw txt1,w/3.2,Ltbhy1+h/3,"SHARE"

gr.render

dm1:



goto dm1

!**********************!
!***END OF DARK MENU***!
!**********************!






















!**********!































































!*************************!
!****End Main Menu Pro****!
!*************************!
x=0:y=0
pause 1200















START_OF_GAME:
!level=31


!***Game***!
MAIN:
!**********!
over=0
gr.color 255,0,0,0,1
!***Left Box***!
left_box_x1=w/w-1
left_box_x2=w/3
left_box_y1=h/1.15
left_box_y2=h/1

lbx1=left_box_x1
lbx2=left_box_x2
lby1=left_box_y1
lby2=left_box_y2

!gr.rect r1,lbx1,lby1,lbx2,lby2

!***Right Box***!
right_box_x1=w/1.5
right_box_x2=w/1
right_box_y1=h/1.15
right_box_y2=h/1

rbx1=right_box_x1
rbx2=right_box_x2
rby1=right_box_y1
rby2=right_box_y2

!gr.rect l1,rbx1,rby1,rbx2,rby2

gr.color 255,0,0,0,1
gr.text.size w/18


!***Thanks for playing***!
if level>=181 then goto thanks
!************************!



!***LEVEL PACK 1A***!
if level>=1 & level<=30 then level_pack_one=1:balls=1:level_pack_six=0:level_pack_five=0:level_pack_four=0:level_pack_three=0:level_pack_two=0
!*******************!

!***LEVEL PACK 2A***!
if level>=31 & level<=60 then level_pack_two=1:balls=2:level_pack_six=0:level_pack_five=0:level_pack_four=0:level_pack_three=0:level_pack_one=0
!*******************!

!***LEVEL PACK 3A***!
if level>=61 & level<=90 then level_pack_three=1:balls=3:level_pack_six=0:level_pack_five=0:level_pack_four=0:level_pack_two=0:level_pack_one=0
!*******************!

!***LEVEL PACK 4A***!
if level>=91 & level<=120 then level_pack_four=1:balls=4:level_pack_six=0:level_pack_five=0:level_pack_three=0:level_pack_two=0:level_pack_one=0
!*******************!

!***LEVEL PACK 5A***!
if level>=121 & level<=150 then level_pack_five=1:balls=5:level_pack_six=0:level_pack_four=0:level_pack_three=0:level_pack_two=0:level_pack_one=0
!*******************!

!***LEVEL PACK 6A***!
if level>=151 & level<=180 then level_pack_six=1:balls=6:level_pack_five=0:level_pack_four=0:level_pack_three=0:level_pack_two=0:level_pack_one=0
!*******************!


Level_title_width=w/2.06
Ltw=Level_title_width

Level_title_width_2=w/w*2.13
Ltw2=Level_title_width_2

Level_title_width_3=w/w*2.21
Ltw3=Level_title_width_3



!********************!
!****LEVEL PACK 1****!
!********************!
if level=1 then gr.text.draw txt1,ltw,h/2,"1":speed=h/888*1. 5

if level=2 then gr.text.draw txt1,ltw,h/2,"2":speed=h/888*3

if level=3 then gr.text.draw txt1,ltw,h/2,"3":speed=h/888*4.5

if level=4 then gr.text.draw txt1,ltw,h/2,"4":speed=h/888*6

if level=5 then gr.text.draw txt1,ltw,h/2,"5":speed=h/888*7.5

if level=6 then gr.text.draw txt1,ltw,h/2,"6":speed=h/888*9

if level=7 then gr.text.draw txt1,ltw,h/2,"7":speed=h/888*10.5

if level=8 then gr.text.draw txt1,ltw,h/2,"8":speed=h/888*12

if level=9 then gr.text.draw txt1,ltw,h/2,"9":speed=h/888*13.5

!***Decrease space for higher numbers***!

if level=10 then gr.text.draw txt1,w/ltw2,h/2,"10":speed=h/888*15



if level=11 then gr.text.draw txt1,w/ltw2,h/2,"11":speed=h/888*16.5

if level=12 then gr.text.draw txt1,w/ltw2,h/2,"12":speed=h/888*18

if level=13 then gr.text.draw txt1,w/ltw2,h/2,"13":speed=h/888*19.5

if level=14 then gr.text.draw txt1,w/ltw2,h/2,"14":speed=h/888*21

if level=15 then gr.text.draw txt1,w/ltw2,h/2,"15":speed=h/888*22.5

if level=16 then gr.text.draw txt1,w/ltw2,h/2,"16":speed=h/888*24

if level=17 then gr.text.draw txt1,w/ltw2,h/2,"17":speed=h/888*25.5

if level=18 then gr.text.draw txt1,w/ltw2,h/2,"18":speed=h/888*27

if level=19 then gr.text.draw txt1,w/ltw2,h/2,"19":speed=h/888*28.5

if level=20 then gr.text.draw txt1,w/ltw2,h/2,"20":speed=h/888*30



if level=21 then gr.text.draw txt1,w/ltw2,h/2,"21":speed=h/888*31.5

if level=22 then gr.text.draw txt1,w/ltw2,h/2,"22":speed=h/888*33

if level=23 then gr.text.draw txt1,w/ltw2,h/2,"23":speed=h/888*34.5

if level=24 then gr.text.draw txt1,w/ltw2,h/2,"24":speed=h/888*36

if level=25 then gr.text.draw txt1,w/ltw2,h/2,"25":speed=h/888*37.5

if level=26 then gr.text.draw txt1,w/ltw2,h/2,"26":speed=h/888*39

if level=27 then gr.text.draw txt1,w/ltw2,h/2,"27":speed=h/888*40.5

if level=28 then gr.text.draw txt1,w/ltw2,h/2,"28":speed=h/888*42

if level=29 then gr.text.draw txt1,w/ltw2,h/2,"29":speed=h/888*43.5

if level=30 then gr.text.draw txt1,w/ltw2,h/2,"30":speed=h/888*45
!***************************!
!****END OF LEVEL PACK 1****!
!***************************!


!******************************!


!********************!
!****LEVEL PACK 2****!
!********************!
if level=31 then gr.text.draw txt1,w/ltw2,h/2,"31":speed=h/888*1.5

if level=32 then gr.text.draw txt1,w/ltw2,h/2,"32":speed=h/888*3

if level=33 then gr.text.draw txt1,w/ltw2,h/2,"33":speed=h/888*4.5

if level=34 then gr.text.draw txt1,w/ltw2,h/2,"34":speed=h/888*6

if level=35 then gr.text.draw txt1,w/ltw2,h/2,"35":speed=h/888*7.5

if level=36 then gr.text.draw txt1,w/ltw2,h/2,"36":speed=h/888*9

if level=37 then gr.text.draw txt1,w/ltw2,h/2,"37":speed=h/888*10.5

if level=38 then gr.text.draw txt1,w/ltw2,h/2,"38":speed=h/888*12

if level=39 then gr.text.draw txt1,w/ltw2,h/2,"39":speed=h/888*13.5

if level=40 then gr.text.draw txt1,w/ltw2,h/2,"40":speed=h/888*15




if level=41 then gr.text.draw txt1,w/ltw2,h/2,"41":speed=h/888*16.5

if level=42 then gr.text.draw txt1,w/ltw2,h/2,"42":speed=h/888*18

if level=43 then gr.text.draw txt1,w/ltw2,h/2,"43":speed=h/888*19.5

if level=44 then gr.text.draw txt1,w/ltw2,h/2,"44":speed=h/888*21

if level=45 then gr.text.draw txt1,w/ltw2,h/2,"45":speed=h/888*22.5

if level=46 then gr.text.draw txt1,w/ltw2,h/2,"46":speed=h/888*24

if level=47 then gr.text.draw txt1,w/ltw2,h/2,"47":speed=h/888*25.5

if level=48 then gr.text.draw txt1,w/ltw2,h/2,"48":speed=h/888*27

if level=49 then gr.text.draw txt1,w/ltw2,h/2,"49":speed=h/888*28.5

if level=50 then gr.text.draw txt1,w/ltw2,h/2,"50":speed=h/888*30



if level=51 then gr.text.draw txt1,w/ltw2,h/2,"51":speed=h/888*31.5

if level=52 then gr.text.draw txt1,w/ltw2,h/2,"52":speed=h/888*33

if level=53 then gr.text.draw txt1,w/ltw2,h/2,"53":speed=h/888*34.5

if level=54 then gr.text.draw txt1,w/ltw2,h/2,"54":speed=h/888*36

if level=55 then gr.text.draw txt1,w/ltw2,h/2,"55":speed=h/888*37.5

if level=56 then gr.text.draw txt1,w/ltw2,h/2,"56":speed=h/888*39

if level=57 then gr.text.draw txt1,w/ltw2,h/2,"57":speed=h/888*40.5

if level=58 then gr.text.draw txt1,w/ltw2,h/2,"58":speed=h/888*42

if level=59 then gr.text.draw txt1,w/ltw2,h/2,"59":speed=h/888*43.5

if level=60 then gr.text.draw txt1,w/ltw2,h/2,"60":speed=h/888*45
!***************************!
!****END OF LEVEL PACK 2****!
!***************************!


!******************************!


!********************!
!****LEVEL PACK 3****!
!********************!
if level=61 then gr.text.draw txt1,w/ltw2,h/2,"61":speed=h/888*1.5

if level=62 then gr.text.draw txt1,w/ltw2,h/2,"62":speed=h/888*3

if level=63 then gr.text.draw txt1,w/ltw2,h/2,"63":speed=h/888*4.5

if level=64 then gr.text.draw txt1,w/ltw2,h/2,"64":speed=h/888*6

if level=65 then gr.text.draw txt1,w/ltw2,h/2,"65":speed=h/888*7.5

if level=66 then gr.text.draw txt1,w/ltw2,h/2,"66":speed=h/888*9

if level=67 then gr.text.draw txt1,w/ltw2,h/2,"67":speed=h/888*10.5

if level=68 then gr.text.draw txt1,w/ltw2,h/2,"68":speed=h/888*12

if level=69 then gr.text.draw txt1,w/ltw2,h/2,"69":speed=h/888*13.5

if level=70 then gr.text.draw txt1,w/ltw2,h/2,"70":speed=h/888*15


if level=71 then gr.text.draw txt1,w/ltw2,h/2,"71":speed=h/888*16.5

if level=72 then gr.text.draw txt1,w/ltw2,h/2,"72":speed=h/888*18

if level=73 then gr.text.draw txt1,w/ltw2,h/2,"73":speed=h/888*19.5

if level=74 then gr.text.draw txt1,w/ltw2,h/2,"74":speed=h/888*21

if level=75 then gr.text.draw txt1,w/ltw2,h/2,"75":speed=h/888*22.5

if level=76 then gr.text.draw txt1,w/ltw2,h/2,"76":speed=h/888*24

if level=77 then gr.text.draw txt1,w/ltw2,h/2,"77":speed=h/888*25.5

if level=78 then gr.text.draw txt1,w/ltw2,h/2,"78":speed=h/888*27

if level=79 then gr.text.draw txt1,w/ltw2,h/2,"79":speed=h/888*28.5

if level=80 then gr.text.draw txt1,w/ltw2,h/2,"80":speed=h/888*30


if level=81 then gr.text.draw txt1,w/ltw2,h/2,"81":speed=h/888*31.5

if level=82 then gr.text.draw txt1,w/ltw2,h/2,"82":speed=h/888*33

if level=83 then gr.text.draw txt1,w/ltw2,h/2,"83":speed=h/888*34.5

if level=84 then gr.text.draw txt1,w/ltw2,h/2,"84":speed=h/888*36

if level=85 then gr.text.draw txt1,w/ltw2,h/2,"85":speed=h/888*37.5

if level=86 then gr.text.draw txt1,w/ltw2,h/2,"86":speed=h/888*39

if level=87 then gr.text.draw txt1,w/ltw2,h/2,"87":speed=h/888*40.5

if level=88 then gr.text.draw txt1,w/ltw2,h/2,"88":speed=h/888*42

if level=89 then gr.text.draw txt1,w/ltw2,h/2,"89":speed=h/888*43.5

if level=90 then gr.text.draw txt1,w/ltw2,h/2,"90":speed=h/888*45
!***************************!
!****END OF LEVEL PACK 3****!
!***************************!


!********************!
!****LEVEL PACK 4****!
!********************!
if level=91 then gr.text.draw txt1,w/ltw2,h/2,"91":speed=h/888*1.5

if level=92 then gr.text.draw txt1,w/ltw2,h/2,"92":speed=h/888*3

if level=93 then gr.text.draw txt1,w/ltw2,h/2,"93":speed=h/888*4.5

if level=94 then gr.text.draw txt1,w/ltw2,h/2,"94":speed=h/888*6

if level=95 then gr.text.draw txt1,w/ltw2,h/2,"95":speed=h/888*7.5

if level=96 then gr.text.draw txt1,w/ltw2,h/2,"96":speed=h/888*9

if level=97 then gr.text.draw txt1,w/ltw2,h/2,"97":speed=h/888*10.5

if level=98 then gr.text.draw txt1,w/ltw2,h/2,"98":speed=h/888*12

if level=99 then gr.text.draw txt1,w/ltw2,h/2,"99":speed=h/888*13.5

!***DECREASE SPACE AGAIN***!

if level=100 then gr.text.draw txt1,w/ltw3,h/2,"100":speed=h/888*15


if level=101 then gr.text.draw txt1,w/ltw3,h/2,"101":speed=h/888*16.5

if level=102 then gr.text.draw txt1,w/ltw3,h/2,"102":speed=h/888*18

if level=103 then gr.text.draw txt1,w/ltw3,h/2,"103":speed=h/888*19.5

if level=104 then gr.text.draw txt1,w/ltw3,h/2,"104":speed=h/888*21

if level=105 then gr.text.draw txt1,w/ltw3,h/2,"105":speed=h/888*22.5

if level=106 then gr.text.draw txt1,w/ltw3,h/2,"106":speed=h/888*24

if level=107 then gr.text.draw txt1,w/ltw3,h/2,"107":speed=h/888*25.5

if level=108 then gr.text.draw txt1,w/ltw3,h/2,"108":speed=h/888*27

if level=109 then gr.text.draw txt1,w/ltw3,h/2,"109":speed=h/888*28.5

if level=110 then gr.text.draw txt1,w/ltw3,h/2,"110":speed=h/888*30


if level=111 then gr.text.draw txt1,w/ltw3,h/2,"111":speed=h/888*31.5

if level=112 then gr.text.draw txt1,w/ltw3,h/2,"112":speed=h/888*33

if level=113 then gr.text.draw txt1,w/ltw3,h/2,"113":speed=h/888*34.5

if level=114 then gr.text.draw txt1,w/ltw3,h/2,"114":speed=h/888*36

if level=115 then gr.text.draw txt1,w/ltw3,h/2,"115":speed=h/888*37.5

if level=116 then gr.text.draw txt1,w/ltw3,h/2,"116":speed=h/888*39

if level=117 then gr.text.draw txt1,w/ltw3,h/2,"117":speed=h/888*40.5

if level=118 then gr.text.draw txt1,w/ltw3,h/2,"118":speed=h/888*42

if level=119 then gr.text.draw txt1,w/ltw3,h/2,"119":speed=h/888*43.5

if level=120 then gr.text.draw txt1,w/ltw3,h/2,"120":speed=h/888*45

!***************************!
!****END OF LEVEL PACK 4****!
!***************************!



!********************!
!****LEVEL PACK 5****!
!********************!

if level=121 then gr.text.draw txt1,w/ltw3,h/2,"121":speed=h/888*1.5

if level=122 then gr.text.draw txt1,w/ltw3,h/2,"122":speed=h/888*3

if level=123 then gr.text.draw txt1,w/ltw3,h/2,"123":speed=h/888*4.5

if level=124 then gr.text.draw txt1,w/ltw3,h/2,"124":speed=h/888*6

if level=125 then gr.text.draw txt1,w/ltw3,h/2,"125":speed=h/888*7.5

if level=126 then gr.text.draw txt1,w/ltw3,h/2,"126":speed=h/888*9

if level=127 then gr.text.draw txt1,w/ltw3,h/2,"127":speed=h/888*10.5

if level=128 then gr.text.draw txt1,w/ltw3,h/2,"128":speed=h/888*12

if level=129 then gr.text.draw txt1,w/ltw3,h/2,"129":speed=h/888*13.5



if level=130 then gr.text.draw txt1,w/ltw3,h/2,"130":speed=h/888*15


if level=131 then gr.text.draw txt1,w/ltw3,h/2,"131":speed=h/888*16.5

if level=132 then gr.text.draw txt1,w/ltw3,h/2,"132":speed=h/888*18

if level=133 then gr.text.draw txt1,w/ltw3,h/2,"133":speed=h/888*19.5

if level=134 then gr.text.draw txt1,w/ltw3,h/2,"134":speed=h/888*21

if level=135 then gr.text.draw txt1,w/ltw3,h/2,"135":speed=h/888*22.5

if level=136 then gr.text.draw txt1,w/ltw3,h/2,"136":speed=h/888*24

if level=137 then gr.text.draw txt1,w/ltw3,h/2,"137":speed=h/888*25.5

if level=138 then gr.text.draw txt1,w/ltw3,h/2,"138":speed=h/888*27

if level=139 then gr.text.draw txt1,w/ltw3,h/2,"139":speed=h/888*28.5

if level=140 then gr.text.draw txt1,w/ltw3,h/2,"140":speed=h/888*30


if level=141 then gr.text.draw txt1,w/ltw3,h/2,"141":speed=h/888*31.5

if level=142 then gr.text.draw txt1,w/ltw3,h/2,"142":speed=h/888*33

if level=143 then gr.text.draw txt1,w/ltw3,h/2,"143":speed=h/888*34.5

if level=144 then gr.text.draw txt1,w/ltw3,h/2,"144":speed=h/888*36

if level=145 then gr.text.draw txt1,w/ltw3,h/2,"145":speed=h/888*37.5

if level=146 then gr.text.draw txt1,w/ltw3,h/2,"146":speed=h/888*39

if level=147 then gr.text.draw txt1,w/ltw3,h/2,"147":speed=h/888*40.5

if level=148 then gr.text.draw txt1,w/ltw3,h/2,"148":speed=h/888*42

if level=149 then gr.text.draw txt1,w/ltw3,h/2,"149":speed=h/888*43.5

if level=150 then gr.text.draw txt1,w/ltw3,h/2,"150":speed=h/888*45

!***************************!
!****END OF LEVEL PACK 5****!
!***************************!



!********************!
!****LEVEL PACK 6****!
!********************!

if level=151 then gr.text.draw txt1,w/ltw3,h/2,"151":speed=h/888*1.5

if level=152 then gr.text.draw txt1,w/ltw3,h/2,"152":speed=h/888*3

if level=153 then gr.text.draw txt1,w/ltw3,h/2,"153":speed=h/888*4.5

if level=154 then gr.text.draw txt1,w/ltw3,h/2,"154":speed=h/888*6

if level=155 then gr.text.draw txt1,w/ltw3,h/2,"155":speed=h/888*7.5

if level=156 then gr.text.draw txt1,w/ltw3,h/2,"156":speed=h/888*9

if level=157 then gr.text.draw txt1,w/ltw3,h/2,"157":speed=h/888*10.5

if level=158 then gr.text.draw txt1,w/ltw3,h/2,"158":speed=h/888*12

if level=159 then gr.text.draw txt1,w/ltw3,h/2,"159":speed=h/888*13.5



if level=160 then gr.text.draw txt1,w/ltw3,h/2,"160":speed=h/888*15


if level=161 then gr.text.draw txt1,w/ltw3,h/2,"161":speed=h/888*16.5

if level=162 then gr.text.draw txt1,w/ltw3,h/2,"162":speed=h/888*18

if level=163 then gr.text.draw txt1,w/ltw3,h/2,"163":speed=h/888*19.5

if level=164 then gr.text.draw txt1,w/ltw3,h/2,"164":speed=h/888*21

if level=165 then gr.text.draw txt1,w/ltw3,h/2,"165":speed=h/888*22.5

if level=166 then gr.text.draw txt1,w/ltw3,h/2,"166":speed=h/888*24

if level=167 then gr.text.draw txt1,w/ltw3,h/2,"167":speed=h/888*25.5

if level=168 then gr.text.draw txt1,w/ltw3,h/2,"168":speed=h/888*27

if level=169 then gr.text.draw txt1,w/ltw3,h/2,"169":speed=h/888*28.5

if level=170 then gr.text.draw txt1,w/ltw3,h/2,"170":speed=h/888*30


if level=171 then gr.text.draw txt1,w/ltw3,h/2,"171":speed=h/888*31.5

if level=172 then gr.text.draw txt1,w/ltw3,h/2,"172":speed=h/888*33

if level=173 then gr.text.draw txt1,w/ltw3,h/2,"173":speed=h/888*34.5

if level=174 then gr.text.draw txt1,w/ltw3,h/2,"174":speed=h/888*36

if level=175 then gr.text.draw txt1,w/ltw3,h/2,"175":speed=h/888*37.5

if level=176 then gr.text.draw txt1,w/ltw3,h/2,"176":speed=h/888*39

if level=177 then gr.text.draw txt1,w/ltw3,h/2,"177":speed=h/888*40.5

if level=178 then gr.text.draw txt1,w/ltw3,h/2,"178":speed=h/888*42

if level=179 then gr.text.draw txt1,w/ltw3,h/2,"179":speed=h/888*43.5

if level=180 then gr.text.draw txt1,w/ltw3,h/2,"180":speed=h/888*45

!***************************!
!****END OF LEVEL PACK 6****!
!***************************!





Explosion=0
gr.render
pause 1200


!n=h/3
!n=46
n=h/16


x=w/7.71
GAME:
randomize=randomize+1

if level_pack_one=1 & dv1=0 then dwn=dwn+speed
if level_pack_two=1 & dv2=0 then dwn=dwn+speed
if level_pack_three=1 then dwn=dwn+speed



up=up-speed
tt=tt+speed
up2=dwn-speed*2
btm=h/1.2
expv=h/1.3
top=h/h-1



!!
!**VERTICAL line**!
gr.color 255,255,0,0,1
gr.line l1, w/2,h/1,w/2,h/2

!**HORIZONTAL line**!
gr.color 255,0,0,0,1
gr.line l1,w/w-1.5,h/1.4,w/1,h/1.4
!!



if explode=1 then goto explode




!******************************!

!*****************************!
!******PRINT ALL CIRCLES******!
!*****************************!

!***LEVEL PACK 1***!
if level_pack_one=1 then gr.circle c1,w/2,h/h-1+dwn,w/36
!******************!



!******************************!


!*************!
!***SORTING***!
!*************!
!if level_pack_two=1 then goto set1
if level_pack_two=1 then goto set2
if level_pack_three=1 then goto set3
if level_pack_four=1 then goto set4
if level_pack_five=1 then goto set5
if level_pack_six=1 then goto set6
!*************!
!*************!


!***********************!
!***LEVEL PACK 1 LOOP***!
!***********************!





















!***********************!
!***LEVEL PACK 2 LOOP***!
!***********************!

goto skip_set2
set2:
cv2=cv-h/2
cv3=cv-h/1






if dv2=0 then dwn=dwn+speed



explode=0

for cv=h/h-1 to h/1*2 step speed
cv1=cv-h/100
cv2=cv-h/2
cv3=cv-h/1
cv4=cv-h/1*2/1.333
cv5=cv-h/1*2/1
cv6=cv-h/1*3/1.2


if tk3=0 then gr.circle c1,w/2,cv,w/36
if tk3=0 then gr.circle c1,w/2,cv2+val,w/36


!if tk3=0 then gr.circle c1,w/2,cv1+val,w/36




ux=x-w/7.71
xlbx1=lbx1+ux
xlbx2=lbx2+ux
xrbx1=rbx1-ux
xrbx2=rbx2-ux

gr.color 255,0,0,0,1
gr.rect r1,xlbx1,lby1,xlbx2,lby2
gr.rect l1,xrbx1,rby1,xrbx2,rby2
gr.touch touched,x,y

!***PROGRAMMING***!
if x<=w/7.71 then x=w/7.71
if x>=w-w/5.5 then x=w-w/5.5
if x+w/5>=w-w/2 & x-w/8<=w-w/2 then x=w-w/2.6
!*****************!


gr.render
gr.cls
!***Game over ball 1***!
if cv>=h then goto game_over

if cv2+val>h then goto game_over
!**********************!












!***Level Pack 2 EXPLODE***!
cv2a=cv2+val
if level_pack_two=1 & x+w/5>=w-w/2 & x-w/8<=w-w/2 & cv>=h/1.15 & cv<=h/1 | level_pack_two=1 & x+w/5>=w-w/2 & x-w/8<=w-w/2 & cv2+val>=h/1.15 & cv2+val<=h/1 | level_pack_two=1 & x+w/5>=w-w/2 & x-w/8<=w-w/2 & cv3+val2>=h/1.15 & cv3+val2<=h/1 then explode=1

if explode=1 then goto explode
!**************************!
next
!******************************!
skip_set2:








!***********************!
!***LEVEL PACK 3 LOOP***!
!***********************!
goto skip_set3

set3:
if cv2+val>h then goto game_over
cv2=cv-h/2
cv3=cv-h/1




dwn=dwn+speed



explode=0

for cv=h/h-1 to h/1*2 step speed
cv2=cv-h/2
cv3=cv-h/1
cv4=cv-h/1*2/1.333
cv5=cv-h/1*2/1
cv6=cv-h/1*3/1.2








if tk3=0 then gr.circle c1,w/2,cv,w/36
if tk3=0 then gr.circle c1,w/2,cv2+val,w/36

if tk3=0 then gr.circle c1,w/2,cv3+val,w/36


ux=x-w/7.71
xlbx1=lbx1+ux
xlbx2=lbx2+ux
xrbx1=rbx1-ux
xrbx2=rbx2-ux

gr.color 255,0,0,0,1
gr.rect r1,xlbx1,lby1,xlbx2,lby2
gr.rect l1,xrbx1,rby1,xrbx2,rby2
gr.touch touched,x,y

!***PROGRAMMING***!
if x<=w/7.71 then x=w/7.71
if x>=w-w/5.5 then x=w-w/5.5
if x+w/5>=w-w/2 & x-w/8<=w-w/2 then x=w-w/2.6
!*****************!


gr.render
gr.cls
!***Game over ball 1***!
if cv>=h then goto game_over

if cv2+val>h then goto game_over
!**********************!


!***Level Pack 3 EXPLODE***!
cv2a=cv2+val
if level_pack_three=1 & x+w/5>=w-w/2 & x-w/8<=w-w/2 & cv>=h/1.15 & cv<=h/1 | level_pack_three=1 & x+w/5>=w-w/2 & x-w/8<=w-w/2 & cv2+val>=h/1.15 & cv2+val<=h/1 | level_pack_three=1 & x+w/5>=w-w/2 & x-w/8<=w-w/2 & cv3+val2>=h/1.15 & cv3+val2<=h/1 then explode=1

if explode=1 then goto explode
!******************************!
!***END OF LEVEL PACK 3 LOOP***!
!******************************!

next
!******************!
skip_set3:


!******************************!


!***********************!
!***LEVEL PACK 4 LOOP***!
!***********************!
goto skip_set4
set4:
cv2=cv-h/2
cv3=cv-h/1




dwn=dwn+speed



explode=0

for cv=h/h-1 to h/1*2 step speed
cv2=cv-h/2
cv3=cv-h/1
cv4=cv-h/1*2/1.333
cv5=cv-h/1*2/1
cv6=cv-h/1*3/1.2


if tk3=0 then gr.circle c1,w/2,cv,w/36
if tk3=0 then gr.circle c1,w/2,cv2+val,w/36
if tk3=0 then gr.circle c1,w/2,cv3+val,w/36

if tk4=0 then gr.circle c1,w/2,cv4,w/36



ux=x-w/7.71
xlbx1=lbx1+ux
xlbx2=lbx2+ux
xrbx1=rbx1-ux
xrbx2=rbx2-ux

gr.color 255,0,0,0,1
gr.rect r1,xlbx1,lby1,xlbx2,lby2
gr.rect l1,xrbx1,rby1,xrbx2,rby2
gr.touch touched,x,y

!***PROGRAMMING***!
if x<=w/7.71 then x=w/7.71
if x>=w-w/5.5 then x=w-w/5.5
if x+w/5>=w-w/2 & x-w/8<=w-w/2 then x=w-w/2.6
!*****************!



gr.render
gr.cls
!***Game over ball 1***!
if cv>=h then goto game_over

if cv2+val>h then goto game_over
!**********************!


!***Level Pack 4 EXPLODE***!
cv2a=cv2+val
if level_pack_four=1 & x+w/5>=w-w/2 & x-w/8<=w-w/2 & cv>=h/1.15 & cv<=h/1 | level_pack_four=1 & x+w/5>=w-w/2 & x-w/8<=w-w/2 & cv2+val>=h/1.15 & cv2+val<=h/1 | level_pack_four=1 & x+w/5>=w-w/2 & x-w/8<=w-w/2 & cv3+val2>=h/1.15 & cv3+val2<=h/1 then explode=1

if explode=1 then goto explode
!******************************!
!***END OF LEVEL PACK 4 LOOP***!
!******************************!


next
!******************************!





!***********************!
!***LEVEL PACK 5 LOOP***!
!***********************!
goto skip_set5
set5:
cv2=cv-h/2
cv3=cv-h/1




dwn=dwn+speed



explode=0

for cv=h/h-1 to h/1*2 step speed
cv2=cv-h/2
cv3=cv-h/1
cv4=cv-h/1*2/1.333
cv5=cv-h/1*2/1
cv6=cv-h/1*3/1.2


if tk3=0 then gr.circle c1,w/2,cv,w/36
if tk3=0 then gr.circle c1,w/2,cv2+val,w/36
if tk3=0 then gr.circle c1,w/2,cv3+val,w/36



if tk4=0 then gr.circle c1,w/2,cv4,w/36

if tk5=0 then gr.circle c1,w/2,cv5,w/36


ux=x-w/7.71
xlbx1=lbx1+ux
xlbx2=lbx2+ux
xrbx1=rbx1-ux
xrbx2=rbx2-ux

gr.color 255,0,0,0,1
gr.rect r1,xlbx1,lby1,xlbx2,lby2
gr.rect l1,xrbx1,rby1,xrbx2,rby2
gr.touch touched,x,y

!***PROGRAMMING***!
if x<=w/7.71 then x=w/7.71
if x>=w-w/5.5 then x=w-w/5.5
if x+w/5>=w-w/2 & x-w/8<=w-w/2 then x=w-w/2.6
!*****************!


gr.render
gr.cls
!***Game over ball 1***!
if cv>=h then goto game_over

if cv2+val>h then goto game_over
!**********************!


!***Level Pack 5 EXPLODE***!
cv2a=cv2+val
if level_pack_five=1 & x+w/5>=w-w/2 & x-w/8<=w-w/2 & cv>=h/1.15 & cv<=h/1 | level_pack_five=1 & x+w/5>=w-w/2 & x-w/8<=w-w/2 & cv2+val>=h/1.15 & cv2+val<=h/1 | level_pack_five=1 & x+w/5>=w-w/2 & x-w/8<=w-w/2 & cv3+val2>=h/1.15 & cv3+val2<=h/1 then explode=1

if explode=1 then goto explode
next
!******************************!
!***END OF LEVEL PACK 5 LOOP***!
!******************************!


!******************************!



!***********************!
!***LEVEL PACK 6 LOOP***!
!***********************!
goto skip_set6
set6:
cv2=cv-h/2
cv3=cv-h/1




dwn=dwn+speed



explode=0

for cv=h/h-1 to h/1*2 step speed
cv2=cv-h/2
cv3=cv-h/1
cv4=cv-h/1*2/1.333
cv5=cv-h/1*2/1
cv6=cv-h/1*3/1.2



!***Game over ball 1***!
if cv>=h then goto game_over

if cv2+val>h then goto game_over
!**********************!




if tk3=0 then gr.circle c1,w/2,cv,w/36
if tk3=0 then gr.circle c1,w/2,cv2+val,w/36
if tk3=0 then gr.circle c1,w/2,cv3+val,w/36



if tk4=0 then gr.circle c1,w/2,cv4,w/36

if tk5=0 then gr.circle c1,w/2,cv5,w/36

if tk6=0 then gr.circle c1,w/2,cv6,w/36





ux=x-w/7.71
xlbx1=lbx1+ux
xlbx2=lbx2+ux
xrbx1=rbx1-ux
xrbx2=rbx2-ux

gr.color 255,0,0,0,1
gr.rect r1,xlbx1,lby1,xlbx2,lby2
gr.rect l1,xrbx1,rby1,xrbx2,rby2
gr.touch touched,x,y

!***PROGRAMMING***!
if x<=w/7.71 then x=w/7.71
if x>=w-w/5.5 then x=w-w/5.5
if x+w/5>=w-w/2 & x-w/8<=w-w/2 then x=w-w/2.6
!*****************!


gr.render
gr.cls
!**********************!


!***Level Pack 6 EXPLODE***!
cv2a=cv2+val
if level_pack_six=1 & x+w/5>=w-w/2 & x-w/8<=w-w/2 & cv>=h/1.15 & cv<=h/1 | level_pack_six=1 & x+w/5>=w-w/2 & x-w/8<=w-w/2 & cv2+val>=h/1.15 & cv2+val<=h/1 | level_pack_six=1 & x+w/5>=w-w/2 & x-w/8<=w-w/2 & cv3+val2>=h/1.15 & cv3+val2<=h/1 then explode=1

if explode=1 then goto explode
!**************************!
next
!******************************!









skip_set4:
skip_set5:
skip_set6:







































goto skexp
!*****************!
!****EXPLOSION****!
!*****************!
EXPLODE:


!***SORTING***!
if level_pack_two=1 then goto LP2
if level_pack_three=1 then goto LP3
if level_pack_four=1 then goto LP4
if level_pack_five=1 then goto LP5
if level_pack_six=1 then goto LP6
!*************!




goto sklp2a
!******************!
!***LEVEL PACK 2***!
!******************!
lp2:
if level_pack_two=1 & tk3=0 & x+w/5>=w/2 & x-w/8<=w/2 & cv2+val>h/1.15 & cv2+val<=h/1 then exdr=0:eydr=0:tk3=5


if level_pack_two=1 & tk4=0 & x+w/5>=w-w/2 & x-w/8<=w-w/2 & cv3+val2>h/1.15 & cv3+val2<=h/1 then exdr=0:eydr=0:tk4=5



if level_pack_two=1 & tk3=5 & exdr>w+w/20 then gr.cls:level=level+1:dwn=0:lose=0:expv=0:exdr=0:eydr=0:explode=0:lose=0:go=0:go2=0:up1=0:balls=0:cv=0:cv2=0:val=0:tk3=0:tk4=0:tk5=0:tk6=0:tk7=0:val2=0:val3=0:val4=0:val5=0:val6=0:goto main





!***Ball 2 game over***!
if cv2+val>h then goto game_over
!**********************!







if level_pack_two=1 & tk3=0 & dv2=0 then val=val+speed

if level_pack_two=1 & tk4=0 & dv2=0 then val2=val2+speed

if level_pack_two=1 & tk5=0 & dv2=0 then val3=val3+speed

if level_pack_two=1 & tk6=0 & dv2=0 then val4=val4+speed

if level_pack_two=1 & tk7=0 & dv2=0 then val5=val5+speed



!***Second Circle***!
if level_pack_two=1 & tk3=0 then gr.circle c1,w/2,cv-h/2+val,w/36
!*******************!

!*************************!
!***END OF LEVEL PACK 2***!
!*************************!

goto sklp2a
!******************************!


!******************!
!***LEVEL PACK 3***!
!******************!
lp3:

if level_pack_three=1 & tk3=0 & x+w/5>=w-w/2 & x-w/8<=w-w/2 & cv2+val>h/1.15 & cv2+val<=h/1 then exdr=0:eydr=0:tk3=5


if level_pack_three=1 & tk4=0 & x+w/5>=w-w/2 & x-w/8<=w-w/2 & cv3+val2>h/1.15 & cv3+val2<=h/1 then exdr=0:eydr=0:tk4=5


if level_pack_three=1 & tk3=5 & tk4=5 & exdr>w+w/20 then gr.cls:level=level+1:dwn=0:lose=0:expv=0:exdr=0:eydr=0:explode=0:lose=0:go=0:go2=0:up1=0:balls=0:cv=0:cv2=0:val=0:tk3=0:tk4=0:tk5=0:tk6=0:tk7=0:val2=0:val3=0:val4=0:val5=0:val6=0:goto main





!***Ball 2 game over***!
if cv2+val>h then goto game_over
!**********************!

!***Ball 3 game over***!
if cv3+val2>h then goto game_over
!**********************!


if level_pack_three=1 & tk3=0 & dv3=0 then val=val+speed

if level_pack_three=1 & tk4=0 & dv3=0 then val2=val2+speed

if level_pack_three=1 & tk5=0 & dv3=0 then val3=val3+speed

if level_pack_three=1 & tk6=0 & dv3=0 then val4=val4+speed

if level_pack_three=1 & tk7=0 & dv3=0 then val5=val5+speed



!***Second Circle***!
if level_pack_three=1 & tk3=0 then gr.circle c1,w/2,cv-h/2+val,w/36
!*******************!
 

!***Third Circle***!
if level_pack_three=1 & tk4=0 then gr.circle c1,w/2,cv3+val2,w/36

if level_pack_three=1 & x+w/5>=w-w/2 & x-w/8<=w-w/2 & cv3+val2>h/1.15 & cv3+val2 then tk4=5
!******************!

!******************************!

!*************************!
!***END OF LEVEL PACK 3***!
!*************************!


!******************************!
goto sklp2a

!******************!
!***LEVEL PACK 4***!
!******************!
lp4:
if level_pack_four=1 & tk3=0 & x+w/5>=w-w/2 & x-w/8<=w-w/2 & cv2+val>h/1.15 & cv2+val<=h/1 then exdr=0:eydr=0:tk3=5


if level_pack_four=1 & tk4=0 & x+w/5>=w-w/2 & x-w/8<=w-w/2 & cv3+val2>h/1.15 & cv3+val2<=h/1 then exdr=0:eydr=0:tk4=5


if level_pack_four=1 & tk5=0 & x+w/5>=w-w/2 & x-w/8<=w-w/2 & cv4+val3>h/1.15 & cv4+val3<=h/1 then exdr=0:eydr=0:tk5=5




if level_pack_four=1 & tk3=5 & tk4=5 & tk5=5 & exdr>w+w/20 then gr.cls:level=level+1:dwn=0:lose=0:expv=0:exdr=0:eydr=0:explode=0:lose=0:go=0:go2=0:up1=0:balls=0:cv=0:cv2=0:val=0:tk3=0:tk4=0:tk5=0:tk6=0:tk7=0:val2=0:val3=0:val4=0:val5=0:val6=0:goto main


!***Ball 2 game over***!
if cv2+val>h then goto game_over
!**********************!

!***Ball 3 game over***!
if cv3+val2>h then goto game_over
!**********************!

!***Ball 4 game over***!
if cv4+val3>h then goto game_over
!**********************!




if level_pack_four=1 & tk3=0 & dv4=0 then val=val+speed

if level_pack_four=1 & tk4=0 & dv4=0 then val2=val2+speed

if level_pack_four=1 & tk5=0 & dv4=0 then val3=val3+speed

if level_pack_four=1 & tk6=0 & dv4=0 then val4=val4+speed

if level_pack_four=1 & tk7=0 & dv4=0 then val5=val5+speed



!***Second Circle***!
if level_pack_four=1 & tk3=0 then gr.circle c1,w/2,cv-h/2+val,w/36
!*******************!
 

!***Third Circle***!
if level_pack_four=1 & tk4=0 then gr.circle c1,w/2,cv3+val2,w/36

if level_pack_four=1 & x+w/5>=w-w/2 & x-w/8<=w-w/2 & cv3+val2>h/1.15 & cv3+val2 then tk4=5
!******************!

!******************************!

!***Fourth Circle***!
if level_pack_four=1 & tk5=0 then gr.circle c1,w/2,cv4+val3,w/36
!*******************!

!******************************!

!*************************!
!***END OF LEVEL PACK 4***!
!*************************!


!******************************!
goto sklp2a

!******************!
!***LEVEL PACK 5***!
!******************!
lp5:
if level_pack_five=1 & tk3=0 & x+w/5>=w-w/2 & x-w/8<=w-w/2 & cv2+val>h/1.15 & cv2+val<=h/1 then exdr=0:eydr=0:tk3=5


if level_pack_five=1 & tk4=0 & x+w/5>=w-w/2 & x-w/8<=w-w/2 & cv3+val2>h/1.15 & cv3+val2<=h/1 then exdr=0:eydr=0:tk4=5


if level_pack_five=1 & tk5=0 & x+w/5>=w-w/2 & x-w/8<=w-w/2 & cv4+val3>h/1.15 & cv4+val3<=h/1 then exdr=0:eydr=0:tk5=5


if level_pack_five=1 & tk6=0 & x+w/5>=w-w/2 & x-w/8<=w-w/2 & cv5+val4>h/1.15 & cv5+val4<=h/1 then exdr=0:eydr=0:tk6=5




if level_pack_five=1 & tk3=5 & tk4=5 & tk5=5 & tk6=5 & exdr>w+w/20 then gr.cls:level=level+1:dwn=0:lose=0:expv=0:exdr=0:eydr=0:explode=0:lose=0:go=0:go2=0:up1=0:balls=0:cv=0:cv2=0:val=0:tk3=0:tk4=0:tk5=0:tk6=0:tk7=0:val2=0:val3=0:val4=0:val5=0:val6=0:goto main




!***Ball 2 game over***!
if cv2+val>h then goto game_over
!**********************!

!***Ball 3 game over***!
if cv3+val2>h then goto game_over
!**********************!

!***Ball 4 game over***!
if cv4+val3>h then goto game_over
!**********************!

!***Ball 5 game over***!
if cv5+val4>h then goto game_over
!**********************!








if level_pack_five=1 & tk3=0 & dv5=0 then val=val+speed

if level_pack_five=1 & tk4=0 & dv5=0 then val2=val2+speed

if level_pack_five=1 & tk5=0 & dv5=0 then val3=val3+speed

if level_pack_five=1 & tk6=0 & dv5=0 then val4=val4+speed

if level_pack_five=1 & tk7=0 & dv5=0 then val5=val5+speed



!***Second Circle***!
if level_pack_five=1 & tk3=0 then gr.circle c1,w/2,cv-h/2+val,w/36
!*******************!
 

!***Third Circle***!
if level_pack_five=1 & tk4=0 then gr.circle c1,w/2,cv3+val2,w/36

if level_pack_five=1 & x+w/5>=w-w/2 & x-w/8<=w-w/2 & cv3+val2>h/1.15 & cv3+val2 then tk4=5
!******************!

!******************************!

!***Fourth Circle***!
if level_pack_five=1 & tk5=0 then gr.circle c1,w/2,cv4+val3,w/36
!*******************!

!******************************!

!***Fifth circle***!
if level_pack_five=1 & tk6=0 then gr.circle c1,w/2,cv5+val4,w/36
!******************!

!******************************!
!*************************!
!***END OF LEVEL PACK 5***!
!*************************!

goto sklp2a
!******************************!


!******************!
!***LEVEL PACK 6***!
!******************!
lp6:
if level_pack_six=1 & tk3=0 & x+w/5>=w-w/2 & x-w/8<=w-w/2 & cv2+val>h/1.15 & cv2+val<=h/1 then exdr=0:eydr=0:tk3=5


if level_pack_six=1 & tk4=0 & x+w/5>=w-w/2 & x-w/8<=w-w/2 & cv3+val2>h/1.15 & cv3+val2<=h/1 then exdr=0:eydr=0:tk4=5


if level_pack_six=1 & tk5=0 & x+w/5>=w-w/2 & x-w/8<=w-w/2 & cv4+val3>h/1.15 & cv4+val3<=h/1 then exdr=0:eydr=0:tk5=5


if level_pack_six=1 & tk6=0 & x+w/5>=w-w/2 & x-w/8<=w-w/2 & cv5+val4>h/1.15 & cv5+val4<=h/1 then exdr=0:eydr=0:tk6=5


if level_pack_six=1 & tk7=0 & x+w/5>=w-w/2 & x-w/8<=w-w/2 & cv6+val5>h/1.15 & cv6+val5<=h/1 then exdr=0:eydr=0:tk7=5



if level_pack_six=1 & tk3=5 & tk4=5 & tk5=5 & tk6=5 & tk7=5 & exdr>w+w/20 then gr.cls:level=level+1:dwn=0:lose=0:expv=0:exdr=0:eydr=0:explode=0:lose=0:go=0:go2=0:up1=0:balls=0:cv=0:cv2=0:val=0:tk3=0:tk4=0:tk5=0:tk6=0:tk7=0:val2=0:val3=0:val4=0:val5=0:val6=0:goto main




!***Ball 2 game over***!
if cv2+val>h then goto game_over
!**********************!

!***Ball 3 game over***!
if cv3+val2>h then goto game_over
!**********************!

!***Ball 4 game over***!
if cv4+val3>h then goto game_over
!**********************!

!***Ball 5 game over***!
if cv5+val4>h then goto game_over
!**********************!

!***Ball 6 game over***!
if cv6+val5>h then goto game_over
!**********************!







if level_pack_six=1 & tk3=0 & dv6=0 then val=val+speed

if level_pack_six=1 & tk4=0 & dv6=0 then val2=val2+speed

if level_pack_six=1 & tk5=0 & dv6=0 then val3=val3+speed

if level_pack_six=1 & tk6=0 & dv6=0 then val4=val4+speed

if level_pack_six=1 & tk7=0 & dv6=0 then val5=val5+speed



!***Second Circle***!
if level_pack_six=1 & tk3=0 then gr.circle c1,w/2,cv-h/2+val,w/36
!*******************!
 

!***Third Circle***!
if level_pack_six=1 & tk4=0 then gr.circle c1,w/2,cv3+val2,w/36

if level_pack_six=1 & x+w/5>=w-w/2 & x-w/8<=w-w/2 & cv3+val2>h/1.15 & cv3+val2 then tk4=5
!******************!

!******************************!

!***Fourth Circle***!
if level_pack_six=1 & tk5=0 then gr.circle c1,w/2,cv4+val3,w/36
!*******************!

!******************************!

!***Fifth circle***!
if level_pack_six=1 & tk6=0 then gr.circle c1,w/2,cv5+val4,w/36
!******************!

!******************************!

!***Sixth Circle***!
if level_pack_six=1 & tk7=0 then gr.circle c1,w/2,cv6+val5,w/36
!******************!





!*************************!
!***END OF LEVEL PACK 6***!
!*************************!


















sklp2a:
!*Down right*!
exdr=exdr+w/108
eydr=eydr-w/108

h2=h-h/1.2


!*Down right*!
gr.circle c1,w/2+exdr,h/h-1+expv+h2,w/77.1

!*Down left*!
gr.circle c1,w/2-exdr,h/h-1+expv+h2,w/77.1

rr=rr-3
!*Up right*!
gr.circle c1,w/2+exdr,h/h-1+expv+eydr+h2,w/77.1

!*Up left*!
gr.circle c1,w/2-exdr,h/h-1+expv+eydr+h2,w/77.1

!**********************!
!***END OF EXPLOSION***!
!**********************!





!******************************!





!********************!
!***SKIP EXPLOSION***!
!********************!
SKEXP:


!***CHEAT FIX Level PACK 1***!
if level_pack_one=1 & cv+dwn>=h/1.25 & cv+dwn<=h/1.15 & x+w/5>=w/2 & x-w/8<=w/2 then dv1=1

if level_pack_one=1 & x+w/5<w/2 | x-w/8>w/2 then dv1=0
!***************!



!***CHEAT FIX Level PACK 2***!

if level_pack_two=1 & x+w/5>=w-w/2 & x-w/8<=w-w/2 & cv+val>=h/1.25 & cv+val<=h/1.15 | level_pack_two=1 & x+w/5>=w-w/2 & x-w/8<=w-w/2 & cv2+val>=h/1.25 & cv2+val<=h/1.15 then dv2=1


!if cv+dwn>h/2 then end


if level_pack_two=1 & cv+dwn>=h/1.25 & cv+dwn<=h/1.15 & x+w/5>=w/2 & x-w/8<=w/2 then dv2=1


if level_pack_two=1 & cv2+val>=h/1.25 & cv2+val<=h/1.15 & x+w/5>=w/2 & x-w/8<=w/2 then dv2=1

if level_pack_two=1 & x+w/5<w/2 | x-w/8>w/2 then dv2=0
!****************************!




!***CHEAT FIX Level PACK 3***!


if level_pack_three=1 & cv2+val>=h/1.25 & cv2+val<=h/1.15 & x+w/5>=w/2 & x-w/8<=w/2 then dv3=1

if level_pack_three=1 & cv3+val2>=h/1.25 & cv3+val2<=h/1.15 & x+w/5>=w/2 & x-w/8<=w/2 then dv3=1

if level_pack_three=1 & x+w/5<w/2 | x-w/8>w/2 then dv3=0
!****************************!



!***CHEAT FIX Level PACK 4***!
if level_pack_four=1 & cv2+val>=h/1.25 & cv2+val<=h/1.15 & x+w/5>=w/2 & x-w/8<=w/2 then dv4=1

if level_pack_four=1 & cv3+val2>=h/1.25 & cv3+val2<=h/1.15 & x+w/5>=w/2 & x-w/8<=w/2 then dv4=1

if level_pack_four=1 & cv4+val3>=h/1.25 & cv4+val3<=h/1.15 & x+w/5>=w/2 & x-w/8<=w/2 then dv4=1

if level_pack_four=1 & x+w/5<w/2 | x-w/8>w/2 then dv4=0
!****************************!




!***CHEAT FIX Level PACK 5***!
if level_pack_five=1 & cv2+val>=h/1.22 & cv2+val<=h/1.1 & x+w/5>=w/2 & x-w/8<=w/2 then dv5=1

if level_pack_five=1 & cv3+val2>=h/1.22 & cv3+val2<=h/1.1 & x+w/5>=w/2 & x-w/8<=w/2 then dv5=1

if level_pack_five=1 & cv4+val3>=h/1.2 & cv4+val3<=h/1.1 & x+w/5>=w/2 & x-w/8<=w/2 then dv5=1

if level_pack_five=1 & cv5+val4>=h/1.2 & cv5+val4<=h/1.1 & x+w/5>=w/2 & x-w/8<=w/2 then dv5=1


if level_pack_five=1 & x+w/5<w/2 | x-w/8>w/2 then dv5=0
!****************************!





!***CHEAT FIX Level PACK 6***!
if level_pack_six=1 & cv2+val>=h/1.25 & cv2+val<=h/1.18 & x+w/5>=w/2 & x-w/8<=w/2 then dv6=1

if level_pack_six=1 & cv3+val2>=h/1.25 & cv3+val2<=h/1.18 & x+w/5>=w/2 & x-w/8<=w/2 then dv6=1

if level_pack_six=1 & cv4+val3>=h/1.25 & cv4+val3<=h/1.18 & x+w/5>=w/2 & x-w/8<=w/2 then dv6=1

if level_pack_six=1 & cv5+val4>=h/1.2 & cv5+val4<=h/1.1 & x+w/5>=w/2 & x-w/8<=w/2 then dv6=1

if level_pack_six=1 & cv6+val5>=h/1.2 & cv6+val5<=h/1.1 & x+w/5>=w/2 & x-w/8<=w/2 then dv6=1


if level_pack_six=1 & x+w/5<w/2 | x-w/8>w/2 then dv6=0
!****************************!





















if cv2+val>h then goto game_over
gr.color 255,0,0,0,1

ux=x-w/7.71
xlbx1=lbx1+ux
xlbx2=lbx2+ux
xrbx1=rbx1-ux
xrbx2=rbx2-ux

gr.color 255,0,0,0,1
gr.rect r1,xlbx1,lby1,xlbx2,lby2
gr.rect l1,xrbx1,rby1,xrbx2,rby2
gr.touch touched,x,y

!***PROGRAMMING***!
if x<=w/7.71 then x=w/7.71
if x>=w-w/5.5 then x=w-w/5.5
if x+w/5>=w-w/2 & x-w/8<=w-w/2 then x=w-w/2.6
!*****************!


!***Level Pack 1 EXPLODE***!
if level_pack_one=1 & x+w/5>=w-w/2 & x-w/8<=w-w/2 & dwn>=h/1.15 & dwn<=h/1 then explode=1
!**************************!


!!
!***Level Pack 2 EXPLODE***!
if level_pack_two=1 & x+w/5>=w-w/2 & x-w/8<=w-w/2 & dwn>=h/1.15 & dwn<=h/1 then explode=1 

if level_pack_two=1 & x+w/5>=w-w/2 & x-w/8<=w-w/2 & cv>=h/1.15 & cv<=h/1 then explode=1 
!**************************!
!!
 


!*******LVL PACK 1*******!
if level_pack_one=1 & exdr+exdr/20>w & exdr+exdr/20<w+w/20 then exdr=0:eydr=0:balls=balls-1

if level_pack_one=1 & balls<=0 then gr.cls:level=level+1:dwn=0:lose=0:expv=0:exdr=0:eydr=0:explode=0:lose=0:go=0:go2=0:up1=0:balls=0:cv=0:goto main
!************************!




!!
!***LEVEL PACK 2***!
if level_pack_two=1 & x+w/5>=w-w/2 & x-w/8<=w-w/2 & cv>=h/1.15 & cv<=h/1 & exdr+exdr/20>w & exdr+exdr/20<w+w/20 then exdr=0:eydr=0:balls=balls-1

if level_pack_two=1 then gr.cls:level=level+1:dwn=0:lose=0:expv=0:exdr=0:eydr=0:explode=0:lose=0:go=0:go2=0:up1=0:balls=0:goto main
!******************!
!!



!if h/h-1+dwn2>=h then end



!***Level 1 GAME OVER***!
if level_pack_one=1 & dwn>h/1 & explode=0 then game_over=1
!***********************!

if h/h-1/2*h+dwn>=0 then dwn3=dwn3+speed



!***Level 2 GAME OVER***!
if level_pack_two=1 & dwn>h & explode=0 & Explosion=0 then game_over=1

if level_pack_two=1 & dwn3>h & explode=0 & Explosion>=1 then game_over=1
!***********************!









!if game_over=1 then gr.text.draw txt1,w/2.5,h/2,"Game Over":gr.render:pause 4000:game_over=0:explode=99:gr.cls:gr.render:dwn=0:dwn2=0:exdr=0:eydr=0:goto main

if game_over=1 then goto game_over




if randomize>=2 then randomize=0
gr.render
gr.cls
goto game









game_over:
gr.cls
gr.render
pause 200
o7=h/4


!******************!
!***RETRY BUTTON***!
!******************!
tho=h/2
thb=w/3
rtb=h/5.325
xrtb=h/1500
xxrtb=h/1200
rtb2=h/16


!**Top left**!
gr.rect l1,w/2.2-thb,h/10.3+rtb+h/888/4,w/2-thb,h/9.5+rtb+h/888/4


!**Bottom left**!
gr.rect l1,w/2.2-thb,h/4.15+rtb,w/2-thb,h/4.02+rtb


!**Top right**!
gr.rect l1,w/2+thb,h/10.3+rtb+h/888/4,w/1.82+thb,h/9.5+rtb+h/888/4


!**Bottom right**!
gr.rect l1,w/2+thb,h/4.15+rtb,w/1.82+thb,h/4.02+rtb



!**TOP SET**!
gr.rect l1,ltbvx1-thb,ltbvy1+o4-rtb2,ltbvx2-thb,ltbvy2+o4-rtb2

gr.rect l1,blbvx1-thb,blbvy1+o4-rtb2,blbvx2-thb,blbvy2+o4-rtb2

!**BTM SET**!

gr.rect l1,trbvx1+thb,trbvy1+o4-rtb2,trbvx2+thb,trbvy2+o4-rtb2

gr.rect l1,brbvx1+thb,brbvy1+o4-rtb2,brbvx2+thb,brbvy2+o4-rtb2

!*************************!
!***END OF RETRY BUTTON***!
!*************************!



!********************!
!***BAILOUT BUTTON***!
!********************!
sho=h/4
sb2=w/3

!**Top left**!
gr.rect l1,w/2.2-sb2,h/10.3+sho+rtb+h/888/4,w/2-sb2,h/9.5+sho+rtb+h/888/4

!**Bottom left**!
gr.rect l1,w/2.2-sb2,h/4.15+sho+rtb,w/2-sb2,h/4.02+sho+rtb

!**Top right**!
gr.rect l1,w/2+sb2,h/10.3+sho+rtb+h/888/4,w/1.82+sb2,h/9.5+sho+rtb+h/888/4

!**Bottom right**!
gr.rect l1,w/2+sb2,h/4.15+sho+rtb,w/1.82+sb2,h/4.02+sho+rtb


!**TOP SET**!
gr.rect l1,ltbvx1-sb2,ltbvy1+o3-rtb2,ltbvx2-sb2,ltbvy2+o3-rtb2

gr.rect l1,blbvx1-sb2,blbvy1+o3-rtb2,blbvx2-sb2,blbvy2+o3-rtb2


!**BTM SET**
gr.rect l1,trbvx1+sb2,trbvy1+o3-rtb2,trbvx2+sb2,trbvy2+o3-rtb2

gr.rect l1,brbvx1+sb2,brbvy1+o3-rtb2,brbvx2+sb2,brbvy2+o3-rtb2

!+++++++++++++++++++++++++!
!++END OF BAILOUT BUTTON++!
!+++++++++++++++++++++++++!










!!
!***********!
!***RETRY***!
!***********!
!*Top set*!
gr.rect l1,ltbhx1-play,ltbhy1+o7,ltbhx2-play,ltbhy2+o7

gr.rect l1,ltbvx1-play,ltbvy1+o7,ltbvx2-play,ltbvy2+o7

gr.rect l1,blbhx1-play,blbhy1+o7,blbhx2-play,blbhy2+o7

gr.rect l1,blbvx1-play,blbvy1+o7,blbvx2-play,blbvy2+o7

!**BTM SET**
gr.rect l1,trbhx1+play,trbhy1+o7,trbhx2+play,trbhy2+o7

gr.rect l1,trbvx1+play,trbvy1+o7,trbvx2+play,trbvy2+o7

gr.rect l1,brbhx1+play,brbhy1+o7,brbhx2+play,brbhy2+o7
gr.rect l1,brbvx1+play,brbvy1+o7,brbvx2+play,brbvy2+o7
!***********!
!***RETRY***!
!***********!
!!



!***XOFF***!
gr.color 255,255,0,0,1
gr.line l1,w/2.5,h/1.3,w/1.6,h/1.1
gr.line l1,w/1.6,h/1.3,w/2.5,h/1.1



!**Xoff shadwow***!
!gr.rect l1,w/2.5,h/1.3,w/1.6,h/1.1
!************!
gr.color 255,0,0,0,1
!**********!








!!
!*************!
!***BAILOUT***!
!*************!
!**TOP SET**!
gr.rect l1,ltbhx1-play,ltbhy1+o4,ltbhx2-play,ltbhy2+o4

gr.rect l1,ltbvx1-play,ltbvy1+o4,ltbvx2-play,ltbvy2+o4

gr.rect l1,blbhx1-play,blbhy1+o4,blbhx2-play,blbhy2+o4

gr.rect l1,blbvx1-play,blbvy1+o4,blbvx2-play,blbvy2+o4

!**BTM SET**
gr.rect l1,trbhx1+play,trbhy1+o4,trbhx2+play,trbhy2+o4

gr.rect l1,trbvx1+play,trbvy1+o4,trbvx2+play,trbvy2+o4

gr.rect l1,brbhx1+play,brbhy1+o4,brbhx2+play,brbhy2+o4
gr.rect l1,brbvx1+play,brbvy1+o4,brbvx2+play,brbvy2+o4
!********************!
!***END OF BAILOUT***!
!********************!
!!



!***ENGLISH***!
gr.text.size w/10
if language$="English" then gr.text.draw txt1,w/2.6,h/2.65,"Retry"

if language$="English" then gr.text.draw txt1,w/2.9,h/1.58,"Bailout"
!*************!



!***SPANISH***!
if language$="Spanish" then gr.text.size w/12:gr.text.draw txt1,w/6.4,h/2.65,"Vuelva a intentarlo"

gr.text.size w/10
if language$="Spanish" then gr.text.draw txt1,w/6.4,h/1.58,"Plan de rescate"
!*************!


!***FRENCH***!
if language$="French" then gr.text.draw txt1,w/3.6,h/2.65,"réessayer"

if language$="French" then gr.text.size w/12:gr.text.draw txt1,w/6,h/1.61,"plan de sauvetage"
gr.text.size w/10
!************!


!***CHINESE***!
if language$="Chinese" then gr.text.draw txt1,w/2.5,h/2.65,"重试"

if language$="Chinese" then gr.text.draw txt1,w/2.5,h/1.58,"救助"
!*************!




!***ARABIC***!
if language$="Arabic" then gr.text.draw txt1,w/4.1,h/2.62,"إعادة المحاولة"

if language$="Arabic" then gr.text.draw txt1,w/2.45,h/1.58,"إنقاذ"
!************!



!***JAPANESE***!
if language$="Japanese" then gr.text.draw txt1,w/2.9,h/2.65,"再試行"

if language$="Japanese" then gr.text.draw txt1,w/2.5,h/1.58,"救済"
!**************!





!***HEBREW***!
if language$="Hebrew" then gr.text.draw txt1,w/3.3,h/2.65,"נסה שנית"

if language$="Hebrew" then gr.text.draw txt1,w/2.55,h/1.6,"חילוץ"
!************!



!**Xoff sensor shadow**!
!gr.rect l1,w/2.5,h/1.3,w/1.6,h/1.1
!**********************!

!***RETRY SENSOR SHADOW***!
!gr.rect l1,w/10,h/3-rtb2,w/1.12,h/2-rtb2
!*************************!

!***BAILOUT SENSOR SHADOW***!
!gr.rect l1,w/10,h/1.7-rtb2,w/1.12,h/1.3-rtb2
!***************************!



!!
!***CENTER LINE***!
gr.color 255,255,0,0,1
gr.line l1,w/2,h/h-1,w/2,h
!*****************!
!!


gr.render
pause 500
xgo:
do
gr.touch touched,x,y
until touched



!**Xoff**!
if x>=w/2.5 & y>=h/1.3 & x<=w/1.6 & y<=h/1.1 then dwn=0:lose=0:lose=0:go=0:go2=0:up1=0:balls=0:cv=0:cv2=0:val=0:tk3=0:tk4=0:tk5=0:tk6=0:tk7=0:val2=0:val3=0:val4=0:val5=0:val6=0:xoff=1:pause 500:gr.cls:gr.render:game_over=0:lose=0:goto skip1
!********!



!!
if level_pack_one=1 then gr.cls:level=level+1:exdr=0:eydr=0:val=0:val2=0:cv=0:goto main


if level_pack_two=1 & tk3=5 & exdr>w+w/20 then gr.cls:level=level+1:dwn=0:lose=0:expv=0:exdr=0:eydr=0:explode=0:lose=0:go=0:go2=0:up1=0:balls=0:cv=0:cv2=0:val=0:tk3=0:tk4=0:tk5=0:tk6=0:tk7=0:val2=0:val3=0:val4=0:val5=0:val6=0:goto main


if level_pack_three=1 & tk3=5 & tk4=5 & exdr>w+w/20 then gr.cls:level=level+1:dwn=0:lose=0:expv=0:exdr=0:eydr=0:explode=0:lose=0:go=0:go2=0:up1=0:balls=0:cv=0:cv2=0:val=0:tk3=0:tk4=0:tk5=0:tk6=0:tk7=0:val2=0:val3=0:val4=0:val5=0:val6=0:goto main


if level_pack_four=1 & tk3=5 & tk4=5 & tk5=5 & exdr>w+w/20 then gr.cls:level=level+1:dwn=0:lose=0:expv=0:exdr=0:eydr=0:explode=0:lose=0:go=0:go2=0:up1=0:balls=0:cv=0:cv2=0:val=0:tk3=0:tk4=0:tk5=0:tk6=0:tk7=0:val2=0:val3=0:val4=0:val5=0:val6=0:goto main


if level_pack_five=1 & tk3=5 & tk4=5 & tk5=5 & tk6=5 & exdr>w+w/20 then gr.cls:level=level+1:dwn=0:lose=0:expv=0:exdr=0:eydr=0:explode=0:lose=0:go=0:go2=0:up1=0:balls=0:cv=0:cv2=0:val=0:tk3=0:tk4=0:tk5=0:tk6=0:tk7=0:val2=0:val3=0:val4=0:val5=0:val6=0:goto main


if level_pack_six=1 & tk3=5 & tk4=5 & tk5=5 & tk6=5 & tk7=5 & exdr>w+w/20 then gr.cls:level=level+1:dwn=0:lose=0:expv=0:exdr=0:eydr=0:explode=0:lose=0:go=0:go2=0:up1=0:balls=0:cv=0:cv2=0:val=0:tk3=0:tk4=0:tk5=0:tk6=0:tk7=0:val2=0:val3=0:val4=0:val5=0:val6=0:goto main
!!




!***Retry Button***!
if x>=w/10 & x<=w/1.12 & y>=h/3-rtb2 & y<=h/2-rtb2 then game_over=0:explode=99:gr.cls:gr.render:dwn=0:dwn2=0:exdr=0:eydr=0:lose=0:cv=0:dwn=0:lose=0:expv=0:exdr=0:eydr=0:explode=0:lose=0:go=0:go2=0:up1=0:balls=0:cv=0:cv2=0:val=0:tk3=0:tk4=0:tk5=0:tk6=0:tk7=0:val2=0:val3=0:val4=0:val5=0:val6=0:goto main
!******************!


!***Bailout Button***
if x>=w/10 & x<=w/1.12 & y>=h/1.7-rtb2 & y<=h/1.3-rtb2 then game_over=0:explode=99:gr.cls:gr.render:dwn=0:dwn2=0:exdr=0:eydr=0:dwn=0:lose=0:expv=0:exdr=0:eydr=0:explode=0:lose=0:go=0:go2=0:up1=0:balls=0:cv=0:cv2=0:val=0:tk3=0:tk4=0:tk5=0:tk6=0:tk7=0:val2=0:val3=0:val4=0:val5=0:val6=0:level=level+1:goto main
!********************!

goto xgo
















thanks:
gr.cls
gr.render
gr.color 255,0,0,0,1


!***SORTING***!
if language$="English" then goto t1
if language$="Spanish" then goto t2
if language$="French" then goto t3
if language$="Chinese" then goto t4
if language$="Arabic" then goto t5
if language$="Japanese" then goto t6
if language$="Hebrew" then goto t7

goto skipt
!*************!




!**English**!
t1:
gr.text.size w/10
gr.text.draw txt1,w/11.5,h/2,"Thanks for playing!"
!***********!
goto skipt


!**Spanish**!
t2:
gr.text.size w/10
gr.text.draw txt1,w/8,h/2,"gracias por jugar"
!***********!
goto skipt


!**French**!
t3:
gr.text.size w/10
gr.text.draw txt1,w/7,h/2,"merci pour jouer"
!**********!
goto skipt


!**Chinese**!
t4:
gr.text.size w/6
gr.text.draw txt1,w/6,h/2,"感谢您玩"
!***********!
goto skipt


!**Arabic**!
t5:
gr.text.size w/8
gr.text.draw txt1,w/7,h/2,"شكرا على اللعب"
!**********!
goto skipt

!**Japanese**!
t6:
gr.text.size w/12
gr.text.draw txt1,w/20,h/2,"遊んでくれてありがとう"
!************!
goto skipt


!**Hebrew**!
t7:
gr.text.size w/9
gr.text.draw txt1,w/12,h/2,"תודה על ששיחקת"
!***********!







skipt:
!!
gr.color 255,255,0,0,1
gr.line l1,w/2,h/h-1,w/2,h
gr.color 255,0,0,0,1
!!


gr.render
pause 4000
level=1
gr.cls
gr.render
won=1
goto st














!!
Spanish=gracias por jugar

French=merci pour jouer

Chinese=感谢您玩

Arabic=شكرا على اللعب

Japanese=遊んでくれてありがとう

Hebrew=תודה על ששיחקת
!!






