transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xpm
vlib activehdl/xil_defaultlib

vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xpm  -sv2k12 "+incdir+D:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../project_34.gen/sources_1/ip/clk_wiz_0" -l xpm -l xil_defaultlib \
"D:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93  \
"D:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+D:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../project_34.gen/sources_1/ip/clk_wiz_0" -l xpm -l xil_defaultlib \
"../../../project_34.gen/sources_1/ip/clk_wiz_0/clk_wiz_0_clk_wiz.v" \
"../../../project_34.gen/sources_1/ip/clk_wiz_0/clk_wiz_0.v" \

vcom -work xil_defaultlib -93  \
"D:/Semester 3/SISDIGLAN/Catch_the_Apple-main terbaruuw/Catch_the_Apple-main/vga.srcs/sources_1/new/Background_Object.vhd" \
"D:/Semester 3/SISDIGLAN/Catch_the_Apple-main terbaruuw/Catch_the_Apple-main/vga.srcs/sources_1/new/Collision.vhd" \
"D:/Semester 3/SISDIGLAN/Catch_the_Apple-main terbaruuw/Catch_the_Apple-main/vga.srcs/sources_1/new/Fruit.vhd" \
"D:/Semester 3/SISDIGLAN/Catch_the_Apple-main terbaruuw/Catch_the_Apple-main/vga.srcs/sources_1/new/Life_Counter.vhd" \
"D:/Semester 3/SISDIGLAN/Catch_the_Apple-main terbaruuw/Catch_the_Apple-main/vga.srcs/sources_1/new/Player.vhd" \
"D:/Semester 3/SISDIGLAN/Catch_the_Apple-main terbaruuw/Catch_the_Apple-main/vga.srcs/sources_1/new/Priority_MUX.vhd" \
"D:/Semester 3/SISDIGLAN/Catch_the_Apple-main terbaruuw/Catch_the_Apple-main/vga.srcs/sources_1/new/VGA_Controller.vhd" \
"D:/Semester 3/SISDIGLAN/Catch_the_Apple-main terbaruuw/Catch_the_Apple-main/vga.srcs/sources_1/new/poisonous_fruit.vhd" \
"D:/Semester 3/SISDIGLAN/Catch_the_Apple-main terbaruuw/Catch_the_Apple-main/vga.srcs/sources_1/new/TopModule.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

