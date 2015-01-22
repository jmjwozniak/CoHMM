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
exit 0
