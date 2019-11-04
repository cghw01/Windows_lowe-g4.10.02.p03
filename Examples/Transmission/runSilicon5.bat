   timeout 1
   echo Argument 1 is %1 and argument 2 is %2
   cd core%1
   ..\SEM_4.10.00.exe YieldCurve.gdml YieldSilicon.mac > YieldSilicon_%1.log
   cd results
   copy EmissionR_Silicon_1250eV.dat EmissionR_Silicon_1250eV_%2.dat
   copy EmissionT_Silicon_1250eV.dat EmissionT_Silicon_1250eV_%2.dat
   copy YieldR_Silicon.dat YieldR_Silicon_%2.dat
   copy YieldT_Silicon.dat YieldT_Silicon.dat_%2.dat
   cd ..
REM  Add another time delay just for safety !
   timeout 1
   cd ..
