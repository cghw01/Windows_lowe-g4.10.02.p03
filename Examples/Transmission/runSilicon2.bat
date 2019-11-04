   timeout 1
   cd core%1
   ..\SEM_4.10.00.exe YieldCurve.gdml YieldSilicon.mac > YieldSilicon_%1.log
   timeout 1
   cd ..
