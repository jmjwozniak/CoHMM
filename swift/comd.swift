
// Generic CoMD binding for Swift

(float stressXX) comd(
  string potDir,      //!< the directory where EAM potentials reside
  string potName,     //!< the name of the potential
  string potType,     //!< the type of the potential (funcfl or setfl)
  int doeam,          //!< a flag to determine whether we're running EAM potentials
  int nx,             //!< number of unit cells in x
  int ny,             //!< number of unit cells in y
  int nz,             //!< number of unit cells in z
  int nSteps,         //!< number of time steps to run
  int printRate,      //!< number of steps between output
  float dt,           //!< time step (in femtoseconds)
  float lat,          //!< lattice constant (in Angstroms)
  float energy,       //!< simulation energy de (in Kelvin)
  float temperature,  //!< simulation initial temperature (in Kelvin)
  float initialDelta, //!< magnitude of initial displacement from lattice (in Angstroms)
  float defGrad       //!< deformation gradient == 1,1 component of the strain tensor
                       ) "comd" "0.0"
[
  // Currently fails - no args
  "set <<stressXX>> [ CoMD_lib ] "
];
