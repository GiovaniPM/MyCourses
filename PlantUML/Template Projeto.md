```plantuml
@startgantt
' *************************************************************************
' **                       Include Section                               **
' *************************************************************************
'!define osaPuml https://raw.githubusercontent.com/Crashedmind/PlantUML-opensecurityarchitecture2-icons/master
'!include osaPuml/Common.puml
'!include osaPuml/User/all.puml
'!include osaPuml/Hardware/all.puml
'!include osaPuml/Misc/all.puml
'!include osaPuml/Server/all.puml
'!include osaPuml/Site/all.puml

!define IMAGE_PHONE "https://giovanipm.github.io/rc_images/phone_icon.png"

!define myPuml https://raw.githubusercontent.com/GiovaniPM/PUMLSprites/refs/heads/main/files
!include myPuml/PROGM026.puml
!include myPuml/CLIPB001.puml
!include myPuml/FAXMG001.puml

!define themePuml https://raw.githubusercontent.com/GiovaniPM/PUMLStyles/refs/heads/main
!include themePuml/styleGanttFormal1.puml

' *************************************************************************
' **                        Sprite Section                               **
' *************************************************************************
' Sprites 
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
'YYYY/MM/DD is closed
'YYYY/MM/DD to YYYY/MM/DD is closed
saturday are closed
sunday are closed
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
'************2025************
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
' **                         Task Section                                **
' *************************************************************************
' Tasks and separators
-- Phase One --
[Prototype design] on {Alice} lasts 13 days
  [Prototype design] links to [[http://plantuml.com]]
  note bottom
    <$FAXMG001>
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

' Tasks deleted
[Config prototype] is deleted

' Tasks colors alternatives
[Trainning] is colored in $ALTERNATIVE_COLOR

' Tasks progress
[Prototype design] is 100% completed
[Config prototype] is 50% completed
[QA prototype] is 50% completed
[Test prototype] is 20% completed
[Deploy] is 0% completed
[PD audict] is 0% completed
[Trainning] is 50% completed

' Milestones
-- Milestones --
[DevEnd] happens at [Prototype design]'s end
  [DevEnd] happens at [QA prototype]'s end
[ReadyDeploy] happens at [Test prototype]'s end
  [ReadyDeploy] displays on same row as [DevEnd]
[PDEnd] happens at [PD audict]'s end
  [PDEnd] displays on same row as [ReadyDeploy]
-- End --

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