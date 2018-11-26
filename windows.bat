CD dotty-*
CALL %0\..\bin\dotc.bat @..\examples\options ..\examples\HelloWorld.scala
CALL %0\..\bin\dotc.bat ..\examples\HelloWorld.scala
CALL %0\..\bin\dotr.bat dotty.HelloWorld
CALL %0\..\bin\dotr.bat -J-Xmx512m dotty.HelloWorld
if not exist _site mkdir _site
CALL %0\..\bin\dotd.bat -siteroot _site -project Hello ..\examples\HelloWorld.scala
