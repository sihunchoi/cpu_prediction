//
//  Author: Prof. Yongwoo Kim
//          System Semiconductor Engineering
//          Sangmyung University
//  Date: July 19, 2022
//  Description: Simple Hardware System based on RISC-V RV32I
//  This code references RVbook in Korea Univ. and EECS151 in UCB.
//
//`timescale 1ns/1ns

module SMU_RV32I_System (
  input         CLOCK_50,
  input   [2:0] BUTTON,
  input   [9:0] SW,
  output  [6:0] HEX3,
  output  [6:0] HEX2,
  output  [6:0] HEX1,
  output  [6:0] HEX0,
  output  [9:0] LEDR,

  output        UART_TXD,
  input         UART_RXD
);

  parameter RESET_PC = 32'h1000_0000;
  parameter CLOCK_FREQ = 50_000_000;
  parameter BAUD_RATE = 115_200;
  parameter MIF_HEX = "./fpga.hex";
  parameter MIF_BIOS_HEX = "";
  parameter DWIDTH = 32;
  //parameter AWIDTH = 12;
  //parameter AWIDTH = 14;
  parameter AWIDTH = 12;

  wire reset;
  wire reset_poweron;
  reg  reset_ff;
  wire [31:0] fetch_addr;
  wire [31:0] data_addr;
  wire [31:0] inst;
  wire [31:0] write_data;
  wire [3:0]  ByteEnable;
  wire [31:0] read_data;
  wire        cs_mem_n;
  wire        cs_timer_n;
  wire        cs_tbman_n;
  wire        cs_gpio_n;
  wire        cs_uart_n;
  wire        data_we;


 

  wire clk = CLOCK_50;


  
  // reset =  BUTTON[0]
  // if BUTTON[0] is pressed, the reset goes down to "0"
  // reset is a low-active signal
  assign  reset_poweron = BUTTON[0];
  assign  reset = reset_poweron;

always @(posedge clk)
  reset_ff <= reset;


wire [31:0] ALUResultM;
wire MemWriteM;

wire data_re;
assign data_re = ~MemWriteM;



//peripheral---------------------------    

    wire [31:0] read_imem_data_mem;
    wire [31:0] read_data_timer;
    wire [31:0] read_data_tbman;
    wire [31:0] read_data_gpio;
    wire [31:0] read_data_uart;

    wire [31:0] imem_inst;
    assign inst = imem_inst;

    wire n_rst = reset_ff;
    wire rst = ~reset_ff;

    //---------------------------------------
    //CPU
    //---------------------------------------
E_M_DFF #(.WIDTH(32),.RESET_VALUE(32'h0)) RegWriteE_M(.clk(clk),.n_rst(n_rst),.din(data_addr),.dout(ALUResultM));
E_M_DFF #(.WIDTH(1),.RESET_VALUE(1'h0)) MemWriteE_M(.clk(clk),.n_rst(n_rst),.din(data_we),.dout(MemWriteM));

/*
E_M_DFF #(.WIDTH(1),.RESET_VALUE(1'h0))cs_dmem_n_f(.clk(clk),.n_rst(n_rst),.din(cs_mem_n),.dout(cs_mem_n_ff));
E_M_DFF #(.WIDTH(1),.RESET_VALUE(1'h0))cs_tbmem_n_f(.clk(clk),.n_rst(n_rst),.din(cs_tbman_n),.dout(cs_tbmem_n_ff));
E_M_DFF #(.WIDTH(1),.RESET_VALUE(1'h0))cs_gpio_n_f(.clk(clk),.n_rst(n_rst),.din(cs_gpio_n),.dout(cs_gpio_n_ff));
E_M_DFF #(.WIDTH(1),.RESET_VALUE(1'h0))cs_timer_n_f(.clk(clk),.n_rst(n_rst),.din(cs_timer_n),.dout(cs_timer_n_ff));
E_M_DFF #(.WIDTH(1),.RESET_VALUE(1'h0))cs_uart_n_f(.clk(clk),.n_rst(n_rst),.din(cs_uart_n),.dout(cs_uart_n_ff));

E_M_DFF #(.WIDTH(32),.RESET_VALUE(32'h0))data_out_f(.clk(clk),.n_rst(n_rst),.din(data_out),.dout(data_out_ff));
E_M_DFF #(.WIDTH(32),.RESET_VALUE(32'h0))gpio_out_f(.clk(clk),.n_rst(n_rst),.din(gpio_out),.dout(gpio_out_ff));
E_M_DFF #(.WIDTH(32),.RESET_VALUE(32'h0))timer_out_f(.clk(clk),.n_rst(n_rst),.din(timer_out),.dout(timer_out_ff));
E_M_DFF #(.WIDTH(32),.RESET_VALUE(32'h0))uart_out_f(.clk(clk),.n_rst(n_rst),.din(uart_out),.dout(uart_out_ff));
*/




    riscvsingle #(
      .RESET_PC(RESET_PC)
    ) icpu (
        .clk          (clk), 
        .n_rst        (n_rst),
        .PC       (fetch_addr),
        .Instr        (inst),
        .MemWriteE       (data_we),  // data_we: active high
        .ALUResult    (data_addr), 
        .WriteData    (write_data),
        .ByteEnable    (ByteEnable),
        .ReadData      (read_data)
    );

    //---------------------------------------
    //memory
    //---------------------------------------

`ifdef FPGA
    dualport_mem_synch_rw_dualclk #(
      .DATA_WIDTH(DWIDTH),
        .ADDRESS_WIDTH(AWIDTH),
        .MIF_HEX (MIF_HEX)
    )imem (
      .clk1(clk),
        .clk2(clk),
        .addr1(fetch_addr[AWIDTH+2-1:2]),
        .addr2(ALUResultM[AWIDTH+2-1:2]),
        .be1(4'd0),
        .be2(ByteEnable),
        .data_in1(32'd0),
        .data_in2(write_data),
        .we1(1'b0),
        .we2(MemWriteM & ~cs_mem_n),
        .data_out1(imem_inst),
        .data_out2(read_imem_data_mem)
    );  

`else //ASYNC MEM

    ASYNC_RAM_DP_WBE #(
      .DWIDTH (DWIDTH),
      .AWIDTH (AWIDTH),
      .MIF_HEX (MIF_HEX)
    ) imem (
        .clk      (clk),
        .addr0    (fetch_addr[AWIDTH+2-1:2]),
        .addr1    (ALUResultM[AWIDTH+2-1:2]),
        .wbe0     (4'd0),
        .wbe1     (ByteEnable),
        .d0       (32'd0),
        .d1       (write_data),
        .wen0     (1'b0),
        .wen1     (MemWriteM & ~cs_mem_n),//~cs_mem_n &
        .q0       (imem_inst),
        .q1       (read_imem_data_mem)
    );

`endif
 /*
 data_mux u_data_mux(
    .cs_dmem_n(cs_mem_n_ff),
    .read_data_dmem(read_imem_data_mem),
    .cs_tbman_n(cs_tbmem_n_ff),
    .read_data_tbman(data_out_ff),
    .cs_gpio_n(cs_gpio_n_ff),
    .read_data_gpio(gpio_out_ff),
    .cs_timer_n(cs_timer_n_ff),
    .read_data_timer(timer_out_ff),
    .cs_uart_n(cs_uart_n_ff),
    .read_data_uart(uart_out_ff),

    .read_data(read_data)
  );
 */

    //---------------------------------------
    //data_mux
    //---------------------------------------

    data_mux u_data_mux (
`ifdef FPGA
        .clk(clk),
`endif

        //MEM.
        .read_data_mem(read_imem_data_mem),

        //Timer
        .cs_timer_n(cs_timer_n),
        .read_data_timer(read_data_timer),
    
        //TBMAN
        .cs_tbman_n(cs_tbman_n),
        .read_data_tbman(read_data_tbman),

        //GPIO
        .cs_gpio_n(cs_gpio_n),
        .read_data_gpio(read_data_gpio),

        //TBMAN
        .cs_uart_n(cs_uart_n),
        .read_data_uart(read_data_uart),

        .read_data(read_data)
    );
  
    //---------------------------------------
    //Addr_Decoder
    //---------------------------------------
    Addr_Decoder iDecoder (
        .Addr        (ALUResultM),
        .CS_MEM_N    (cs_mem_n) ,
        .CS_TIMER_N  (cs_timer_n),
        .CS_TBMAN_N  (cs_tbman_n),
        .CS_GPIO_N   (cs_gpio_n),
        .CS_UART_N   (cs_uart_n) 
    );

    //---------------------------------------
    //Timer
    //---------------------------------------
    TimerCounter iTimer (
        .clk     (clk),
        .reset   (~n_rst),
        .CS_N    (cs_timer_n),
        .RD_N    (~data_re),
        .WR_N    (~MemWriteM),
        .Addr    (ALUResultM[11:0]),
        .DataIn  (write_data),
        .DataOut (read_data_timer),
        .Intr    ()
    );

    //---------------------------------------
    //TBMAN
    //---------------------------------------
      tbman_wrap u_tbman_wrap (
      .clk            (clk),
      .rst_n          (n_rst),

      .tbman_sel      (~cs_tbman_n),  // High Active
      .tbman_write    (MemWriteM), // Write : 1, Read : 0
      .tbman_addr     (ALUResultM[15:0]),
      .tbman_wdata    (write_data),
      .tbman_rdata    (read_data_tbman)
    );
    
   //---------------------------------------
   //GPIO
   //---------------------------------------
   GPIO U_GPIO(
      .clk    (clk),
      .reset  (~n_rst),

      .CS_N   (cs_gpio_n),
      .RD_N   (MemWriteM),
      .WR_N   (~MemWriteM),
      .Addr   (ALUResultM[11:0]),
      .DataIn (write_data),
      .DataOut(read_data_gpio),
      
      .BUTTON (BUTTON[2:1]),
      .SW     (SW),
      .o_HEX3 (HEX3),
      .o_HEX2 (HEX2),
      .o_HEX1 (HEX1),
      .o_HEX0 (HEX0),
      .LEDG   (LEDR),
      .Intr   ()   
   );
   
   //---------------------------------------
   //UART
   //---------------------------------------
   uart_wrap #(
    .CLOCK_FREQ(CLOCK_FREQ),
    .BAUD_RATE(BAUD_RATE)
  ) u_uart_wrap(
    .clk      (clk),
    .reset    (~n_rst),
    .CS_N     (cs_uart_n),
    .RD_N     (~data_re),
    .WR_N     (~MemWriteM),
    .Addr     (ALUResultM[11:0]),
    .DataIn   (write_data),
    .DataOut  (read_data_uart),
    .uart_rx  (UART_RXD),
    .uart_tx  (UART_TXD)
  );

endmodule
