export PATH=$PATH:/cygdrive/d/Xilinx/Vivado/2015.4/bin # This is the path of the vivado installation.
git clone https://github.com/analogdevicesinc/hdl.git
cd hdl
git status
git checkout hdl_2016_r1
git fetch
git rebase origin/hdl_2016_r1
make -C projects/fmcomms1/zed

