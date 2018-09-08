
call xelab xil_defaultlib.apatb_stepGen_top -prj stepGen.prj --lib "ieee_proposed=./ieee_proposed" -s stepGen -debug wave
call xsim --noieeewarnings stepGen -tclbatch stepGen.tcl

