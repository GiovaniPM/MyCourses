```plantuml
@startgantt
' *************************************************************************
' **                       Include Section                               **
' *************************************************************************
!define osaPuml https://raw.githubusercontent.com/Crashedmind/PlantUML-opensecurityarchitecture2-icons/master
!include osaPuml/Common.puml
!include osaPuml/User/all.puml
!include osaPuml/Hardware/all.puml
!include osaPuml/Misc/all.puml
!include osaPuml/Server/all.puml
!include osaPuml/Site/all.puml

!define IMAGE_PHONE "https://giovanipm.github.io/rc_images/phone_icon.png"

' Colors taken from the css file of the BS theme
!$BLUE = "#446e9b"
!$INDIGO = "#6610f2"
!$PURPLE = "#6f42c1"
!$PINK = "#e83e8c"
!$RED = "#cd0200"
!$ORANGE = "#fd7e14"
!$YELLOW = "#d47500"
!$GREEN = "#3cb521"
!$TEAL = "#20c997"
!$CYAN = "#3399f3"
!$WHITE = "#ffffff"
!$GRAY = "#777777"
!$GRAYDARK = "#333333"
!$PRIMARY = "#446e9b"
!$SECONDARY = "#999999"
!$SUCCESS = "#3cb521"
!$INFO = "#3399f3"
!$WARNING = "#d47500"
!$DANGER = "#cd0200"
!$LIGHT = "#eeeeee"
!$DARK = "#333333"
!$DONE_COLOR = green
!$UNDONE_COLOR = orange
!$CRITICAL_PATH_COLOR = red
!$NORMAL_PATH_COLOR = lightblue
!$HOLIDAY_COLOR = lightgray
!$TODAY_COLOR =  yellow

' sprites
sprite $printer [15x15/8z] NOtH3W0W208HxFz_kMAhj7lHWpa1XC716sz0Pq4MVPEWfBHIuxP3L6kbTcizR8tAhzaqFvXwvFfPEqm0
sprite $bug [15x15/16z] PKzR2i0m2BFMi15p__FEjQEqB1z27aeqCqixa8S4OT7C53cKpsHpaYPDJY_12MHM-BLRyywPhrrlw3qumqNThmXgd1TOterAZmOW8sgiJafogofWRwtV3nCF
sprite $disk {
  444445566677881
  436000000009991
  43600000000ACA1
  53700000001A7A1
  53700000012B8A1
  53800000123B8A1
  63800001233C9A1
  634999AABBC99B1
  744566778899AB1
  7456AAAAA99AAB1
  8566AFC228AABB1
  8567AC8118BBBB1
  867BD4433BBBBB1
  39AAAAABBBBBBC1
}
sprite $settings [32x32/16] { 
00000000000000000000000000
00000000121000012100000000
00000011000111100011000000
00000100365000057300100000
000000379B963369C973000000
0001048B999A88BA9AC8501000
000107B99999AB9AAAAD701000
000106999999999AABBC601000
00010599999A9ACBABBC611000
000206A99A876679CBBD702000
012038A9A86544457CBC930220
00037A9A8556885447DBD73000
2468A998656EFFE6349DCD9642
38C999A756EFFFFE437ECDDEC4
4999999648FFFFFF715DDDDDE5
5B999A964CFFFFFFA04ADDDDE5
5B999A964CFFFFFFA04AEDEDE5
4BB99AA648FFFFFF705DDDEEE5
3679B9C745EFFFFE316EDEE873
00058BB9546EFFE503AEEC5000
02204ABC7434773027EEE50220
001207DAC74310037EDE702100
000206CBBD97556AEEEE602000
000106CBCCDECDEEDEEE602000
000207DBCCCCDDDEEEEE702000
001038DBCCCEDEEEEEEEB30100
0001259DCCE8558EEEEC521000
00000037CE720027EE73000000
00000100462012037400100000
00000011000100100011000000
00000000120000002100000000
00000000000000000000000000
} 

' *************************************************************************
' **                        Style Section                                **
' *************************************************************************
' Styles
<style>

  ganttDiagram {
  	task {
  		FontName Tahoma
  		FontColor black
  		FontSize 10
  		FontStyle bold
  		BackGroundColor $DONE_COLOR
  		LineColor $DONE_COLOR
      unstarted {
        BackGroundColor $UNDONE_COLOR
        LineColor $UNDONE_COLOR
      }
  	}
    'undone {
    '  BackGroundColor red
    '}
  	milestone {
      FontName Tahoma
  		FontColor blue
  		FontSize 10
  		FontStyle italic
  		BackGroundColor gold
  		LineColor red
  	}
	  separator {
      FontName Tahoma
		  LineColor blue
		  BackGroundColor gray\white
		  FontSize 16
		  FontStyle bold
		  FontColor blue
	  }
  	note {
      FontName Tahoma
  		FontColor black
  		FontSize 10
  		'LineColor lightgreen
      'BackGroundColor $UNDONE_COLOR\$DONE_COLOR
      LineColor black
      BackGroundColor gray\white
      HorizontalAlignment left
  	}
    timeline {
	    BackgroundColor gray\lightgray
      FontStyle bold
	  }
	  closed {
		  FontColor white
      BackGroundColor lightgray
	  }
  }
  footer {
    HorizontalAlignment right
  }
  title {
    FontName Tahoma
    FontColor blue
    FontSize 40
    FontStyle italic
    HorizontalAlignment center
  }
  legend {
    BackGroundColor gray\white
    FontName Tahoma
    FontStyle bold
    LineColor gray
    BorderRoundCorner 8
	  BorderThickness 1
  }

</style>

skinparam footerFontColor blue
skinparam footerFontSize 10
skinparam footerFontStyle italic
'skinparam titleBackgroundColor Aqua-CadetBlue
'skinparam titleBorderColor blue
'skinparam titleBorderRoundCorner 15
'skinparam titleBorderThickness 2

' *************************************************************************
' **                        Setup Section                                **
' *************************************************************************
' Variables
!$now = %now()
!$nowbr = %date("dd/MM/YYYY HH:mm:ss", $now - 3*3600)

' Initialization
caption Cronograma /'change'/
title <<Project Name>> /'change'/
footer <<Project Manager>>\n$nowbr /'change'/
'hide footbox
'hide ressources footbox
project starts 2025/01/01 /'change'/
scale 1 /'project zoom'/
'Label on last column and left aligned
'Label on first column and left aligned
language pt /'language'/
hide resources names
hide resources footbox

' Project Scale
printscale daily zoom 1.5
'printscale quarterly zoom 20
'printscale weekly zoom 6

' Day watching
'today is YYYY/MM/DD and is colored in Yellow
'today is 14 days after start and is colored in Yellow
today is colored in $TODAY_COLOR

' Working Days
saturday are closed
sunday are closed
'YYYY/MM/DD is closed
'YYYY/MM/DD to YYYY/MM/DD is closed
'************2025************
2025/01/01 is closed /'Ano novo'/
2025/02/02 is closed /'Navegantes'/
'2025/04/18 is closed /'Sexta-feira santa'/
'2025/04/20 is closed /'Tiradentes'/
'2025/05/01 is closed /'Trabalho'/
'2025/09/07 is closed /'Independencia'/
'2025/10/12 is closed /'Aparecida'/
'2025/11/02 is closed /'Finados'/
'2025/11/15 is closed /'Proclamação'/
'2025/11/20 is closed /'Consciencia'/
'2025/12/25 is closed /'Natal'/

' Colored Days
'YYYY/MM/DD is colored in lightblue
'YYYY/MM/DD to YYYY/MM/DD are colored in Orange
2025/01/01 are colored in $HOLIDAY_COLOR
2025/02/02 are colored in $HOLIDAY_COLOR
'2025/04/18 are colored in $HOLIDAY_COLOR
'2025/04/20 are colored in $HOLIDAY_COLOR
'2025/05/01 are colored in $HOLIDAY_COLOR
'2025/09/07 are colored in $HOLIDAY_COLOR
'2025/10/12 are colored in $HOLIDAY_COLOR
'2025/11/02 are colored in $HOLIDAY_COLOR
'2025/11/15 are colored in $HOLIDAY_COLOR
'2025/11/20 are colored in $HOLIDAY_COLOR
'2025/12/25 are colored in $HOLIDAY_COLOR

' *************************************************************************
' **                        Tasks Section                                **
' *************************************************************************
' Tasks and separators
-- Phase One --
[Prototype design] on {Alice} lasts 13 days
  [Prototype design] links to [[http://plantuml.com]]
  note bottom
    <$bug> <$disk> <$printer> <$settings>
    Key user not send purchase requests
    Image here: [[IMAGE_PHONE]]
  end note
[Config prototype] on {Giovani} lasts 7 days
-- Phase Two --
[QA prototype] on {Davi} lasts 9 days
[Test prototype] on {Camila:50}{Giovani:50} lasts 6 days
  [Test prototype] pauses on monday
  [Test prototype] pauses on friday
-- Phase Three --
[Deploy] lasts 1 day
[PD audict] lasts 10 days
[Trainning] on {Camila:50}{Maria:50} starts 2025/01/20
  [Trainning] ends 2025/02/14

' Tasks flow
[Config prototype] starts at [Prototype design]'s end with $NORMAL_PATH_COLOR bold link
[QA prototype] starts at [Prototype design]'s end with $CRITICAL_PATH_COLOR bold link
[Test prototype] starts at [Config prototype]'s end with $NORMAL_PATH_COLOR bold link
  [Test prototype] starts at [QA prototype]'s end with $CRITICAL_PATH_COLOR bold link
[Deploy] starts at [Test prototype]'s end with $CRITICAL_PATH_COLOR bold link
[PD audict] starts at [Trainning]'s end with $NORMAL_PATH_COLOR bold link
  [PD audict] starts at [Deploy]'s end with $CRITICAL_PATH_COLOR bold link

' Tasks progress
[Prototype design] is 77% completed
[Config prototype] is 0% completed
[QA prototype] is 22% completed
[Test prototype] is 0% completed
[Deploy] is 0% completed
[PD audict] is 0% completed
[Trainning] is 20% completed

' Milestones
-- Milestones --
[DevEnd] happens at [Prototype design]'s end
  [DevEnd] happens at [QA prototype]'s end
[ReadyDeploy] happens at [Test prototype]'s end
  [ReadyDeploy] displays on same row as [DevEnd]
[PDEnd] happens at [PD audict]'s end
  [PDEnd] displays on same row as [ReadyDeploy]
-- End --

' Colors
[Trainning] is colored in Aqua/Blue

' Tasks Deleted
[Config prototype] is deleted

legend left
  Legend:
  |= Color                 |= Type           |
  |<#$DONE_COLOR>          | Done            |
  |<#$CRITICAL_PATH_COLOR> | Critic Path     |
  |<#blue>                 | Outside IT      |
  |<#black>                | Deleted task    |
end legend
@endgantt
```