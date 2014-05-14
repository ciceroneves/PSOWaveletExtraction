SwarmOps - Heuristic optimization for Matlab
Copyright (C) 2003-2010 Magnus Erik Hvass Pedersen.
Please see the file license.txt for license details.
SwarmOps on the internet: http://www.Hvass-Labs.org/


Installation and Tutorial:

1. Unpack the SwarmOps archive to a directory.
2. In Matlab (or Octave) chdir to the directory.
3. Load parameters for an optimizer by executing the
   appropriate script, e.g. molparameters.m for the
   mol optimizer.
4. Create the data-struct for the optimization problem,
   e.g. by executing: data = myproblemdata(5, 2000);
5. Perform optimization, e.g.:
   [bestX, bestFitness, evaluations] = mol(@myproblem, data, MOL_DEFAULT)


Compatibility:

SwarmOps has been tested with:
- GNU Octave 3.2.4 for MS Windows
- MATLAB 7.10.0.499 (R2010a) for Linux


Update History:

Version 1.0:
- First release.
