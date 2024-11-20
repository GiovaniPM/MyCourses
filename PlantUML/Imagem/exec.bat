@echo off
setlocal enabledelayedexpansion

for %%f in (*.png) do (
    set "filename=%%~nf"
    echo Processando arquivo: %%f para: !filename!.txt
    replace_transparency_with_white.py %%f input.png
    convert_to_grayscale.py input.png input.png
    resize_image.py input.png input.png 18 18
    image_to_text.py input.png !filename!.txt
    get_image_resolution.py input.png env_vars.bat
    call env_vars.bat
    echo @startuml > !filename!.puml
    echo sprite $!filename! [!IMG_WIDTH!x!IMG_HEIGHT!/16] { >> !filename!.puml
    type !filename!.txt >> !filename!.puml
    echo } >> !filename!.puml
    echo @enduml >> !filename!.puml
    del !filename!.txt
    del env_vars.bat
    del input.png
    move %%f .\puml\.
    move !filename!.puml .\puml\.
)