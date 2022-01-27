echo "Remove old files"
rm ./exm_1
echo "Compile Verilog sources"
iverilog -o exm_1 -g2012  -D VCD_DUMP_EN\
-l  ./delay_example.v \
-s testbench
echo "Run the compilation"
vvp ./exm_1
