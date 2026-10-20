transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+Catch_the_Apple  -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.Catch_the_Apple xil_defaultlib.glbl

do {Catch_the_Apple.udo}

run 1000ns

endsim

quit -force
