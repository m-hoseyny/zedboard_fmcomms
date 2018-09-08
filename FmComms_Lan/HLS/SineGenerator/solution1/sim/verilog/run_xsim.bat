
call xelab xil_defaultlib.apatb_sinGen_top -prj sinGen.prj --lib "ieee_proposed=./ieee_proposed" -s sinGen -debug wave
call xsim --noieeewarnings sinGen -tclbatch sinGen.tcl

