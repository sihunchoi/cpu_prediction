./sim_define.v

+incdir+../../src/rtl/building_blocks/
../../src/rtl/myCPU/pipeline_sync/rev07_prediction/building_blocks/adder.sv
../../src/rtl/myCPU/pipeline_sync/rev07_prediction/building_blocks/extend.sv
../../src/rtl/myCPU/pipeline_sync/rev07_prediction/building_blocks/flopenr.sv
../../src/rtl/myCPU/pipeline_sync/rev07_prediction/building_blocks/flopr.sv
../../src/rtl/myCPU/pipeline_sync/rev07_prediction/building_blocks/mux2.sv
../../src/rtl/myCPU/pipeline_sync/rev07_prediction/building_blocks/mux3.sv
../../src/rtl/myCPU/pipeline_sync/rev07_prediction/building_blocks/mux4.sv
../../src/rtl/myCPU/pipeline_sync/rev07_prediction/building_blocks/back_prediction.sv
../../src/rtl/myCPU/pipeline_sync/rev07_prediction/building_blocks/be_logic_store.sv
../../src/rtl/myCPU/pipeline_sync/rev07_prediction/building_blocks/be_logic_load.sv

+incdir+../../src/rtl/pipeline_block/
../../src/rtl/myCPU/pipeline_sync/rev07_prediction/pipeline_block/F_D_DFF.sv
../../src/rtl/myCPU/pipeline_sync/rev07_prediction/pipeline_block/D_E_DFF.sv
../../src/rtl/myCPU/pipeline_sync/rev07_prediction/pipeline_block/E_M_DFF.sv
../../src/rtl/myCPU/pipeline_sync/rev07_prediction/pipeline_block/M_W_DFF.sv
../../src/rtl/myCPU/pipeline_sync/rev07_prediction/pipeline_block/delay.sv
../../src/rtl/myCPU/pipeline_sync/rev07_prediction/pipeline_block/sync_block.sv

+incdir+../../src/hazard_block/
../../src/rtl/myCPU/pipeline_sync/rev07_prediction/hazard_block/hazard_unit.sv
../../src/rtl/myCPU/pipeline_sync/rev07_prediction/hazard_block/stall.sv
../../src/rtl/myCPU/pipeline_sync/rev07_prediction/hazard_block/flush.sv

+incdir+../../src/peripheral_gpio/
../../src/rtl/myCPU/pipeline_sync/rev07_prediction/peripheral_gpio/GPIO.v
../../src/rtl/myCPU/pipeline_sync/rev07_prediction/peripheral_gpio/SEG7_LUT.v
+incdir+../../src/peripheral_uart/
../../src/rtl/myCPU/pipeline_sync/rev07_prediction/peripheral_uart/uart_receiver.v
../../src/rtl/myCPU/pipeline_sync/rev07_prediction/peripheral_uart/uart_transmitter.v
../../src/rtl/myCPU/pipeline_sync/rev07_prediction/peripheral_uart/uart_wrap.v
../../src/rtl/myCPU/pipeline_sync/rev07_prediction/peripheral_uart/uart.v


+incdir+../../src/rtl/
../../src/rtl/myCPU/pipeline_sync/rev07_prediction/alu.sv

../../src/rtl/myCPU/pipeline_sync/rev07_prediction/Csr_Logic.sv
../../src/rtl/myCPU/pipeline_sync/rev07_prediction/aludec.sv
../../src/rtl/myCPU/pipeline_sync/rev07_prediction/maindec.sv
../../src/rtl/myCPU/pipeline_sync/rev07_prediction/Branch_Logic.sv
// Register File
../../src/rtl/myCPU/pipeline_sync/rev07_prediction/reg_file_async.v

// Memory
../../src/rtl/myCPU/pipeline_sync/rev07_prediction/dualport_mem_synch_rw_dualclk.sv
../../src/rtl/myCPU/pipeline_sync/rev07_prediction/ASYNC_RAM_DP_WBE.v


../../src/rtl/myCPU/pipeline_sync/rev07_prediction/controller.sv
../../src/rtl/myCPU/pipeline_sync/rev07_prediction/datapath.sv

../../src/rtl/myCPU/pipeline_sync/rev07_prediction/riscvsingle.sv

../../src/rtl/myCPU/pipeline_sync/rev07_prediction/tbman_apbs.v
../../src/rtl/myCPU/pipeline_sync/rev07_prediction/tbman_regs.v
../../src/rtl/myCPU/pipeline_sync/rev07_prediction/tbman_wrap.v

../../src/rtl/myCPU/pipeline_sync/rev07_prediction/Addr_Decoder.v
../../src/rtl/myCPU/pipeline_sync/rev07_prediction/data_mux.v

../../src/rtl/myCPU/pipeline_sync/rev07_prediction/TimerCounter.v

../../src/rtl/myCPU/pipeline_sync/rev07_prediction/SMU_RV32I_System.v

+incdir+../../bench/rtl/
../../testbench/isa_testbench.v
