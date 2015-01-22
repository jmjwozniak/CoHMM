package require comd 0.0
puts "Package CoMD OK."
set found 0
foreach command [ info commands ] {
    if [ string equal "CoMD_lib" $command ] {
        set found 1
        break
    }
}
if { ! $found } {
    puts "Could not find binding for CoMD_lib()!"
    exit 1
}
puts "Found CoMD_lib()."

set input [ new_CoMD_input ]

puts "CoHMM_HOME: $env(CoHMM_HOME)"

CoMD_input_potDir_set $input "$env(CoHMM_HOME)/CoMDLib/potentials"
CoMD_input_potName_set $input "Cu01.eam.alloy"
CoMD_input_potType_set $input "setfl"
CoMD_input_doeam_set $input 1
CoMD_input_nx_set $input 12
CoMD_input_ny_set $input 12
CoMD_input_nz_set $input 12
CoMD_input_nSteps_set $input 50
CoMD_input_printRate_set $input 1
CoMD_input_dt_set $input 2.5
CoMD_input_lat_set $input 3.619
CoMD_input_energy_set $input -0.296
CoMD_input_initialDelta_set $input 0.0
CoMD_input_defGrad_set $input 1.000
CoMD_input_temperature_set $input 263.450

set result [ CoMD_lib $input ]

set stressXX [ CoMD_return_stressXX_get $result ]

puts "stressXX: $stressXX"

exit 0
