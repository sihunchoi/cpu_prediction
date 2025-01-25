./sim_define.v 
//../../src/rtl/refCPU/pipeline/rev00_protect/SMU_RV32I_Pipeline_System.vp

../../src/rtl/myCPU/rev00/dualport_mem_synch_rw_dualclk.sv
../../src/rtl/myCPU/rev00/reg_file_async.v

../../src/rtl/myCPU/rev00/datapath.sv
../../src/rtl/myCPU/rev00/controller.sv

../../src/rtl/myCPU/rev00/alu.sv
../../src/rtl/myCPU/rev00/aludec.sv
../../src/rtl/myCPU/rev00/BE_logic.sv
../../src/rtl/myCPU/rev00/Branch_logic.sv
../../src/rtl/myCPU/rev00/maindec.sv
../../src/rtl/myCPU/rev00/hazard_unit.sv
../../src/rtl/myCPU/rev00/csr_reg.sv

//building_blocks
../../src/rtl/myCPU/rev00/building_blocks/mux3.sv
../../src/rtl/myCPU/rev00/building_blocks/mux2.sv
../../src/rtl/myCPU/rev00/building_blocks/flopr.sv
../../src/rtl/myCPU/rev00/building_blocks/flopenr.sv
../../src/rtl/myCPU/rev00/building_blocks/flopflr.sv
../../src/rtl/myCPU/rev00/building_blocks/extend.sv
../../src/rtl/myCPU/rev00/building_blocks/adder.sv

//pipeline_blocks
../../src/rtl/myCPU/rev00/pipeline_blocks/cont_D2E.sv
../../src/rtl/myCPU/rev00/pipeline_blocks/cont_E2M.sv
../../src/rtl/myCPU/rev00/pipeline_blocks/cont_M2W.sv
../../src/rtl/myCPU/rev00/pipeline_blocks/data_F2D.sv
../../src/rtl/myCPU/rev00/pipeline_blocks/data_D2E.sv
../../src/rtl/myCPU/rev00/pipeline_blocks/data_E2M.sv
../../src/rtl/myCPU/rev00/pipeline_blocks/data_M2W.sv

//peripheral_blocks
../../src/rtl/myCPU/rev00/peripheral_blocks/Adder_Decoder.sv
../../src/rtl/myCPU/rev00/peripheral_blocks/data_mux.sv

//tbman
../../src/rtl/myCPU/rev00/peripheral_blocks/tbman/tbman_wrap.v
../../src/rtl/myCPU/rev00/peripheral_blocks/tbman/tbman_apbs.v
../../src/rtl/myCPU/rev00/peripheral_blocks/tbman/tbman_regs.v

//gpio
../../src/rtl/myCPU/rev00/peripheral_blocks/gpio/GPIO.v
../../src/rtl/myCPU/rev00/peripheral_blocks/gpio/SEG7_LUT.v

//timer
../../src/rtl/myCPU/rev00/peripheral_blocks/timer/TimerCounter.v

//uart
../../src/rtl/myCPU/rev00/peripheral_blocks/uart/uart.v
../../src/rtl/myCPU/rev00/peripheral_blocks/uart/uart_receiver.v
../../src/rtl/myCPU/rev00/peripheral_blocks/uart/uart_transmitter.v
../../src/rtl/myCPU/rev00/peripheral_blocks/uart/uart_wrap.v

../../src/rtl/myCPU/rev00/riscvsingle.sv
../../src/rtl/myCPU/rev00/RV32I_System.v

//testbench 
../../testbench/c_tests_tb.v
