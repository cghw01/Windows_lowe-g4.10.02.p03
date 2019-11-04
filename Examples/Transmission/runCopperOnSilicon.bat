echo Starting job for Copper on Silicon
for %%i IN (1,2,3,4,5) DO (
   SEM_4.10.00.exe YieldCurveFilm.gdml YieldSiliconCopper.mac > YieldSiliconCopper_%%i.log
   cd results
   copy EmissionR_CopperOnSilicon_1000eV.dat EmissionR_CopperOnSilicon_1000eV_%%i.dat
   copy EmissionT_CopperOnSilicon_1000eV.dat EmissionT_CopperOnSilicon_1000eV_%%i.dat
   copy YieldR_CopperOnSilicon.dat YieldR_CopperOnSilicon_%%i.dat
   copy YieldT_CopperOnSilicon.dat YieldT_CopperOnSilicon.dat_%%i.dat
   cd .. )
)
echo Done with job for Copper on Silicon
