echo Starting job for Copper on Silicon
for %%j IN (1,2) DO (
  for %%i IN (1,2,3,4) DO (
    START runCopperOnSilicon5.bat %%i %%j
REM   Wait for 1 second to ensure that the seed for the random number generator is different each time
    timeout 1
  )
)
echo Done with job for Copper on Silicon
