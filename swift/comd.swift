
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
----
set input [ new_CoMD_input ]
CoMD_input_potDir_set $input <<potDir>>
CoMD_input_potName_set $input <<potName>>
CoMD_input_potType_set $input <<potType>>
CoMD_input_doeam_set $input <<doeam>>
CoMD_input_nx_set $input <<nx>>
CoMD_input_ny_set $input <<ny>>
CoMD_input_nz_set $input <<nz>>
CoMD_input_nSteps_set $input <<nSteps>>
CoMD_input_printRate_set $input <<printRate>>
CoMD_input_dt_set $input <<dt>>
CoMD_input_lat_set $input <<lat>>
CoMD_input_energy_set $input <<energy>>
CoMD_input_initialDelta_set $input <<initialDelta>>
CoMD_input_defGrad_set $input <<defGrad>>
CoMD_input_temperature_set $input <<temperature>>

set result [ CoMD_lib $input ]
set <<stressXX>> [ CoMD_return_stressXX_get $result ]
----
];
