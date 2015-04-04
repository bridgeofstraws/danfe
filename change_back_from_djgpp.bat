echo This is to reverse the changes from "change_for_djgpp.bat"
ren "libsrc\draw_pgp.f" "draw_pgplot.f"
ren "include\make.dos" "make.dos_djgpp"
cd libsrc
powershell -Command "Dir * | rename-item -newname {  $_.name  -creplace '.fpp','.F'  }"
cd ..\src
powershell -Command "Dir * | rename-item -newname {  $_.name  -creplace '.fpp','.F'  }"
cd ..
pause
