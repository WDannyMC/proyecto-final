@ECO desactivado _ 
IR  A inicio
: encontrar_dp0
ESTABLECER  dp0 = %~dp0
SALIR /b
: empezar
ESTABLECER LOCAL
LLAMADA : find_dp0

SI  EXISTE  " %dp0% \node.exe " (
  SET "_prog=%dp0%\node.exe"
) ELSE (
  SET "_prog=node"
  SET PATHEXT=%PATHEXT:;.JS;=;%
)

endLocal & goto #_undefined_# 2>NUL || title %COMSPEC% & "%_prog%"  "%dp0%\..\glob\dist\cjs\src\bin.js" %*