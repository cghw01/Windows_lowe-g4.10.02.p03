echo Starting job for Silicon
for %%i IN (1,2,3,4,5) DO (
   SEM_4.10.00.exe YieldCurve.gdml YieldSilicon.mac > YieldSilicon_%%i.log
   cd results
   copy EmissionR_Silicon_1250eV.dat EmissionR_Silicon_1250eV_%%i.dat
   copy EmissionT_Silicon_1250eV.dat EmissionT_Silicon_1250eV_%%i.dat
   copy YieldR_Silicon.dat YieldR_Silicon_%%i.dat
   copy YieldT_Silicon.dat YieldT_Silicon.dat_%%i.dat
   cd .. )
)
echo Done with job for Silicon
