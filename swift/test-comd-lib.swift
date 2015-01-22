
import io;

import comd;

string potDir;      //!< the directory where EAM potentials reside
string potName;     //!< the name of the potential
string potType;     //!< the type of the potential (funcfl or setfl)
int doeam;          //!< a flag to determine whether we're running EAM potentials
int nx;             //!< number of unit cells in x
int ny;             //!< number of unit cells in y
int nz;             //!< number of unit cells in z
int nSteps;         //!< number of time steps to run
int printRate;      //!< number of steps between output
float dt;           //!< time step (in femtoseconds)
float lat;          //!< lattice constant (in Angstroms)
float energy;       //!< simulation energy de (in Kelvin) 
float temperature;  //!< simulation initial temperature (in Kelvin)
float initialDelta; //!< magnitude of initial displacement from lattice (in Angstroms)
float defGrad;      //!< deformation gradient == 1;1 component of the strain tensor

potDir = "CoMDLib/potentials";
potName = "Cu01.eam.alloy";
potType = "setfl";
doeam = 1; 
nx = 12;
ny = 12;
nz = 12;
nSteps = 50; //50 for full MD with no temp, 1000 for equilibrated stress
printRate = 1; 
dt           = 2.5;
lat          = 3.619;
energy       = -0.296;
initialDelta = 0.0;
defGrad      = 1.000;
temperature  = 263.450;

stressXX = comd(potDir,  
     potName, 
     potType, 
     doeam,          
     nx,             
     ny,             
     nz,             
     nSteps,         
     printRate,      
     dt,          
     lat,         
     energy,      
     temperature, 
     initialDelta,
     defGrad      
     );

printf("stressXX: %0.3f", stressXX);
