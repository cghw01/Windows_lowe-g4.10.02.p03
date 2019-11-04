#!/bin/bash -x
job=results
matSample=Silicon
matFilm=Copper
energy=1000
	echo Starting job for ${matFilm} on ${matSample}
	sed "s/MATSAMPLE/${matSample}/g; s/MATFILM/${matFilm}/g; s/ENERGY/${energy}/g" YieldCurveFilm.mac > Yield${matSample}${matFilm}.mac
	LD_PRELOAD=$CADPHYSICS_BASE/lib/libCADPhysics.so SEM YieldCurveFilm.gdml Yield${matSample}${matFilm}.mac > YIELD${matSample}${matFilm}.log 2>&1
# > Yield${material}.log 2>&1
	echo Done with job ${job} for ${matFilm} on ${matSample}
