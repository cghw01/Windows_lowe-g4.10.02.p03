   timeout 1
   echo Argument 1 is %1 and argument 2 is %2
   cd core%1
   ..\SEM_4.10.00.exe YieldCurveFilm.gdml YieldSiliconCopper.mac > YieldSiliconCopper_%1.log
   cd results
   copy EmissionR_CopperOnSilicon_1000eV.dat EmissionR_CopperOnSilicon_1000eV_%2.dat
   copy EmissionT_CopperOnSilicon_1000eV.dat EmissionT_CopperOnSilicon_1000eV_%2.dat
   copy YieldR_CopperOnSilicon.dat YieldR_CopperOnSilicon_%2.dat
   copy YieldT_CopperOnSilicon.dat YieldT_CopperOnSilicon.dat_%2.dat
   cd ..
REM  Add another time delay just for safety !
   timeout 1
   cd ..
