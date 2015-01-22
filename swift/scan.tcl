package require comd 0.0
foreach command [ info commands ] {
    if [ string match "*CoMD*" $command ] {
        puts $command
    }
}
