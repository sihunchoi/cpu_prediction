module alu(
    a_in,
    b_in,
    ALUControl,
    result,
    aZ,
	aN,
	aC,
	aV
);
    input [31:0] a_in, b_in;
    input [4:0] ALUControl;
    output reg [31:0] result; 
    output reg aZ,aN,aC,aV; //FLAG

    wire N, Z, C, V;
    wire [31:0] add_sub_b;
    wire [31:0] adder_result, and_result, or_result, SLT_result;
	wire [31:0] xor_result;
	wire [31:0] sll_result;
	wire [31:0] srl_result;
	wire sltu_result;
    wire signed [31:0] sra_result;
    wire signed [31:0] sra_a_in;
	wire ci;

    reg aN_0, aZ_0, aC_0, aV_0;
    reg [31:0] result_0;
	
	assign sra_a_in = a_in;
	
	assign add_sub_b = (ALUControl == 5'b00001 || ALUControl == 5'b00101 || ALUControl == 5'b01001) ? ~b_in : b_in;
	assign ci = (ALUControl == 5'b00001 || ALUControl == 5'b00101 || ALUControl == 5'b01001) ? 1'b1 : 1'b0;
	

	adder u_add_32bit_add(
        .a(a_in),
        .b(add_sub_b),
        .ci(ci),
        .sum(adder_result),
        .N(N),
        .Z(Z),
        .C(C),
        .V(V)
    );    
    
    always@(*)begin
        if (ALUControl == 5'b00000 || ALUControl == 5'b00001 || ALUControl == 5'b00101 || ALUControl == 5'b01001) begin
            {aN_0, aZ_0, aC_0, aV_0} = {N, Z, C, V};
        end
        else if (ALUControl == 5'b00010) begin
            aN_0 = and_result[31];
            aZ_0 = (and_result == 32'h0) ? 1'b1 : 1'b0;
            aC_0 = 1'b0;
            aV_0 = 1'b0;
        end
        else if (ALUControl == 5'b00011) begin
            aN_0 = or_result[31];
            aZ_0 = (or_result == 32'h0) ? 1'b1 : 1'b0;
            aC_0 = 1'b0;
            aV_0 = 1'b0;
        end
        else begin
            {aN_0, aZ_0, aC_0, aV_0} = 4'h0;	
        end
    end
    
    assign and_result = a_in & b_in;
    assign or_result = a_in | b_in;
    assign SLT_result = aN ^ aV;
	assign xor_result = a_in ^ b_in;
	assign sll_result = a_in << b_in[4:0];
	assign srl_result = a_in >> b_in[4:0];
	assign sra_result = sra_a_in >>> b_in[4:0];
	assign sltu_result = ~aC;
    
	always@(*) begin
        case(ALUControl)
            5'b00000 : result_0 = adder_result;        // add
            5'b00001 : result_0 = adder_result;        // sub
            5'b00010 : result_0 = and_result;          // and
            5'b00011 : result_0 = or_result;           // or
		    5'b00101 : result_0 = SLT_result;          // SLT
            5'b00100 : result_0 = xor_result;          // xor
            5'b00110 : result_0 = sll_result;          // sll
			5'b00111 : result_0 = srl_result;          // srl
			5'b01000 : result_0 = sra_result;          // sra
			5'b01001 : result_0 ={31'b0,sltu_result};		 // sltu
			default : result_0 = 32'h0;
        endcase
    end

    E_M_DFF #(.WIDTH(32),.RESET_VALUE(32'h0)) u_result(.clk(clk),.n_rst(n_rst),.din(result_0),.dout(result));
    E_M_DFF #(.WIDTH(1),.RESET_VALUE(1'h0)) u_n0(.clk(clk),.n_rst(n_rst),.din(aN_0),.dout(aN));
    E_M_DFF #(.WIDTH(1),.RESET_VALUE(1'h0)) u_z0(.clk(clk),.n_rst(n_rst),.din(aZ_0),.dout(aZ));
    E_M_DFF #(.WIDTH(1),.RESET_VALUE(1'h0)) u_c0(.clk(clk),.n_rst(n_rst),.din(aC_0),.dout(aC));
    E_M_DFF #(.WIDTH(1),.RESET_VALUE(1'h0)) u_v0(.clk(clk),.n_rst(n_rst),.din(aV_0),.dout(aV));
    

endmodule
