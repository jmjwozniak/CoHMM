
set name     $env(LEAF_PKG)
set version  $env(LEAF_VERSION)
set leaf_so  $env(LEAF_SO)

puts [ ::pkg::create -name $name -version $version \
           -load $leaf_so  ]
