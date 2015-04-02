echo This should be run from a long filename compatble shell (ie windows) to transform the code for djgpp in dosbox (case insensitive and short file names only)
ren "libsrc\draw_pgplot.f" "draw_pgp.f"
cd libsrc
powershell -Command "Dir * | rename-item -newname {  $_.name  -creplace '.F','.fpp'  }"
cd ..\src
powershell -Command "Dir * | rename-item -newname {  $_.name  -creplace '.F','.fpp'  }"
cd ..
pause
